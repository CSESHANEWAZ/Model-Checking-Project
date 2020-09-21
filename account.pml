mtype = {rec_userid_pass, validate_user, login_successful, permit_authorize, account}
active proctype acc()
{
S1: printf("account\n")
	if
	:: rec_userid_pass -> validate_user
	:: validate_user -> login_successful
	:: login_successful -> permit_authorize
	:: permit_authorize -> account
	goto S1
	fi;

}
