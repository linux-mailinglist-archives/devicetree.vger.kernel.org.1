Return-Path: <devicetree+bounces-53628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BE25188CDD5
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 21:07:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA0461C659AD
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 20:07:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0799513D2B2;
	Tue, 26 Mar 2024 20:06:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="P+L2nwDA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4293613D29A
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 20:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711483616; cv=none; b=SUVfjr2AWuH+hHXcQuynlcMXGh/6ywHQlJe3GzeVSHV5PMLjZQw55uLlcs/FytN7pPDj//tsSZ/cK50ac3xo7l4D3TW6ZWmZd9XiaEuK0Mn8O9h+uk4cIrRsGt2Nxou9xCzh43gn1Bu6JtPubfUAO3dTzH4ml+MJT3xrzVyFA/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711483616; c=relaxed/simple;
	bh=FGyi8jCeLG9+F63Cjvg4FXEcck4eJUhApsEhbStA0C0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aUSuzUTkNNLZRPqHCE1L5FkjqkCJN12XJJbHbqQEkR6EOiAO5YaaJm2wO2kNmp465rW79FNA3/0do+QCrLW6RU9xxTsKMfZbHk9hwQ5Dn+me6zjql1RxzMZ7GmfCmfUkyJEU/ZvWUQh13mkyrEgB1rA72zhwq2SdZ2OIH7lRMUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=P+L2nwDA; arc=none smtp.client-ip=209.85.166.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-3686717e82aso23561225ab.2
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 13:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1711483614; x=1712088414; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t8EEc3adyFE7Wxfe+nLm4ZchWJV+nLrr+8hBvhQE2L0=;
        b=P+L2nwDAgA1uo63C8/iMbXAfcV8u74pVGz6ZS5mxOp9GyD51+aUYJIGAPg1s9anKde
         Iusq7lJSTmqtCj+yDDiFmdzurI4Cr0Bmj37DBLxWVS5Vs78UdG9gYwFw/z9lhGpVC0Kt
         yswFmNcVIwiBuW9NUDecA3e5sTgMCRndr8Vzk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711483614; x=1712088414;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t8EEc3adyFE7Wxfe+nLm4ZchWJV+nLrr+8hBvhQE2L0=;
        b=MytJC1tXyeMmN8k/gRqrRyFDLf4UR9ZgQIQ09Mii8DYVxmGlsj2uN51v7WaSwH/bez
         6bMVPaJLg4A0eVOAU9U9O5i34CEogk7SNEEe4ii0zJVebnEpLMX99nNWDcAFCpLHOPbt
         3PapHQD+jqPE64KxZ2/Nzrgn8yoqnu1ZpIOUHnksE4eh3A42+pwxMCabwZPR0l/g1szm
         PqxvNTLc+4ublenFYx4Cct2rPTXDJwbAyQ9h23r/jbjN74c1L1oHpCn5b1YHpQm/kZj+
         HelhPn5y2Oq/s6K+LF/eCFZ0SCMQD5qy71LIW5JhP0hsi+s7rG46/jEc5gsottqqN2FN
         mRYQ==
X-Gm-Message-State: AOJu0YwDQn3w6F8hMG2PmUzcAmVie1wlTN0TeYhtD7DwFDeqDvcq2dmz
	Whw/eBDjs0E06El8k2ACiPOcDXvxTzRwP8OH6GOW8OO9QBVbbjDBAPKm+5am098vc27cIMZBgdQ
	=
X-Google-Smtp-Source: AGHT+IEEDeZcsz5sXCNnD2ZC6a2Wo23FMused7zzkcdVuJSmg7qZ+plRlZe/HcCYGC8F13GS4tmU/w==
X-Received: by 2002:a05:6e02:1a8f:b0:368:8d20:b18a with SMTP id k15-20020a056e021a8f00b003688d20b18amr10568423ilv.29.1711483613849;
        Tue, 26 Mar 2024 13:06:53 -0700 (PDT)
