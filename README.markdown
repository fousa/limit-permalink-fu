LIMIT PERMALINK-FU
==================

You can add this plugin to your rails app when you want to limit the size of your permalinks!

HOWTO
-----

When you define a permalink in the model you can now add the limit option and define the maximum length of the permalink!

    has_permalink :title, :limit => 40

This limits the permalink to 40 characters...

Q?
--

Just ask here on Github!