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

## ![apple](https://github.com/dhairya-quash/TEST-REPO/assets/161799860/82a08fca-05c9-4868-94c7-5e3a5bc2f4ca)
<svg enable-background="new 0 0 48 48" height="48" viewBox="0 0 48 48" width="48" xmlns="http://www.w3.org/2000/svg"><g fill="#7cb342"><path d="m12 29.001c0 1.104-.896 2-2 2-1.104 0-2-.896-2-2v-9c0-1.104.896-2 2-2 1.104 0 2 .896 2 2z"/><path d="m40 29.001c0 1.104-.896 2-2 2-1.104 0-2-.896-2-2v-9c0-1.104.896-2 2-2 1.104 0 2 .896 2 2z"/><path d="m22 40c0 1.104-.896 2-2 2-1.104 0-2-.896-2-2v-9c0-1.104.896-2 2-2 1.104 0 2 .896 2 2z"/><path d="m30 40c0 1.104-.896 2-2 2-1.104 0-2-.896-2-2v-9c0-1.104.896-2 2-2 1.104 0 2 .896 2 2z"/><path d="m14 18.001v14.999c0 1.104.896 2 2 2h16c1.104 0 2-.896 2-2v-14.999z"/><path d="m24 8c-6 0-9.655 3.645-10 8h20c-.346-4.355-4-8-10-8zm-4 5.598c-.552 0-1-.448-1-1s.448-1 1-1 1 .448 1 1-.448 1-1 1zm8 0c-.553 0-1-.448-1-1s.447-1 1-1 1 .448 1 1-.447 1-1 1z"/></g><path d="m30 7-1.666 2.499" fill="none" stroke="#7cb342" stroke-linecap="round" stroke-width="2"/><path d="m18 7 1.333 2.082" fill="none" stroke="#7cb342" stroke-linecap="round" stroke-width="2"/></svg><path d="m318.7 268.7c-.2-36.7 16.4-64.4 50-84.8-18.8-26.9-47.2-41.7-84.7-44.6-35.5-2.8-74.3 20.7-88.5 20.7-15 0-49.4-19.7-76.4-19.7-55.8.9-115.1 44.5-115.1 133.2q0 39.3 14.4 81.2c12.8 36.7 59 126.7 107.2 125.2 25.2-.6 43-17.9 75.8-17.9 31.8 0 48.3 17.9 76.4 17.9 48.6-.7 90.4-82.5 102.6-119.3-65.2-30.7-61.7-90-61.7-91.9zm-56.6-164.2c27.3-32.4 24.8-61.9 24-72.5-24.1 1.4-52 16.4-67.9 34.9-17.5 19.8-27.8 44.3-25.6 71.9 26.1 2 49.9-11.4 69.5-34.3z"/></svg> iOS (Coming Soon)
