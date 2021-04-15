provider "google" {
  credentials = file(var.json_file_path)
  project = var.project_id
}
