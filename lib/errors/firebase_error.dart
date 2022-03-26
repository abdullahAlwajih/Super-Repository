import 'package:super_repository/super_repository.dart';

abstract class FirebaseErrors {
  static const kInvalidCustomToken = "INVALID_CUSTOM_TOKEN";
  static const kCredentialMismatch = "CREDENTIAL_MISMATCH";
  static const kTokenExpired = "TOKEN_EXPIRED";
  static const kInvalidEmail = "INVALID_EMAIL";
  static const kUserDisabled = "USER_DISABLED";
  static const kUserNotFound = "USER_NOT_FOUND";
  static const kInvalidRefreshToken = "INVALID_REFRESH_TOKEN";
  static const kInvalidGrantType = "INVALID_GRANT_TYPE";
  static const kMissingRefreshToken = "MISSING_REFRESH_TOKEN";
  static const kEmailExists = "EMAIL_EXISTS";
  static const kOperationNotAllowed = "OPERATION_NOT_ALLOWED";
  static const kTooManyAttemptsTryLater = "TOO_MANY_ATTEMPTS_TRY_LATER";
  static const kEmailNotFound = "EMAIL_NOT_FOUND";
  static const kInvalidPassword = "INVALID_PASSWORD";
  static const kInvalidIDPResponse = "INVALID_IDP_RESPONSE";
  static const kExpiredOOBCode = "EXPIRED_OOB_CODE";
  static const kInvalidOOBCode = "INVALID_OOB_CODE";
  static const kInvalidIDToken = "INVALID_ID_TOKEN";
  static const kWeakPassword = "WEAK_PASSWORD";
  static const kCredentialTooOldLoginAgain = "CREDENTIAL_TOO_OLD_LOGIN_AGAIN";
  static const kFederatedUserIDAlreadyLinked =
      "FEDERATED_USER_ID_ALREADY_LINKED";

  static String? getMessage(message) {
    if (message.toString().contains(kInvalidCustomToken)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseInvalidCustomToken;
    }
    else if (message.toString().contains(kCredentialMismatch)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseCredentialMismatch;
    }
    else if (message.toString().contains(kInvalidEmail)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseInvalidEmail;
    }
    else if (message.toString().contains(kTokenExpired)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseTokenExpired;
    }
    else if (message.toString().contains(kUserDisabled)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseUserDisabled;
    }
    else if (message.toString().contains(kUserNotFound)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseUserNotFound;
    }
    else if (message.toString().contains(kInvalidRefreshToken)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseInvalidRefreshToken;
    }
    else if (message.toString().contains(kInvalidGrantType)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseInvalidGrantType;
    }
    else if (message.toString().contains(kMissingRefreshToken)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseMissingRefreshToken;
    }
    else if (message.toString().contains(kEmailExists)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseEmailExists;
    }
    else if (message.toString().contains(kOperationNotAllowed)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseOperationNotAllowed;
    }
    else if (message.toString().contains(kTooManyAttemptsTryLater)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseTooManyAttemptsTryLater;
    }
    else if (message.toString().contains(kEmailNotFound)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseEmailNotFound;
    }
    else if (message.toString().contains(kInvalidPassword)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseInvalidPassword;
    }
    else if (message.toString().contains(kInvalidIDPResponse)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseInvalidIDPResponse;
    }
    else if (message.toString().contains(kExpiredOOBCode)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseExpiredOOBCode;
    }
    else if (message.toString().contains(kInvalidOOBCode)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseInvalidOOBCode;
    }
    else if (message.toString().contains(kInvalidIDToken)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseInvalidIDToken;
    }
    else if (message.toString().contains(kWeakPassword)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseWeakPassword;
    }
    else if (message.toString().contains(kCredentialTooOldLoginAgain)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseCredentialTooOldLoginAgain;
    }
    else if (message.toString().contains(kFederatedUserIDAlreadyLinked)) {
      return SuperLocalizations.of(SuperRepository.navigatorKey.currentState!.context)!
          .firebaseFederatedUserIDAlreadyLinked;
    }
    else {
      return null;
    }
  }
}
