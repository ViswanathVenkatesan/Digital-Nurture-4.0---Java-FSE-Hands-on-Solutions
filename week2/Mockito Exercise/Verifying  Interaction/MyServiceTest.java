package org.example;

import org.junit.jupiter.api.Test;
import static org.mockito.Mockito.*;

public class MyServiceTest {

    @Test
    public void testSendDataInteraction() {
        // Create a mock object
        ExternalApi mockApi = mock(ExternalApi.class);

        // Inject mock into service
        MyService service = new MyService(mockApi);

        // Call the method that should use the mock
        service.processData();

        // Verify that the method was called with the correct argument
        verify(mockApi).sendData("Hello Mockito");
    }
}
