mkdir build
cd build
git clone https://github.com/jboss-fuse/wsdl2rest.git
cd wsdl2rest
git checkout master
mvn clean install -DskipTests
cd ..
unzip wsdl2rest/dist/target/wsdl2rest-dist-*.zip 
mv wsdl2rest-*SNAPSHOT wsdl2rest-generator
sh wsdl2rest-generator/bin/wsdl2rest.sh --out . --wsdl http://localhost:8080/ws/countries.wsdl
cp -Rfv java/* ../src/main/java
cp -fv camel/wsdl2rest-camel-context.xml ../src/main/resources/applicationContext.xml
cd ..


