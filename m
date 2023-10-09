Return-Path: <devicetree+bounces-7030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D65E67BEB51
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 22:10:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 049561C20B78
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 20:10:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 819F63F4AD;
	Mon,  9 Oct 2023 20:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mBHh+J33"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C933D982
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 20:10:20 +0000 (UTC)
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com [IPv6:2607:f8b0:4864:20::d2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5832DA6
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 13:10:16 -0700 (PDT)
Received: by mail-io1-xd2b.google.com with SMTP id ca18e2360f4ac-79fe6da0095so219460739f.0
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 13:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1696882215; x=1697487015; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b3GY1i1RwOxFPsx3r0WAP41F76rpcBgk99acMMB0WNM=;
        b=mBHh+J33A6HeXlgQPT/G6YWkrSEhSWtMiWsNYcuXUmhcj7h4k4YKzna+TynjHDxlzy
         D6WjXyyqnQPE0xB5s1lj6ogTA0llshaKdCOf0kaa8Th9C9+SP9Gz4KC6zx+kUy9Tzeuf
         GCDQ19q1xnX6DnF++M2NbwwwmgNWoSJ0Lfcs0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696882215; x=1697487015;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b3GY1i1RwOxFPsx3r0WAP41F76rpcBgk99acMMB0WNM=;
        b=J8alc56Ztg1ehG7xVCL9c2VIitr5LRoCKZnfgkmAhQGtn5liXqEcEG4Gfbc0sdXhNx
         NuxIq5qGt5QBbnQoOkxPZ9qF0tT7E7PicEe+7h9FRrYTtgt1MfPmTN2htZOue6q5Bxmg
         oSIWM03ccrDx2v87TsHLFjz8Daib8r5KykevHLPZc79lXC5ESIwhs0wtCJONyOIUnsMS
         ATBEud89Y/7MaYOFGWuoz5qCxKqrKgwpcTHvTnVLyD6WAJkTc6cXunDcKM49JnIldc5X
         UJb+MtT0tKk2fZt5wscS9t0oVPuI33jY1FU9i9niVPxIMYsVx85vAEiCpx4xpApJZGGV
         0p3w==
X-Gm-Message-State: AOJu0YycaEgEcp/QfjkrUt9KKZXkWe+TU47xvULLz8QPszZrZsnURpV5
	cxBFNnfPUpBm+l7Ft/oCHWmJs8etZfR7IwocRWA=
X-Google-Smtp-Source: AGHT+IGRVDl2QlAkPNETkpq0SUkGBPU/UdXTV3AM7x9Hs22e2Z60hPdHjcDCo4XmjZUSi77IkFoEjw==
X-Received: by 2002:a05:6602:220e:b0:786:f352:e3d4 with SMTP id n14-20020a056602220e00b00786f352e3d4mr19797645ion.7.1696882215555;
        Mon, 09 Oct 2023 13:10:15 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:138c:cf57:c18d:20f5])
        by smtp.gmail.com with ESMTPSA id q21-20020a02a315000000b0042b2df337ccsm2215294jai.76.2023.10.09.13.10.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Oct 2023 13:10:15 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: U-Boot Mailing List <u-boot@lists.denx.de>,
	linux-mtd@lists.infradead.org,
	Michael Walle <mwalle@kernel.org>,
	Tom Rini <trini@konsulko.com>,
	Rob Herring <robh@kernel.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Richard Weinberger <richard@nod.at>,
	Rob Herring <robh+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] dt-bindings: mtd: binman-partition: Add binman compatibles
Date: Mon,  9 Oct 2023 14:10:00 -0600
Message-ID: <20231009201005.1964794-2-sjg@chromium.org>
X-Mailer: git-send-email 2.42.0.609.gbb76f46606-goog
In-Reply-To: <20231009201005.1964794-1-sjg@chromium.org>
References: <20231009201005.1964794-1-sjg@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add two compatible for binman entries, as a starting point for the
schema.

Note that, after discussion on v2, we decided to keep the existing
meaning of label so as not to require changes to existing userspace
software when moving to use binman nodes to specify the firmware
layout.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

Changes in v3:
- Drop fixed-partitions from the example
- Use compatible instead of label

Changes in v2:
- Use plain partition@xxx for the node name

 .../mtd/partitions/binman-partition.yaml      | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml

diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
new file mode 100644
index 000000000000..754f804524a5
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
@@ -0,0 +1,48 @@
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
+select: false
+
+description: |
+  This corresponds to a binman 'entry'. It is a single partition which holds
+  data of a defined type.
+
+allOf:
+  - $ref: /schemas/mtd/partitions/partition.yaml#
+
+properties:
+  compatible:
+    items:
+      enum:
+        - u-boot       # u-boot.bin from U-Boot projec6t
+        - atf-bl31     # bl31.bin or bl31.elf from TF-A project
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
+            compatible = "atf-bl31";
+            reg = <0x200000 0x100000>;
+        };
+    };
-- 
2.42.0.609.gbb76f46606-goog


