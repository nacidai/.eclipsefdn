local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('automotive.sdv-blueprints', 'eclipse-sdv-blueprints') {
  settings+: {
    description: "",
    name: "Eclipse SDV Blueprints",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('.github') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "SDV-Blueprints .github",
      homepage: "",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('blueprints') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Blueprints project management",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('blueprints-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Website for the Eclipse SDV Blueprints Project",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      homepage: "https://sdv-blueprints.eclipse.dev",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages",
            "main"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('companion-application') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "The companion application is an example to showcase how to create a vehicle application which senses and actuates signals in the vehicle for Eclipse Leda with help of Eclipse Velocitas and Eclipse Kuksa",
      homepage: "",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('commercial-sdv-stack') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "This blueprint is to become an engagement opportunity for identifying, aligning on and collaboratively implementing Commercial-Vehicle driven use cases",
      homepage: "",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('e2e-vehicle-signals') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "This is a blueprint for an end-to-end Software Defined Vehicle flow that connects in-vehicle edge devices to fleet backend services using open Eclipse SDV components",
      homepage: "",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('carmate') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "This blueprint demonstrates an end-to-end Software Defined Vehicle (SDV) architecture for an AI-powered in-vehicle companion, named CarMate, that enhances driver well-being, safety, and interaction.",
      homepage: "",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('scenario-orchestration') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Orchestrates whole vehicle scenarios across multiple nodes with Pullpiri, Timpani and Kuksa, driven by VSS signals. A hardware demo shows time-triggered workloads keeping deterministic timing under CPU load where conventional workloads drift.",
      homepage: "",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('service-to-signal') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "The service-to-signal blueprint is an example to showcase how to use the Eclipse uProtocol (https://github.com/eclipse-uprotocol) to make a vehicle service available in a vehicle network and connect the service implementation with potential physical hardware",
      homepage: "",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('fleet-management') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "A close to real-life showcase for truck fleet management where trucks run an SDV software stack so that logistics fleet operators can manage apps, data and services for a diverse set of vehicles.",
      homepage: "",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('insurance') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "A showcase for integrating Eclipse Software Defined Vehicle (SDV) and Eclipse Dataspaces for insurance applications. Enable exchange of vehicle and risk events to support risk assessment, underwriting processes and customer experiences",
      homepage: "",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('ros-racer') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Take ROS, F1Tenth and a race track and see where it all gets you!",
      homepage: "",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('software-orchestration') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
  ],
}
