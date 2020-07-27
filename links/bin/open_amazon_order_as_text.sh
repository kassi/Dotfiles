#!/bin/bash -l
# set -e # Exit immediately on error
# set -x # Print commands and their arguments as they are executed

query="$1"
query=${query//./-}

mailbase=$HOME/Library/Mail/V5/3D703FA1-66A8-44CA-AB3E-E1DDDC900734/Archiv.mbox/Geschäftlich.mbox/Amazon.mbox

mailfile=$(for i in $(grep $query -r -l $mailbase); do grep -l Bestellbest $i; done)

if [[ -z "$mailfile" ]]; then
  exit 1
fi

if [[ -n "$mailfile" ]]; then
	# open "$mailfile"
	text=$(ruby -e 'require "mail"; mail = Mail.read(ARGV[0]); puts mail.parts.select {|p| p.content_type =~ /text\/plain/}[0].decoded' "$mailfile")
	link=$(ruby -e 'require "mail"; mail = Mail.read(ARGV[0]); html = mail.parts.select {|p| p.content_type =~ /text\/html/}[0].decoded; m=html.match(/<a .*?href="(.*?)"[^>]*>Bestelldetails<\/a>/); puts m[1];' "$mailfile")
	open "$link"
	echo $text
fi
