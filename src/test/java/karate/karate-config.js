function fn() {
    console.log("Hello world");
    var config = {
        name : "Indajit",
        global_baseURL : "https://reqres.in/"
    };

    var env = karate.env
    karate.log("Env is : ", env);



    karate.configure('connectTimeout',5000);
    karate.configure('readTimeout', 5000);
    return config;
}