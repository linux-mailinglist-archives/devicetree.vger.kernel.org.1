Return-Path: <devicetree+bounces-12004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 602E67D7654
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 23:06:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 155C7281966
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:06:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40F6C31A7E;
	Wed, 25 Oct 2023 21:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LES5SJL3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B4B28680
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 21:06:50 +0000 (UTC)
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9834A13D
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:06:48 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1cac80292aeso1049515ad.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698268008; x=1698872808; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WnXMZq3u2P4hkyafsQIarDOhM2i0PYXnQvhdzNae9NQ=;
        b=LES5SJL3G9mPesbDOETZb/4ZH+A56/X31ajPTrjx5g/OD5W4HBbgk0Z4CZFLfplc7X
         492KMD1UjIvxu8aypCqpA8uCODZPfaz+RBttrdN+lLQBAfPJ/Dkucy06QrlUVy3L5/k2
         zowk3iacBegxLCF7WDprC6GHxJLt9YBQN2gtQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698268008; x=1698872808;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WnXMZq3u2P4hkyafsQIarDOhM2i0PYXnQvhdzNae9NQ=;
        b=NUUUrguX1VYnB6dBtffFoAbKc8LsEL7mSLRgX6Mme0ynTE2aT8GZVV5SqRQpvgAWdh
         Z7jQg5ob596x41R6nUckMvjCZRUBI9HEXI6m+arsxikFx4+jsnxlBONl9DKFyYOy0Ule
         AHhPqhWc9xkwxlKVyVJfRG60r4ZNNcQoUdTVFa8JxacIBaq6Xn3AlBB+xT/phlxOCyXe
         x+I5mczcg02slQaOQ3aXQb5EQSyq18GlYJb/3HzhMZgnrWwC7GW+BwUUcd9Ya6qSdBm8
         adVNgOjU7Yrm21sDZx9nZ5xCbHQi0mcpeUhfS83yHUHJorX8RH28/LtbvXrzPSPVjpkF
         edCw==
X-Gm-Message-State: AOJu0YxwB2ZY8hrXsozrbJ7tS/gdmBcNKraX5pumewGWt2aQ2iaLTV9I
	sfTHJmmB1e+nYnLlPb6HFnGbOzzU7OJYrDGc+NtJvQ==
X-Google-Smtp-Source: AGHT+IH4aVVDtY2IJieLds6qeSo6hYbAInLL16xsPZo6LgCZwA6yQaSh6ZRcocjYXRXKbHbLy6unzw==
X-Received: by 2002:a17:902:ce91:b0:1ca:3d53:2867 with SMTP id f17-20020a170902ce9100b001ca3d532867mr15084532plg.15.1698268007804;
        Wed, 25 Oct 2023 14:06:47 -0700 (PDT)
Received: from sjg1.roam.corp.google.com ([202.144.206.130])
        by smtp.gmail.com with ESMTPSA id ix4-20020a170902f80400b001bc5dc0cd75sm9689447plb.180.2023.10.25.14.06.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 14:06:47 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: Michael Walle <mwalle@kernel.org>,
	U-Boot Mailing List <u-boot@lists.denx.de>,
	Tom Rini <trini@konsulko.com>,
	Rob Herring <robh@kernel.org>,
	linux-mtd@lists.infradead.org,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dhruva Gole <d-gole@ti.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Pratyush Yadav <ptyadav@amazon.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Richard Weinberger <richard@nod.at>,
	Rob Herring <robh+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 1/3] dt-bindings: mtd: partitions: Add binman compatible
Date: Thu, 26 Oct 2023 10:06:10 +1300
Message-ID: <20231025210616.3201502-1-sjg@chromium.org>
X-Mailer: git-send-email 2.42.0.758.gaed0368e0e-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a compatible string for binman, so we can extend fixed-partitions
in various ways.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

(no changes since v5)

Changes in v5:
- Add #address/size-cells and parternProperties
- Drop $ref to fixed-partitions.yaml
- Drop 'select: false'

Changes in v4:
- Change subject line

Changes in v3:
- Drop fixed-partition additional compatible string
- Drop fixed-partitions from the example
- Mention use of compatible instead of label

Changes in v2:
- Drop mention of 'enhanced features' in fixed-partitions.yaml
- Mention Binman input and output properties
- Use plain partition@xxx for the node name

 .../bindings/mtd/partitions/binman.yaml       | 68 +++++++++++++++++++
 .../bindings/mtd/partitions/partitions.yaml   |  1 +
 MAINTAINERS                                   |  5 ++
 3 files changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman.yaml

diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
new file mode 100644
index 000000000000..329217550a98
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2023 Google LLC
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/partitions/binman.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Binman firmware layout
+
+maintainers:
+  - Simon Glass <sjg@chromium.org>
+
+description: |
+  The binman node provides a layout for firmware, used when packaging firmware
+  from multiple projects. It is based on fixed-partitions, with some
+  extensions, but uses 'compatible' to indicate the contents of the node, to
+  avoid perturbing or confusing existing installations which use 'label' for a
+  particular purpose.
+
+  Binman supports properties used as inputs to the firmware-packaging process,
+  such as those which control alignment of partitions. This binding addresses
+  these 'input' properties. For example, it is common for the 'reg' property
+  (an 'output' property) to be set by Binman, based on the alignment requested
+  in the input.
+
+  Once processing is complete, input properties have mostly served their
+  purpose, at least until the firmware is repacked later, e.g. due to a
+  firmware update. The 'fixed-partitions' binding should provide enough
+  information to read the firmware at runtime, including decompression if
+  needed.
+
+  Documentation for Binman is available at:
+
+  https://u-boot.readthedocs.io/en/latest/develop/package/binman.html
+
+  with the current image-description format at:
+
+  https://u-boot.readthedocs.io/en/latest/develop/package/binman.html#image-description-format
+
+properties:
+  compatible:
+    const: binman
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+patternProperties:
+  "^partition(-.+|@[0-9a-f]+)$":
+    $ref: partition.yaml
+
+additionalProperties: false
+
+examples:
+  - |
+    partitions {
+        compatible = "binman";
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        partition@100000 {
+            label = "u-boot";
+            reg = <0x100000 0xf00000>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/mtd/partitions/partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/partitions.yaml
index 1dda2c80747b..849fd15d085c 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/partitions.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/partitions.yaml
@@ -15,6 +15,7 @@ maintainers:
 
 oneOf:
   - $ref: arm,arm-firmware-suite.yaml
+  - $ref: binman.yaml
   - $ref: brcm,bcm4908-partitions.yaml
   - $ref: brcm,bcm947xx-cfe-partitions.yaml
   - $ref: fixed-partitions.yaml
diff --git a/MAINTAINERS b/MAINTAINERS
index 2d13bbd69adb..b9441eec979a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3542,6 +3542,11 @@ F:	Documentation/filesystems/bfs.rst
 F:	fs/bfs/
 F:	include/uapi/linux/bfs_fs.h
 
+BINMAN
+M:	Simon Glass <sjg@chromium.org>
+S:	Supported
+F:	Documentation/devicetree/bindings/mtd/partitions/binman*
+
 BITMAP API
 M:	Yury Norov <yury.norov@gmail.com>
 R:	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
-- 
2.42.0.758.gaed0368e0e-goog


