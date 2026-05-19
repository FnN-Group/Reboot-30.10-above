// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'reboot_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get find => 'Find a setting';

  @override
  String get on => 'On';

  @override
  String get off => 'Off';

  @override
  String get resetDefaultsContent => 'Reset';

  @override
  String get resetDefaultsDialogTitle =>
      'Do you want to reset all the setting in this tab to their default values? This action is irreversible';

  @override
  String get resetDefaultsDialogSecondaryAction => 'Close';

  @override
  String get resetDefaultsDialogPrimaryAction => 'Reset';

  @override
  String get backendName => 'Backend';

  @override
  String get backendTypeName => 'Type';

  @override
  String get backendTypeDescription =>
      'The type of backend to use when logging into Fortnite';

  @override
  String get backendConfigurationHostName => 'Host';

  @override
  String get backendConfigurationHostDescription =>
      'The hostname of the backend';

  @override
  String get backendConfigurationPortName => 'Port';

  @override
  String get backendConfigurationPortDescription => 'The port of the backend';

  @override
  String get backendConfigurationDetachedName => 'Detached';

  @override
  String get backendConfigurationDetachedDescription =>
      'Whether a separate process should be spawned, useful for debugging';

  @override
  String get backendInstallationDirectoryName => 'Installation directory';

  @override
  String get backendInstallationDirectoryDescription =>
      'Opens the folder where the embedded backend is located';

  @override
  String get backendInstallationDirectoryContent => 'Show files';

  @override
  String get backendResetDefaultsName => 'Reset';

  @override
  String get backendResetDefaultsDescription =>
      'Resets the backend\'s settings to their default values';

  @override
  String get backendResetDefaultsContent => 'Reset';

  @override
  String get hostGameServerName => 'Information';

  @override
  String get hostGameServerDescription =>
      'Provide basic information about your game server for the Server Browser';

  @override
  String get hostGameServerNameName => 'Name';

  @override
  String get hostGameServerNameDescription => 'The name of your game server';

  @override
  String get hostGameServerDescriptionName => 'Description';

  @override
  String get hostGameServerDescriptionDescription =>
      'The description of your game server';

  @override
  String get hostGameServerPasswordName => 'Password';

  @override
  String get hostGameServerPasswordDescription =>
      'The password of your game server, if you need one';

  @override
  String get hostGameServerDiscoverableName => 'Discoverable';

  @override
  String get hostGameServerDiscoverableDescription =>
      'Make your server available to other players on the server browser';

  @override
  String get hostAutomaticRestartName => 'Automatic restart';

  @override
  String get hostAutomaticRestartDescription =>
      'Automatically restarts your game server when the match ends';

  @override
  String get hostShareName => 'Share';

  @override
  String get hostShareDescription =>
      'Make it easy for other people to join your server with the options in this section';

  @override
  String get hostShareLinkName => 'Link';

  @override
  String get hostShareLinkDescription =>
      'Copies a link for your server to the clipboard';

  @override
  String get hostShareLinkContent => 'Copy Link';

  @override
  String get hostShareLinkMessageSuccess => 'Copied your link to the clipboard';

  @override
  String get hostShareIpName => 'Public IP';

  @override
  String get hostShareIpDescription =>
      'Copies your current public IP to the clipboard';

  @override
  String get hostShareIpContent => 'Copy IP';

  @override
  String get hostShareIpMessageLoading => 'Obtaining your public IP...';

  @override
  String get hostShareIpMessageSuccess => 'Copied your link to the clipboard';

  @override
  String hostShareIpMessageError(Object error) {
    return 'An error occurred while obtaining your public IP: $error';
  }

  @override
  String get hostResetName => 'Reset';

  @override
  String get hostResetDescription =>
      'Resets the game server\'s settings to their default values';

  @override
  String get hostResetContent => 'Reset';

  @override
  String get browserName => 'Server Browser';

  @override
  String get noServersAvailableTitle => 'No servers are available right now';

  @override
  String get noServersAvailableSubtitle =>
      'Host a server yourself or come back later';

  @override
  String get joinServer => 'Join Server';

  @override
  String get noServersAvailableByQueryTitle => 'No results found';

  @override
  String get noServersAvailableByQuerySubtitle =>
      'No server matches your query';

  @override
  String get findServer => 'Find a server';

  @override
  String get copyIp => 'Copy IP';

  @override
  String get hostName => 'Host';

  @override
  String get matchmakerConfigurationAddressName => 'Game server address';

  @override
  String get matchmakerConfigurationAddressDescription =>
      'The address of the game server used by the backend';

  @override
  String get playName => 'Play';

  @override
  String get playGameServerName => 'Multiplayer';

  @override
  String get playGameServerDescription =>
      'See all the available options to start playing';

  @override
  String get playGameServerContentLocal => 'Your server';

  @override
  String playGameServerContentBrowser(Object owner) {
    return '$owner\'s server';
  }

  @override
  String playGameServerContentCustom(Object address) {
    return '$address';
  }

  @override
  String get playGameServerHostName => 'Host a server';

  @override
  String get playGameServerHostDescription => 'Run a game server on your PC';

  @override
  String get playGameServerHostContent => 'Host';

  @override
  String get playGameServerBrowserName => 'Browse servers';

  @override
  String get playGameServerBrowserDescription =>
      'Discover servers hosted by the community';

  @override
  String get playGameServerBrowserContent => 'Browse';

  @override
  String get playGameServerCustomName => 'Join a custom server';

  @override
  String get playGameServerCustomDescription =>
      'Join a game server using its public IP address';

  @override
  String get playGameServerCustomContent => 'Enter IP';

  @override
  String get settingsName => 'Settings';

  @override
  String get settingsClientName => 'Internal files';

  @override
  String get settingsClientDescription =>
      'Configure the internal files used by the launcher';

  @override
  String get settingsClientOptionsName => 'Options';

  @override
  String get settingsClientOptionsDescription =>
      'Configure additional options for Fortnite';

  @override
  String get settingsClientConsoleName => 'Unreal engine patcher';

  @override
  String get settingsClientConsoleDescription =>
      'Unlocks the Unreal Engine Console';

  @override
  String get settingsClientConsoleKeyName => 'Unreal engine console key';

  @override
  String get settingsClientConsoleKeyDescription =>
      'The keyboard key used to open the Unreal Engine console';

  @override
  String get settingsClientAuthName => 'Authentication patcher';

  @override
  String get settingsClientAuthDescription =>
      'Redirects all HTTP requests to the backend';

  @override
  String get settingsClientMemoryName => 'Memory patcher';

  @override
  String get settingsClientMemoryDescription =>
      'Prevents the client from crashing because of a memory leak';

  @override
  String get settingsClientArgsName => 'Custom launch arguments';

  @override
  String get settingsClientArgsDescription =>
      'Additional arguments to use when launching Fortnite';

  @override
  String get settingsClientArgsPlaceholder => 'Arguments...';

  @override
  String get settingsServerName => 'Game server';

  @override
  String get settingsServerSubtitle =>
      'Creates the game server on top of a Fortnite instance';

  @override
  String get settingsServerOptionsName => 'Options';

  @override
  String get settingsServerOptionsSubtitle =>
      'Configure additional options for the game server';

  @override
  String get settingsServerTypeName => 'Game server type';

  @override
  String get settingsServerTypeDescription =>
      'The type of game server to inject';

  @override
  String get settingsServerTypeEmbeddedName => 'Embedded';

  @override
  String get settingsServerTypeCustomName => 'Custom';

  @override
  String get settingsOldServerFileName => 'Game server';

  @override
  String get settingsServerFileDescription =>
      'The file injected to create the game server';

  @override
  String get settingsServerPortName => 'Port';

  @override
  String get settingsServerPortDescription =>
      'The port the launcher expects the game server to be hosted on';

  @override
  String get settingsServerOldMirrorName => 'Update mirror (Before season 20)';

  @override
  String get settingsServerNewMirrorName =>
      'Update mirror (Season 20 and above)';

  @override
  String get settingsServerMirrorDescription =>
      'The URL used to update the game server dll';

  @override
  String get settingsServerMirrorPlaceholder => 'mirror';

  @override
  String get settingsServerTimerName => 'Game server updater';

  @override
  String get settingsServerTimerSubtitle =>
      'Determines when the game server should be updated';

  @override
  String get settingsUtilsName => 'Launcher';

  @override
  String get settingsUtilsSubtitle =>
      'This section contains settings related to the launcher';

  @override
  String get settingsUtilsInstallationDirectoryName => 'Installation directory';

  @override
  String get settingsUtilsInstallationDirectorySubtitle =>
      'Opens the installation directory';

  @override
  String get settingsUtilsInstallationDirectoryContent => 'Show files';

  @override
  String get settingsUtilsBugReportName => 'Create a bug report';

  @override
  String get settingsUtilsBugReportSubtitle =>
      'Help me fix bugs by reporting them';

  @override
  String get settingsUtilsBugReportContent => 'Report a bug';

  @override
  String get settingsUtilsResetDefaultsName => 'Reset settings';

  @override
  String get settingsUtilsResetDefaultsSubtitle =>
      'Resets the launcher\'s settings to their default values';

  @override
  String get settingsUtilsDialogTitle =>
      'Do you want to reset all the setting in this tab to their default values? This action is irreversible';

  @override
  String get settingsUtilsDialogSecondaryAction => 'Close';

  @override
  String get selectFortniteName => 'Fortnite version';

  @override
  String get selectFortniteDescription =>
      'Select the version of Fortnite you want to use';

  @override
  String get manageVersionsName => 'Manage versions';

  @override
  String get manageVersionsDescription => 'Manage your Fortnite installations';

  @override
  String get importVersionName => 'Import';

  @override
  String get importVersionDescription =>
      'Import a new version of Fortnite into the launcher';

  @override
  String get addLocalBuildName => 'Add a version from this PC\'s local storage';

  @override
  String get addLocalBuildDescription =>
      'Versions coming from your local disk are not guaranteed to work';

  @override
  String get addVersion => 'Import';

  @override
  String get downloadBuildName => 'Download any version from the cloud';

  @override
  String get downloadBuildDescription =>
      'Download any Fortnite build easily from the cloud';

  @override
  String get downloadBuildContent => 'Download build';

  @override
  String get downloadVersion => 'Download';

  @override
  String cannotUpdateGameServer(Object error) {
    return 'An error occurred while updating the game server: $error';
  }

  @override
  String get launchFortnite => 'Launch Fortnite';

  @override
  String get closeFortnite => 'Close Fortnite';

  @override
  String get updateGameServerDllNever => 'Never';

  @override
  String updateGameServerDllEvery(Object name) {
    return 'Every $name';
  }

  @override
  String get selectPathPlaceholder => 'Path';

  @override
  String get selectPathWindowTitle => 'Select a file';

  @override
  String get defaultDialogSecondaryAction => 'Close';

  @override
  String get stopLoadingDialogAction => 'Stop';

  @override
  String get copyErrorDialogTitle => 'Copy error';

  @override
  String get copyErrorDialogSuccess => 'Copied error to clipboard';

  @override
  String get defaultServerName => 'Reboot Game Server';

  @override
  String get defaultServerDescription => 'Just another server';

  @override
  String downloadingDll(Object name) {
    return 'Downloading $name dll...';
  }

  @override
  String downloadDllSuccess(Object name) {
    return 'The $name dll was downloaded successfully';
  }

  @override
  String downloadDllError(Object error, Object name) {
    return 'An error occurred while downloading $name: $error';
  }

  @override
  String downloadDllAntivirus(Object antivirus, Object name) {
    return 'The $name dll was deleted: your antivirus($antivirus) might have flagged it';
  }

  @override
  String get downloadDllRetry => 'Retry';

  @override
  String uncaughtErrorMessage(Object error) {
    return 'An uncaught error was thrown: $error';
  }

  @override
  String get launchingGameServer => 'Launching the game server...';

  @override
  String get launchingGameClientOnly =>
      'Launching the game client without a server...';

  @override
  String get launchingGameClientAndServer =>
      'Launching the game client and server...';

  @override
  String get startGameServer => 'Start a game server';

  @override
  String get usernameOrEmail => 'Username/Email';

  @override
  String get invalidEmail => 'Invalid email';

  @override
  String get usernameOrEmailPlaceholder => 'Type your username or email';

  @override
  String get password => 'Password';

  @override
  String get passwordPlaceholder =>
      'Type your password, if you want to use one';

  @override
  String get cancelProfileChanges => 'Cancel';

  @override
  String get saveProfileChanges => 'Save';

  @override
  String get startingServer => 'Starting the backend...';

  @override
  String get startedServer => 'The backend was started successfully';

  @override
  String get checkedServer => 'The backend works correctly';

  @override
  String startServerError(Object error) {
    return 'An error occurred while starting the backend: $error';
  }

  @override
  String localServerError(Object error) {
    return 'The local backend doesn\'t work correctly: $error';
  }

  @override
  String get stoppingServer => 'Stopping the backend...';

  @override
  String get stoppedServer => 'The backend was stopped successfully';

  @override
  String stopServerError(Object error) {
    return 'An error occurred while stopping the backend: $error';
  }

  @override
  String get missingHostNameError =>
      'Missing hostname in the backend configuration';

  @override
  String get missingPortError => 'Missing port in the backend configuration';

  @override
  String get illegalPortError => 'Invalid port in the backend configuration';

  @override
  String get freeingPort => 'Freeing the backend port...';

  @override
  String get freedPort => 'The backend port was freed successfully';

  @override
  String freePortError(Object error) {
    return 'An error occurred while freeing the backend port: $error';
  }

  @override
  String pingingServer(Object type) {
    return 'Pinging the $type backend...';
  }

  @override
  String pingError(Object type) {
    return 'Cannot ping the $type backend';
  }

  @override
  String get joinSelfServer => 'You can\'t join your own server';

  @override
  String cannotJoinServerVersion(Object version) {
    return 'You can\'t join this server: download Fortnite $version';
  }

  @override
  String get wrongServerPassword => 'Wrong password: please try again';

  @override
  String joiningServer(Object name) {
    return 'Joining $name...';
  }

  @override
  String get offlineServer =>
      'This server isn\'t online right now: please try again later';

  @override
  String get serverPassword => 'Password';

  @override
  String get serverPasswordPlaceholder => 'Type the server\'s password';

  @override
  String get serverPasswordCancel => 'Cancel';

  @override
  String get serverPasswordConfirm => 'Confirm';

  @override
  String joinedServer(Object author) {
    return 'You joined $author\'s server successfully!';
  }

  @override
  String get copiedIp => 'Copied IP to the clipboard';

  @override
  String get selectVersion => 'Select a version';

  @override
  String get missingVersion =>
      'This version doesn\'t exist on the local machine';

  @override
  String get deleteVersionDialogTitle =>
      'Are you sure you want to delete this version?';

  @override
  String get deleteVersionFromDiskOption => 'Delete version files from disk';

  @override
  String get deleteVersionCancel => 'Keep';

  @override
  String get deleteVersionConfirm => 'Delete';

  @override
  String get versionName => 'Name';

  @override
  String get versionNameLabel => 'Type the version name';

  @override
  String get newVersionNameConfirm => 'Save';

  @override
  String get newVersionNameLabel => 'Type the version name';

  @override
  String get gameFolderTitle => 'Game directory';

  @override
  String get gameFolderPlaceholder => 'Type the game directory';

  @override
  String get gameFolderPlaceWindowTitle => 'Select game directory';

  @override
  String get gameFolderLabel => 'Path';

  @override
  String get openInExplorer => 'Open in explorer';

  @override
  String get modify => 'Modify';

  @override
  String get delete => 'Delete';

  @override
  String get source => 'Source';

  @override
  String get manifest => 'Manifest';

  @override
  String get archive => 'Archive';

  @override
  String get build => 'Version';

  @override
  String get selectBuild => 'Select a fortnite version';

  @override
  String get fetchingBuilds => 'Fetching builds and disks...';

  @override
  String get unknownError => 'Unknown error';

  @override
  String get unknown => 'unknown';

  @override
  String downloadVersionError(Object error) {
    return 'Cannot download version: $error';
  }

  @override
  String get downloadedVersion => 'The download was completed successfully!';

  @override
  String get download => 'Download';

  @override
  String get downloading => 'Downloading...';

  @override
  String get startingDownload => 'Starting download...';

  @override
  String get extracting => 'Extracting...';

  @override
  String buildProgress(Object progress) {
    return '$progress%';
  }

  @override
  String get buildInstallationDirectory => 'Installation directory';

  @override
  String get buildInstallationDirectoryPlaceholder =>
      'Type the installation directory';

  @override
  String get buildInstallationDirectoryWindowTitle =>
      'Select installation directory';

  @override
  String timeLeft(num timeLeft) {
    String _temp0 = intl.Intl.pluralLogic(
      timeLeft,
      locale: localeName,
      other: 'about $timeLeft minutes',
      one: 'about $timeLeft minute',
      zero: 'less than a minute',
    );
    return 'Time left: $_temp0';
  }

  @override
  String get localBuildsWarning => 'Local builds are not guaranteed to work';

  @override
  String get saveLocalVersion => 'Add';

  @override
  String get embedded => 'Embedded';

  @override
  String get remote => 'Remote';

  @override
  String get local => 'Local';

  @override
  String get checkServer => 'Check backend';

  @override
  String get startServer => 'Start backend';

  @override
  String get stopServer => 'Stop backend';

  @override
  String get startHosting => 'Start hosting';

  @override
  String get stopHosting => 'Stop hosting';

  @override
  String get startGame => 'Start fortnite';

  @override
  String get stopGame => 'Close fortnite';

  @override
  String get waitingForGameServer =>
      'Waiting for the game server to boot up...';

  @override
  String get gameServerStartWarning =>
      'Unsupported version: the game server crashed while setting up the server';

  @override
  String get gameServerStartLocalWarning =>
      'The game server was started successfully, but other players can\'t join';

  @override
  String get gameServerStarted => 'The game server was started successfully';

  @override
  String get gameClientStarted => 'The game client was started successfully';

  @override
  String get checkingGameServer =>
      'Checking if other players can join the game server...';

  @override
  String checkGameServerFixMessage(Object port) {
    return 'The game server was started successfully, but other players can\'t join yet as port $port isn\'t open';
  }

  @override
  String get checkGameServerFixAction => 'Learn more';

  @override
  String get infoName => 'Info';

  @override
  String get emptyVersionName => 'Empty version name';

  @override
  String get versionAlreadyExists => 'This version already exists';

  @override
  String get emptyGamePath => 'Empty game path';

  @override
  String get directoryDoesNotExist => 'Directory doesn\'t exist';

  @override
  String get missingShippingExe =>
      'Invalid game path: missing Fortnite executable';

  @override
  String get invalidDownloadPath => 'Invalid download path';

  @override
  String get invalidDllPath => 'Invalid dll path';

  @override
  String get dllDoesNotExist => 'The file doesn\'t exist';

  @override
  String get invalidDllExtension => 'This file is not a dll';

  @override
  String get emptyHostname => 'Empty hostname';

  @override
  String get hostnameFormat => 'Wrong hostname format: expected ip:port';

  @override
  String get emptyURL => 'Empty update URL';

  @override
  String get missingVersionError =>
      'Download or select a version before starting Fortnite';

  @override
  String get missingExecutableError =>
      'Missing Fortnite executable: usually this means that the installation was moved or deleted';

  @override
  String multipleExecutablesError(Object name) {
    return 'There must be only one executable named $name in the game directory';
  }

  @override
  String corruptedVersionError(Object dlls) {
    return 'Fortnite crashed while starting: either the game installation is corrupted or an injected dll($dlls) tried to access memory illegally';
  }

  @override
  String corruptedDllError(Object error) {
    return 'Cannot inject dll: $error';
  }

  @override
  String missingCustomDllError(Object dll) {
    return 'The custom $dll.dll doesn\'t exist: check your settings';
  }

  @override
  String tokenError(Object dlls) {
    return 'Cannot log in into Fortnite: authentication error (injected dlls: $dlls)';
  }

  @override
  String unknownFortniteError(Object error) {
    return 'An unknown error occurred while launching Fortnite: $error';
  }

  @override
  String fortniteCrashError(Object name) {
    return 'The $name crashed after being launched';
  }

  @override
  String get serverNoLongerAvailableUnnamed =>
      'The previous server is no longer available';

  @override
  String get noServerFound => 'No server found: invalid or expired link';

  @override
  String get settingsUtilsThemeName => 'Theme';

  @override
  String get settingsUtilsThemeDescription =>
      'Select the theme to use inside the launcher';

  @override
  String get dark => 'Dark';

  @override
  String get light => 'Light';

  @override
  String get system => 'System';

  @override
  String get settingsUtilsLanguageName => 'Language';

  @override
  String get settingsUtilsLanguageDescription =>
      'Select the language to use inside the launcher';

  @override
  String get infoDocumentationName => 'Documentation';

  @override
  String get infoDocumentationDescription =>
      'Read some tutorials on how to use Reboot';

  @override
  String get infoDocumentationContent => 'Open GitHub';

  @override
  String get infoDiscordName => 'Discord';

  @override
  String get infoDiscordDescription =>
      'Join the discord server to receive help';

  @override
  String get infoDiscordContent => 'Open Discord';

  @override
  String get infoVideoName => 'Tutorial';

  @override
  String get infoVideoDescription => 'Show the tutorial again in the launcher';

  @override
  String get infoVideoContent => 'Start Tutorial';

  @override
  String get dllDeletedTitle =>
      'A critical dll was deleted and couldn\'t be reinstalled';

  @override
  String get dllDeletedSecondaryAction => 'Close';

  @override
  String get dllDeletedPrimaryAction => 'Disable Antivirus';

  @override
  String get clickKey => 'Waiting for a key to be registered';

  @override
  String get settingsLogsName => 'Export logs';

  @override
  String get settingsLogsDescription =>
      'Exports an archive containing all the logs produced by the launcher';

  @override
  String get settingsLogsAction => 'Export';

  @override
  String get settingsLogsSelectFolder => 'Select a folder';

  @override
  String get settingsLogsCreating => 'Creating logs archive...';

  @override
  String get settingsLogsCreated => 'Logs archive created successfully';

  @override
  String get settingsLogsCreatedShowFile => 'Show file';

  @override
  String updateAvailable(Object version) {
    return 'Version $version is now available';
  }

  @override
  String get updateAvailableAction => 'Download';

  @override
  String get gameServerEnd => 'The match ended';

  @override
  String gameServerRestart(Object timeInSeconds) {
    return 'The server will restart in $timeInSeconds seconds';
  }

  @override
  String gameServerShutdown(Object timeInSeconds) {
    return 'The server will shutdown in $timeInSeconds seconds';
  }

  @override
  String get quiz => 'Quiz';

  @override
  String get startQuiz => 'I have read the instructions';

  @override
  String get checkQuiz => 'Check answers';

  @override
  String quizFailed(Object right, Object total, Object tries) {
    return 'You got a score of $right/$total: you have $tries left';
  }

  @override
  String get quizSuccess =>
      'You got all the questions right: thanks for reading the instructions!';

  @override
  String get quizZeroTriesLeft => 'zero tries';

  @override
  String get quizOneTryLeft => 'one try';

  @override
  String get quizTwoTriesLeft => 'two tries';

  @override
  String get gameServerTypeName => 'Headless';

  @override
  String get gameServerTypeDescription =>
      'Disables game rendering to save resources';

  @override
  String get localBuild => 'This PC';

  @override
  String get githubArchive => 'Cloud archive';

  @override
  String get all => 'All';

  @override
  String get accessible => 'Accessible';

  @override
  String get playable => 'Playable';

  @override
  String get timeDescending => 'Time (from newest to oldest)';

  @override
  String get timeAscending => 'Time (from oldest to newest)';

  @override
  String get nameAscending => 'Name (from A to Z)';

  @override
  String get nameDescending => 'Name (from Z to A)';

  @override
  String get none => 'none';

  @override
  String get openLog => 'Open log';

  @override
  String get backendProcessError => 'The backend shut down unexpectedly';

  @override
  String get backendErrorMessage => 'The backend reported an unexpected error';

  @override
  String get welcomeTitle => 'Welcome to Reboot Launcher';

  @override
  String get welcomeDescription =>
      'If you have never used a Fortnite game server, or this launcher in particular, please click on take a tour\nPlease don\'t ask for support on Discord without taking the tour: this helps me prioritize real bugs\nYou can always take the tour again in the Info tab';

  @override
  String get hostAccountText =>
      'The host tab shows different credentials compared to the play tab.\nIf you are advanced user, you can set a different email and password\nhere if the backend you are using needs authentication.';

  @override
  String get hostAccountAction => 'I understand';

  @override
  String get welcomeAction => 'Take the tour';

  @override
  String get startOnboardingText =>
      'Start by choosing a username: this will be visible to other players on Fortnite.\nIf you are advanced user, you can set the email and password here if the backend\nyou are using supports authentication.';

  @override
  String get startOnboardingActionLabel => 'Let\'s do it';

  @override
  String get promptPlayPageText =>
      'The Play tab is used to launch the version of Fortnite you want.\nBefore playing, you\'ll need to host or join a game server.\nYou will learn how to later.';

  @override
  String get promptPlayPageActionLabel => 'Next';

  @override
  String get promptPlayVersionText =>
      'Here you can download or import any Fortnite version\nAdd at least one to start using the launcher';

  @override
  String get promptPlayVersionActionLabelHasBuilds => 'Next';

  @override
  String get promptPlayVersionActionLabelNoBuilds => 'Let\'s do it';

  @override
  String get promptServerBrowserPageText =>
      'The Server Browser tab is used to find game servers hosted by other players\nServers can be free to join or password protected based on the settings set by the owner';

  @override
  String get promptServerBrowserPageActionLabel => 'Next';

  @override
  String get promptHostPageText =>
      'The Host tab is used to host a game server.\nWhen you usually play Fortnite, you connect to an Epic Games\' game server.\nTo play using Reboot, you\'ll need to host the game server yourself, or join someone else\'s.\nOtherwise, you will be sent back to the lobby when trying to join a game.';

  @override
  String get promptHostPageActionLabel => 'Next';

  @override
  String get promptHostInfoText =>
      'This section is used to provide information about your game server for the Server Browser\nIf you don\'t to use the Server Browser, you can skip this part for now and come back later.';

  @override
  String get promptHostInfoActionLabelSkip => 'Skip';

  @override
  String get promptHostInfoActionLabelConfigure => 'Configure';

  @override
  String get promptHostInformationText => 'Choose the name for your server';

  @override
  String get promptHostInformationActionLabel => 'Next';

  @override
  String get promptHostInformationDescriptionText =>
      'Choose the description for your server';

  @override
  String get promptHostInformationDescriptionActionLabel => 'Next';

  @override
  String get promptHostInformationPasswordText =>
      'Set a password for your server, if you need one';

  @override
  String get promptHostInformationPasswordActionLabel => 'Next';

  @override
  String get promptHostVersionText =>
      'You can select the version of Fortnite to host here.\nThese are synchronized with the Play tab.';

  @override
  String get promptHostVersionActionLabel => 'Next';

  @override
  String get promptHostShareText =>
      'If you don\'t want to use the server browser, other players can join\nyou server by using your Reboot Launcher link or your public IP.';

  @override
  String get promptHostShareActionLabel => 'Next';

  @override
  String get promptBackendPageText =>
      'The Backend tab is used for authentication and queuing.\nWhen you usually play Fortnite, you connect to an Epic Games\' backend.\nTo play using Reboot, you\'ll need to host the backend yourself, or join someone else\'s.\nIf the backend doesn\'t work correctly, an authentication error will be displayed.';

  @override
  String get promptBackendPageActionLabel => 'Next';

  @override
  String get promptBackendTypePageText =>
      'By default, an embedded LawinV1 backend is started.\nIf you want to run another backend on your PC, like\nLawinV2 or Momentum, select Local. If you want to join,\na backend on someone else\'s PC, select Remote.';

  @override
  String get promptBackendTypePageActionLabel => 'Next';

  @override
  String get promptBackendGameServerAddressText =>
      'When you are using an embedded backend, you can type\nhere the IP of the game server you want to join. When\nyou click Join in the Server Browser, this field will be\nautocompleted. If you are not using an embedded backend,\nyou will need to set the IP manually in your backend configuration.';

  @override
  String get promptBackendGameServerAddressActionLabel => 'Next';

  @override
  String get promptBackendUnrealEngineKeyText =>
      'For some Fortnite versions, the PLAY button doesn\'t work: when this happens,\nyou need to click this Key to open the Unreal Engine console and type: open IP.\nSo for example if you want to join your own server you can type: open 127.0.0.1.\nIf you don\'t know, 127.0.0.1 is the IP of your local machine. If you are not using\nthe embedded backend, you\'ll need to set the Unreal Engine key in its configuration.';

  @override
  String get promptBackendUnrealEngineKeyActionLabel => 'Next';

  @override
  String get promptBackendDetachedText =>
      'If you get an authentication error when trying to log into Fortnite,\nswitch to embedded backend and enable this option to debug the backend.\nIf you can\'t fix the error, report a bug on Discord.';

  @override
  String get promptBackendDetachedActionLabel => 'Next';

  @override
  String get promptInfoTabText =>
      'The Info tab contains useful links to report bugs and receive support';

  @override
  String get promptInfoTabActionLabel => 'Next';

  @override
  String get promptSettingsTabText =>
      'The Settings tab contains options to customize the launcher';

  @override
  String get promptSettingsTabActionLabel => 'Done';

  @override
  String get automaticGameServerDialogContent =>
      'The launcher detected that you are not running a game server, but that your matchmaker is set to your local machine. If you don\'t want to join another player\'s server, you should start a game server. This is necessary to be able to play!';

  @override
  String get automaticGameServerDialogIgnore => 'Ignore';

  @override
  String get automaticGameServerDialogStart => 'Start server';

  @override
  String get gameResetDefaultsName => 'Reset';

  @override
  String get gameResetDefaultsDescription =>
      'Resets the game\'s settings to their default values';

  @override
  String get gameResetDefaultsContent => 'Reset';

  @override
  String get selectFile => 'Select a file';

  @override
  String get reset => 'Reset';

  @override
  String get importingVersion => 'Looking for Fortnite game files...';

  @override
  String get importedVersion => 'Successfully imported version';

  @override
  String importVersionMissingShippingExeError(Object name) {
    return 'Cannot import version: $name should exist in the directory';
  }

  @override
  String importVersionMultipleShippingExesError(Object name) {
    return 'Cannot import version: only one $name should exist in the directory';
  }

  @override
  String get importVersionUnsupportedVersionError =>
      'This version of Fortnite is not supported by the launcher';

  @override
  String get downloadManually => 'Download manually';

  @override
  String gameServerPortEqualsBackendPort(Object backendPort) {
    return 'The game server port cannot be $backendPort as its reserved for the backend';
  }

  @override
  String get gameServer => 'game server';

  @override
  String get client => 'client';
}
