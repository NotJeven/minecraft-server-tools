case "$1" in
"nail")	wget -O nail.zip http://download1335.mediafire.com/npsjdh5dlbug/nhfhsg8lr5tvdnb/Nail+1.4e.zip;;
"eris") wget -O eris.zip https://github.com/NotJeven/eris/releases/download/v2.3/Eris.2.3.zip;;
"hoodoo") wget -O hoodoo.zip http://mc.extension.ws/HoodooDownload;;
"revolution") wget -O revolution.zip http://download1643.mediafire.com/0585jzx9jdyg/sugzbl6aldnbei4/Revolution+V1.2c+%28for+Minecraft+1.4.2%2B%29.zip;;
"dividedtogether") wget -O dividedtogether.zip http://download1349.mediafire.com/m580rn39h5lg/07jaytxu3dnz45d/Divided+Together+v2.1B.zip;;
"calamity") wget -O calamity.zip https://uca8ba10e96b6b23fedbfb09151c.dl.dropboxusercontent.com/cd/0/get/AhHCrXmFBX5aqpX9Pc0f2Te1wBjtUw7CtaayNOht56Hv_6YHbvCwDamlfTGoNY_oZPtVYVlZ8heJrr09QpI4U9Ubd_CzVWxvxFyCCFhu6NFpgA/file?_download_id=3888955810397038763811051957850382756028181728445562575202794218&_notify_domain=www.dropbox.com&dl=1;;

*) printf "\nError: \"$1\" not a valid map.\nUsage: map-repo mapname\nValid mapname: nail, eris hoodoo, revolution, dividedtogether, calamity.\n";;

esac
