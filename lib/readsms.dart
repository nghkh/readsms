
import 'readsms_platform_interface.dart';

class Readsms {
  Future<String?> getPlatformVersion() {
    print('hello');
    return ReadsmsPlatform.instance.getPlatformVersion();
  }
}
