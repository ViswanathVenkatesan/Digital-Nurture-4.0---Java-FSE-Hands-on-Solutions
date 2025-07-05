package org.example;

public class MyService {
    private ExternalApi api;

    public MyService(ExternalApi api) {
        this.api = api;
    }

    public void processData() {
        api.sendData("Hello Mockito");
    }
}
