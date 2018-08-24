--[[
 /$$                           /$$             /$$                                     /$$                             /$$
| $$                          | $$            | $$                                    | $$                            | $$
| $$$$$$$   /$$$$$$   /$$$$$$$| $$   /$$  /$$$$$$$  /$$$$$$   /$$$$$$   /$$$$$$       | $$$$$$$  /$$   /$$  /$$$$$$$ /$$$$$$    /$$$$$$   /$$$$$$
| $$__  $$ |____  $$ /$$_____/| $$  /$$/ /$$__  $$ /$$__  $$ /$$__  $$ /$$__  $$      | $$__  $$| $$  | $$ /$$_____/|_  $$_/   /$$__  $$ /$$__  $$
| $$  \ $$  /$$$$$$$| $$      | $$$$$$/ | $$  | $$| $$  \ $$| $$  \ $$| $$  \__/      | $$  \ $$| $$  | $$|  $$$$$$   | $$    | $$$$$$$$| $$  \__/
| $$  | $$ /$$__  $$| $$      | $$_  $$ | $$  | $$| $$  | $$| $$  | $$| $$            | $$  | $$| $$  | $$ \____  $$  | $$ /$$| $$_____/| $$
| $$$$$$$/|  $$$$$$$|  $$$$$$$| $$ \  $$|  $$$$$$$|  $$$$$$/|  $$$$$$/| $$            | $$$$$$$/|  $$$$$$/ /$$$$$$$/  |  $$$$/|  $$$$$$$| $$
|_______/  \_______/ \_______/|__/  \__/ \_______/ \______/  \______/ |__/            |_______/  \______/ |_______/    \___/   \_______/|__/

copyright 2018

modern#8442

]]--

backdoor_buster = backdoor_buster or {}

backdoor_buster.protect_client = true; --runs backdoor protection on client
backdoor_buster.protect_server = true; --runs backdoor protection on server

// == CLIENT SETTINGS
  // == COMMAND CONFIG
    backdoor_buster.blacklist_commands = true; --stop blacklisted commands from getting through
    backdoor_buster.warn_commands = true; --warn about predefined commands being ran

// == SERVER SETTINGS
  // == SENDLUA CONFIG
    backdoor_buster.blacklist_sendlua = true; --stop blacklisted strings from getting through
    backdoor_buster.warn_sendlua = true; --warn about predefined strings being ran
    backdoor_buster.log_sendlua = true; --logs all runlua
    backdoor_buster.sendlua_log_file = "!sendlua_log.txt" --logs file name in the data folder
  // == COMPILESTRING CONFIG
    backdoor_buster.blacklist_compilestring = true; --stop blacklisted strings from getting through
    backdoor_buster.warn_compilestring = true; --warn about predefined strings being ran
    backdoor_buster.log_compilestring = true; --logs all compilestring
    backdoor_buster.compilestring_log_file = "!compilestring_log.txt" --logs file name in the data folder
  // == RUNSTRING CONFIG
    backdoor_buster.blacklist_runstring = true; --stop blacklisted strings from getting through
    backdoor_buster.warn_runstring = true; --warn about predefined strings being ran
    backdoor_buster.log_runstring = true; --logs all runstring
    backdoor_buster.runstring_log_file = "!runstring_log.txt" --logs file name in the data folder
  // == HTTP CONFIG
    backdoor_buster.blacklist_http = true; --stop blacklisted strings from getting through
    backdoor_buster.warn_http = true; --warn about predefined strings being ran
    backdoor_buster.log_http = true; --logs all http.fetches
    backdoor_buster.http_log_file = "!http_log.txt" --logs file name in the data folder
  // == HTTP CONFIG
    backdoor_buster.blacklist_netmessages = true; --stop blacklisted strings from getting through
    backdoor_buster.warn_netmessages = true; --warn about predefined strings being ran
    backdoor_buster.log_netmessages = true; --logs all netmessages
    backdoor_buster.netmessages_log_file = "!netmsg_log.txt" --logs file name in the data folder

backdoor_buster.blacklisted_commands = {
  "connect",
  "password",
  "disconnect",
  "retry"
}

backdoor_buster.warning_strings = {
  "RunString",
  "CompileString",
  "RunStringEx",
  "backdoor",
  "Backdoor",
  "Odium",
  "odium",
  "htx",
  "HTX"
}

backdoor_buster.blacklisted_strings = {
  "RunString",
  "CompileString",
  "RunStringEx",
  "connect",
  "password",
  "disconnect",
  "Odium",
  "odium",
  "htx",
  "HTX",
  "aHR0cA==",
  "RmV0Y2g=",
  "UnVuU3RyaW5n",
  "Q29tcGlsZVN0cmluZw==",
  "UnVuU3RyaW5nRXg="
}

backdoor_buster.whitelisted_files = { --for files you know are legit that show up
  "addons/cac-release-20180227/lua/cac/controllers/adminuibootstrapper.lua"
}
