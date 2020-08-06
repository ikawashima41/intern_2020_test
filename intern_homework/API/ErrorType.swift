struct ErrorMessage {
    var title: String
    var description: String
}

enum ErrorType: Error {

    case offline
    case invalidParams
    case unauthorized
    case forbidden
    case notFound
    case unprocessableEntity
    case serverError
    case unKnown
    case decode

    var message: ErrorMessage {
        switch self {
        case .offline:
            return ErrorMessage(title: "オフラインです", description: "オフラインです")
        
        case .invalidParams:
            return ErrorMessage(title: "400エラーです", description: "400エラーです")

        case .unauthorized:
            return ErrorMessage(title: "401エラーです", description: "401エラーです")

        case .forbidden:
            return ErrorMessage(title: "403エラーです", description: "403エラーです")

        case .notFound:
            return ErrorMessage(title: "404エラーです", description: "404エラーです")

        case .unprocessableEntity:
            return ErrorMessage(title: "422エラーです", description: "422エラーです")

        case .serverError:
            return ErrorMessage(title: "システムエラーです", description: "システムエラーです")

        case .unKnown:
            return ErrorMessage(title: "不明なエラーが発生しました", description: "不明なエラーが発生しました")

        case .decode:
            return ErrorMessage(title: "decodeエラーです", description: "decodeエラーです")
        }
        
    }
}