Received: from chromium.org (c-73-14-173-85.hsd1.co.comcast.net. [73.14.173.85])
        by smtp.gmail.com with ESMTPSA id f4-20020a92cb44000000b0036896f76593sm1002343ilq.85.2024.03.26.13.06.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 13:06:53 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: Michael Walle <mwalle@kernel.org>,
	U-Boot Mailing List <u-boot@lists.denx.de>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Tom Rini <trini@konsulko.com>,
	Rob Herring <robh@kernel.org>,
	linux-mtd@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v10 2/2] dt-bindings: mtd: fixed-partition: Add binman compatibles
Date: Tue, 26 Mar 2024 14:06:45 -0600
Message-Id: <20240326200645.1182803-2-sjg@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240326200645.1182803-1-sjg@chromium.org>
References: <20240326200645.1182803-1-sjg@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add two compatibles for binman entries, as a starting point for the
schema.

Note that, after discussion on v2, we decided to keep the existing
meaning of label so as not to require changes to existing userspace
software when moving to use binman nodes to specify the firmware
layout.

Note also that, after discussion on v6, we decided to use the same
'fixed-partition' schema for the binman features, so this version
adds a new 'binman.yaml' file providing the new compatibles to the
existing partition.yaml binding.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

Changes in v10:
- Drop binman,entry since it is likely not necessary
- Put the description back

Changes in v8:
- Switch the patch ordering so the partition change comes first

Changes in v7:
- Adjust MAINTAINERS entry
- Put compatible strings into the 'fixed-partition' binding

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

 .../bindings/mtd/partitions/binman.yaml       | 53 +++++++++++++++++++
 .../bindings/mtd/partitions/partition.yaml    | 21 ++++++++
 MAINTAINERS                                   |  5 ++
 3 files changed, 79 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman.yaml

diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
new file mode 100644
index 000000000000..bb4b08546184
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/partitions/binman.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Binman entries
+
+description: |
+  This corresponds to a binman 'entry'. It is a single partition which holds
+  data of a defined type.
+
+  Binman uses the type to indicate what data file / type to place in the
+  partition. There are quite a number of binman-specific entry types, such as
+  section, fill and files, to be added later.
+
+maintainers:
+  - Simon Glass <sjg@chromium.org>
+
+allOf:
+  - $ref: /schemas/mtd/partitions/partition.yaml#
+
+properties:
+  compatible:
+    enum:
+      - u-boot       # u-boot.bin from U-Boot project
+      - tfa-bl31     # bl31.bin or bl31.elf from TF-A project
+
+required:
+  - compatible
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    partitions {
+        compatible = "fixed-partitions";
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        partition@100000 {
+            compatible = "u-boot";
+            reg = <0x100000 0xf00000>;
+            align-size = <0x1000>;
+            align-end = <0x10000>;
+        };
+
+        partition@200000 {
+            compatible = "tfa-bl31";
+            reg = <0x200000 0x100000>;
+            align = <0x4000>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/mtd/partitions/partition.yaml b/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
index 656ca3db1762..bb3c326c6588 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
@@ -118,3 +118,24 @@ then:
 
 # This is a generic file other binding inherit from and extend
 additionalProperties: true
+
+examples:
+  - |
+    partitions {
+        compatible = "fixed-partitions";
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        partition@100000 {
+            compatible = "u-boot";
+            reg = <0x100000 0xf00000>;
+            align-size = <0x1000>;
+            align-end = <0x10000>;
+        };
+
+        partition@200000 {
+            compatible = "tfa-bl31";
+            reg = <0x200000 0x100000>;
+            align = <0x4000>;
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index a848d6ca67e4..1eeb6ebde21f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3639,6 +3639,11 @@ F:	Documentation/filesystems/bfs.rst
 F:	fs/bfs/
 F:	include/uapi/linux/bfs_fs.h
 
+BINMAN
+M:	Simon Glass <sjg@chromium.org>
+S:	Supported
+F:	Documentation/devicetree/bindings/mtd/partitions/binman*
+
 BITMAP API
 M:	Yury Norov <yury.norov@gmail.com>
 R:	Rasmus Villemoes <linux@rasmusvillemoes.dk>
-- 
2.34.1


