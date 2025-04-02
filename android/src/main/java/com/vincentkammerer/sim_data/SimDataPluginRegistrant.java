package com.vincentkammerer.sim_data;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.plugins.FlutterPlugin;

/**
 * Generated file. This class registers the SimDataPlugin with newer versions of Flutter that use 
 * the embedding v2 architecture.
 */
@Keep
public final class SimDataPluginRegistrant {
  public static void registerWith(@NonNull FlutterEngine flutterEngine) {
    flutterEngine.getPlugins().add(new SimDataPlugin());
  }
  
  private SimDataPluginRegistrant() {
    // Private constructor to prevent instantiation
  }
}
