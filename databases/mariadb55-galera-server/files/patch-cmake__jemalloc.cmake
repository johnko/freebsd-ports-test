--- ./cmake/jemalloc.cmake.orig	2014-03-28 14:10:14.000000000 -0400
+++ ./cmake/jemalloc.cmake	2014-03-28 14:10:58.000000000 -0400
@@ -50,9 +50,9 @@
 
 MACRO (CHECK_JEMALLOC)
   IF(WITH_JEMALLOC STREQUAL "system" OR WITH_JEMALLOC STREQUAL "yes")
-    CHECK_LIBRARY_EXISTS(jemalloc malloc_stats_print "" HAVE_JEMALLOC)
+    CHECK_LIBRARY_EXISTS(c malloc_stats_print "" HAVE_JEMALLOC)
     IF (HAVE_JEMALLOC)
-      SET(LIBJEMALLOC jemalloc)
+      SET(LIBJEMALLOC c)
     ELSEIF (WITH_JEMALLOC STREQUAL "system")
       MESSAGE(FATAL_ERROR "system jemalloc is not found")
     ELSEIF (WITH_JEMALLOC STREQUAL "yes")
