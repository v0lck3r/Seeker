#!/bin/bash
#Auth : RAHALI Oussama aka V0lck3r


echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo " SUID & GUID Exploit Seeker "
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo """               _             
 ___  ___  ___| | _____ _ __ 
/ __|/ _ \/ _ \ |/ / _ \ '__|
\__ \  __/  __/   <  __/ |   
|___/\___|\___|_|\_\___|_|   
		  by @V0lck3r"""

echo ""
echo "[!] Finding all SUID - GUID binaries ..."
echo ""

cmd=`find / -perm -g=s -o -perm -u=s -type f 2>/dev/null -printf "%f\n" | sort -u | uniq`
lbinaries=($cmd)

echo "[+] Finding all SUID - GUID binaries : Done !"
echo ""
echo "[+] Results ..."
echo ""
echo "~~ Number of Binaries : ${#lbinaries[@]} ~~"
echo ""
for lbinary in ${lbinaries[@]}
do
	echo "$lbinary"
done

echo ""
echo "[!] Seeking for Exploits ..."


binaries=("apt" "apt-get" "aria2c" "arp" "ash" "awk" "base32" "base64" "basenc" "bash" "bpftrace" "bundler" "busctl" "busybox" "byebug" "cancel" "capsh" "cat" "check_by_ssh" "check_cups" "check_log" "check_memory" "check_raid" "check_ssl_cert" "check_statusfile" "chmod" "chown" "chroot" "cobc" "column" "comm" "composer" "cowsay" "cowthink" "cp" "cpan" "cpulimit" "crash" "crontab" "csh" "csplit" "curl" "cut" "dash" "date" "dd" "dialog" "diff" "dmesg" "dmsetup" "dnf" "docker" "dpkg" "easy_install" "eb" "ed" "emacs" "env" "eqn" "ex" "expand" "expect" "facter" "file" "find" "finger" "flock" "fmt" "fold" "ftp" "gawk" "gcc" "gdb" "gem" "genisoimage" "ghc" "ghci" "gimp" "git" "grep" "gtester" "hd" "head" "hexdump" "highlight" "hping3" "iconv" "iftop" "install" "ionice" "ip" "irb" "jjs" "join" "journalctl" "jq" "jrunscript" "ksh" "ksshell" "ldconfig" "ld.so" "less" "logsave" "look" "ltrace" "lua" "lwp-download" "lwp-request" "mail" "make" "man" "mawk" "more" "mount" "mtr" "mv" "mysql" "nano" "nawk" "nc" "nice" "nl" "nmap" "node" "nohup" "nroff" "nsenter" "od" "openssl" "paste" "pdb" "perl" "pg" "php" "pic" "pico" "pip" "pkexec" "pr" "pry" "psql" "puppet" "python" "rake" "readelf" "red" "redcarpet" "restic" "rev" "rlogin" "rlwrap" "rpm" "rpmquery" "rsync" "ruby" "run-mailcap" "run-parts" "rview" "rvim" "scp" "screen" "script" "sed" "service" "setarch" "sftp" "shuf" "slsh" "smbclient" "socat" "soelim" "sort" "split" "sqlite3" "ss" "ssh" "ssh-keyscan" "start-stop-daemon" "stdbuf" "strace" "strings" "su" "sysctl" "systemctl" "tac" "tail" "tar" "taskset" "tbl" "tclsh" "tcpdump" "tee" "telnet" "tftp" "time" "timeout" "tmux" "top" "troff" "ul" "unexpand" "uniq" "unshare" "update-alternatives" "uudecode" "uuencode" "valgrind" "vi" "view" "vim" "watch" "wget" "whois" "wish" "xargs" "xmodmap" "xxd" "xz" "yelp" "yum" "zip" "zsh" "zsoelim" "zypper" )

exploits=()

for lbinary in ${lbinaries[@]}
do
	for binary in ${binaries[@]}
	do
		if [[ $lbinary == $binary ]]
		then
			exploits+=("$lbinary")
			break
		fi
	done
done


if [[ ! -z ${exploits[@]} ]]
then
	echo "[+] Results ..."
	echo ""
	echo "~~ Number of Exploits : ${#exploits[@]} ~~"
	echo ""
	i=1
	for exploit in ${exploits[@]}
	do
		echo "[$i] $exploit :"
		echo "[URL] https://gtfobins.github.io/gtfobins/$exploit "
		echo "~~~~~~~~~~~~~~~~"
		echo ""

		((i=i+1))
	done
else 
	echo "[-] No Exploit Found !"
	echo ""
fi

echo "[+] Done ! Happy Hacking <33333"