import 'package:super_repository/super_repository.dart';

abstract class FirebaseErrors {
  static const kInvalidCustomToken = "INVALID_CUSTOM_TOKEN";
  static const kCredentialMismatch = "CREDENTIAL_MISMATCH";
  static const kTokenExpired = "TOKEN_EXPIRED";
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

  String? firebaseError(message) {
    switch (message) {
      case kInvalidCustomToken:
        return SuperLocalizations.of(SuperRepository.instance.context)!
            .firebaseInvalidCustomToken;
      case kCredentialMismatch:
        return SuperLocalizations.of(SuperRepository.instance.context)!
            .firebaseCredentialMismatch;
      case kTokenExpired:
        return SuperLocalizations.of(SuperRepository.instance.context)!
            .firebaseTokenExpired;
      case kUserDisabled:
        return SuperLocalizations.of(SuperRepository.instance.context)!
            .firebaseUserDisabled;
      case kUserNotFound:
        return SuperLocalizations.of(SuperRepository.instance.context)!
            .firebaseUserNotFound;
      case kInvalidRefreshToken:
        return SuperLocalizations.of(SuperRepository.instance.context)!
            .firebaseInvalidRefreshToken;
      case kInvalidGrantType:
        return SuperLocalizations.of(SuperRepository.instance.context)!
            .firebaseInvalidGrantType;
      case kMissingRefreshToken:
        return SuperLocalizations.of(SuperRepository.instance.context)!
            .firebaseMissingRefreshToken;
      case kEmailExists:
        return SuperLocalizations.of(SuperRepository.instance.context)!
            .firebaseEmailExists;
      case kOperationNotAllowed:
        return SuperLocalizations.of(SuperRepository.instance.context)!
            .firebaseOperationNotAllowed;
      case kTooManyAttemptsTryLater:
        return SuperLocalizations.of(SuperRepository.instance.context)!
            .firebaseTooManyAttemptsTryLater;
      case kEmailNotFound:
        return SuperLocalizations.of(SuperRepository.instance.context)!
            .firebaseEmailNotFound;
      case kInvalidPassword:
        return SuperLocalizations.of(SuperRepository.instance.context)!
            .firebaseInvalidPassword;
      case kInvalidIDPResponse:
        return SuperLocalizations.of(SuperRepository.instance.context)!
            .firebaseInvalidIDPResponse;
      case kExpiredOOBCode:
        return SuperLocalizations.of(SuperRepository.instance.context)!
            .firebaseExpiredOOBCode;
      case kInvalidOOBCode:
        return SuperLocalizations.of(SuperRepository.instance.context)!
            .firebaseInvalidOOBCode;
      case kInvalidIDToken:
        return SuperLocalizations.of(SuperRepository.instance.context)!
            .firebaseInvalidIDToken;
      case kWeakPassword:
        return SuperLocalizations.of(SuperRepository.instance.context)!
            .firebaseWeakPassword;
      case kCredentialTooOldLoginAgain:
        return SuperLocalizations.of(SuperRepository.instance.context)!
            .firebaseCredentialTooOldLoginAgain;
      case kFederatedUserIDAlreadyLinked:
        return SuperLocalizations.of(SuperRepository.instance.context)!
            .firebaseFederatedUserIDAlreadyLinked;
      default:
        return null;
    }
  }
}
