    function deployWar($webapp){

    # stop tomcat
    cd C:\Program Files\tomcat\apache-tomcat-8.5.72\bin
    shutdown.bat
    
    # remove previous war files
    Remove-Item C:\Program Files\tomcat\apache-tomcat-8.5.72\webapps\*.war -Force -ErrorAction Ignore
    
    # mvn package
    cd C:\Users\Administrator\Documents\java\HelloWorld-Tomcat
    mvn clean install
    
    #copy new war file to tomcat
    cp C:\Users\Administrator\Documents\java\HelloWorld-Tomcat\target\*.war  C:\Program Files\tomcat\apache-tomcat-8.5.72\webapps\
    
    # start tomcat
    cd C:\Program Files\tomcat\apache-tomcat-8.5.72\bin
    startup.bat
    
    }
    
    #vars
    $path='C:\Users\Administrator\Documents\java\HelloWorld-Tomcat\deployWar.properties'


    $output= Get-content $path| ConvertFrom-StringData



    $url=$output.url
    $destination=$output.destination
    $unzip_destination=$output.unzip_destination
    $port=$output.port
    $version=$output.version



    install $url $version $destination $unzip_destination $port