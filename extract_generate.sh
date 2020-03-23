flutter pub pub run intl_translation:extract_to_arb --output-file="intl_en.arb" --output-dir=lib/localizations/translatable/ lib/localizations/app_localizations.dart
flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/localizations/generated/ --no-use-deferred-loading lib/localizations/app_localizations.dart lib/localizations/translatable/*.arb
