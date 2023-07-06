const { Given, When, Then } = require('@wdio/cucumber-framework');

Given(/^I on the login page$/, async () => {
    await browser.url("https://kasirdemo.belajarqa.com/");
    await browser.pause(1000);
    expect(browser.url).toHaveUrl("https://kasirdemo.belajarqa")
});

When(/^I input email : (.+) and password :(.+)$/, async (email, password) => {
    await $('#email').setValue(email);
    await $('#password').setValue(password);
    await $('button[type="submit"]').click();
});

Then(/^url contain (.+) and showing title kasirAja$/, async (pathName) => {
    
    const url = browser.getUrl();
    expect(url).toHaveUrlContaining(pathName)
});

