--- scripts/wsrep_sst_xtrabackup.sh.orig	2014-04-02 00:11:06.000000000 +0200
+++ scripts/wsrep_sst_xtrabackup.sh	2014-04-02 00:18:52.000000000 +0200
@@ -285,7 +285,7 @@
 get_proc()
 {
     set +e
-    nproc=$(grep -c processor /proc/cpuinfo)
+    nproc=$(sysctl hw.ncpu|awk -F '[: ]' '{ print $3 }')
     [[ -z $nproc || $nproc -eq 0 ]] && nproc=1
     set -e
 }
@@ -371,7 +371,7 @@
     local MODULE=$3
     for i in {1..50}
     do
-        ss -p state listening "( sport = :$PORT )" | grep -qE 'socat|nc' && break
+        sockstat -l -p $PORT -P tcp,udp | grep -qE 'socat|nc' && break
         sleep 0.2
     done
     if [[ $incremental -eq 1 ]];then 
