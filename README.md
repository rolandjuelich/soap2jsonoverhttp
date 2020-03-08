This solution is based on [wsdl2rest](https://github.com/jboss-fuse/wsdl2rest/tree/master).

In order to generate endpoint resources use
`./generate.sh <PLACE_YOUR_WSDL_URL_HERE>`


##### sandbox example
You can it with [spring soap example](https://github.com/eugenp/tutorials/tree/master/spring-soap).

1. start the soap service after cloning the repository
2. generate the endpoint `./generate.sh http://localhost:8080/ws/countries.wsdl`
3. check the the referred classes in `src/main/resources/applicationContext.xml` because the package names might be messy in the first place
4. start `Soap2JsonOverHttp`
5. test the new endpoint `curl -d '{"name":"Spain"}' -H 'Content-Type: application/json' -X GET http://localhost:8081/jaxrs/country/any`
