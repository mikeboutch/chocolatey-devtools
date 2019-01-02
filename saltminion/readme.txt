.\tools\Salt-Minion-2018.3.3-Py3-AMD64-Setup.exe /?
Help for Salt Minion installation
===============================================================================

/minion-name=           A string value to set the minion name. Default value is
                        'hostname'. Setting the minion name causes the installer
                        to use the default config or a custom config if defined

/master=                A string value to set the IP address or hostname of the
                        master. Default value is 'salt'. You may pass a single
                        master or a comma-separated list of masters. Setting
                        the master will cause the installer to use the default
                        config or a custom config if defined

/start-minion=          1 will start the minion service, 0 will not.
                        Default is 1

/start-minion-delayed   Set the minion start type to 'Automatic (Delayed Start)'

/default-config         Overwrite the existing config if present with the
                        default config for salt. Default is to use the existing
                        config if present. If /master and/or /minion-name is
                        passed, those values will be used to update the new
                        default config

                        Any existing config will be backed up by appending
                        a timestamp and a .bak extension. That includes\n                       the minion file and the minion.d directory

/custom-config=         A string value specifying the name of a custom config
                        file in the same path as the installer or the full path
                        to a custom config file. If /master and/or /minion-name
                        is passed, those values will be used to update the new
                        custom config

                        Any existing config will be backed up by appending
                        a timestamp and a .bak extension. That includes\n                       the minion file and the minion.d directory

/S                      Install Salt silently

/?                      Display this help screen

-------------------------------------------------------------------------------

Examples:

Salt-Minion-2018.3.3-Py3-AMD64-Setup.exe /S

Salt-Minion-2018.3.3-Py3-AMD64-Setup.exe /S /minion-name=myminion /master=master.mydomain.com /start-minion-delayed

===============================================================================

Salt-Minion-2018.3.3-Py3-AMD64-Setup.exe /S /custom-config=windows_minion.local /start-minion=0


