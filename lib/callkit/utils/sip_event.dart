enum SipEvent {
  AccountRegistrationStateChanged,
  Ring,
  Up,
  Paused,
  Resuming,
  Missed,
  Hangup,
  Error,
  // Released
}

enum RegistrationState {
  None,
  Progress,
  Ok,
  Cleared,
  Failed,
}
