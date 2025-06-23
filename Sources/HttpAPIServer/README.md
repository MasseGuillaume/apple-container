# Docker Engine API (1.50)

```bash
# Get Docker Engine API (1.50)
curl https://docs.docker.com/reference/api/engine/version/v1.50.yaml > swagger.yml

# It's a swagger 2.0 document
# We need to convert it to a open-api 3.1.0 document to be able to use swift-openapi-generator
npm install -g swagger2openapi
swagger2openapi swagger.yaml -o openapi.yaml
```

Unfortunately, apple/swift-openapi-generator cannot compile with the version of swift bundled with
Xcode 26.0 b1 (Swift 6.2.0.9.909)

See https://github.com/swiftlang/swift/issues/81187 for more details.

We need to switch to a more recent version of swift: https://github.com/apple/swift-openapi-generator/issues/781#issuecomment-2973536163

```
export SWIFT="~/.swiftly/bin/swift"
make all
```
