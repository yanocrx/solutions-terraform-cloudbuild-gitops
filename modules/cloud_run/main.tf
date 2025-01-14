# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


module "cloud_run" {
  source  = "GoogleCloudPlatform/cloud-run/google"
  version = "~> 0.1.1"

  # Required variables
  service_name           = "service_1"
  project_id             = "crx-prod-btsi"
  location               = "us-central1"
  image                  = "gcr.io/crx-prod-btsi/helloreact:latest"
}

/*data "google_pubsub_topic" "my-pubsub-topic" {
  name = "myRunTopic"
}*/
