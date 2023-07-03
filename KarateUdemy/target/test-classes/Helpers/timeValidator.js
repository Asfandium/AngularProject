function fn(s){
    var SimpleDateFormat = Java.type("java.text.SimpleDateFormate");
    var sdf = new SimpleDateFormat("yyy-MM-dd'T'HH:mm:ss.ms'Z'");
    try {
        sdf.parse(s).time;
        return true;
    } catch(e){
        karate.log('*** invalid date string:', s)
        return false;
    }
}