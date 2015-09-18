--- lib/gitlab/markdown/autolink_filter.rb.orig	2015-08-04 08:11:52 UTC
+++ lib/gitlab/markdown/autolink_filter.rb
@@ -1,5 +1,6 @@
 require 'html/pipeline/filter'
 require 'uri'
+require 'rinku'
 
 module Gitlab
   module Markdown
