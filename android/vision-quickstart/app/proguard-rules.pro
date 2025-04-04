# ML Kit ProGuard Rules

# Keep ML Kit model classes
-keep class com.google.mlkit.** { *; }
-keep class com.google.android.gms.vision.** { *; }

# Keep ML Kit model files
-keep class com.google.mlkit.common.model.** { *; }
-keep class com.google.mlkit.common.internal.** { *; }

# Keep ML Kit internal classes
-keep class com.google.android.gms.internal.mlkit_vision_common.** { *; }
-keep class com.google.android.gms.internal.mlkit_vision_barcode.** { *; }
-keep class com.google.android.gms.internal.mlkit_vision_face.** { *; }
-keep class com.google.android.gms.internal.mlkit_vision_text.** { *; }
-keep class com.google.android.gms.internal.mlkit_vision_mediapipe.** { *; }
-keep class com.google.android.gms.internal.mlkit_vision_acceleration.** { *; }

# Keep native methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep Parcelable implementations
-keep class * implements android.os.Parcelable {
    static ** CREATOR;
}

# Keep Serializable implementations
-keepnames class * implements java.io.Serializable

# Keep R8 full mode
-keepattributes SourceFile,LineNumberTable
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes Exceptions

# Keep AndroidX components
-keep class androidx.** { *; }
-keep interface androidx.** { *; }
-keep class * extends androidx.** { *; }
-keep class * implements androidx.** { *; }

# Keep CameraX components
-keep class androidx.camera.** { *; }
-keep interface androidx.camera.** { *; }
-keep class * extends androidx.camera.** { *; }
-keep class * implements androidx.camera.** { *; }

# Keep ViewModel components
-keep class * extends androidx.lifecycle.ViewModel {
    <init>();
}
-keep class * extends androidx.lifecycle.AndroidViewModel {
    <init>(android.app.Application);
}

# Keep Coroutines
-keepnames class kotlinx.coroutines.internal.MainDispatcherFactory {}
-keepnames class kotlinx.coroutines.CoroutineExceptionHandler {}

# Keep Kotlin Metadata
-keep class kotlin.Metadata { *; }
-dontwarn kotlin.**
-keepclassmembers class **$WhenMappings {
    <fields>;
}
-keepclassmembers class kotlin.Metadata {
    public <methods>;
}

# Keep Kotlin Serialization
-keepattributes *Annotation*, InnerClasses
-dontnote kotlinx.serialization.AnnotationsKt
-keepclassmembers,allowshrinking,allowobfuscation class * {
  @kotlinx.serialization.KSerializer <methods>;
}

# Keep Kotlin Coroutines
-keepnames class kotlinx.coroutines.internal.MainDispatcherFactory {}
-keepnames class kotlinx.coroutines.CoroutineExceptionHandler {}
-keepclassmembers,allowshrinking,allowobfuscation class kotlin.coroutines.** {
    volatile <fields>;
}

# Keep Kotlin Reflection
-keep class kotlin.reflect.** { *; }
-keep class kotlin.Metadata { *; }
-dontwarn kotlin.reflect.** 