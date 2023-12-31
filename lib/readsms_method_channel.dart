import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'readsms_platform_interface.dart';

/// An implementation of [ReadsmsPlatform] that uses method channels.
class MethodChannelReadsms extends ReadsmsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('readsms');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
