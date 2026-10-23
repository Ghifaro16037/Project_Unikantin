class AppConfig {
  /// Nama lingkungan aplikasi (dev, staging, prod)
  /// Dapat diatur saat running/building via `--dart-define ENV=prod`
  static const String env = String.fromEnvironment('ENV', defaultValue: 'dev');

  /// Sakelar remote data source (Firebase / REST API)
  /// Default: `false` (menggunakan penyimpanan lokal pada M01-M04)
  /// Dapat diaktifkan saat M05 via `--dart-define USE_REMOTE=true`
  static const bool useRemote = bool.fromEnvironment(
    'USE_REMOTE',
    defaultValue: false,
  );

  /// Mengecek apakah aplikasi berjalan pada mode produksi
  static bool get isProd => env == 'prod';

  /// Mengecek apakah aplikasi berjalan pada mode pengembangan
  static bool get isDev => env == 'dev';

  /// Mencegah instansiasi kelas utility
  AppConfig._();
}