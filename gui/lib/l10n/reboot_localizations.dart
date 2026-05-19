import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'reboot_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/reboot_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @find.
  ///
  /// In en, this message translates to:
  /// **'Find a setting'**
  String get find;

  /// No description provided for @on.
  ///
  /// In en, this message translates to:
  /// **'On'**
  String get on;

  /// No description provided for @off.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get off;

  /// No description provided for @resetDefaultsContent.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get resetDefaultsContent;

  /// No description provided for @resetDefaultsDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Do you want to reset all the setting in this tab to their default values? This action is irreversible'**
  String get resetDefaultsDialogTitle;

  /// No description provided for @resetDefaultsDialogSecondaryAction.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get resetDefaultsDialogSecondaryAction;

  /// No description provided for @resetDefaultsDialogPrimaryAction.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get resetDefaultsDialogPrimaryAction;

  /// No description provided for @backendName.
  ///
  /// In en, this message translates to:
  /// **'Backend'**
  String get backendName;

  /// No description provided for @backendTypeName.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get backendTypeName;

  /// No description provided for @backendTypeDescription.
  ///
  /// In en, this message translates to:
  /// **'The type of backend to use when logging into Fortnite'**
  String get backendTypeDescription;

  /// No description provided for @backendConfigurationHostName.
  ///
  /// In en, this message translates to:
  /// **'Host'**
  String get backendConfigurationHostName;

  /// No description provided for @backendConfigurationHostDescription.
  ///
  /// In en, this message translates to:
  /// **'The hostname of the backend'**
  String get backendConfigurationHostDescription;

  /// No description provided for @backendConfigurationPortName.
  ///
  /// In en, this message translates to:
  /// **'Port'**
  String get backendConfigurationPortName;

  /// No description provided for @backendConfigurationPortDescription.
  ///
  /// In en, this message translates to:
  /// **'The port of the backend'**
  String get backendConfigurationPortDescription;

  /// No description provided for @backendConfigurationDetachedName.
  ///
  /// In en, this message translates to:
  /// **'Detached'**
  String get backendConfigurationDetachedName;

  /// No description provided for @backendConfigurationDetachedDescription.
  ///
  /// In en, this message translates to:
  /// **'Whether a separate process should be spawned, useful for debugging'**
  String get backendConfigurationDetachedDescription;

  /// No description provided for @backendInstallationDirectoryName.
  ///
  /// In en, this message translates to:
  /// **'Installation directory'**
  String get backendInstallationDirectoryName;

  /// No description provided for @backendInstallationDirectoryDescription.
  ///
  /// In en, this message translates to:
  /// **'Opens the folder where the embedded backend is located'**
  String get backendInstallationDirectoryDescription;

  /// No description provided for @backendInstallationDirectoryContent.
  ///
  /// In en, this message translates to:
  /// **'Show files'**
  String get backendInstallationDirectoryContent;

  /// No description provided for @backendResetDefaultsName.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get backendResetDefaultsName;

  /// No description provided for @backendResetDefaultsDescription.
  ///
  /// In en, this message translates to:
  /// **'Resets the backend\'s settings to their default values'**
  String get backendResetDefaultsDescription;

  /// No description provided for @backendResetDefaultsContent.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get backendResetDefaultsContent;

  /// No description provided for @hostGameServerName.
  ///
  /// In en, this message translates to:
  /// **'Information'**
  String get hostGameServerName;

  /// No description provided for @hostGameServerDescription.
  ///
  /// In en, this message translates to:
  /// **'Provide basic information about your game server for the Server Browser'**
  String get hostGameServerDescription;

  /// No description provided for @hostGameServerNameName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get hostGameServerNameName;

  /// No description provided for @hostGameServerNameDescription.
  ///
  /// In en, this message translates to:
  /// **'The name of your game server'**
  String get hostGameServerNameDescription;

  /// No description provided for @hostGameServerDescriptionName.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get hostGameServerDescriptionName;

  /// No description provided for @hostGameServerDescriptionDescription.
  ///
  /// In en, this message translates to:
  /// **'The description of your game server'**
  String get hostGameServerDescriptionDescription;

  /// No description provided for @hostGameServerPasswordName.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get hostGameServerPasswordName;

  /// No description provided for @hostGameServerPasswordDescription.
  ///
  /// In en, this message translates to:
  /// **'The password of your game server, if you need one'**
  String get hostGameServerPasswordDescription;

  /// No description provided for @hostGameServerDiscoverableName.
  ///
  /// In en, this message translates to:
  /// **'Discoverable'**
  String get hostGameServerDiscoverableName;

  /// No description provided for @hostGameServerDiscoverableDescription.
  ///
  /// In en, this message translates to:
  /// **'Make your server available to other players on the server browser'**
  String get hostGameServerDiscoverableDescription;

  /// No description provided for @hostAutomaticRestartName.
  ///
  /// In en, this message translates to:
  /// **'Automatic restart'**
  String get hostAutomaticRestartName;

  /// No description provided for @hostAutomaticRestartDescription.
  ///
  /// In en, this message translates to:
  /// **'Automatically restarts your game server when the match ends'**
  String get hostAutomaticRestartDescription;

  /// No description provided for @hostShareName.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get hostShareName;

  /// No description provided for @hostShareDescription.
  ///
  /// In en, this message translates to:
  /// **'Make it easy for other people to join your server with the options in this section'**
  String get hostShareDescription;

  /// No description provided for @hostShareLinkName.
  ///
  /// In en, this message translates to:
  /// **'Link'**
  String get hostShareLinkName;

  /// No description provided for @hostShareLinkDescription.
  ///
  /// In en, this message translates to:
  /// **'Copies a link for your server to the clipboard'**
  String get hostShareLinkDescription;

  /// No description provided for @hostShareLinkContent.
  ///
  /// In en, this message translates to:
  /// **'Copy Link'**
  String get hostShareLinkContent;

  /// No description provided for @hostShareLinkMessageSuccess.
  ///
  /// In en, this message translates to:
  /// **'Copied your link to the clipboard'**
  String get hostShareLinkMessageSuccess;

  /// No description provided for @hostShareIpName.
  ///
  /// In en, this message translates to:
  /// **'Public IP'**
  String get hostShareIpName;

  /// No description provided for @hostShareIpDescription.
  ///
  /// In en, this message translates to:
  /// **'Copies your current public IP to the clipboard'**
  String get hostShareIpDescription;

  /// No description provided for @hostShareIpContent.
  ///
  /// In en, this message translates to:
  /// **'Copy IP'**
  String get hostShareIpContent;

  /// No description provided for @hostShareIpMessageLoading.
  ///
  /// In en, this message translates to:
  /// **'Obtaining your public IP...'**
  String get hostShareIpMessageLoading;

  /// No description provided for @hostShareIpMessageSuccess.
  ///
  /// In en, this message translates to:
  /// **'Copied your link to the clipboard'**
  String get hostShareIpMessageSuccess;

  /// No description provided for @hostShareIpMessageError.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while obtaining your public IP: {error}'**
  String hostShareIpMessageError(Object error);

  /// No description provided for @hostResetName.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get hostResetName;

  /// No description provided for @hostResetDescription.
  ///
  /// In en, this message translates to:
  /// **'Resets the game server\'s settings to their default values'**
  String get hostResetDescription;

  /// No description provided for @hostResetContent.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get hostResetContent;

  /// No description provided for @browserName.
  ///
  /// In en, this message translates to:
  /// **'Server Browser'**
  String get browserName;

  /// No description provided for @noServersAvailableTitle.
  ///
  /// In en, this message translates to:
  /// **'No servers are available right now'**
  String get noServersAvailableTitle;

  /// No description provided for @noServersAvailableSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Host a server yourself or come back later'**
  String get noServersAvailableSubtitle;

  /// No description provided for @joinServer.
  ///
  /// In en, this message translates to:
  /// **'Join Server'**
  String get joinServer;

  /// No description provided for @noServersAvailableByQueryTitle.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get noServersAvailableByQueryTitle;

  /// No description provided for @noServersAvailableByQuerySubtitle.
  ///
  /// In en, this message translates to:
  /// **'No server matches your query'**
  String get noServersAvailableByQuerySubtitle;

  /// No description provided for @findServer.
  ///
  /// In en, this message translates to:
  /// **'Find a server'**
  String get findServer;

  /// No description provided for @copyIp.
  ///
  /// In en, this message translates to:
  /// **'Copy IP'**
  String get copyIp;

  /// No description provided for @hostName.
  ///
  /// In en, this message translates to:
  /// **'Host'**
  String get hostName;

  /// No description provided for @matchmakerConfigurationAddressName.
  ///
  /// In en, this message translates to:
  /// **'Game server address'**
  String get matchmakerConfigurationAddressName;

  /// No description provided for @matchmakerConfigurationAddressDescription.
  ///
  /// In en, this message translates to:
  /// **'The address of the game server used by the backend'**
  String get matchmakerConfigurationAddressDescription;

  /// No description provided for @playName.
  ///
  /// In en, this message translates to:
  /// **'Play'**
  String get playName;

  /// No description provided for @playGameServerName.
  ///
  /// In en, this message translates to:
  /// **'Multiplayer'**
  String get playGameServerName;

  /// No description provided for @playGameServerDescription.
  ///
  /// In en, this message translates to:
  /// **'See all the available options to start playing'**
  String get playGameServerDescription;

  /// No description provided for @playGameServerContentLocal.
  ///
  /// In en, this message translates to:
  /// **'Your server'**
  String get playGameServerContentLocal;

  /// No description provided for @playGameServerContentBrowser.
  ///
  /// In en, this message translates to:
  /// **'{owner}\'s server'**
  String playGameServerContentBrowser(Object owner);

  /// No description provided for @playGameServerContentCustom.
  ///
  /// In en, this message translates to:
  /// **'{address}'**
  String playGameServerContentCustom(Object address);

  /// No description provided for @playGameServerHostName.
  ///
  /// In en, this message translates to:
  /// **'Host a server'**
  String get playGameServerHostName;

  /// No description provided for @playGameServerHostDescription.
  ///
  /// In en, this message translates to:
  /// **'Run a game server on your PC'**
  String get playGameServerHostDescription;

  /// No description provided for @playGameServerHostContent.
  ///
  /// In en, this message translates to:
  /// **'Host'**
  String get playGameServerHostContent;

  /// No description provided for @playGameServerBrowserName.
  ///
  /// In en, this message translates to:
  /// **'Browse servers'**
  String get playGameServerBrowserName;

  /// No description provided for @playGameServerBrowserDescription.
  ///
  /// In en, this message translates to:
  /// **'Discover servers hosted by the community'**
  String get playGameServerBrowserDescription;

  /// No description provided for @playGameServerBrowserContent.
  ///
  /// In en, this message translates to:
  /// **'Browse'**
  String get playGameServerBrowserContent;

  /// No description provided for @playGameServerCustomName.
  ///
  /// In en, this message translates to:
  /// **'Join a custom server'**
  String get playGameServerCustomName;

  /// No description provided for @playGameServerCustomDescription.
  ///
  /// In en, this message translates to:
  /// **'Join a game server using its public IP address'**
  String get playGameServerCustomDescription;

  /// No description provided for @playGameServerCustomContent.
  ///
  /// In en, this message translates to:
  /// **'Enter IP'**
  String get playGameServerCustomContent;

  /// No description provided for @settingsName.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsName;

  /// No description provided for @settingsClientName.
  ///
  /// In en, this message translates to:
  /// **'Internal files'**
  String get settingsClientName;

  /// No description provided for @settingsClientDescription.
  ///
  /// In en, this message translates to:
  /// **'Configure the internal files used by the launcher'**
  String get settingsClientDescription;

  /// No description provided for @settingsClientOptionsName.
  ///
  /// In en, this message translates to:
  /// **'Options'**
  String get settingsClientOptionsName;

  /// No description provided for @settingsClientOptionsDescription.
  ///
  /// In en, this message translates to:
  /// **'Configure additional options for Fortnite'**
  String get settingsClientOptionsDescription;

  /// No description provided for @settingsClientConsoleName.
  ///
  /// In en, this message translates to:
  /// **'Unreal engine patcher'**
  String get settingsClientConsoleName;

  /// No description provided for @settingsClientConsoleDescription.
  ///
  /// In en, this message translates to:
  /// **'Unlocks the Unreal Engine Console'**
  String get settingsClientConsoleDescription;

  /// No description provided for @settingsClientConsoleKeyName.
  ///
  /// In en, this message translates to:
  /// **'Unreal engine console key'**
  String get settingsClientConsoleKeyName;

  /// No description provided for @settingsClientConsoleKeyDescription.
  ///
  /// In en, this message translates to:
  /// **'The keyboard key used to open the Unreal Engine console'**
  String get settingsClientConsoleKeyDescription;

  /// No description provided for @settingsClientAuthName.
  ///
  /// In en, this message translates to:
  /// **'Authentication patcher'**
  String get settingsClientAuthName;

  /// No description provided for @settingsClientAuthDescription.
  ///
  /// In en, this message translates to:
  /// **'Redirects all HTTP requests to the backend'**
  String get settingsClientAuthDescription;

  /// No description provided for @settingsClientMemoryName.
  ///
  /// In en, this message translates to:
  /// **'Memory patcher'**
  String get settingsClientMemoryName;

  /// No description provided for @settingsClientMemoryDescription.
  ///
  /// In en, this message translates to:
  /// **'Prevents the client from crashing because of a memory leak'**
  String get settingsClientMemoryDescription;

  /// No description provided for @settingsClientArgsName.
  ///
  /// In en, this message translates to:
  /// **'Custom launch arguments'**
  String get settingsClientArgsName;

  /// No description provided for @settingsClientArgsDescription.
  ///
  /// In en, this message translates to:
  /// **'Additional arguments to use when launching Fortnite'**
  String get settingsClientArgsDescription;

  /// No description provided for @settingsClientArgsPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Arguments...'**
  String get settingsClientArgsPlaceholder;

  /// No description provided for @settingsServerName.
  ///
  /// In en, this message translates to:
  /// **'Game server'**
  String get settingsServerName;

  /// No description provided for @settingsServerSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Creates the game server on top of a Fortnite instance'**
  String get settingsServerSubtitle;

  /// No description provided for @settingsServerOptionsName.
  ///
  /// In en, this message translates to:
  /// **'Options'**
  String get settingsServerOptionsName;

  /// No description provided for @settingsServerOptionsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Configure additional options for the game server'**
  String get settingsServerOptionsSubtitle;

  /// No description provided for @settingsServerTypeName.
  ///
  /// In en, this message translates to:
  /// **'Game server type'**
  String get settingsServerTypeName;

  /// No description provided for @settingsServerTypeDescription.
  ///
  /// In en, this message translates to:
  /// **'The type of game server to inject'**
  String get settingsServerTypeDescription;

  /// No description provided for @settingsServerTypeEmbeddedName.
  ///
  /// In en, this message translates to:
  /// **'Embedded'**
  String get settingsServerTypeEmbeddedName;

  /// No description provided for @settingsServerTypeCustomName.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get settingsServerTypeCustomName;

  /// No description provided for @settingsOldServerFileName.
  ///
  /// In en, this message translates to:
  /// **'Game server'**
  String get settingsOldServerFileName;

  /// No description provided for @settingsServerFileDescription.
  ///
  /// In en, this message translates to:
  /// **'The file injected to create the game server'**
  String get settingsServerFileDescription;

  /// No description provided for @settingsServerPortName.
  ///
  /// In en, this message translates to:
  /// **'Port'**
  String get settingsServerPortName;

  /// No description provided for @settingsServerPortDescription.
  ///
  /// In en, this message translates to:
  /// **'The port the launcher expects the game server to be hosted on'**
  String get settingsServerPortDescription;

  /// No description provided for @settingsServerOldMirrorName.
  ///
  /// In en, this message translates to:
  /// **'Update mirror (Before season 20)'**
  String get settingsServerOldMirrorName;

  /// No description provided for @settingsServerNewMirrorName.
  ///
  /// In en, this message translates to:
  /// **'Update mirror (Season 20 and above)'**
  String get settingsServerNewMirrorName;

  /// No description provided for @settingsServerMirrorDescription.
  ///
  /// In en, this message translates to:
  /// **'The URL used to update the game server dll'**
  String get settingsServerMirrorDescription;

  /// No description provided for @settingsServerMirrorPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'mirror'**
  String get settingsServerMirrorPlaceholder;

  /// No description provided for @settingsServerTimerName.
  ///
  /// In en, this message translates to:
  /// **'Game server updater'**
  String get settingsServerTimerName;

  /// No description provided for @settingsServerTimerSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Determines when the game server should be updated'**
  String get settingsServerTimerSubtitle;

  /// No description provided for @settingsUtilsName.
  ///
  /// In en, this message translates to:
  /// **'Launcher'**
  String get settingsUtilsName;

  /// No description provided for @settingsUtilsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'This section contains settings related to the launcher'**
  String get settingsUtilsSubtitle;

  /// No description provided for @settingsUtilsInstallationDirectoryName.
  ///
  /// In en, this message translates to:
  /// **'Installation directory'**
  String get settingsUtilsInstallationDirectoryName;

  /// No description provided for @settingsUtilsInstallationDirectorySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Opens the installation directory'**
  String get settingsUtilsInstallationDirectorySubtitle;

  /// No description provided for @settingsUtilsInstallationDirectoryContent.
  ///
  /// In en, this message translates to:
  /// **'Show files'**
  String get settingsUtilsInstallationDirectoryContent;

  /// No description provided for @settingsUtilsBugReportName.
  ///
  /// In en, this message translates to:
  /// **'Create a bug report'**
  String get settingsUtilsBugReportName;

  /// No description provided for @settingsUtilsBugReportSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Help me fix bugs by reporting them'**
  String get settingsUtilsBugReportSubtitle;

  /// No description provided for @settingsUtilsBugReportContent.
  ///
  /// In en, this message translates to:
  /// **'Report a bug'**
  String get settingsUtilsBugReportContent;

  /// No description provided for @settingsUtilsResetDefaultsName.
  ///
  /// In en, this message translates to:
  /// **'Reset settings'**
  String get settingsUtilsResetDefaultsName;

  /// No description provided for @settingsUtilsResetDefaultsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Resets the launcher\'s settings to their default values'**
  String get settingsUtilsResetDefaultsSubtitle;

  /// No description provided for @settingsUtilsDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Do you want to reset all the setting in this tab to their default values? This action is irreversible'**
  String get settingsUtilsDialogTitle;

  /// No description provided for @settingsUtilsDialogSecondaryAction.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get settingsUtilsDialogSecondaryAction;

  /// No description provided for @selectFortniteName.
  ///
  /// In en, this message translates to:
  /// **'Fortnite version'**
  String get selectFortniteName;

  /// No description provided for @selectFortniteDescription.
  ///
  /// In en, this message translates to:
  /// **'Select the version of Fortnite you want to use'**
  String get selectFortniteDescription;

  /// No description provided for @manageVersionsName.
  ///
  /// In en, this message translates to:
  /// **'Manage versions'**
  String get manageVersionsName;

  /// No description provided for @manageVersionsDescription.
  ///
  /// In en, this message translates to:
  /// **'Manage your Fortnite installations'**
  String get manageVersionsDescription;

  /// No description provided for @importVersionName.
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get importVersionName;

  /// No description provided for @importVersionDescription.
  ///
  /// In en, this message translates to:
  /// **'Import a new version of Fortnite into the launcher'**
  String get importVersionDescription;

  /// No description provided for @addLocalBuildName.
  ///
  /// In en, this message translates to:
  /// **'Add a version from this PC\'s local storage'**
  String get addLocalBuildName;

  /// No description provided for @addLocalBuildDescription.
  ///
  /// In en, this message translates to:
  /// **'Versions coming from your local disk are not guaranteed to work'**
  String get addLocalBuildDescription;

  /// No description provided for @addVersion.
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get addVersion;

  /// No description provided for @downloadBuildName.
  ///
  /// In en, this message translates to:
  /// **'Download any version from the cloud'**
  String get downloadBuildName;

  /// No description provided for @downloadBuildDescription.
  ///
  /// In en, this message translates to:
  /// **'Download any Fortnite build easily from the cloud'**
  String get downloadBuildDescription;

  /// No description provided for @downloadBuildContent.
  ///
  /// In en, this message translates to:
  /// **'Download build'**
  String get downloadBuildContent;

  /// No description provided for @downloadVersion.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get downloadVersion;

  /// No description provided for @cannotUpdateGameServer.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while updating the game server: {error}'**
  String cannotUpdateGameServer(Object error);

  /// No description provided for @launchFortnite.
  ///
  /// In en, this message translates to:
  /// **'Launch Fortnite'**
  String get launchFortnite;

  /// No description provided for @closeFortnite.
  ///
  /// In en, this message translates to:
  /// **'Close Fortnite'**
  String get closeFortnite;

  /// No description provided for @updateGameServerDllNever.
  ///
  /// In en, this message translates to:
  /// **'Never'**
  String get updateGameServerDllNever;

  /// No description provided for @updateGameServerDllEvery.
  ///
  /// In en, this message translates to:
  /// **'Every {name}'**
  String updateGameServerDllEvery(Object name);

  /// No description provided for @selectPathPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Path'**
  String get selectPathPlaceholder;

  /// No description provided for @selectPathWindowTitle.
  ///
  /// In en, this message translates to:
  /// **'Select a file'**
  String get selectPathWindowTitle;

  /// No description provided for @defaultDialogSecondaryAction.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get defaultDialogSecondaryAction;

  /// No description provided for @stopLoadingDialogAction.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get stopLoadingDialogAction;

  /// No description provided for @copyErrorDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Copy error'**
  String get copyErrorDialogTitle;

  /// No description provided for @copyErrorDialogSuccess.
  ///
  /// In en, this message translates to:
  /// **'Copied error to clipboard'**
  String get copyErrorDialogSuccess;

  /// No description provided for @defaultServerName.
  ///
  /// In en, this message translates to:
  /// **'Reboot Game Server'**
  String get defaultServerName;

  /// No description provided for @defaultServerDescription.
  ///
  /// In en, this message translates to:
  /// **'Just another server'**
  String get defaultServerDescription;

  /// No description provided for @downloadingDll.
  ///
  /// In en, this message translates to:
  /// **'Downloading {name} dll...'**
  String downloadingDll(Object name);

  /// No description provided for @downloadDllSuccess.
  ///
  /// In en, this message translates to:
  /// **'The {name} dll was downloaded successfully'**
  String downloadDllSuccess(Object name);

  /// No description provided for @downloadDllError.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while downloading {name}: {error}'**
  String downloadDllError(Object error, Object name);

  /// No description provided for @downloadDllAntivirus.
  ///
  /// In en, this message translates to:
  /// **'The {name} dll was deleted: your antivirus({antivirus}) might have flagged it'**
  String downloadDllAntivirus(Object antivirus, Object name);

  /// No description provided for @downloadDllRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get downloadDllRetry;

  /// No description provided for @uncaughtErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'An uncaught error was thrown: {error}'**
  String uncaughtErrorMessage(Object error);

  /// No description provided for @launchingGameServer.
  ///
  /// In en, this message translates to:
  /// **'Launching the game server...'**
  String get launchingGameServer;

  /// No description provided for @launchingGameClientOnly.
  ///
  /// In en, this message translates to:
  /// **'Launching the game client without a server...'**
  String get launchingGameClientOnly;

  /// No description provided for @launchingGameClientAndServer.
  ///
  /// In en, this message translates to:
  /// **'Launching the game client and server...'**
  String get launchingGameClientAndServer;

  /// No description provided for @startGameServer.
  ///
  /// In en, this message translates to:
  /// **'Start a game server'**
  String get startGameServer;

  /// No description provided for @usernameOrEmail.
  ///
  /// In en, this message translates to:
  /// **'Username/Email'**
  String get usernameOrEmail;

  /// No description provided for @invalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Invalid email'**
  String get invalidEmail;

  /// No description provided for @usernameOrEmailPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Type your username or email'**
  String get usernameOrEmailPlaceholder;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @passwordPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Type your password, if you want to use one'**
  String get passwordPlaceholder;

  /// No description provided for @cancelProfileChanges.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelProfileChanges;

  /// No description provided for @saveProfileChanges.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get saveProfileChanges;

  /// No description provided for @startingServer.
  ///
  /// In en, this message translates to:
  /// **'Starting the backend...'**
  String get startingServer;

  /// No description provided for @startedServer.
  ///
  /// In en, this message translates to:
  /// **'The backend was started successfully'**
  String get startedServer;

  /// No description provided for @checkedServer.
  ///
  /// In en, this message translates to:
  /// **'The backend works correctly'**
  String get checkedServer;

  /// No description provided for @startServerError.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while starting the backend: {error}'**
  String startServerError(Object error);

  /// No description provided for @localServerError.
  ///
  /// In en, this message translates to:
  /// **'The local backend doesn\'t work correctly: {error}'**
  String localServerError(Object error);

  /// No description provided for @stoppingServer.
  ///
  /// In en, this message translates to:
  /// **'Stopping the backend...'**
  String get stoppingServer;

  /// No description provided for @stoppedServer.
  ///
  /// In en, this message translates to:
  /// **'The backend was stopped successfully'**
  String get stoppedServer;

  /// No description provided for @stopServerError.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while stopping the backend: {error}'**
  String stopServerError(Object error);

  /// No description provided for @missingHostNameError.
  ///
  /// In en, this message translates to:
  /// **'Missing hostname in the backend configuration'**
  String get missingHostNameError;

  /// No description provided for @missingPortError.
  ///
  /// In en, this message translates to:
  /// **'Missing port in the backend configuration'**
  String get missingPortError;

  /// No description provided for @illegalPortError.
  ///
  /// In en, this message translates to:
  /// **'Invalid port in the backend configuration'**
  String get illegalPortError;

  /// No description provided for @freeingPort.
  ///
  /// In en, this message translates to:
  /// **'Freeing the backend port...'**
  String get freeingPort;

  /// No description provided for @freedPort.
  ///
  /// In en, this message translates to:
  /// **'The backend port was freed successfully'**
  String get freedPort;

  /// No description provided for @freePortError.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while freeing the backend port: {error}'**
  String freePortError(Object error);

  /// No description provided for @pingingServer.
  ///
  /// In en, this message translates to:
  /// **'Pinging the {type} backend...'**
  String pingingServer(Object type);

  /// No description provided for @pingError.
  ///
  /// In en, this message translates to:
  /// **'Cannot ping the {type} backend'**
  String pingError(Object type);

  /// No description provided for @joinSelfServer.
  ///
  /// In en, this message translates to:
  /// **'You can\'t join your own server'**
  String get joinSelfServer;

  /// No description provided for @cannotJoinServerVersion.
  ///
  /// In en, this message translates to:
  /// **'You can\'t join this server: download Fortnite {version}'**
  String cannotJoinServerVersion(Object version);

  /// No description provided for @wrongServerPassword.
  ///
  /// In en, this message translates to:
  /// **'Wrong password: please try again'**
  String get wrongServerPassword;

  /// No description provided for @joiningServer.
  ///
  /// In en, this message translates to:
  /// **'Joining {name}...'**
  String joiningServer(Object name);

  /// No description provided for @offlineServer.
  ///
  /// In en, this message translates to:
  /// **'This server isn\'t online right now: please try again later'**
  String get offlineServer;

  /// No description provided for @serverPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get serverPassword;

  /// No description provided for @serverPasswordPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Type the server\'s password'**
  String get serverPasswordPlaceholder;

  /// No description provided for @serverPasswordCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get serverPasswordCancel;

  /// No description provided for @serverPasswordConfirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get serverPasswordConfirm;

  /// No description provided for @joinedServer.
  ///
  /// In en, this message translates to:
  /// **'You joined {author}\'s server successfully!'**
  String joinedServer(Object author);

  /// No description provided for @copiedIp.
  ///
  /// In en, this message translates to:
  /// **'Copied IP to the clipboard'**
  String get copiedIp;

  /// No description provided for @selectVersion.
  ///
  /// In en, this message translates to:
  /// **'Select a version'**
  String get selectVersion;

  /// No description provided for @missingVersion.
  ///
  /// In en, this message translates to:
  /// **'This version doesn\'t exist on the local machine'**
  String get missingVersion;

  /// No description provided for @deleteVersionDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this version?'**
  String get deleteVersionDialogTitle;

  /// No description provided for @deleteVersionFromDiskOption.
  ///
  /// In en, this message translates to:
  /// **'Delete version files from disk'**
  String get deleteVersionFromDiskOption;

  /// No description provided for @deleteVersionCancel.
  ///
  /// In en, this message translates to:
  /// **'Keep'**
  String get deleteVersionCancel;

  /// No description provided for @deleteVersionConfirm.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get deleteVersionConfirm;

  /// No description provided for @versionName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get versionName;

  /// No description provided for @versionNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Type the version name'**
  String get versionNameLabel;

  /// No description provided for @newVersionNameConfirm.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get newVersionNameConfirm;

  /// No description provided for @newVersionNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Type the version name'**
  String get newVersionNameLabel;

  /// No description provided for @gameFolderTitle.
  ///
  /// In en, this message translates to:
  /// **'Game directory'**
  String get gameFolderTitle;

  /// No description provided for @gameFolderPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Type the game directory'**
  String get gameFolderPlaceholder;

  /// No description provided for @gameFolderPlaceWindowTitle.
  ///
  /// In en, this message translates to:
  /// **'Select game directory'**
  String get gameFolderPlaceWindowTitle;

  /// No description provided for @gameFolderLabel.
  ///
  /// In en, this message translates to:
  /// **'Path'**
  String get gameFolderLabel;

  /// No description provided for @openInExplorer.
  ///
  /// In en, this message translates to:
  /// **'Open in explorer'**
  String get openInExplorer;

  /// No description provided for @modify.
  ///
  /// In en, this message translates to:
  /// **'Modify'**
  String get modify;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @source.
  ///
  /// In en, this message translates to:
  /// **'Source'**
  String get source;

  /// No description provided for @manifest.
  ///
  /// In en, this message translates to:
  /// **'Manifest'**
  String get manifest;

  /// No description provided for @archive.
  ///
  /// In en, this message translates to:
  /// **'Archive'**
  String get archive;

  /// No description provided for @build.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get build;

  /// No description provided for @selectBuild.
  ///
  /// In en, this message translates to:
  /// **'Select a fortnite version'**
  String get selectBuild;

  /// No description provided for @fetchingBuilds.
  ///
  /// In en, this message translates to:
  /// **'Fetching builds and disks...'**
  String get fetchingBuilds;

  /// No description provided for @unknownError.
  ///
  /// In en, this message translates to:
  /// **'Unknown error'**
  String get unknownError;

  /// No description provided for @unknown.
  ///
  /// In en, this message translates to:
  /// **'unknown'**
  String get unknown;

  /// No description provided for @downloadVersionError.
  ///
  /// In en, this message translates to:
  /// **'Cannot download version: {error}'**
  String downloadVersionError(Object error);

  /// No description provided for @downloadedVersion.
  ///
  /// In en, this message translates to:
  /// **'The download was completed successfully!'**
  String get downloadedVersion;

  /// No description provided for @download.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get download;

  /// No description provided for @downloading.
  ///
  /// In en, this message translates to:
  /// **'Downloading...'**
  String get downloading;

  /// No description provided for @startingDownload.
  ///
  /// In en, this message translates to:
  /// **'Starting download...'**
  String get startingDownload;

  /// No description provided for @extracting.
  ///
  /// In en, this message translates to:
  /// **'Extracting...'**
  String get extracting;

  /// No description provided for @buildProgress.
  ///
  /// In en, this message translates to:
  /// **'{progress}%'**
  String buildProgress(Object progress);

  /// No description provided for @buildInstallationDirectory.
  ///
  /// In en, this message translates to:
  /// **'Installation directory'**
  String get buildInstallationDirectory;

  /// No description provided for @buildInstallationDirectoryPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Type the installation directory'**
  String get buildInstallationDirectoryPlaceholder;

  /// No description provided for @buildInstallationDirectoryWindowTitle.
  ///
  /// In en, this message translates to:
  /// **'Select installation directory'**
  String get buildInstallationDirectoryWindowTitle;

  /// No description provided for @timeLeft.
  ///
  /// In en, this message translates to:
  /// **'Time left: {timeLeft, plural, =0{less than a minute} =1{about {timeLeft} minute} other{about {timeLeft} minutes}}'**
  String timeLeft(num timeLeft);

  /// No description provided for @localBuildsWarning.
  ///
  /// In en, this message translates to:
  /// **'Local builds are not guaranteed to work'**
  String get localBuildsWarning;

  /// No description provided for @saveLocalVersion.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get saveLocalVersion;

  /// No description provided for @embedded.
  ///
  /// In en, this message translates to:
  /// **'Embedded'**
  String get embedded;

  /// No description provided for @remote.
  ///
  /// In en, this message translates to:
  /// **'Remote'**
  String get remote;

  /// No description provided for @local.
  ///
  /// In en, this message translates to:
  /// **'Local'**
  String get local;

  /// No description provided for @checkServer.
  ///
  /// In en, this message translates to:
  /// **'Check backend'**
  String get checkServer;

  /// No description provided for @startServer.
  ///
  /// In en, this message translates to:
  /// **'Start backend'**
  String get startServer;

  /// No description provided for @stopServer.
  ///
  /// In en, this message translates to:
  /// **'Stop backend'**
  String get stopServer;

  /// No description provided for @startHosting.
  ///
  /// In en, this message translates to:
  /// **'Start hosting'**
  String get startHosting;

  /// No description provided for @stopHosting.
  ///
  /// In en, this message translates to:
  /// **'Stop hosting'**
  String get stopHosting;

  /// No description provided for @startGame.
  ///
  /// In en, this message translates to:
  /// **'Start fortnite'**
  String get startGame;

  /// No description provided for @stopGame.
  ///
  /// In en, this message translates to:
  /// **'Close fortnite'**
  String get stopGame;

  /// No description provided for @waitingForGameServer.
  ///
  /// In en, this message translates to:
  /// **'Waiting for the game server to boot up...'**
  String get waitingForGameServer;

  /// No description provided for @gameServerStartWarning.
  ///
  /// In en, this message translates to:
  /// **'Unsupported version: the game server crashed while setting up the server'**
  String get gameServerStartWarning;

  /// No description provided for @gameServerStartLocalWarning.
  ///
  /// In en, this message translates to:
  /// **'The game server was started successfully, but other players can\'t join'**
  String get gameServerStartLocalWarning;

  /// No description provided for @gameServerStarted.
  ///
  /// In en, this message translates to:
  /// **'The game server was started successfully'**
  String get gameServerStarted;

  /// No description provided for @gameClientStarted.
  ///
  /// In en, this message translates to:
  /// **'The game client was started successfully'**
  String get gameClientStarted;

  /// No description provided for @checkingGameServer.
  ///
  /// In en, this message translates to:
  /// **'Checking if other players can join the game server...'**
  String get checkingGameServer;

  /// No description provided for @checkGameServerFixMessage.
  ///
  /// In en, this message translates to:
  /// **'The game server was started successfully, but other players can\'t join yet as port {port} isn\'t open'**
  String checkGameServerFixMessage(Object port);

  /// No description provided for @checkGameServerFixAction.
  ///
  /// In en, this message translates to:
  /// **'Learn more'**
  String get checkGameServerFixAction;

  /// No description provided for @infoName.
  ///
  /// In en, this message translates to:
  /// **'Info'**
  String get infoName;

  /// No description provided for @emptyVersionName.
  ///
  /// In en, this message translates to:
  /// **'Empty version name'**
  String get emptyVersionName;

  /// No description provided for @versionAlreadyExists.
  ///
  /// In en, this message translates to:
  /// **'This version already exists'**
  String get versionAlreadyExists;

  /// No description provided for @emptyGamePath.
  ///
  /// In en, this message translates to:
  /// **'Empty game path'**
  String get emptyGamePath;

  /// No description provided for @directoryDoesNotExist.
  ///
  /// In en, this message translates to:
  /// **'Directory doesn\'t exist'**
  String get directoryDoesNotExist;

  /// No description provided for @missingShippingExe.
  ///
  /// In en, this message translates to:
  /// **'Invalid game path: missing Fortnite executable'**
  String get missingShippingExe;

  /// No description provided for @invalidDownloadPath.
  ///
  /// In en, this message translates to:
  /// **'Invalid download path'**
  String get invalidDownloadPath;

  /// No description provided for @invalidDllPath.
  ///
  /// In en, this message translates to:
  /// **'Invalid dll path'**
  String get invalidDllPath;

  /// No description provided for @dllDoesNotExist.
  ///
  /// In en, this message translates to:
  /// **'The file doesn\'t exist'**
  String get dllDoesNotExist;

  /// No description provided for @invalidDllExtension.
  ///
  /// In en, this message translates to:
  /// **'This file is not a dll'**
  String get invalidDllExtension;

  /// No description provided for @emptyHostname.
  ///
  /// In en, this message translates to:
  /// **'Empty hostname'**
  String get emptyHostname;

  /// No description provided for @hostnameFormat.
  ///
  /// In en, this message translates to:
  /// **'Wrong hostname format: expected ip:port'**
  String get hostnameFormat;

  /// No description provided for @emptyURL.
  ///
  /// In en, this message translates to:
  /// **'Empty update URL'**
  String get emptyURL;

  /// No description provided for @missingVersionError.
  ///
  /// In en, this message translates to:
  /// **'Download or select a version before starting Fortnite'**
  String get missingVersionError;

  /// No description provided for @missingExecutableError.
  ///
  /// In en, this message translates to:
  /// **'Missing Fortnite executable: usually this means that the installation was moved or deleted'**
  String get missingExecutableError;

  /// No description provided for @multipleExecutablesError.
  ///
  /// In en, this message translates to:
  /// **'There must be only one executable named {name} in the game directory'**
  String multipleExecutablesError(Object name);

  /// No description provided for @corruptedVersionError.
  ///
  /// In en, this message translates to:
  /// **'Fortnite crashed while starting: either the game installation is corrupted or an injected dll({dlls}) tried to access memory illegally'**
  String corruptedVersionError(Object dlls);

  /// No description provided for @corruptedDllError.
  ///
  /// In en, this message translates to:
  /// **'Cannot inject dll: {error}'**
  String corruptedDllError(Object error);

  /// No description provided for @missingCustomDllError.
  ///
  /// In en, this message translates to:
  /// **'The custom {dll}.dll doesn\'t exist: check your settings'**
  String missingCustomDllError(Object dll);

  /// No description provided for @tokenError.
  ///
  /// In en, this message translates to:
  /// **'Cannot log in into Fortnite: authentication error (injected dlls: {dlls})'**
  String tokenError(Object dlls);

  /// No description provided for @unknownFortniteError.
  ///
  /// In en, this message translates to:
  /// **'An unknown error occurred while launching Fortnite: {error}'**
  String unknownFortniteError(Object error);

  /// No description provided for @fortniteCrashError.
  ///
  /// In en, this message translates to:
  /// **'The {name} crashed after being launched'**
  String fortniteCrashError(Object name);

  /// No description provided for @serverNoLongerAvailableUnnamed.
  ///
  /// In en, this message translates to:
  /// **'The previous server is no longer available'**
  String get serverNoLongerAvailableUnnamed;

  /// No description provided for @noServerFound.
  ///
  /// In en, this message translates to:
  /// **'No server found: invalid or expired link'**
  String get noServerFound;

  /// No description provided for @settingsUtilsThemeName.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settingsUtilsThemeName;

  /// No description provided for @settingsUtilsThemeDescription.
  ///
  /// In en, this message translates to:
  /// **'Select the theme to use inside the launcher'**
  String get settingsUtilsThemeDescription;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// No description provided for @system.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get system;

  /// No description provided for @settingsUtilsLanguageName.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsUtilsLanguageName;

  /// No description provided for @settingsUtilsLanguageDescription.
  ///
  /// In en, this message translates to:
  /// **'Select the language to use inside the launcher'**
  String get settingsUtilsLanguageDescription;

  /// No description provided for @infoDocumentationName.
  ///
  /// In en, this message translates to:
  /// **'Documentation'**
  String get infoDocumentationName;

  /// No description provided for @infoDocumentationDescription.
  ///
  /// In en, this message translates to:
  /// **'Read some tutorials on how to use Reboot'**
  String get infoDocumentationDescription;

  /// No description provided for @infoDocumentationContent.
  ///
  /// In en, this message translates to:
  /// **'Open GitHub'**
  String get infoDocumentationContent;

  /// No description provided for @infoDiscordName.
  ///
  /// In en, this message translates to:
  /// **'Discord'**
  String get infoDiscordName;

  /// No description provided for @infoDiscordDescription.
  ///
  /// In en, this message translates to:
  /// **'Join the discord server to receive help'**
  String get infoDiscordDescription;

  /// No description provided for @infoDiscordContent.
  ///
  /// In en, this message translates to:
  /// **'Open Discord'**
  String get infoDiscordContent;

  /// No description provided for @infoVideoName.
  ///
  /// In en, this message translates to:
  /// **'Tutorial'**
  String get infoVideoName;

  /// No description provided for @infoVideoDescription.
  ///
  /// In en, this message translates to:
  /// **'Show the tutorial again in the launcher'**
  String get infoVideoDescription;

  /// No description provided for @infoVideoContent.
  ///
  /// In en, this message translates to:
  /// **'Start Tutorial'**
  String get infoVideoContent;

  /// No description provided for @dllDeletedTitle.
  ///
  /// In en, this message translates to:
  /// **'A critical dll was deleted and couldn\'t be reinstalled'**
  String get dllDeletedTitle;

  /// No description provided for @dllDeletedSecondaryAction.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get dllDeletedSecondaryAction;

  /// No description provided for @dllDeletedPrimaryAction.
  ///
  /// In en, this message translates to:
  /// **'Disable Antivirus'**
  String get dllDeletedPrimaryAction;

  /// No description provided for @clickKey.
  ///
  /// In en, this message translates to:
  /// **'Waiting for a key to be registered'**
  String get clickKey;

  /// No description provided for @settingsLogsName.
  ///
  /// In en, this message translates to:
  /// **'Export logs'**
  String get settingsLogsName;

  /// No description provided for @settingsLogsDescription.
  ///
  /// In en, this message translates to:
  /// **'Exports an archive containing all the logs produced by the launcher'**
  String get settingsLogsDescription;

  /// No description provided for @settingsLogsAction.
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get settingsLogsAction;

  /// No description provided for @settingsLogsSelectFolder.
  ///
  /// In en, this message translates to:
  /// **'Select a folder'**
  String get settingsLogsSelectFolder;

  /// No description provided for @settingsLogsCreating.
  ///
  /// In en, this message translates to:
  /// **'Creating logs archive...'**
  String get settingsLogsCreating;

  /// No description provided for @settingsLogsCreated.
  ///
  /// In en, this message translates to:
  /// **'Logs archive created successfully'**
  String get settingsLogsCreated;

  /// No description provided for @settingsLogsCreatedShowFile.
  ///
  /// In en, this message translates to:
  /// **'Show file'**
  String get settingsLogsCreatedShowFile;

  /// No description provided for @updateAvailable.
  ///
  /// In en, this message translates to:
  /// **'Version {version} is now available'**
  String updateAvailable(Object version);

  /// No description provided for @updateAvailableAction.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get updateAvailableAction;

  /// No description provided for @gameServerEnd.
  ///
  /// In en, this message translates to:
  /// **'The match ended'**
  String get gameServerEnd;

  /// No description provided for @gameServerRestart.
  ///
  /// In en, this message translates to:
  /// **'The server will restart in {timeInSeconds} seconds'**
  String gameServerRestart(Object timeInSeconds);

  /// No description provided for @gameServerShutdown.
  ///
  /// In en, this message translates to:
  /// **'The server will shutdown in {timeInSeconds} seconds'**
  String gameServerShutdown(Object timeInSeconds);

  /// No description provided for @quiz.
  ///
  /// In en, this message translates to:
  /// **'Quiz'**
  String get quiz;

  /// No description provided for @startQuiz.
  ///
  /// In en, this message translates to:
  /// **'I have read the instructions'**
  String get startQuiz;

  /// No description provided for @checkQuiz.
  ///
  /// In en, this message translates to:
  /// **'Check answers'**
  String get checkQuiz;

  /// No description provided for @quizFailed.
  ///
  /// In en, this message translates to:
  /// **'You got a score of {right}/{total}: you have {tries} left'**
  String quizFailed(Object right, Object total, Object tries);

  /// No description provided for @quizSuccess.
  ///
  /// In en, this message translates to:
  /// **'You got all the questions right: thanks for reading the instructions!'**
  String get quizSuccess;

  /// No description provided for @quizZeroTriesLeft.
  ///
  /// In en, this message translates to:
  /// **'zero tries'**
  String get quizZeroTriesLeft;

  /// No description provided for @quizOneTryLeft.
  ///
  /// In en, this message translates to:
  /// **'one try'**
  String get quizOneTryLeft;

  /// No description provided for @quizTwoTriesLeft.
  ///
  /// In en, this message translates to:
  /// **'two tries'**
  String get quizTwoTriesLeft;

  /// No description provided for @gameServerTypeName.
  ///
  /// In en, this message translates to:
  /// **'Headless'**
  String get gameServerTypeName;

  /// No description provided for @gameServerTypeDescription.
  ///
  /// In en, this message translates to:
  /// **'Disables game rendering to save resources'**
  String get gameServerTypeDescription;

  /// No description provided for @localBuild.
  ///
  /// In en, this message translates to:
  /// **'This PC'**
  String get localBuild;

  /// No description provided for @githubArchive.
  ///
  /// In en, this message translates to:
  /// **'Cloud archive'**
  String get githubArchive;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @accessible.
  ///
  /// In en, this message translates to:
  /// **'Accessible'**
  String get accessible;

  /// No description provided for @playable.
  ///
  /// In en, this message translates to:
  /// **'Playable'**
  String get playable;

  /// No description provided for @timeDescending.
  ///
  /// In en, this message translates to:
  /// **'Time (from newest to oldest)'**
  String get timeDescending;

  /// No description provided for @timeAscending.
  ///
  /// In en, this message translates to:
  /// **'Time (from oldest to newest)'**
  String get timeAscending;

  /// No description provided for @nameAscending.
  ///
  /// In en, this message translates to:
  /// **'Name (from A to Z)'**
  String get nameAscending;

  /// No description provided for @nameDescending.
  ///
  /// In en, this message translates to:
  /// **'Name (from Z to A)'**
  String get nameDescending;

  /// No description provided for @none.
  ///
  /// In en, this message translates to:
  /// **'none'**
  String get none;

  /// No description provided for @openLog.
  ///
  /// In en, this message translates to:
  /// **'Open log'**
  String get openLog;

  /// No description provided for @backendProcessError.
  ///
  /// In en, this message translates to:
  /// **'The backend shut down unexpectedly'**
  String get backendProcessError;

  /// No description provided for @backendErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'The backend reported an unexpected error'**
  String get backendErrorMessage;

  /// No description provided for @welcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Reboot Launcher'**
  String get welcomeTitle;

  /// No description provided for @welcomeDescription.
  ///
  /// In en, this message translates to:
  /// **'If you have never used a Fortnite game server, or this launcher in particular, please click on take a tour\nPlease don\'t ask for support on Discord without taking the tour: this helps me prioritize real bugs\nYou can always take the tour again in the Info tab'**
  String get welcomeDescription;

  /// No description provided for @hostAccountText.
  ///
  /// In en, this message translates to:
  /// **'The host tab shows different credentials compared to the play tab.\nIf you are advanced user, you can set a different email and password\nhere if the backend you are using needs authentication.'**
  String get hostAccountText;

  /// No description provided for @hostAccountAction.
  ///
  /// In en, this message translates to:
  /// **'I understand'**
  String get hostAccountAction;

  /// No description provided for @welcomeAction.
  ///
  /// In en, this message translates to:
  /// **'Take the tour'**
  String get welcomeAction;

  /// No description provided for @startOnboardingText.
  ///
  /// In en, this message translates to:
  /// **'Start by choosing a username: this will be visible to other players on Fortnite.\nIf you are advanced user, you can set the email and password here if the backend\nyou are using supports authentication.'**
  String get startOnboardingText;

  /// No description provided for @startOnboardingActionLabel.
  ///
  /// In en, this message translates to:
  /// **'Let\'s do it'**
  String get startOnboardingActionLabel;

  /// No description provided for @promptPlayPageText.
  ///
  /// In en, this message translates to:
  /// **'The Play tab is used to launch the version of Fortnite you want.\nBefore playing, you\'ll need to host or join a game server.\nYou will learn how to later.'**
  String get promptPlayPageText;

  /// No description provided for @promptPlayPageActionLabel.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get promptPlayPageActionLabel;

  /// No description provided for @promptPlayVersionText.
  ///
  /// In en, this message translates to:
  /// **'Here you can download or import any Fortnite version\nAdd at least one to start using the launcher'**
  String get promptPlayVersionText;

  /// No description provided for @promptPlayVersionActionLabelHasBuilds.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get promptPlayVersionActionLabelHasBuilds;

  /// No description provided for @promptPlayVersionActionLabelNoBuilds.
  ///
  /// In en, this message translates to:
  /// **'Let\'s do it'**
  String get promptPlayVersionActionLabelNoBuilds;

  /// No description provided for @promptServerBrowserPageText.
  ///
  /// In en, this message translates to:
  /// **'The Server Browser tab is used to find game servers hosted by other players\nServers can be free to join or password protected based on the settings set by the owner'**
  String get promptServerBrowserPageText;

  /// No description provided for @promptServerBrowserPageActionLabel.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get promptServerBrowserPageActionLabel;

  /// No description provided for @promptHostPageText.
  ///
  /// In en, this message translates to:
  /// **'The Host tab is used to host a game server.\nWhen you usually play Fortnite, you connect to an Epic Games\' game server.\nTo play using Reboot, you\'ll need to host the game server yourself, or join someone else\'s.\nOtherwise, you will be sent back to the lobby when trying to join a game.'**
  String get promptHostPageText;

  /// No description provided for @promptHostPageActionLabel.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get promptHostPageActionLabel;

  /// No description provided for @promptHostInfoText.
  ///
  /// In en, this message translates to:
  /// **'This section is used to provide information about your game server for the Server Browser\nIf you don\'t to use the Server Browser, you can skip this part for now and come back later.'**
  String get promptHostInfoText;

  /// No description provided for @promptHostInfoActionLabelSkip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get promptHostInfoActionLabelSkip;

  /// No description provided for @promptHostInfoActionLabelConfigure.
  ///
  /// In en, this message translates to:
  /// **'Configure'**
  String get promptHostInfoActionLabelConfigure;

  /// No description provided for @promptHostInformationText.
  ///
  /// In en, this message translates to:
  /// **'Choose the name for your server'**
  String get promptHostInformationText;

  /// No description provided for @promptHostInformationActionLabel.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get promptHostInformationActionLabel;

  /// No description provided for @promptHostInformationDescriptionText.
  ///
  /// In en, this message translates to:
  /// **'Choose the description for your server'**
  String get promptHostInformationDescriptionText;

  /// No description provided for @promptHostInformationDescriptionActionLabel.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get promptHostInformationDescriptionActionLabel;

  /// No description provided for @promptHostInformationPasswordText.
  ///
  /// In en, this message translates to:
  /// **'Set a password for your server, if you need one'**
  String get promptHostInformationPasswordText;

  /// No description provided for @promptHostInformationPasswordActionLabel.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get promptHostInformationPasswordActionLabel;

  /// No description provided for @promptHostVersionText.
  ///
  /// In en, this message translates to:
  /// **'You can select the version of Fortnite to host here.\nThese are synchronized with the Play tab.'**
  String get promptHostVersionText;

  /// No description provided for @promptHostVersionActionLabel.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get promptHostVersionActionLabel;

  /// No description provided for @promptHostShareText.
  ///
  /// In en, this message translates to:
  /// **'If you don\'t want to use the server browser, other players can join\nyou server by using your Reboot Launcher link or your public IP.'**
  String get promptHostShareText;

  /// No description provided for @promptHostShareActionLabel.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get promptHostShareActionLabel;

  /// No description provided for @promptBackendPageText.
  ///
  /// In en, this message translates to:
  /// **'The Backend tab is used for authentication and queuing.\nWhen you usually play Fortnite, you connect to an Epic Games\' backend.\nTo play using Reboot, you\'ll need to host the backend yourself, or join someone else\'s.\nIf the backend doesn\'t work correctly, an authentication error will be displayed.'**
  String get promptBackendPageText;

  /// No description provided for @promptBackendPageActionLabel.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get promptBackendPageActionLabel;

  /// No description provided for @promptBackendTypePageText.
  ///
  /// In en, this message translates to:
  /// **'By default, an embedded LawinV1 backend is started.\nIf you want to run another backend on your PC, like\nLawinV2 or Momentum, select Local. If you want to join,\na backend on someone else\'s PC, select Remote.'**
  String get promptBackendTypePageText;

  /// No description provided for @promptBackendTypePageActionLabel.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get promptBackendTypePageActionLabel;

  /// No description provided for @promptBackendGameServerAddressText.
  ///
  /// In en, this message translates to:
  /// **'When you are using an embedded backend, you can type\nhere the IP of the game server you want to join. When\nyou click Join in the Server Browser, this field will be\nautocompleted. If you are not using an embedded backend,\nyou will need to set the IP manually in your backend configuration.'**
  String get promptBackendGameServerAddressText;

  /// No description provided for @promptBackendGameServerAddressActionLabel.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get promptBackendGameServerAddressActionLabel;

  /// No description provided for @promptBackendUnrealEngineKeyText.
  ///
  /// In en, this message translates to:
  /// **'For some Fortnite versions, the PLAY button doesn\'t work: when this happens,\nyou need to click this Key to open the Unreal Engine console and type: open IP.\nSo for example if you want to join your own server you can type: open 127.0.0.1.\nIf you don\'t know, 127.0.0.1 is the IP of your local machine. If you are not using\nthe embedded backend, you\'ll need to set the Unreal Engine key in its configuration.'**
  String get promptBackendUnrealEngineKeyText;

  /// No description provided for @promptBackendUnrealEngineKeyActionLabel.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get promptBackendUnrealEngineKeyActionLabel;

  /// No description provided for @promptBackendDetachedText.
  ///
  /// In en, this message translates to:
  /// **'If you get an authentication error when trying to log into Fortnite,\nswitch to embedded backend and enable this option to debug the backend.\nIf you can\'t fix the error, report a bug on Discord.'**
  String get promptBackendDetachedText;

  /// No description provided for @promptBackendDetachedActionLabel.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get promptBackendDetachedActionLabel;

  /// No description provided for @promptInfoTabText.
  ///
  /// In en, this message translates to:
  /// **'The Info tab contains useful links to report bugs and receive support'**
  String get promptInfoTabText;

  /// No description provided for @promptInfoTabActionLabel.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get promptInfoTabActionLabel;

  /// No description provided for @promptSettingsTabText.
  ///
  /// In en, this message translates to:
  /// **'The Settings tab contains options to customize the launcher'**
  String get promptSettingsTabText;

  /// No description provided for @promptSettingsTabActionLabel.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get promptSettingsTabActionLabel;

  /// No description provided for @automaticGameServerDialogContent.
  ///
  /// In en, this message translates to:
  /// **'The launcher detected that you are not running a game server, but that your matchmaker is set to your local machine. If you don\'t want to join another player\'s server, you should start a game server. This is necessary to be able to play!'**
  String get automaticGameServerDialogContent;

  /// No description provided for @automaticGameServerDialogIgnore.
  ///
  /// In en, this message translates to:
  /// **'Ignore'**
  String get automaticGameServerDialogIgnore;

  /// No description provided for @automaticGameServerDialogStart.
  ///
  /// In en, this message translates to:
  /// **'Start server'**
  String get automaticGameServerDialogStart;

  /// No description provided for @gameResetDefaultsName.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get gameResetDefaultsName;

  /// No description provided for @gameResetDefaultsDescription.
  ///
  /// In en, this message translates to:
  /// **'Resets the game\'s settings to their default values'**
  String get gameResetDefaultsDescription;

  /// No description provided for @gameResetDefaultsContent.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get gameResetDefaultsContent;

  /// No description provided for @selectFile.
  ///
  /// In en, this message translates to:
  /// **'Select a file'**
  String get selectFile;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @importingVersion.
  ///
  /// In en, this message translates to:
  /// **'Looking for Fortnite game files...'**
  String get importingVersion;

  /// No description provided for @importedVersion.
  ///
  /// In en, this message translates to:
  /// **'Successfully imported version'**
  String get importedVersion;

  /// No description provided for @importVersionMissingShippingExeError.
  ///
  /// In en, this message translates to:
  /// **'Cannot import version: {name} should exist in the directory'**
  String importVersionMissingShippingExeError(Object name);

  /// No description provided for @importVersionMultipleShippingExesError.
  ///
  /// In en, this message translates to:
  /// **'Cannot import version: only one {name} should exist in the directory'**
  String importVersionMultipleShippingExesError(Object name);

  /// No description provided for @importVersionUnsupportedVersionError.
  ///
  /// In en, this message translates to:
  /// **'This version of Fortnite is not supported by the launcher'**
  String get importVersionUnsupportedVersionError;

  /// No description provided for @downloadManually.
  ///
  /// In en, this message translates to:
  /// **'Download manually'**
  String get downloadManually;

  /// No description provided for @gameServerPortEqualsBackendPort.
  ///
  /// In en, this message translates to:
  /// **'The game server port cannot be {backendPort} as its reserved for the backend'**
  String gameServerPortEqualsBackendPort(Object backendPort);

  /// No description provided for @gameServer.
  ///
  /// In en, this message translates to:
  /// **'game server'**
  String get gameServer;

  /// No description provided for @client.
  ///
  /// In en, this message translates to:
  /// **'client'**
  String get client;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
