public class HelloWorld {
    public static String hello(String name) {
        if (name == null || name.length() == 0 ){
            return ("Hello, World!");
        } else {
            String output = String.format("Hello, %s!", name);
            return(output);
        }
    }
}
