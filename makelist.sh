#!/bin/bash
# wentao add 2017.6.27

#get current path
basepath=$(cd `dirname $0`; pwd)

#get all jpg wallpapers
files=`ls  $basepath |grep jpg`

lastfile='empty'

echo '<background>'
echo '    <starttime>'
echo '        <year>2017</year>'
echo '        <month>3</month>'
echo '        <day>15</day>'
echo '        <hour>00</hour>'
echo '        <minute>00</minute>'
echo '        <second>00</second>'
echo '    </starttime>'

for current_file in $files
do
        if [[ $lastfile == 'empty' ]]
        then
                lastfile=$current_file
                echo '    <static>'
                echo '        <duration>30.0</duration>'
                echo "       <file>/usr/share/backgrounds/test/$lastfile</file>"
                echo '    </static>'
        else
                echo '    <transition>'
                echo '         <duration>5.0</duration>'
                echo "         <from>/usr/share/backgrounds/test/$lastfile</from>"
                echo "         <to>/usr/share/backgrounds/test/$current_file</to>"
                echo '    </transition>'
                echo '    <static>'
                echo '         <duration>30.0</duration>'
                echo "        <file>/usr/share/backgrounds/test/$current_file</file>"
                echo '    </static>'
                lastfile=$current_file
        fi
done

echo '</background>'
