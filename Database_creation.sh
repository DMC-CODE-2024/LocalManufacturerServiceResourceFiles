source ~/.bash_profile

source $commonConfigurationFile
dbDecryptPassword=$(java -jar  ${pass_dypt} spring.datasource.password)

mysql  -h$dbIp -P$dbPort -u$dbUsername -p${dbDecryptPassword} $appdbName <<EOFMYSQL

insert into sys_param(tag, value) VALUES ('trc_localmfg_imei_update_last_run_time', '2020-01-01') ;

EOFMYSQL
