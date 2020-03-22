@echo off
powercfg /x monitor-timeout-ac 600
powercfg /x monitor-timeout-dc 600
powercfg /x disk-timeout-ac 600
powercfg /x disk-timeout-dc 600
powercfg /x standby-timeout-ac 600
powercfg /x standby-timeout-dc 600
powercfg /x hibernate-timeout-ac 600
powercfg /x hibernate-timeout-dc 600
pause
