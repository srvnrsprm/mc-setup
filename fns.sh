lsdir() {
	ls -l $1 | grep "^d" | tr -s " " | cut -d " " -f 9 | pr -at -5
}

rstrtTmct() {
  ~/sw/tmct/bin/shutdown.sh
  ~/sw/tmct/bin/startup.sh
	trnctTmctLg
}
strtTmct() {
	~/sw/tmct/bin/startup.sh
}
stpTmct() {
	~/sw/tmct/bin/shutdown.sh
}

jspJvc() {
  ORGNL_CP=$CLASSPATH
  export CLASSPATH=../../WEB-INF/classes/:$CLASSPATH
  for dr in `find . -type d`; do
    ls $dr/*.java > /dev/null 2> /dev/null
    if [ $? -eq 0 ]; then
      echo "processing the $dr"
      javac -Xlint:unchecked -Xlint:deprecation -d ../../WEB-INF/classes/ $dr/*.java
    fi
  done
  export CLASSPATH=$ORGNL_CP
}

fndBk() {
	find ~/Books/ -iname "*$1*"
}

take() {
 mkdir "$1" && cd "$1";
}

setAwsIP() {
	sed -i 's/export IP=[0-9]\{1,3\}.[0-9]\{1,3\}.[0-9]\{1,3\}.[0-9]\{1,3\}/export IP='$1'/g' /home/sk/.envRc
}

chkPrt() {
	sudo netstat -lntp | grep $1
}

kllPrcss() {
	sudo kill -9 $1
}

plShbng() {
	sed -i '1i\
#!/usr/bin/perl -w\
use 5.010;
' $1 
}

cd() {
	rmAllDts=${1%%..*}
	rmAllDtsWthSlsh=${1%%../*}

	if [ -n "$1" -a -z "$rmAllDts" -a -n "$rmAllDtsWthSlsh" ]; then
		tms=${#1}
		until [ $tms -eq 1 ]; do
			builtin cd ..
			#tms=$((tms-1))
			((tms--))
		done
	else
		builtin cd $1
	fi
}

setIp() {
	sed -i '2d' ~/.ssh/config
	sed -i "2i     HostName $1" ~/.ssh/config
}	
