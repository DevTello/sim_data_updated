import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import './sim_model.dart';

export './sim_model.dart';

/// The main plugin class for accessing SIM data
class SimDataPlugin {
  static const String channelName = "com.vincentkammerer.sim_data/channel_name";
  static const MethodChannel _channel = MethodChannel(channelName);

  // This static method is added for the plugin registrant.
  // It's empty since the actual registration is handled in the native code.
  static void registerWith() {
    // This method is intentionally empty. The actual registration
    // is done in the SimDataPlugin.java registerWith method.
  }

  /// Get SIM card data from the device
  static Future<SimData> getSimData() async {
    try {
      dynamic simData = await _channel.invokeMethod('getSimData');
      var data = json.decode(simData);
      SimData simCards = SimData.fromJson(data);
      return simCards;
    } on PlatformException catch (e) {
      debugPrint('SimData plugin failed to retrieve data $e');
      rethrow;
    }
  }
}


