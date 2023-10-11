import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'readsms_method_channel.dart';

abstract class ReadsmsPlatform extends PlatformInterface {
  /// Constructs a ReadsmsPlatform.
  ReadsmsPlatform() : super(token: _token);

  static final Object _token = Object();

  static ReadsmsPlatform _instance = MethodChannelReadsms();

  /// The default instance of [ReadsmsPlatform] to use.
  ///
  /// Defaults to [MethodChannelReadsms].
  static ReadsmsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ReadsmsPlatform] when
  /// they register themselves.
  static set instance(ReadsmsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
