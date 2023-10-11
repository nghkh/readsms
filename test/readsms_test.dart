import 'package:flutter_test/flutter_test.dart';
import 'package:readsms/readsms.dart';
import 'package:readsms/readsms_platform_interface.dart';
import 'package:readsms/readsms_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockReadsmsPlatform
    with MockPlatformInterfaceMixin
    implements ReadsmsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ReadsmsPlatform initialPlatform = ReadsmsPlatform.instance;

  test('$MethodChannelReadsms is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelReadsms>());
  });

  test('getPlatformVersion', () async {
    Readsms readsmsPlugin = Readsms();
    MockReadsmsPlatform fakePlatform = MockReadsmsPlatform();
    ReadsmsPlatform.instance = fakePlatform;

    expect(await readsmsPlugin.getPlatformVersion(), '42');
  });
}
