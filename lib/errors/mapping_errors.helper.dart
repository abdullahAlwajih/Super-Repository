import 'package:super_repository/errors/firebase_error.dart';
import 'package:super_repository/super_repository.dart';

import 'error_asset_static.dart';
import 'exceptions.dart';

ErrorModel mapExceptionToMessage(Object exception) {
  switch (exception.runtimeType) {
    case ServerException:
      return ErrorModel(
        message: (exception as ServerException).message!,
        image: ErrorAssets.serverExceptionImage,
        icon: ErrorAssets.serverExceptionIcon,
        exception: ServerException(),
      );
    case ConflictException:
      return ErrorModel(
        message:FirebaseErrors.getMessage((exception as ConflictException).message),
        image: ErrorAssets.connectionExceptionImage,
        icon: ErrorAssets.connectionExceptionIcon,
        exception: ConnectionException(),
      );
    case CacheException:
      return ErrorModel(
        message: (exception as CacheException).message!,
        image: ErrorAssets.cacheExceptionImage,
        icon: ErrorAssets.cacheExceptionIcon,
        exception: CacheException(),
      );
    case NoContentException:
      return ErrorModel(
        message: (exception as NoContentException).message!,
        image: ErrorAssets.noContentExceptionImage,
        icon: ErrorAssets.noContentExceptionIcon,
        exception: NoContentException(),
      );
    case ConnectionException:
      return ErrorModel(
        message: (exception as ConnectionException).message!,
        image: ErrorAssets.connectionExceptionImage,
        icon: ErrorAssets.connectionExceptionIcon,
        exception: ConnectionException(),
      );
    case NotFoundException:
      return ErrorModel(
        message: (exception as NotFoundException).message!,
        image: ErrorAssets.notFoundExceptionImage,
        icon: ErrorAssets.notFoundExceptionIcon,
        exception: NotFoundException(),
      );
    case InvalidException:
      return ErrorModel(
        message: (exception as InvalidException).message!,
        image: ErrorAssets.invalidExceptionImage,
        icon: ErrorAssets.invalidExceptionIcon,
        exception: InvalidException(),
      );
    case ExpireException:
      return ErrorModel(
        message: (exception as ExpireException).message!,
        image: ErrorAssets.expireExceptionImage,
        icon: ErrorAssets.expireExceptionIcon,
        exception: ExpireException(),
      );
    case UserExistsException:
      return ErrorModel(
        message: (exception as UserExistsException).message!,
        image: ErrorAssets.expireExceptionImage,
        icon: ErrorAssets.expireExceptionIcon,
        exception: UserExistsException(),
      );
    case PasswordException:
      return ErrorModel(
        message: (exception as PasswordException).message!,
        image: ErrorAssets.passwordExceptionImage,
        icon: ErrorAssets.passwordExceptionIcon,
        exception: PasswordException(),
      );
    case UnauthenticatedException:
      return ErrorModel(
        message: (exception as UnauthenticatedException).message!,
        image: ErrorAssets.unauthenticatedExceptionImage,
        icon: ErrorAssets.unauthenticatedExceptionIcon,
        exception: UnauthenticatedException(),
      );
    case BlockedException:
      return ErrorModel(
        message: (exception as BlockedException).message!,
        image: ErrorAssets.blockedExceptionImage,
        icon: ErrorAssets.blockedExceptionIcon,
        exception: BlockedException(),
      );
    case EmptyException:
      return ErrorModel(
        message: (exception as EmptyException).message!,
        image: ErrorAssets.emptyExceptionImage,
        icon: ErrorAssets.emptyExceptionIcon,
        exception: EmptyException(),
      );
    case CustomException:
      return ErrorModel(
        message: (exception as CustomException).message,
        image: ErrorAssets.emptyExceptionImage,
        icon: ErrorAssets.emptyExceptionIcon,
        exception: CustomException(message: (exception.message)),
      );
    default:
      return ErrorModel(
        message: (exception as UnexpectedException).message ??  SuperLocalizations.of(
            SuperRepository.navigatorKey.currentState!.context)!
            .errorUnexpectedException,
        image: ErrorAssets.unexpectedErrorImage,
        icon: ErrorAssets.unexpectedErrorIcon,
      );
  }
}
