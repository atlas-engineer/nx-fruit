;;;; SPDX-FileCopyrightText: Atlas Engineer LLC
;;;; SPDX-License-Identifier: BSD-3-Clause

(asdf:defsystem :nx-fruit
  :description "Discover the fruit of the day within Nyxt!"
  :author "Atlas Engineer LLC"
  :license  "BSD 3-clause"
  :version "0.0.1"
  :serial t
  :depends-on (:nyxt
               :local-time)
  :components ((:file "main")))
