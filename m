Return-Path: <devicetree+bounces-2187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7D07A9B90
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:02:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F3C861C213B1
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:02:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D2BE9CA71;
	Thu, 21 Sep 2023 18:45:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8011A9CA62
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:45:28 +0000 (UTC)
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com [IPv6:2607:f8b0:4864:20::d31])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA43DEE5A4
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:45:25 -0700 (PDT)
Received: by mail-io1-xd31.google.com with SMTP id ca18e2360f4ac-79f7e7342e3so47969739f.1
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695321925; x=1695926725; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DnKiy3ihwgd/VOoqSanohGN5ffhK+cZ/VpjdYKJUjf8=;
        b=U6AnxTaZN69Yg5XxdFZLDPrDlurYvQFWsLRVzWczhSGkzBjE+vR12yzRRlUc1skcb4
         eTOdHdLPXX+vyRtm959mPZgXaiVu2cdXlZQ5aAdj5i11oiQp8U5S63W/HQj3iL+xs+V9
         P7ntzZ08MRJXVe0+P+zII1R4/a9aXzGHPQ40I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695321925; x=1695926725;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DnKiy3ihwgd/VOoqSanohGN5ffhK+cZ/VpjdYKJUjf8=;
        b=kOXWA8/Z0ksn9U5J89kqYQyyQKIoMElL57NWiAkhEVYz6CEk3wq8cuaXiW7EDjtkYl
         GQnLyLPWkGdGh3rywL7Vvi01QHzxheuJcgvZeOBDDb+yRdKWaO+SqiZ/K59XBX5RsI6l
         Prmn/gEn3UsL/A7u+OMxXwCXehFyOjdSaBtn5IRi+7QpTx8N0vSasS7WIVoGNLF/KH+V
         qlPfuqdloiHI7R96JTJ8dT/MBi1iHl9yYcMPF7Z7yOfk7Xygy3jXzRmzMU3leRvlelN2
         rQJyyZGd6LxQp4201u+GWoIiIIG7H6R4JaHS4zxhqhmv93xwC54oXCrs6ugiE1kBD5De
         CuXg==
X-Gm-Message-State: AOJu0YzHIlTjeToSfKEmm1oEfHjoaoBjJKzRXejXN75iBhuHmPH8XAvq
	nJ5v9nQ9Hl8j2EML4pNr6ddTyQduz5dF5TxNlz4=
X-Google-Smtp-Source: AGHT+IFLx+QxNqVoEsIFpwCXXYW/u8hYUS5LzSu0VrhuBFkVi/scOpz5E7kCyC+9y88eBDeWXVQ/9A==
X-Received: by 2002:a6b:7303:0:b0:787:34d:f223 with SMTP id e3-20020a6b7303000000b00787034df223mr7074088ioh.11.1695321924839;
        Thu, 21 Sep 2023 11:45:24 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:a636:e615:ea83:bc42])
        by smtp.gmail.com with ESMTPSA id d26-20020a02a49a000000b004290fd3a68dsm511017jam.1.2023.09.21.11.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 11:45:24 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: U-Boot Mailing List <u-boot@lists.denx.de>,
	linux-mtd@lists.infradead.org,
	Tom Rini <trini@konsulko.com>,
	Rob Herring <robh@kernel.org>,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dhruva Gole <d-gole@ti.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Richard Weinberger <richard@nod.at>,
	Rob Herring <robh+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: mtd: Add a schema for binman
Date: Thu, 21 Sep 2023 12:45:14 -0600
Message-ID: <20230921124459.1.I91ddcfacf9b234af5cc3eabea4b62edb31153317@changeid>
X-Mailer: git-send-email 2.42.0.515.g380fc7ccd1-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Binman[1] is a tool for creating firmware images. It allows you to
combine various binaries and place them in an output file.

Binman uses a DT schema to describe an image, in enough detail that
it can be automatically built from component parts, disassembled,
replaced, listed, etc.

Images are typically stored in flash, which is why this binding is
targeted at mtd. Previous discussion is at [2] [3].

[1] https://u-boot.readthedocs.io/en/stable/develop/package/binman.html
[2] https://lore.kernel.org/u-boot/20230821180220.2724080-3-sjg@chromium.org/
[3] https://www.spinics.net/lists/devicetree/msg626149.html

Signed-off-by: Simon Glass <sjg@chromium.org>
---

 .../bindings/mtd/partitions/binman.yaml       | 50 +++++++++++++++
 .../bindings/mtd/partitions/binman/entry.yaml | 61 +++++++++++++++++++
 .../bindings/mtd/partitions/partitions.yaml   |  1 +
 MAINTAINERS                                   |  5 ++
 4 files changed, 117 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman.yaml
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman/entry.yaml

diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
new file mode 100644
index 00000000000000..c792d5a37b700a
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
@@ -0,0 +1,50 @@
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
+  from multiple projects. For now it just supports a very simple set of
+  features, as a starting point for discussion.
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
+    const: u-boot,binman
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    firmware {
+      binman {
+        compatible = "u-boot,binman";
+
+        u-boot {
+          size = <0xa0000>;
+        };
+
+        atf-bl31 {
+          offset = <0x100000>;
+        };
+      };
+    };
diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman/entry.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman/entry.yaml
new file mode 100644
index 00000000000000..8003eb4f1a994f
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/binman/entry.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2023 Google LLC
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/partitions/binman/entry.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Binman entry
+
+maintainers:
+  - Simon Glass <sjg@chromium.org>
+
+description: |
+  The entry node specifies a single entry in the firmware.
+
+  Entries have a specific type, such as "u-boot" or "atf-bl31". If the type
+  is missing, the name is used as the type.
+
+  Note: This definition is intended to be hierarchical, so that entries can
+  appear in other entries. Schema for that is TBD.
+
+properties:
+  $nodename:
+    pattern: "^[-a-z]+(-[0-9]+)?$"
+
+  type:
+    $ref: /schemas/types.yaml#/definitions/string
+
+  offset:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Provides the offset of this entry from the start of its parent section.
+      If this is omitted, Binman will determine this by packing the enclosing
+      section according to alignment rules, etc.
+
+  size:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Provides the size of this entry in bytes. If this is omitted, Binman will
+      use the content size, along with any alignment information, to determine
+      the size of the entry.
+
+additionalProperties: false
+
+examples:
+  - |
+    firmware {
+      binman {
+        compatible = "u-boot,binman";
+
+        u-boot {
+          size = <0xa0000>;
+        };
+
+        second-area {
+          type = "atf-bl31";
+          offset = <0x100000>;
+        };
+      };
+    };
diff --git a/Documentation/devicetree/bindings/mtd/partitions/partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/partitions.yaml
index 1dda2c80747bd7..849fd15d085ccc 100644
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
index a4c30221eb305d..ebcbfb4292e8dc 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3505,6 +3505,11 @@ F:	Documentation/filesystems/bfs.rst
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
2.42.0.515.g380fc7ccd1-goog


