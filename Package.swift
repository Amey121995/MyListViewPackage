// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyListViewPackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyListViewPackage",
            targets: ["MyListViewPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.9.1"))
    ],
    targets: [
        .target(
            name: "MyListViewPackage",
            dependencies: ["Alamofire"], exclude: ["APIManager","APIManagerService"])
    ]
)

//
//let package = Package(
//    name: "MyListViewPackage",
//    dependencies: [
//        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.9.1"))
//    ],
//    targets: [
//        .target(
//            name: "MyListViewPackage",
//            dependencies: ["Alamofire"]),
//    ]
//)
