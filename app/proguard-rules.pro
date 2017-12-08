# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

# https://stackoverflow.com/questions/33547643/how-to-use-kotlin-with-proguard#34159813 -> NOPE
-dontwarn kotlin.**
-assumenosideeffects class kotlin.jvm.internal.Intrinsics {
    static void checkParameterIsNotNull(java.lang.Object, java.lang.String);
}

# Trying the build to pass -> NOPE
-keepclassmembers class ** {
   public static *** pure(...);
}
-keepclassmembers class ** {
   public static *** parse(...);
}
-keep class kategory.** { *; }

# https://stackoverflow.com/questions/44161717/proguard-and-kotlin-reflect-kotlin-annotations -> NOPE
-keep class org.jetbrains.kotlin.** { *; }
-keep class org.jetbrains.annotations.** { *; }
-keepclassmembers class ** {
  @org.jetbrains.annotations.ReadOnly public *;
}
