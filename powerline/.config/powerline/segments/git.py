# encoding: utf-8
import re
from powerline.segments import Segment, with_docstring
from powerline.theme import requires_segment_info, requires_filesystem_watcher
from powerline.lib.shell import run_cmd
from powerline.lib.vcs import guess, tree_status
from subprocess import Popen, PIPE
try:
    from subprocess import DEVNULL # py3k
except ImportError:
    import os
    DEVNULL = open(os.devnull, 'wb')

def run_command(pl, cmd, stdin=None):
    try:
        p = Popen(cmd, stdout=PIPE, stdin=PIPE, stderr=DEVNULL)
    except OSError as e:
        pl.exception('Could not execute command ({0}): {1}', e, cmd)
        return None
    else:
        stdout, err = p.communicate(stdin)
    return stdout.strip()

@requires_segment_info
def remote(pl, segment_info, status_colors=False, remote_name=True):
    '''Return status of git remotes.

    :param nix

    '''
    p = re.compile(r"\.\.\.(\w+)\/\S+(?:\s\[(?:ahead (\d+))?(?:, )?(?:behind (\d+))?\])?")
    status = run_command(pl, ['git', 'status', '-sb', '--porcelain'])
    if not status:
        return

    info = status.splitlines()[0]

    match = p.search(info)
    if match:
        remote = match.group(1)
        ahead  = match.group(2)
        behind = match.group(3)
        result = []
        if remote_name:
            result.append(remote)
        if ahead:
            result.append("⥣ " + ahead)
        if behind:
            result.append("⥥ " + behind)
        hgroup = ['remote']

        if status_colors:
            hgroup.insert(0, 'remote_dirty' if ahead or behind else 'remote_clean')

        return [{
            'contents': ' '.join(result),
            'highlight_group': hgroup,
        }]

@requires_filesystem_watcher
@requires_segment_info
class OhMyGitSegment(Segment):
    #def oh_my_git(pl, segment_info):
    '''Integration of https://github.com/arialdomartini/oh-my-git
    '''
    @staticmethod
    def get_directory(segment_info):
      return segment_info['getcwd']()

    def __call__(self, pl, segment_info, create_watcher, status_colors=False, ignore_statuses=()):
      name = self.get_directory(segment_info)
      if name:
        repo = guess(path=name, create_watcher=create_watcher)
        if repo is not None:
          branch = repo.branch()
          return [{
            'contents': branch,
            'highlight_group': ['ohmygit']
          }]

oh_my_git = with_docstring(OhMyGitSegment(),
'''Return the oh_my_git status bar
''')

@requires_segment_info
def oh_my_git_remote(pl, segment_info, status_colors=False):
    '''Integration of remote part of https://github.com/arialdomartini/oh-my-git
    '''
    if True:
      return
    return [{
        'contents': '',
        'highlight_group': ['ohmygit_remote']
    }]


