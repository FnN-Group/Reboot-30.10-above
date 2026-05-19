import 'dart:convert';
import 'dart:io';

import 'package:reboot_common/common.dart';

List<GameVersion> readVersions() {
  final file = _versionsFile;
  if(!file.existsSync()) {
    return [];
  }

  try {
    Iterable decodedVersionsJson = jsonDecode(file.readAsStringSync());
    return decodedVersionsJson
        .map((entry) {
      try {
        return GameVersion.fromJson(entry);
      }catch(error) {
        throw "Cannot parse version: $error";
      }
    })
        .toList();
  }catch(error) {
    throw "Cannot parse versions: $error";
  }
}

void writeVersion(GameVersion version) {
  final versions = readVersions();
  versions.add(version);
  _versionsFile.writeAsString(jsonEncode(versions.map((version) => version.toJson()).toList()));
}

File get _versionsFile => File('${installationDirectory.path}/versions.json');
