#ifndef FLUTTER_PLUGIN_READSMS_PLUGIN_H_
#define FLUTTER_PLUGIN_READSMS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace readsms {

class ReadsmsPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  ReadsmsPlugin();

  virtual ~ReadsmsPlugin();

  // Disallow copy and assign.
  ReadsmsPlugin(const ReadsmsPlugin&) = delete;
  ReadsmsPlugin& operator=(const ReadsmsPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace readsms

#endif  // FLUTTER_PLUGIN_READSMS_PLUGIN_H_
