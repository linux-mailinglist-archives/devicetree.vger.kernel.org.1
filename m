Return-Path: <devicetree+bounces-7048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F162D7BEE03
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 00:04:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A184A281898
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 22:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1C0A43A9D;
	Mon,  9 Oct 2023 22:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="eicau85/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DD6374E2
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 22:04:45 +0000 (UTC)
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com [IPv6:2607:f8b0:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B932DE9
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 15:04:40 -0700 (PDT)
Received: by mail-il1-x129.google.com with SMTP id e9e14a558f8ab-3527428a402so16963705ab.0
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 15:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1696889080; x=1697493880; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Y9yY9Pt5Z+lcy2ZFBIazS1/xG4eT3Pf+M3kQNkzl3b8=;
        b=eicau85/ADe5/MNhNknc28k7+RJBMV/zN0PHGnmrJs5R1fSllzzxnDsqFRAQLjXMam
         RD0zkPQqEWTpLzcxh81AKddbJ33+mPn3BC+1foTqBERf1QO2VKRAEAP5cZpGT21+b8K0
         q/6v7poi9W5Zavi3cU6BITyeIaV2CVNRrDU+Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696889080; x=1697493880;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y9yY9Pt5Z+lcy2ZFBIazS1/xG4eT3Pf+M3kQNkzl3b8=;
        b=ps7GwI1kCGXGvP5r3V8P6WyyQ5vKAmAspSJ/D19+fN88b5y9x46ReXbAs7dBBPXVSc
         nS08TUN5Eikm+LzwBReZCq5dwQM8G6nUcqGWfhZ/XUET1jo+5QMqBdF3ARI4pVXdBOUH
         wVOX9SUOu31JAHbUboa5uJAfkxbknzL62UB4D8xZ0uTvHboWVu4m7hXV5WkY5/nbHCEk
         hsJiihkTh+KTSxMX8WGTI+LWyi495SozlGSepzNx7yYPBbAt2w6l1wWFD1q4/nbpC1C9
         3AIUSLazC8YNZEEwIzmGoby6uaVLcf/hFfo2ZsV0c/wUAEFo6paweSNZjgeCHOuu+/lq
         H26Q==
X-Gm-Message-State: AOJu0YzMNk6bsrHlOCk+bcPQ7iZLwhOYvDgxaNYmusuItjoeGObqm6Bt
	n9asXzcerOFJdory4FJ4YDP/wC3mSOkky05ucXg=
X-Google-Smtp-Source: AGHT+IHMwP21W95ioWGQ6VOzQP6LMsWXCq8+TyNwoBR7DWbu8eIaeSo0UsHUkY1Q1hFP6Dc4enAPYw==
X-Received: by 2002:a05:6e02:1a2e:b0:351:4f0c:b95d with SMTP id g14-20020a056e021a2e00b003514f0cb95dmr20621874ile.22.1696889079842;
        Mon, 09 Oct 2023 15:04:39 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:138c:cf57:c18d:20f5])
        by smtp.gmail.com with ESMTPSA id o3-20020a92d4c3000000b0034cd2c0afe8sm3164063ilm.56.2023.10.09.15.04.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Oct 2023 15:04:39 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: linux-mtd@lists.infradead.org,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Michael Walle <mwalle@kernel.org>,
	Rob Herring <robh@kernel.org>,
	U-Boot Mailing List <u-boot@lists.denx.de>,
	Tom Rini <trini@konsulko.com>,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dhruva Gole <d-gole@ti.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Richard Weinberger <richard@nod.at>,
	Rob Herring <robh+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] dt-bindings: mtd: partitions: Add binman compatible
Date: Mon,  9 Oct 2023 16:04:13 -0600
Message-ID: <20231009220436.2164245-1-sjg@chromium.org>
X-Mailer: git-send-email 2.42.0.609.gbb76f46606-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
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

 .../bindings/mtd/partitions/binman.yaml       | 63 +++++++++++++++++++
 .../bindings/mtd/partitions/partitions.yaml   |  1 +
 MAINTAINERS                                   |  5 ++
 3 files changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman.yaml

diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
new file mode 100644
index 000000000000..7d6c8bd738f5
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
@@ -0,0 +1,63 @@
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
index c934244acc31..ebc8158fe67d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3536,6 +3536,11 @@ F:	Documentation/filesystems/bfs.rst
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
2.42.0.609.gbb76f46606-goog


