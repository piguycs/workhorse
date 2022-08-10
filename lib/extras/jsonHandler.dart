import 'dart:io';
import 'dart:convert';
//import 'package:path_provider/path_provider.dart';

class Database {
  final String filepath;
  var          data = {};

  /// #Database 
  /// > base class
  /// [filepath] <String> filepath
  Database(
    String filepath
  ) 
  : filepath = filepath
  {}

  /// Load filepath contents into a dynamic Map
  Future<Map> load() async {
    var data = await File(filepath).readAsString();
    return jsonDecode(data);
  }

  /// Pretty wrapper for [load]
  Future<void> Read() async {
    data = await load();
  }

  /// Write - this.data to the file
  Future<bool> Write() async {
    try {
      File(filepath).writeAsString(jsonEncode(data));
    } catch (e){
      return false;
    }
    // Update local cache version
    data = await load();
    return true;
  }
}

void main() async {
  /// Init the db
  final db = Database("./assets/data.json");

  /// Read from the db
  /// We don't want to make the class asynchronous!
  /// So we must load the data manually here
  await db.Read(); 
  
  /// Check contents
  print(db.data);
  
  /// Update contents
  db.data["w"] = "orld";
  
  /// Write to the file
  /// This will also update the cache
  /// by reading the file, to ensure
  /// the write was successful 
  await db.Write();

  /// Check if it updated?
  print(db.data);
}