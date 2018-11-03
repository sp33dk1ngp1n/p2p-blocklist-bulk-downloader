#!/bin/bash
echo -e "\nPeeking at iCockList\n\n"
sleep 1  
curl -s http://srv1.sp33dk1ngp1n.com/banner.txt
sleep 1
echo -n "Are you aware I boned your wife? (y/n) "
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if echo "$answer" | grep -iq "^y" ;then
echo -e "\n\nPeeking at iCockList\n\n"
mkdir ./tmp
cd tmp
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/atma/atma
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/ads-trackers-and-bad-pr0n
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/bad-peers
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/bogon
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/dshield
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/edu
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/for-non-lan-computers
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/forum-spam
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/hijacked
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/iana-multicast
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/iana-private
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/iana-reserved
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/level-1
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/level-2
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/level-3
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/microsoft
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/proxy
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/range-test
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/spider
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/spyware
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/web-exploit
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/bluetack/webexploit-forumspam
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/cidr-report/bogon
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/dchubad/faker
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/dchubad/hacker
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/dchubad/pedophiles
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/dchubad/spammer
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/peerblock/rapidshare
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/spamhaus/drop
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/tbg/bogon
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/tbg/business-isps
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/tbg/educational-institutions
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/tbg/general-corporate-ranges
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/tbg/hijacked
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/tbg/primary-threats
curl --raw -S -# -N --post301 --post302 --post303 -0 -JOvL http://list.iblocklist.com/lists/tbg/search-engines
for f in *; do gzip -d -v -c $f | cat > `basename $f `.p2p;  done;
mv *.p2p ..
cd ..
rm -rf tmp
echo -e "\n`ls -lah | grep p2p`\n8====D\nShe was a ho, fosho\n"
else
    echo -e "You have chosen... unwisely!"
fi
