import ProjectDescription

let project = Project(
    name: "LucasUIKit",
   organizationName: "MyOrg",
   packages: [.remote(url: "https://github.com/firebase/firebase-ios-sdk.git",
                      requirement: .upToNextMajor(from: "8.12.1"))],
    targets: [
        Target(
            name: "LucasUIKit",
            platform: .iOS,
            product: .framework,
            bundleId: "io.tuist.LucasUIKit",
            headers: Headers(
                public: ["Sources/public/A/**", "Sources/public/B/**"],
                private: "Sources/private/**",
                project: ["Sources/project/A/**", "Sources/project/B/**"]
            ),
            dependencies: [
                /* Target dependencies can be defined here */
                /* .framework(path: "framework") */
            ]
        ),
        Target(
            name: "Firebase",
         platform: .iOS,
         product: .staticLibrary,
            bundleId: "io.tuist.Firebase",
            dependencies: [
               .package(product: "Firebase")

            ]
        )
    ]
)
