--- scripts/wsrep_sst_xtrabackup-v2.sh.orig	2014-04-02 00:19:22.000000000 +0200
+++ scripts/wsrep_sst_xtrabackup-v2.sh	2014-04-02 00:21:39.000000000 +0200
@@ -282,7 +282,7 @@
     progress=$(parse_cnf sst progress "")
     rebuild=$(parse_cnf sst rebuild 0)
     ttime=$(parse_cnf sst time 0)
-    cpat=$(parse_cnf sst cpat '.*galera\.cache$\|.*sst_in_progress$\|.*grastate\.dat$\|.*\.err$\|.*\.log$\|.*RPM_UPGRADE_MARKER$\|.*RPM_UPGRADE_HISTORY$')
+    cpat=$(parse_cnf sst cpat '.*galera\.cache$|.*sst_in_progress$|.*grastate\.dat$|.*\.err$|.*\.log$|.*RPM_UPGRADE_MARKER$|.*RPM_UPGRADE_HISTORY$')
     incremental=$(parse_cnf sst incremental 0)
     ealgo=$(parse_cnf xtrabackup encrypt "")
     ekey=$(parse_cnf xtrabackup encrypt-key "")
@@ -330,7 +330,7 @@
 get_proc()
 {
     set +e
-    nproc=$(grep -c processor /proc/cpuinfo)
+    nproc=$(sysctl hw.ncpu|awk -F '[: ]' '{ print $3 }')
     [[ -z $nproc || $nproc -eq 0 ]] && nproc=1
     set -e
 }
@@ -429,7 +429,7 @@
     local MODULE=$3
     for i in {1..50}
     do
-        ss -p state listening "( sport = :$PORT )" | grep -qE 'socat|nc' && break
+        sockstat -l -p $PORT -P tcp,udp | grep -qE 'socat|nc' && break
         sleep 0.2
     done
     if [[ $incremental -eq 1 ]];then 
@@ -771,10 +771,10 @@
         if [[ $incremental -ne 1 ]];then 
             if [[ $speciald -eq 1 ]];then 
                 wsrep_log_info "Cleaning the existing datadir and innodb-data/log directories"
-                find $ib_home_dir $ib_log_dir $DATA -mindepth 1  -regex $cpat  -prune  -o -exec rm -rfv {} 1>&2 \+
+                find -E $ib_home_dir $ib_log_dir $DATA -mindepth 1  -not -regex $cpat  -prune  -exec rm -rfv {} 1>&2 \+
             else 
                 wsrep_log_info "Cleaning the existing datadir"
-                find $DATA -mindepth 1  -regex $cpat  -prune  -o -exec rm -rfv {} 1>&2 \+
+                find -E $DATA -mindepth 1  -not -regex $cpat  -prune  -exec rm -rfv {} 1>&2 \+
             fi
             tempdir=$(parse_cnf mysqld log-bin "")
             if [[ -n ${tempdir:-} ]];then
