Return-Path: <devicetree+bounces-3992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F86D7B0D3D
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 22:21:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 4706C1C20869
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 20:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D66FB4BDC1;
	Wed, 27 Sep 2023 20:21:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629347490
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 20:21:10 +0000 (UTC)
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com [IPv6:2607:f8b0:4864:20::d2f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2C9A114
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 13:21:08 -0700 (PDT)
Received: by mail-io1-xd2f.google.com with SMTP id ca18e2360f4ac-79f92726f47so407201439f.3
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 13:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695846068; x=1696450868; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IIjs+rwErzRuI8OpZgfCnKlE1NGemok/NR/4pjhGmqU=;
        b=Y/iVW9V7jGTlHL2EpgLQKoiRlIlWiatJ87pARD7bNAKZCshdOcRNxJtxnIkwJfkjXF
         Pb+mOknWCvtMBEnboet0aVlw6uC58WRRvOfKH9FtzNgEff9TvWBkA7hHWQ0BLL33pVkV
         P7BBAjX7QDEsds7p3Y5DCjS2IA4F0el5oXjhU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695846068; x=1696450868;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IIjs+rwErzRuI8OpZgfCnKlE1NGemok/NR/4pjhGmqU=;
        b=gSfnSM+BrDwsc91HkAP+ezclEhdsT9gWg5dOXiLRmHc72+peZ4DCwFJvkOWlGlM02h
         36DrmmnhXODDEqn1aPfFq5ZwDXl5hdXVhFiZjhqEgDX4B5hPovXq+rDBvN9L1bVmi6LT
         n+bwLKTJgiHCEpBuVhemdy9mC1rFUGUla9vObP+Fyoe+DyQTcmTXibgPC2LhA098Qcg/
         LzKrjGMxQWW6rhda5mG/khVdcEOT6ssIVCqPigUD9uV++P/j/cB3Cb8yjCtbpBdF3Hem
         fBFqtFNrhZ5fWuZsT8jR7jaF7D4ReyJC81b5J9p8CNRAtd1GWOfeDQfXLQ+yyF9VSGtG
         b+5w==
X-Gm-Message-State: AOJu0YyH7uWLPJCO7UaJZfSRvXjT426GKtJRt/a5rivKYR3MwleMwK8+
	FpRSPP/UikY71zvFiT4UyAzjy4DqzbcXeYi4Zu4=
X-Google-Smtp-Source: AGHT+IE/xm+sDlsbj5TMwcIX6s89wG1zzgEzTIKDltB0ZdFPBg7kOF1N3Y/GeFEAB8keQ7aPZmfbKQ==
X-Received: by 2002:a5e:dd02:0:b0:79a:b526:2f1c with SMTP id t2-20020a5edd02000000b0079ab5262f1cmr3230494iop.21.1695846067982;
        Wed, 27 Sep 2023 13:21:07 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:5d4f:fe51:5575:6f76])
        by smtp.gmail.com with ESMTPSA id ei15-20020a05663829af00b0042fec8620e4sm4113299jab.57.2023.09.27.13.21.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 13:21:07 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: linux-mtd@lists.infradead.org,
	U-Boot Mailing List <u-boot@lists.denx.de>,
	Tom Rini <trini@konsulko.com>,
	Rob Herring <robh@kernel.org>,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dhruva Gole <d-gole@ti.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Pratyush Yadav <ptyadav@amazon.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Richard Weinberger <richard@nod.at>,
	Rob Herring <robh+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: mtd: fixed-partitions: Add binman compatible
Date: Wed, 27 Sep 2023 14:20:51 -0600
Message-ID: <20230927202057.3676497-1-sjg@chromium.org>
X-Mailer: git-send-email 2.42.0.515.g380fc7ccd1-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a compatible string for binman, so we can extend fixed-partitions
in various ways.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

 .../bindings/mtd/partitions/binman.yaml       | 49 +++++++++++++++++++
 .../mtd/partitions/fixed-partitions.yaml      |  6 +++
 .../bindings/mtd/partitions/partitions.yaml   |  1 +
 MAINTAINERS                                   |  5 ++
 4 files changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman.yaml

diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
new file mode 100644
index 000000000000..34fd10c1a318
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
@@ -0,0 +1,49 @@
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
+        partition-u-boot@100000 {
+            label = "u-boot";
+            reg = <0x100000 0xf00000>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
index 331e564f29dc..1c04bc2b95af 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
@@ -14,6 +14,9 @@ description: |
   The partition table should be a node named "partitions". Partitions are then
   defined as subnodes.
 
+  The Binman tool provides some enhanced features, so provides a compatible
+  string to indicate that these are permitted.
+
 maintainers:
   - Rafał Miłecki <rafal@milecki.pl>
 
@@ -24,6 +27,9 @@ properties:
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
2.42.0.515.g380fc7ccd1-goog


