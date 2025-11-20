package org.example;

import com.microsoft.playwright.*;
import org.junit.jupiter.api.*;
import static org.junit.jupiter.api.Assertions.*;

public class PlaywrightTest {
    @Test
    void shouldShowPlaywrightHome() {
        try (Playwright playwright = Playwright.create()) {
            Browser browser = playwright.chromium().launch(new BrowserType.LaunchOptions()
                    .setHeadless(!Boolean.getBoolean("headed")));
            Page page = browser.newPage();
            page.navigate("https://playwright.dev");
            page.waitForTimeout(2000);
            assertTrue(page.title().contains("Playwright"));
        }
    }
}
