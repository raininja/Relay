/* -*- Mode: vala; indent-tabs-mode: t; c-basic-offset: 4; tab-width: 4 -*-  */
/*
 * irc.vala
 * Copyright (C) 2015 Kyle Agronick <agronick@gmail.com>
	 *
 * KyRC is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
	 *
 * KyRC is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

public class IRC {
	// Configuration Items
	public const uint16 DEFAULT_PORT = 6667; // NOT USED
	public const uint16 DEFAULT_INSECURE_PORT = 6667; // NOT USED
	public const uint16 DEFAULT_SECURE_PORT = 6697; // NOT USED
	public const int USER_LENGTH = 18;
	public const int USER_WIDTH = 126;
	public const string user_prefixes = "~&@%+";
	public const string spacers = " ,:/\\{}[];$#@!)(*&^\n\t\r";

	// Replies
	public const string RPL_WELCOME = 		"001";
	public const string RPL_YOURHOST = 		"002";
	public const string RPL_CREATED = 		"003";
	public const string RPL_MYINFO = 		"004";
	//  public const string RPL_BOUNCE = 	  	"005";
    public const string RPL_ISUPPORT = 		"005"; // 
	public const string RPL_STATSLINKINFO = "211";
	public const string RPL_STATSCOMMANDS = "212";
	public const string RPL_ENDOFSTATS = 	"219";
	public const string RPL_UMODEIS = 		"221";
	public const string RPL_SERVLIST = 		"234";
    public const string RPL_SERVLISTEND = 	"235";
	// ":I have <integer> clients and <integer> servers"
	public const string RPL_LUSERCLIENT = 	"251";
	public const string RPL_LUSEROP = 		"252";
	// "<integer> :operator(s) online" ??
	public const string RPL_LUSERUNKNOWN = 	"253";
	// "<integer> :unknown connection(s)" ??
	public const string RPL_LUSERCHANNELS = "254";
	// "<integer> :channels formed" ??
	public const string RPL_LUSERME = 		"255";
    public const string RPL_ADMINME = 		"256";
    public const string RPL_ADMINLOC1 = 	"257";
    public const string RPL_ADMINLOC2 = 	"258";
    public const string RPL_ADMINEMAIL = 	"259";
    public const string RPL_TRYAGAIN = 		"263";
    public const string RPL_LOCALUSERS = 	"265";
    public const string RPL_GLOBALUSERS = 	"266";
    public const string RPL_WHOISCERTFP = 	"276";
    public const string RPL_NONE = 			"300";
	public const string RPL_AWAY = 			"301";
    public const string RPL_USERHOST = 		"302";
    public const string RPL_ISON = 			"303";
	public const string RPL_UNAWAY = 		"305";
	public const string RPL_NOWAWAY = 		"306";
	public const string RPL_WHOISUSER = 	"311";
	public const string RPL_WHOISSERVER = 	"312";
	public const string RPL_WHOISOPERATOR = "313";
    public const string RPL_WHOWASUSER =    "314";
	public const string RPL_WHOISIDLE = 	"317";
	public const string RPL_ENDOFWHOIS = 	"318";
	public const string RPL_WHOISCHANNELS = "319";
    public const string RPL_LISTSTART =  	"321";
	public const string RPL_LIST = 			"322";
	public const string RPL_LISTEND = 		"323";
	public const string RPL_CHANNELMODEIS = "324";
	public const string RPL_CHANNEL_URL =	"328";
    public const string RPL_CREATIONTIME = 	"329";
	public const string RPL_AUTHEDAS = 		"330";
	public const string RPL_NOTOPIC = 		"331";
	public const string RPL_TOPIC = 		"332";
    public const string RPL_TOPICWHOTIME = 	"333";
	public const string RPL_INVITING = 		"341";
    public const string RPL_INVITELIST = 	"346";
    public const string RPL_ENDOFINVITELIST = 	"347";
    public const string RPL_EXCEPTLIST = 	"348";
    public const string RPL_ENDOFEXCEPTLIST = 	"349";
	// public const string 
	public const string RPL_VERSION = 		"351";
	public const string RPL_NAMREPLY = 		"353";
	public const string RPL_WHOSPCRPL =		"354";  // WHOX 
	public const string RPL_ENDOFNAMES = 	"366";
    public const string RPL_BANLIST = 		"367";
    public const string RPL_ENDOFBANLIST = 	"368";
    public const string RPL_ENDOFWHOWAS = 	"369";
	public const string RPL_MOTD = 			"372";
	public const string RPL_MOTDSTART = 	"375";
	public const string RPL_ENDOFMOTD = 	"376";
    public const string RPL_YOUREOPER = 	"381";
    public const string RPL_REHASHING = 	"382";
	// 
    public const string RPL_STARTTLS = 		"670";
    public const string RPL_LOGGEDIN = 		"900";
    public const string RPL_LOGGEDOUT = 	"901";
    public const string RPL_SASLSUCCESS = 	"903";
    public const string RPL_SASLMECHS = 	"908";
	// :There are <integer> users and <integer> services on <integer> servers"
	
	// Commands
	public const string PRIVATE_MESSAGE = 	"PRIVMSG";
	public const string USER_NAME_CHANGED = "NICK";
	public const string QUIT_MSG = 			"QUIT";
	public const string JOIN_MSG = 			"JOIN";
	public const string PART_MSG = 			"PART";
	public const string ACTION = 			"ACTION";

	public class CAPSubcommands {
        public const string LS = 			"LS";
        public const string LIST = 			"LIST";
        public const string REQ = 			"REQ";
        public const string ACK = 			"ACK";
        public const string NAK = 			"NAK";
        public const string END = 			"END";
        public const string NEW = 			"NEW";
        public const string DEL = 			"DEL";
    }

    // Connection messages
    public const string CAP = 				"CAP";
    public const string AUTHENTICATE = 		"AUTHENTICATE";
    public const string PASS = 				"PASS";
    public const string NICK = 				"NICK";
    public const string USER = 				"USER";
    public const string OPER = 				"OPER";
    public const string QUIT = 				"QUIT";

	// Channel operations
	public const string JOIN = 				"JOIN"; // doubled
	public const string PART = 				"PART";
	public const string TOPIC =				"TOPIC";
	public const string NAMES =				"NAMES";
	public const string LIST = 				"LIST";

	// Server queries and commands
	public const string MOTD = 				"MOTD";
	public const string VERSION = 			"VERSION";
	public const string ADMIN = 			"ADMIN";
	public const string CONNECT = 			"CONNECT";
	public const string TIME = 				"TIME";
	public const string STATS = 			"STATS";
	public const string INFO = 				"INFO";
	public const string MODE = 				"MODE";

	// Sending messages ??
	public const string PRIVMSG = 			"PRIVMSG";
	public const string NOTICE = 			"NOTICE";

	// Optional messages ?
	public const string USERHOST = 			"USERHOST";

	// Miscellaneous messages
	public const string KILL = 				"KILL";

	//Errors
    public const string ERR_UNKNOWNERROR = 		"400";
	public const string ERR_NOSUCHNICK = 		"401";
    public const string ERR_NOSUCHSERVER = 		"402";
	public const string ERR_NOSUCHCHANNEL = 	"403";
    public const string ERR_CANNOTSENDTOCHAN = 	"404";
    public const string ERR_TOOMANYCHANNELS = 	"405";
	public const string ERR_WASNOSUCHNICK = 	"406";
    public const string ERR_NORECIPIENT = 		"411";
    public const string ERR_NOTEXTTOSEND = 		"412";
	public const string ERR_UNKNOWNCOMMAND = 	"421";
	public const string ERR_NOMOTD = 			"422";
	public const string ERR_NONICKNAMEGIVEN = 	"431";
    public const string ERR_ERRONEOUSNICKNAME = "432";
	public const string ERR_NICKNAMEINUSE = 	"433";
	public const string ERR_USERNOTINCHANNEL = 	"441";
	public const string ERR_NOTONCHANNEL = 		"442";
    public const string ERR_USERONCHANNEL = 	"443";
	public const string ERR_NOTREGISTERED = 	"451";
	public const string ERR_NEEDMOREPARAMS = 	"461";
    public const string ERR_ALREADYREGISTERED = "462";
    public const string ERR_PASSWDMISMATCH = 	"464";
    public const string ERR_YOUREBANNEDCREEP = 	"465";
    public const string ERR_YOUWILLBEBANNED = 	"466";
	public const string ERR_LINKCHANNEL = 		"470";
    public const string ERR_CHANNELISFULL = 	"471";
	public const string ERR_UNKNOWNMODE = 		"472";
    public const string ERR_INVITEONLYCHAN = 	"473";
    public const string ERR_BANNEDFROMCHAN = 	"474";
    public const string ERR_BADCHANNELKEY = 	"475";
    public const string ERR_BADCHANMASK = 		"476";
	public const string ERR_ALREADYONCHANNEL = 	"479";
    public const string ERR_NOPRIVILEGES = 		"481";
	public const string ERR_CHANOPRIVSNEEDED = 	"482";
    public const string ERR_CANTKILLSERVER = 	"483";
	public const string ERR_NONONREG = 			"486";
    public const string ERR_NOOPERHOST = 		"491";
    public const string ERR_UMODEUNKNOWNFLAG = 	"501";
    public const string ERR_USERSDONTMATCH = 	"502";
	public const string ERR_STARTTLS = 			"691";
    public const string ERR_NOPRIVS = 			"723";
    public const string ERR_NICKLOCKED = 		"902";
    public const string ERR_SASLFAIL = 			"904";
    public const string ERR_SASLTOOLONG = 		"905";
    public const string ERR_SASLABORTED = 		"906";
    public const string ERR_SASLALREADY = 		"907";

	public static string remove_user_prefix (string name) {
		if (user_prefixes.index_of_char(name[0]) != -1)
			return name.substring(1);
		return name;
	}
}
