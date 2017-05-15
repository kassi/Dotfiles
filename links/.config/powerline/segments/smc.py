# encoding: utf-8
from __future__ import (unicode_literals, division, absolute_import, print_function)

import os
import random
import re
import socket

from powerline.lib.url import urllib_read
from powerline.lib.threaded import ThreadedSegment, KwThreadedSegment
from powerline.lib.monotonic import monotonic
from powerline.lib.humanize_bytes import humanize_bytes
from powerline.segments import with_docstring
from powerline.theme import requires_segment_info
from powerline.lib.shell import run_cmd

def cpu_temperature(pl):
    '''Return cpu temperature.

    :param nix

    '''
    smc = "/Users/Kassi/Applications/smcFanControl.app/Contents/Resources/smc"
    sensor = "TC0P"

    status = run_cmd(pl, [smc, '-r', '-k', sensor])
    if not status:
        return
    p = re.compile('(\d+)\.\d+')
    m = p.findall(status)
    temp = int(m[0])

    ret = []
    ret.append({
        'contents': str(m[0]) + "°C",
        'highlight_groups': ['battery_gradient', 'battery'],
        'gradient_level': (temp-30)*2
    })
    return ret
