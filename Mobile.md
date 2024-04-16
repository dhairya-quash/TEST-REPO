<p align="center"> Sherlock - DevTool for Automated Bug Reporting & Resolution </p>
<!---
--->
<div align="center"> <img src="https://github.com/dhairya-quash/TEST-REPO/assets/161799860/b9e4957b-f1b9-46fa-bce9-216bc6005633" alt="Logo" width="300"> </div>



### <p align="center"><strong>Mobile Testing should not be slow and tangled.</strong></p>

### <p align="center"><strong>We’re on a mission to make it smooth and simple</strong></p>

| **Reporting** 🗒️ | **Resolution** ✅ | **Collaboration** 🤝🏻 |
| :--------:    | :---------:    | :------------:    |
| Raise comprehensive tickets with minimal effort | Know exactly where the bug is - and how to fix it | Manage all your testing workflows in a single place |
---

## <svg enable-background="new 0 0 48 48" height="48" viewBox="0 0 48 48" width="48" xmlns="http://www.w3.org/2000/svg"><g fill="#7cb342"><path d="m12 29.001c0 1.104-.896 2-2 2-1.104 0-2-.896-2-2v-9c0-1.104.896-2 2-2 1.104 0 2 .896 2 2z"/><path d="m40 29.001c0 1.104-.896 2-2 2-1.104 0-2-.896-2-2v-9c0-1.104.896-2 2-2 1.104 0 2 .896 2 2z"/><path d="m22 40c0 1.104-.896 2-2 2-1.104 0-2-.896-2-2v-9c0-1.104.896-2 2-2 1.104 0 2 .896 2 2z"/><path d="m30 40c0 1.104-.896 2-2 2-1.104 0-2-.896-2-2v-9c0-1.104.896-2 2-2 1.104 0 2 .896 2 2z"/><path d="m14 18.001v14.999c0 1.104.896 2 2 2h16c1.104 0 2-.896 2-2v-14.999z"/><path d="m24 8c-6 0-9.655 3.645-10 8h20c-.346-4.355-4-8-10-8zm-4 5.598c-.552 0-1-.448-1-1s.448-1 1-1 1 .448 1 1-.448 1-1 1zm8 0c-.553 0-1-.448-1-1s.447-1 1-1 1 .448 1 1-.447 1-1 1z"/></g><path d="m30 7-1.666 2.499" fill="none" stroke="#7cb342" stroke-linecap="round" stroke-width="2"/><path d="m18 7 1.333 2.082" fill="none" stroke="#7cb342" stroke-linecap="round" stroke-width="2"/></svg>![android-os](https://github.com/dhairya-quash/TEST-REPO/assets/161799860/2634d287-a52f-4245-b16d-eccd42ba1b21) Android SDK Integration

**Step 1 -**

Add the plugin as a dependency to your project - level.build.gradle file
```
allprojects {
    repositories {
      ...
      mavenCentral()
    }
  }
  ```

**Step 2 -**

Add the dependency
```
dependencies {
    implementation("com.quashbugs:sherlock:1.1.2")
  }
  ```

**Step 3 -**

With this you can initialize Quash inside the onCreate of the Application class of your app
```
Quash.initialize(
    this,
    orgUniqueKey = undefined,
    readNetworkLogs = true
  )
```
**Include a boolean flag "readNetworkLogs" to determine whether network logs should be enabled. Additionally, integrate a NetworkInterceptor(step 4) to facilitate the reading of these logs.**

**Step 4 -**

Configure OkHttp:<br>

Assuming you already have an instance of OkHttpClient, you can add an quashinterceptor to it. If you don't have an OkHttpClient instance, you need to create one.
```
val client = OkHttpClient.Builder()
  .addInterceptor(Quash.getInstance().networkInterceptor)
  .build()
```
This example assumes that the Quash.getInstance().networkInterceptor returns an instance of QuashInterceptor

## <img src="https://github.com/dhairya-quash/TEST-REPO/assets/161799860/7a53e2f2-1bbb-4c3a-b4ba-5039b0d52897" alt="apple logo" width="100"> iOS (Coming Soon)
<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="100" height="100" viewBox="0 0 30 30"
style="fill:#1A1A1A;">
    <path d="M25.565,9.785c-0.123,0.077-3.051,1.702-3.051,5.305c0.138,4.109,3.695,5.55,3.756,5.55 c-0.061,0.077-0.537,1.963-1.947,3.94C23.204,26.283,21.962,28,20.076,28c-1.794,0-2.438-1.135-4.508-1.135 c-2.223,0-2.852,1.135-4.554,1.135c-1.886,0-3.22-1.809-4.4-3.496c-1.533-2.208-2.836-5.673-2.882-9 c-0.031-1.763,0.307-3.496,1.165-4.968c1.211-2.055,3.373-3.45,5.734-3.496c1.809-0.061,3.419,1.242,4.523,1.242 c1.058,0,3.036-1.242,5.274-1.242C21.394,7.041,23.97,7.332,25.565,9.785z M15.001,6.688c-0.322-1.61,0.567-3.22,1.395-4.247 c1.058-1.242,2.729-2.085,4.17-2.085c0.092,1.61-0.491,3.189-1.533,4.339C18.098,5.937,16.488,6.872,15.001,6.688z"></path>
</svg>

