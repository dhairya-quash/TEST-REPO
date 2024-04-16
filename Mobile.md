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

## <img src="https://github.com/dhairya-quash/TEST-REPO/assets/161799860/4ebb4556-ea34-494d-a35b-ed9c72a86e06" alt="apple logo" width="100"> iOS (Coming Soon)
