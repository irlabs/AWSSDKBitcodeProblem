# AWSSDKBitcodeProblem

###Example code to demonstrate a bug with AWS SDK for iOS with bitcode

There is a problem with the latest version (2.3.3) of the AWS SDK for iOS and Bitcode.

When I

1. start a vanilla Xcode iOS swift project (with *Enable Bitcode = YES* by default),
2. add the `AWSCore.framework`,
3. use the `AWSCredentialsProvider` protocol simply like this:
    ```
import AWSCore

let provider = AWSAnonymousCredentialsProvider()
print(provider)
```
4. and then try to **Archive**,

Xcode fails and gives me this error:

```
ld: bitcode bundle could not be generated because '.../BitcodeBugExample/lib/
AWSCore.framework/AWSCore(AWSCredentialsProvider.o)' was built without full bitcode.
All object files and libraries for bitcode must be generated from Xcode Archive or
Install build for architecture arm64
clang: error: linker command failed with exit code 1 (use -v to see invocation)
```

----

When I build the `AWSCore.framework` myself with `OTHER_CFLAGS="-fembed-bitcode -Qunused-arguments"` in `Scripts/SdkPackage.sh` it *does* work.


I am Running Xcode 7.2 
