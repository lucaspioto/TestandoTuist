import ProjectDescription

let project = Project(name: "LucasApp",
                      organizationName: "camorii-apps",
                      settings: nil,
                      targets: [
                        Target(name: "LucasApp",
                               platform: .iOS,
                               product: .app,
                               bundleId: "camorii-apps.LucasApp",
                               sources: ["Targets/LucasApp/Sources/**"],
                               resources: ["Targets/LucasApp/Resources/**"],
                               dependencies: [
                                 .project(target: "LucasUIKit",
                                          path: .relativeToManifest("LucasUIKit"))
                               ],
                               settings: nil
                               ),
                           ]
                        )
