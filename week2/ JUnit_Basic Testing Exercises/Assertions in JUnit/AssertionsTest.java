import org.junit.Test;
import static org.junit.Assert.*;

public class AssertionsTest {

    @Test
    public void testAssertions() {
        int sum = 2 + 3;
        assertEquals(5, sum);

        boolean isGreater = sum > 3;
        assertTrue(isGreater);

        boolean isLess = sum < 3;
        assertFalse(isLess);

        Object obj = null;
        assertNull(obj);

        Object realObj = new Object();
        assertNotNull(realObj);
    }
}

