--- ./extra/yassl/taocrypt/src/integer.cpp.orig	2014-06-05 14:56:59.000000000 -0400
+++ ./extra/yassl/taocrypt/src/integer.cpp	2014-06-05 14:57:26.000000000 -0400
@@ -75,7 +75,7 @@
 CPP_TYPENAME AlignedAllocator<T>::pointer AlignedAllocator<T>::allocate(
                                            size_type n, const void *)
 {
-    if (n > this->max_size())
+    if (n > AlignedAllocator<T>::max_size())
         return 0;
     if (n == 0)
         return 0;
