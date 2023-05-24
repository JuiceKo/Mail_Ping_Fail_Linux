# Mail_Ping_Fail_Linux
Bash script that send an email if a ping fail

In order to use this script, you have to install and configure mailutils.

Here is a tutorial to do it : https://www.youtube.com/watch?v=bjkyUPZzYzk

######################################################################################

SCRIPT

In the script, in the function, there ise the line message="$1"
This line permit to use the first argument that we give after calling the function as the text that we send in the mail.

So, if you want to modify what's inside the mail, you have to modify this line in the Loop :
