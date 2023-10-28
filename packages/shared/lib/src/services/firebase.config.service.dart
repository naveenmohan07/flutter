import 'package:firebase_remote_config/firebase_remote_config.dart';

class FirebaseConfigService {
    final FirebaseRemoteConfig _remoteConfig = FirebaseRemoteConfig.instance;

    String getString(String key) => _remoteConfig.getString(key);
    bool getBool(String key) =>_remoteConfig.getBool(key);
    int getInt(String key) =>_remoteConfig.getInt(key);
    double getDouble(String key) =>_remoteConfig.getDouble(key);
    dynamic getValue(String key) => _remoteConfig.getValue(key);

  Future<void> _setConfigSettings() async => _remoteConfig.setConfigSettings(
    RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 10),
    
      minimumFetchInterval: const Duration(minutes: 1),
    ),
  );

  Future<void> fetchAndActivate() async {
    bool isActive = await _remoteConfig.fetchAndActivate();

    if (isActive) {
      print('Activated');
          } else {
      print('Not Activated');
    }
  }

  initilize() {
    _setConfigSettings();
    fetchAndActivate();
  }
}