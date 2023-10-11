#include "include/readsms/readsms_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "readsms_plugin.h"

void ReadsmsPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  readsms::ReadsmsPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
