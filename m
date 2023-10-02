Return-Path: <devicetree+bounces-5197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B4D7B596E
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:50:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id BF7E31C208C3
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 138771E52C;
	Mon,  2 Oct 2023 17:50:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A51F1A73C
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 17:50:25 +0000 (UTC)
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com [IPv6:2607:f8b0:4864:20::d31])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5700B90
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 10:50:23 -0700 (PDT)
Received: by mail-io1-xd31.google.com with SMTP id ca18e2360f4ac-7a2a9e5451bso361239f.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 10:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1696269022; x=1696873822; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k71/w5tQzn4vicDbb9dqcU9SEKAhIvW7cb6nA8shinc=;
        b=k4eei0utiOJesXtZQ51L6fvgK/efzcOJp/15EYG7K+IaxOupBksjh7jvnDoHMvkPse
         rcWshuer51ZaVdj8Bo3ofJ0xPh92PYeKdchi1x0HmTQsy8FI04ddhVLBBrvZhCCMx+Xe
         u4Y/blSP7xA1x2oziAAFakli/jXAiNIZrDDJg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696269022; x=1696873822;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k71/w5tQzn4vicDbb9dqcU9SEKAhIvW7cb6nA8shinc=;
        b=bqBi5y3AW99PcpLmtLtHivx6Z0EsOwaw2deVww9k6FXWNXOJHVwucan9T3TUyW7X/i
         QPzDDjvvO3lJPA0pmq3P7OCHA+IKmcU1qDCbp9CN1Zk3zvTQ7qSKZ1qDMPdfS9AGGgUT
         28uD6eHsip/Vi6sspYB0wCUU5Df8xRPFQ6Od5n+iPVJfre6hdyFYUogvW5goG0/fycc2
         09LThNwD1BHIX/q+wTT1TpBGs+EoWdDkAKhGdoBTShDQFrYu4Z/plpCMTUpgREr6WVeh
         h7j7QnbERmboGepHeg1/xIhWxO+1vbhsRo/8QYPSIKfKDzAsi+0LJD1y15O0toO9Tkky
         a+xQ==
X-Gm-Message-State: AOJu0Yz9bdvs1d9esjOdPTD1HCjdz6NZSAaclbXrbtRUVNsQI5/qlB28
	Pq4t6O7vB8rLaPQc4+FBOMt4++3VwHEB9j5Cz7E=
X-Google-Smtp-Source: AGHT+IEyXhGigDBdCKAGT+/IMaNGbS+k8t3ALkt9DIMUsltzdGeZnx6gsOo2/2x7u2YGnPQKl0q5+w==
X-Received: by 2002:a5d:9cd5:0:b0:794:cdd8:db3c with SMTP id w21-20020a5d9cd5000000b00794cdd8db3cmr14699347iow.17.1696269022549;
        Mon, 02 Oct 2023 10:50:22 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:63cd:2673:520:2e9])
        by smtp.gmail.com with ESMTPSA id s23-20020a02c517000000b0042b2e309f97sm6919562jam.177.2023.10.02.10.50.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 10:50:22 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Tom Rini <trini@konsulko.com>,
	U-Boot Mailing List <u-boot@lists.denx.de>,
	linux-mtd@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Pratyush Yadav <ptyadav@amazon.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Richard Weinberger <richard@nod.at>,
	Rob Herring <robh+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] dt-bindings: mtd: fixed-partitions: Add binman compatible
Date: Mon,  2 Oct 2023 11:49:40 -0600
Message-ID: <20231002174948.1015223-1-sjg@chromium.org>
X-Mailer: git-send-email 2.42.0.582.g8ccd20d70d-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a compatible string for binman, so we can extend fixed-partitions
in various ways.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

Changes in v2:
- Drop mention of 'enhanced features' in fixed-partitions.yaml
- Mention Binman input and output properties
- Use plain partition@xxx for the node name

 .../bindings/mtd/partitions/binman.yaml       | 61 +++++++++++++++++++
 .../mtd/partitions/fixed-partitions.yaml      |  3 +
 .../bindings/mtd/partitions/partitions.yaml   |  1 +
 MAINTAINERS                                   |  5 ++
 4 files changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman.yaml

diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
new file mode 100644
index 000000000000..844f241feebf
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
@@ -0,0 +1,61 @@
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
+select: false
+
+description: |
+  The binman node provides a layout for firmware, used when packaging firmware
+  from multiple projects. It is based on fixed-partitions, with some
+  extensions.
+
+  Binman supports properties used as inputs to the firmware-packaging process,
+  such as those which control alignment of partitions. This binding addresses
+  these 'input' properties. For example, it is common for the 'reg' property
+  (an 'output' property) to be set by Binman, based on the alignment requested
+  in the input.
+
+  Once processing is complete, input properties have mostly served their
+  purpose, at least until the firmware is repacked later, e.g. due to a
+  firmware update. The base 'fixed-partitions' binding should provide enough
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
+allOf:
+  - $ref: /schemas/mtd/partitions/fixed-partitions.yaml#
+
+properties:
+  compatible:
+    const: binman
+
+additionalProperties: false
+
+examples:
+  - |
+    partitions {
+        compatible = "binman", "fixed-partitions";
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        partition@100000 {
+            label = "u-boot";
+            reg = <0x100000 0xf00000>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
index 331e564f29dc..85aef1572967 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
@@ -24,6 +24,9 @@ properties:
       - items:
           - const: sercomm,sc-partitions
           - const: fixed-partitions
+      - items:
+          - const: binman
+          - const: fixed-partitions
 
   "#address-cells": true
 
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
index 5f18c6ba3c3c..367c843ec348 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3517,6 +3517,11 @@ F:	Documentation/filesystems/bfs.rst
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
2.42.0.582.g8ccd20d70d-goog


