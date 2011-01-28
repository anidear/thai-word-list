#!/usr/bin/env ruby
# convertThaiToEngLayout.rb
# This program is for converting between English and Thai keyboard kayout
# Usage:
# 	convertThaiToEngLayout.rb < textfile
# or    echo 'ฟหกด่าว' | convertThaiToEngLayout.rb
# or	cat thainamelist | convertThaiToEngLayout.rb
#
# Created by Anidear (Anidear1@gmail.com)
#

require 'rubygems'
$KCODE = 'u'
require 'unicode'
require 'jcode'

#key and value are use to map between thai-eng keyboard layout
key = "๋ล๔นคตู฿ยษ๘งๆซศ๖พว?ห๗ฒ์_ะช๕ฯฟิ๙ีฬญแอฦ๐มฑกขไำฆใป๑ธดฝัฤจฺ๊เผฉฮๅ้ฐฏร/ฅ\"ฎ่-,)โ+ภ%ําถฌ(.ส็บ๒ทุณฃ๓ืึJ]%o89^&pK_'q:L(r;Ms)<N`t=*Oab+u>Pcv?Q,Rd-weS.x@Tf/yA0BUgzCV1h{Di2|WEj3}XF!4~Yk5GZ\"lH[#m6I\$n7"
value = "J]%o89^&pK_'q:L(r;Ms)<N`t=*Oab+u>Pcv?Q,Rd-weS.x@Tf/yA0BUgzCV1h{Di2|WEj3}XF!4~Yk5GZ\"lH[#m6I\$n7๋ล๔นคตู฿ยษ๘งๆซศ๖พว?ห๗ฒ์_ะช๕ฯฟิ๙ีฬญแอฦ๐มฑกขไำฆใป๑ธดฝัฤจฺ๊เผฉฮๅ้ฐฏร/ฅ\"ฎ่-,)โ+ภ%ําถฌ(.ส็บ๒ทุณฃ๓ืึ"

#convert to regular expression string
key = Regexp.escape(key)
value = Regexp.escape(value)

#read input from stdin, translate and print out
STDIN.each_line do |input|
	output = input.tr(key,value)
	puts output
end

