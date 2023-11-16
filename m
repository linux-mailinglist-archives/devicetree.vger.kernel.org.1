Return-Path: <devicetree+bounces-16359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BF17EE5EA
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 18:29:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D52931F23259
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 17:29:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 594EC3C6A3;
	Thu, 16 Nov 2023 17:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jIFRM3qw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com [IPv6:2607:f8b0:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1389BE6
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 09:29:06 -0800 (PST)
Received: by mail-il1-x133.google.com with SMTP id e9e14a558f8ab-35932aa21a3so4004165ab.2
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 09:29:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1700155745; x=1700760545; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5SiGKNWTogg5s8I4hI4hsWN1in2XeMZfNUWjSe8vt1c=;
        b=jIFRM3qwDoyoo3N1LoVtfOKJsz1vDTCy5a0/CPK80hdJT93q1xBuB58DRx9yogNppD
         RSqSYolEiEBeQ/VjDBsJ6LmiFULs46xJ+zA2Npw0ml7TlgzY5v2EoJ2DLypiEKiYTjix
         h2tSPtylu5/AejIFQIygOAA8UR/zhYjFoTiCo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700155745; x=1700760545;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5SiGKNWTogg5s8I4hI4hsWN1in2XeMZfNUWjSe8vt1c=;
        b=WUcwtVYVNOYv41eJa/deiTqmFVHHw73nVjgFednOSXglEAQdp+RWzGmJpzrgfpQWbC
         C86b1P2jGvFQElZ/r0C7c0EbUXgHgQQWWIAvR7/Xivqz8buzHRzXaVb0rUkS2XnkuPwi
         2uCYp2hSMrNDbKeC2jkE4Uue2rP/r/0Ki7fhpYPj71UA0MgXQbhzRC5V08HMBHPmMw6v
         RDNdBFidyJFRJ1rF4b5GQpXOaKOZIrtIWGXMUVKFFRNxD1g0uj420cvLr5l2OrbHrCsg
         rHJqwfL0f6CBI+D0H9+avdhEw8nmIfAb4yJQzWoDY65OKZaFKZwEPbaEM24v/zaiK7qg
         XpXg==
X-Gm-Message-State: AOJu0YwgjPdmwVTbCjSrKgXQIAfAr88tVliFQDU2x7AohuuAbzCuYAlF
	b2je6L2v2GpHmdGwoXrZefgJUyf67DirwXUfFmOwuA==
X-Google-Smtp-Source: AGHT+IGaQokizqpcI2eRtxwCmzms3L1z6RJ8KYtnH3CEjTb902LoLcNtEnVdFaWX+2iO6b6M/mjAaA==
X-Received: by 2002:a05:6e02:1c07:b0:359:5b5c:9ce4 with SMTP id l7-20020a056e021c0700b003595b5c9ce4mr22860439ilh.19.1700155745274;
        Thu, 16 Nov 2023 09:29:05 -0800 (PST)
Received: from sjg1.lan (c-73-14-173-85.hsd1.co.comcast.net. [73.14.173.85])
        by smtp.gmail.com with ESMTPSA id o8-20020a056e02092800b0035ab8cc4a4bsm1914348ilt.17.2023.11.16.09.29.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 09:29:05 -0800 (PST)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	linux-mtd@lists.infradead.org,
	Tom Rini <trini@konsulko.com>,
	Rob Herring <robh@kernel.org>,
	Michael Walle <mwalle@kernel.org>,
	U-Boot Mailing List <u-boot@lists.denx.de>,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Richard Weinberger <richard@nod.at>,
	Rob Herring <robh+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 2/3] dt-bindings: mtd: binman-partition: Add binman compatibles
Date: Thu, 16 Nov 2023 10:28:51 -0700
Message-ID: <20231116172859.393744-2-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0.rc0.421.g78406f8d94-goog
In-Reply-To: <20231116172859.393744-1-sjg@chromium.org>
References: <20231116172859.393744-1-sjg@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add two compatible for binman entries, as a starting point for the
schema.

Note that, after discussion on v2, we decided to keep the existing
meaning of label so as not to require changes to existing userspace
software when moving to use binman nodes to specify the firmware
layout.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

(no changes since v5)

Changes in v5:
- Add mention of why 'binman' is the vendor
- Drop  'select: false'
- Tidy up the compatible setings
- Use 'tfa-bl31' instead of 'atf-bl31'

Changes in v4:
- Correct selection of multiple compatible strings

Changes in v3:
- Drop fixed-partitions from the example
- Use compatible instead of label

Changes in v2:
- Use plain partition@xxx for the node name

 .../mtd/partitions/binman-partition.yaml      | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml

diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
new file mode 100644
index 000000000000..83222ac9aa78
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2023 Google LLC
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/partitions/binman-partition.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Binman partition
+
+maintainers:
+  - Simon Glass <sjg@chromium.org>
+
+description: |
+  This corresponds to a binman 'entry'. It is a single partition which holds
+  data of a defined type.
+
+  The vendor is specified as binman since there are quite a number
+  of binman-specific entry types, such as section, fill and files,
+  to be added later.
+
+allOf:
+  - $ref: /schemas/mtd/partitions/partition.yaml#
+
+properties:
+  compatible:
+    enum:
+      - binman,entry # generic binman entry
+      - u-boot       # u-boot.bin from U-Boot project
+      - tfa-bl31     # bl31.bin or bl31.elf from TF-A project
+
+  reg:
+    minItems: 1
+    maxItems: 2
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
+            compatible = "u-boot";
+            reg = <0x100000 0xf00000>;
+        };
+
+        partition@200000 {
+            compatible = "tfa-bl31";
+            reg = <0x200000 0x100000>;
+        };
+    };
-- 
2.43.0.rc0.421.g78406f8d94-goog


