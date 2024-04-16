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

## Android SDK Integration

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
