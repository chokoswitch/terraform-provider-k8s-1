resource "k8s_core_v1_persistent_volume" "this" {
  count = "${var.count}"

  metadata {
    name = "pvc-${var.name}-${count.index}"
  }

  spec {
    storage_class_name               = "${var.name}"
    persistent_volume_reclaim_policy = "Retain"
    access_modes                     = ["ReadWriteOnce"]

    capacity {
      storage = "${var.storage}"
    }

    nfs {
      path   = "/"
      server = "${var.nfs_server}"
    }
  }
}
