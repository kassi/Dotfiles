# encoding: utf-8
import re
from powerline.theme import requires_segment_info
from powerline.lib.shell import run_cmd

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
