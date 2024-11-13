identity_token "gcp" {
  audience = ["//iam.googleapis.com/projects/871647908372/locations/global/workloadIdentityPools/stacks-demo-qiab/providers/stacks-demo-qiab"]
}

deployment "demo" {
  inputs = {
    cluster_name       = "demo"
    kubernetes_version = "1.30"
    identity_token_gcp = identity_token.gcp.jwt_filename
    gcp_project        = "hc-terraform-testing"
    gcp_region         = "europe-central2"

    gcp_audience              = "//iam.googleapis.com/projects/871647908372/locations/global/workloadIdentityPools/stacks-demo-qiab/providers/stacks-demo-qiab"
    gcp_service_account_email = "stacks-demo-qiab@hc-terraform-testing.iam.gserviceaccount.com"
  }
}
