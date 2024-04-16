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


## ![apple](https://github.com/dhairya-quash/TEST-REPO/assets/161799860/4ebb4556-ea34-494d-a35b-ed9c72a86e06)<svg viewBox="0 0 72 72" xmlns="http://www.w3.org/2000/svg"><path d="m35.1564 22.0973c-.0375-.3071-.0592-.6303-.0592-.97 0-2.4577 1.0669-5.0879 2.9617-7.2385.946-1.0889 2.1491-1.9943 3.608-2.7165 1.4558-.7115 2.8329-1.1049 4.128-1.1723.0378.3422.0535.6845.0535 1.0241 0 2.5601-.9327 4.9505-2.7918 7.163-.8303.9733-1.725 1.7946-2.6718 2.4309m15.314 30.2229c-.772 1.7884-1.6858 3.4347-2.7446 4.9483-1.4432 2.0633-2.6249 3.4915-3.5356 4.2847-1.4117 1.3018-2.9242 1.9685-4.5439 2.0064-1.1627 0-2.565-.3317-4.1972-1.0048-1.6377-.6699-3.1426-1.0016-4.5187-1.0016-1.4432 0-2.9911.3317-4.6466 1.0016-1.6582.6731-2.9939 1.0238-4.0152 1.0586-1.5532.0663-3.1013-.6194-4.6466-2.0602-.9863-.8627-2.22-2.3415-3.6978-4.4364-1.5857-2.2372-2.8893-4.8314-3.9106-7.7889-1.0937-3.1946-1.642-6.2881-1.642-9.2829 0-3.4306.7393-6.3895 2.22-8.869 1.1637-1.9916 2.7118-3.5627 4.6494-4.716s4.0312-1.7411 6.2858-1.7787c1.2337 0 2.8515.3827 4.8619 1.1347 2.0047.7546 3.292 1.1372 3.8563 1.1372.4219 0 1.8519-.4474 4.2761-1.3394 2.2924-.8272 4.2272-1.1698 5.8122-1.0348 4.2949.3475 7.5217 2.0453 9.6676 5.104-3.8412 2.3338-5.7413 5.6027-5.7035 9.796.0346 3.2663 1.2163 5.9844 3.5387 8.1426 1.0524 1.0016 2.2278 1.7758 3.5355 2.3256-.2836.8247-.5829 1.6146-.9012 2.373z" fill="none" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/></svg> iOS (Coming Soon)
