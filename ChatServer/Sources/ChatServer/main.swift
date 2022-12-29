import Vapor

var env = try Environment.detect() // 1
let app = Application(env) // 2

defer { // 3
    app.shutdown()
}

app.webSocket("chat") { req, client in // 4
    print("Connected:", client)
    
    client.onClose.whenComplete { _ in
        print("Disconnected:", client)
    }
}

try app.run() // 5
