# TIL - 실습

## 주제: 현재 시각을 표시하는 앱

## 내용: Android Studio로 현재 시간 ※ 초까지 표시

#### 코드:
#### MainActivity.java :
package com.example.myapplication; // 패키지명 확인

import android.os.Bundle;
import android.os.Handler;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

// 🔽 추가
import com.example.myapplication.R;

public class MainActivity extends AppCompatActivity {
    private TextView timeTextView;
    private final Handler handler = new Handler();

    private final Runnable updateTimeRunnable = new Runnable() {
        @Override
        public void run() {
            updateTime();
            handler.postDelayed(this, 1000); // 1초마다 실행
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main); // R 오류 발생 시 패키지 확인

        timeTextView = findViewById(R.id.timeTextView);
        updateTime();
        handler.postDelayed(updateTimeRunnable, 1000);
    }

    private void updateTime() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd\n a h:mm:ss", Locale.getDefault());
        String currentTime = sdf.format(new Date());
        timeTextView.setText(currentTime);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        handler.removeCallbacks(updateTimeRunnable);
    }
}

#### activty_main.xml

<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:gravity="center"
    android:background="#FFFFFF">

    <!-- 앱바 타이틀 -->
    <androidx.appcompat.widget.Toolbar
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:background="?attr/colorPrimary"
        android:title="현재 시각"
        android:titleTextColor="#FFFFFF" />

    <!-- 현재 시각 표시 -->
    <TextView
        android:id="@+id/timeTextView"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:textSize="30sp"
        android:textStyle="bold"
        android:textColor="#000000"
        android:gravity="center"
        android:padding="20dp"/>
</LinearLayout>


