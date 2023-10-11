
import 'readsms_platform_interface.dart';

class Readsms {
  Future<String?> getPlatformVersion() {
    return ReadsmsPlatform.instance.getPlatformVersion();
  }
}
