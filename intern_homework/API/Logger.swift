import Foundation

struct Logger {
    private static let isLoggerEnable = true
    
    static func printError(error: ErrorType) {
        guard isLoggerEnable else { return }

        print("Error\nTitle: \(error.message.title)\nMessage: \(error.message.description)\nDescription: \(error.localizedDescription)")
    }

    static func printRequest(request: URLRequest) {

        guard isLoggerEnable else { return }

        let urlString = request.url?.absoluteString ?? ""
        let components = NSURLComponents(string: urlString)

        let method = request.httpMethod != nil ? "\(request.httpMethod!)": ""
        let path = "\(components?.path ?? "")"
        let query = "\(components?.query ?? "")"
        let host = "\(components?.host ?? "")"

        var requestLog = "\n-------------------⚡️⚡️ APIRequest(mcas-sdk-ios) ⚡️⚡️------------------>\n"
        requestLog += "\(urlString)"
        requestLog += "\n\n"
        requestLog += "\(method) \(path)?\(query) HTTP/1.1\n"
        requestLog += "Host: \(host)\n"
        for (key, value) in request.allHTTPHeaderFields ?? [:] {
            requestLog += "\(key): \(value)\n"
        }
        if let body = request.httpBody {
            let bodyString = String(data: body, encoding: .utf8) ?? "Can't render body; not utf8 encoded"
            requestLog += "\n\(bodyString)\n"
        }

        requestLog += "\n------------------------------------------------------------------------>\n"
        print(requestLog)

    }
    
    static func prettyPrint(data: Data) {
        guard isLoggerEnable else { return }

        var requestLog = "\n-------------------🔥🔥 APIRespone(mcas-sdk-ios) 🔥🔥------------------>\n"
        requestLog += data.prettyPrintedJSONString ?? ""
        requestLog += "\n------------------------------------------------------------------------>\n"

        print(requestLog)
    }
}

extension Data {
    var prettyPrintedJSONString: String? {
        guard let object = try? JSONSerialization.jsonObject(with: self, options: []),
              let data = try? JSONSerialization.data(withJSONObject: object, options: [.prettyPrinted]),
            let prettyPrintedString = String(data: data, encoding: .utf8) else { return nil }

        return prettyPrintedString
    }
}
