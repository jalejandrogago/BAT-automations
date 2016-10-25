@echo off
color 1F

rem ----------------------------------------------------------
rem Task   :  Installation and configuration of Synapse PACS
rem Author :  José Alejandro Gago @jalejandrogago
rem Date   :  10-10-2016
rem Tested on Windows 7 x86 x64
rem ----------------------------------------------------------

	title Installation and configuration of Synapse PACS
    echo.
    echo ********************************************
    echo **********   SYNAPSE CREDENTIALS  **********
    echo ********************************************
	echo.
	echo.
	echo [ + ] ADDING PACS
	echo.
	     cmdkey /add:[pacs_credentials] /user:[pacs_domain\pacs_user] /pass:[pacs_password]
    echo.
	echo.
	echo [ + ] ADDING PACS
	echo.
         cmdkey /add:[pacs_credentials] /user:[pacs_domain\pacs_user] /pass:[pacs_password]
	echo.
	echo.
	echo [ + ] ADDING PACS
	echo.
         cmdkey /add:[pacs_credentials] /user:[pacs_domain\pacs_user] /pass:[pacs_password]
    echo.
    echo.
	echo [ + ] REMOVING OLD CREDENTIALS
	echo.
         cmdkey /delete:[old_credentials]
         cmdkey /delete:[old_credentials]
         cmdkey /delete:[old_credentials]
         cmdkey /delete:[old_credentials]
    echo.
    echo.
    echo ********************************************
    echo **********      EDITING HOST      **********
    echo ********************************************
    echo. 
    echo. 
	echo [ + ] ADDING NEW TABLE SYNAPSE PACS
	echo.
         set host=%SystemRoot%\system32\drivers\etc\hosts
         attrib -r %host% >NUL

         if not %errorlevel%==0 (exit)

    echo.>>"%host%"
    echo # ..............   table Synapse   ..............>>"%host%"
    echo.>>"%host%"
    echo [pacs_ip]      [pacs_domain]>>"%host%"
    echo [pacs_ip]      [pacs_domain]>>"%host%"
    echo [pacs_ip]      [pacs_domain]>>"%host%" 
    echo [pacs_ip]      [pacs_domain]>>"%host%"
    echo.>>"%host%"         
    echo # ...............................................>>"%host%"
    echo.
    echo.
    echo [ + ] REMOVING OLD TABLE SYNAPSE
    echo.
         find "[pacs_old_domain]" %host%
         find "[pacs_old_domain]" %host%
         Type "%WINDIR%\System32\drivers\etc\hosts" | Findstr /V /I "[pacs_old_domain] [pacs_old_domain]" > "%WINDIR%\System32\drivers\etc\hosts.tmp"
         del "%WINDIR%\System32\drivers\etc\hosts"
         rename "%WINDIR%\System32\drivers\etc\hosts.tmp" hosts
    echo.       
    echo.
    echo [ + ] READING THE NEW %host%
    echo.
    echo.
         type %host%
    echo.    
    echo.
    echo [ + ] PACS STARTED IN INTERNET EXPLORER
    echo.
    echo.   
         start iexplore http://pacs_url/

pause

exit
