package com.netyara.paymo;
import android.os.Build;
import android.os.Bundle;
import io.flutter.embedding.android.FlutterActivity;

public class MainActivity extends FlutterActivity {
    public void onCreate(Bundle savedInstanceState) {

        // use software rendering (ideally only when you need to)
        if (Build.VERSION.SDK_INT < 19 ) {
            getIntent().putExtra("enable-software-rendering", true);
        }
        // start Flutter
        super.onCreate(savedInstanceState);
    }
}
