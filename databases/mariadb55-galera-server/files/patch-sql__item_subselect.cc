--- ./sql/item_subselect.cc.orig	2014-03-28 14:40:52.000000000 -0400
+++ ./sql/item_subselect.cc	2014-03-28 14:41:42.000000000 -0400
@@ -1317,7 +1317,7 @@
   Item_subselect()
 {
   DBUG_ENTER("Item_exists_subselect::Item_exists_subselect");
-  bool val_bool();
+//  bool val_bool();
   init(select_lex, new select_exists_subselect(this));
   max_columns= UINT_MAX;
   null_value= FALSE; //can't be NULL
