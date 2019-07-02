package com.ysn.sample_wear_flutter_app

import android.os.Bundle
import android.support.wear.ambient.AmbientMode
import com.mjohnsullivan.flutterwear.wear.FlutterAmbientCallback

import io.flutter.app.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant
import com.mjohnsullivan.flutterwear.wear.getChannel

class MainActivity: FlutterActivity(), AmbientMode.AmbientCallbackProvider {
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this)

      // Wire up the activity for ambient callbacks
    AmbientMode.attachAmbientSupport(this)
  }

  override fun getAmbientCallback(): AmbientMode.AmbientCallback {
    return FlutterAmbientCallback(getChannel(flutterView))
  }
}
