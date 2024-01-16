function fn() {
    
    var config = karate.read('classpath:configurations.yml');

    var env = karate.env
    karate.log("Env is : ", env);

    karate.log("Setting "+env+" base url: "+config[env].global_baseURL); 

    karate.configure('connectTimeout',config[env].connectTimeout);
    karate.configure('readTimeout', config[env].readTimeout);
    
    return config[env];
}