Feature: Evaulate received cookies against expected.

Background:
  Given "curl" is installed

Scenario: Verify server is returning the cookies expected
  Given the target hostname is "google.com"
  When I send a GET request to the hostname
  Then the following cookies should be received:
	| name | secure | _rest              |
	| PREF | false  | {}                 |
	| NID  | false  | {'HttpOnly': None} |