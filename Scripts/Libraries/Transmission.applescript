
on logit(log_string)
	my logit_withfile(log_string, "applescript_debug.log")	
end logit

on logit_clean()
	my logit_clean_withfile("applescript_debug.log")
end logit_clean

on logit_withfile(log_string, log_file)
	log log_string
	do shell script "echo `date '+%Y-%m-%d %T: '`\"" & log_string & "\" >> $HOME/Library/Logs/" & log_file
end logit

on logit_clean_withfile(log_file)
	do shell script "echo > $HOME/Library/Logs/" & log_file
end logit_clean