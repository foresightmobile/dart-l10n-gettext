import 'dart:async';
import 'package:intl/intl.dart';
import 'package:intl/intl_standalone.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:l10n_sample_cmdline/cmdline.dart';
import 'package:l10n_sample_cmdline/locale/messages.dart';


Future main(List<String> arguments) async {

    // Determine your locale automatically:
    final String locale = await findSystemLocale();
    translate.locale = Intl.shortLocale(locale);

    // Avoids error message:
    //      LocaleDataException: Locale data has not been initialized, call initializeDateFormatting(<locale>).
    await initializeDateFormatting(locale);

    // For debugging
    // print("SystemLocale: $locale"); // in my case: de_AT.UTF-8

    final Application application = new Application();
    application.run( arguments, locale );
}
