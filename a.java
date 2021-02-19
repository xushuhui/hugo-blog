
public enum Logger {
  INSTANCE;

  private FileWriter writer = new FileWriter(new File("/Users/x/log.txt"), true);


  public void log(String message) {
   
​    writer.write(mesasge);

  }

}
