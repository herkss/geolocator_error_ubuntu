# 에러 해결됨  ^^  

=====================================================

Yamahost님께서 답변해주신 내용으로 해결됨

kotlin버전 호환문제입니다. kotlin 버전을 1.9.0으로 변경해보세요.
android-setting.gradle에 들어가셔서
id "org.jetbrains.kotlin.android" version "1.9.0" apply false
이렇게 바꾸세요.


===================================================================\


Launching lib\main.dart on sdk gphone64 x86 64 in debug mode...

Running Gradle task 'assembleDebug'...

e: C:/Users/herks/.gradle/caches/transforms-3/431ce31617111116ed092b20fb775fda/transformed/jetified-kotlin-stdlib-1.9.0.jar!/META-INF/kotlin-stdlib-jdk7.kotlin_module: Module was compiled with an incompatible version of Kotlin. The binary version of its metadata is 1.9.0, expected version is 1.7.1.

e: C:/Users/herks/.gradle/caches/transforms-3/431ce31617111116ed092b20fb775fda/transformed/jetified-kotlin-stdlib-1.9.0.jar!/META-INF/kotlin-stdlib-jdk8.kotlin_module: Module was compiled with an incompatible version of Kotlin. The binary version of its metadata is 1.9.0, expected version is 1.7.1.

e: C:/Users/herks/.gradle/caches/transforms-3/431ce31617111116ed092b20fb775fda/transformed/jetified-kotlin-stdlib-1.9.0.jar!/META-INF/kotlin-stdlib.kotlin_module: Module was compiled with an incompatible version of Kotlin. The binary version of its metadata is 1.9.0, expected version is 1.7.1.

e: C:/Users/herks/.gradle/caches/transforms-3/c321e7444a5c731da2398570d6ef04f1/transformed/jetified-kotlin-stdlib-common-1.9.0.jar!/META-INF/kotlin-stdlib-common.kotlin_module: Module was compiled with an incompatible version of Kotlin. The binary version of its metadata is 1.9.0, expected version is 1.7.1.

​

FAILURE: Build failed with an exception.

​

* What went wrong:

Execution failed for task ':app:compileDebugKotlin'.

> A failure occurred while executing org.jetbrains.kotlin.compilerRunner.GradleCompilerRunnerWithWorkers$GradleKotlinCompilerWorkAction

   > Compilation error. See log for more details

​

* Try:

> Run with --stacktrace option to get the stack trace.

> Run with --info or --debug option to get more log output.

> Run with --scan to get full insights.

​

* Get more help at https://help.gradle.org

​

BUILD FAILED in 13s

​

┌─ Flutter Fix ──────────────────────────────────────────────────────────────────────────────┐

│ [!] Your project requires a newer version of the Kotlin Gradle plugin.                     │

│ Find the latest version on https://kotlinlang.org/docs/releases.html#release-details, then │

│ update C:\Users\herks\StudioProjects\untitled2\android\build.gradle:                       │

│ ext.kotlin_version = '<latest-version>'                                                    │

└────────────────────────────────────────────────────────────────────────────────────────────┘

Error: Gradle task assembleDebug failed with exit code 1
