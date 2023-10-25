Return-Path: <devicetree+bounces-12005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7399D7D7655
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 23:07:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2DD84281C6C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:07:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCE0E31A97;
	Wed, 25 Oct 2023 21:06:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="acVpp8kY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C21528680
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 21:06:56 +0000 (UTC)
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33DAE184
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:06:54 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1cacde97002so988475ad.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698268013; x=1698872813; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pF/ordmyMYgWe1Uu/l3iCAlozeYeU+RXukpZaUtD30Y=;
        b=acVpp8kYwUMLCAZN7hRnOvpNvz85M3O4Ea+8dpWsqmFFe3Xyy581p9UbqzcsMl980K
         nR8udgeSMdxPBrZ4pD1rxXCesSy6RobyPHnLkdz++hAdcAjy+OC+gD+G7LDVKEwO7qD7
         uFqoXZf8Wi2+7qWXT9wkA1SmYQlVtW3JGFFiU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698268013; x=1698872813;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pF/ordmyMYgWe1Uu/l3iCAlozeYeU+RXukpZaUtD30Y=;
        b=oaw4h45eimuVVe8qtkOE0LHCcblzKmZm2+Uozmw0cKyn8G8cVqsdQAwtViuYHXcmzY
         9QnFhruwWJpRSFiu5zqoJYTddy6A2PZrTLFJFk6/sJNBXpSGswoiDjRrj7qzBmfVVt5w
         uy3CdvU0ZNCfFfbnA6sIY2VT9+iDwn9I5QXkqkNWJI0TbSc/yBgcXq6fYCE2TPUTyDgP
         QtVsPdodLbmutHcF9xe8FZyer71lxHlMv0dLheZMAv379enVnFxVsJTvFnCwJ/zVac+U
         tva6UIMzZiR1jPJxwse68pQVHG7ufa535ry7z4r2niwrmWbIszwYkcAVgee+foU8q6QO
         ExIA==
X-Gm-Message-State: AOJu0YzimbEjaaZY7cHbebXUbXUtBbrhs2Lj5fujjXJ5Vz9ooiV19qRj
	iLQJKLCgjX64+U+KVOhtH4kIfvyeXV478BuvB8xHow==
X-Google-Smtp-Source: AGHT+IEYJE06QosRYGT0A1ENbZcTTEfgZ/obEURE1Bi+knZeZm3lfZ+35MZQ58edxdw31TbPoPLpDg==
X-Received: by 2002:a17:903:2342:b0:1c9:dff6:58f2 with SMTP id c2-20020a170903234200b001c9dff658f2mr16108624plh.59.1698268013528;
        Wed, 25 Oct 2023 14:06:53 -0700 (PDT)
Received: from sjg1.roam.corp.google.com ([202.144.206.130])
        by smtp.gmail.com with ESMTPSA id ix4-20020a170902f80400b001bc5dc0cd75sm9689447plb.180.2023.10.25.14.06.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 14:06:53 -0700 (PDT)
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
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Richard Weinberger <richard@nod.at>,
	Rob Herring <robh+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 2/3] dt-bindings: mtd: binman-partition: Add binman compatibles
Date: Thu, 26 Oct 2023 10:06:11 +1300
Message-ID: <20231025210616.3201502-2-sjg@chromium.org>
X-Mailer: git-send-email 2.42.0.758.gaed0368e0e-goog
In-Reply-To: <20231025210616.3201502-1-sjg@chromium.org>
References: <20231025210616.3201502-1-sjg@chromium.org>
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
2.42.0.758.gaed0368e0e-goog


