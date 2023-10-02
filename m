Return-Path: <devicetree+bounces-5198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C757B596F
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:50:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 91F782817BC
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:50:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F97A1E52F;
	Mon,  2 Oct 2023 17:50:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDCE1A73C
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 17:50:37 +0000 (UTC)
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com [IPv6:2607:f8b0:4864:20::d35])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A08AAC9
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 10:50:35 -0700 (PDT)
Received: by mail-io1-xd35.google.com with SMTP id ca18e2360f4ac-7a27254cd12so12339f.3
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 10:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1696269035; x=1696873835; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F2OIh/G3vvfH8cT1f+jhivcT+xHStCXj54HHC5DhSlw=;
        b=AWo5QFqi3vDLNgXtRAXU3v3ejAKlGFEYneI+WL/VuF3O37bI7rgOhwwfIddbR8TBDZ
         b9+DOJuI0NYMxPztTllcC5SGi5IQg5w7T772e9ZMNOcmwPmjtG2nz9WfFxrIOiHEQuEC
         Q3ebbxjgqIpHFCeYrZ/RRXtP4Q7yVaF1LV3ZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696269035; x=1696873835;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F2OIh/G3vvfH8cT1f+jhivcT+xHStCXj54HHC5DhSlw=;
        b=rygLn7wckLgyiRwxx8SkJbgRmHvrEfewFrSRdc6yycqy4KGJ3iB1eSEWFj/m49DEX1
         O6N9oubebh+tQEffDY65ufc2F/Cb6On8JRM3q0lVUGSk/JH5LgMLFGRiX3FNSclQitO5
         f5+F/qKaxhDHDzmaiBwKMWgpwu+aJQxOpruZKI8tUobWg6Xd4mRxC/1Or4cOng1Ct5PN
         8MVIKGMRuzqCICTTfJNx1mtCeSPJ3bwIwp/mrxIFy7IupCD2GDqXngNQwPnSTIVNL357
         53dfa7iebLH1Y/noyyC6y9LDdMy3Yd16+YAAratcKYNkXi5zQ3vOMOkz5zCfEMzOJJXn
         mBcw==
X-Gm-Message-State: AOJu0YyaY7LOj+2TQLpWYSw2HjBSFKPnyauDzkrvGt68etIlWgaiAXwM
	qwnUWj0E+hj7MJ2I7rqS220YdkBU5ikJphxaj5w=
X-Google-Smtp-Source: AGHT+IEajo7AgZ09G/o1FHYBl5iibeG+V+B1CsR5q6ZjwznpqxMf8wOSm4wNhvKtLK5z7hs1GK8trg==
X-Received: by 2002:a5d:9cd5:0:b0:799:36c2:fa49 with SMTP id w21-20020a5d9cd5000000b0079936c2fa49mr12850092iow.15.1696269034885;
        Mon, 02 Oct 2023 10:50:34 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:63cd:2673:520:2e9])
        by smtp.gmail.com with ESMTPSA id s23-20020a02c517000000b0042b2e309f97sm6919562jam.177.2023.10.02.10.50.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 10:50:34 -0700 (PDT)
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
	Richard Weinberger <richard@nod.at>,
	Rob Herring <robh+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] dt-bindings: mtd: binman-partition: Add binman labels
Date: Mon,  2 Oct 2023 11:49:41 -0600
Message-ID: <20231002174948.1015223-2-sjg@chromium.org>
X-Mailer: git-send-email 2.42.0.582.g8ccd20d70d-goog
In-Reply-To: <20231002174948.1015223-1-sjg@chromium.org>
References: <20231002174948.1015223-1-sjg@chromium.org>
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

Add two labels for binman entries, as a starting point for the schema.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

Changes in v2:
- Use plain partition@xxx for the node name

 .../mtd/partitions/binman-partition.yaml      | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml

diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
new file mode 100644
index 000000000000..406a8997d3e4
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
+  label:
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
+        compatible = "binman", "fixed-partitions";
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        partition@100000 {
+            label = "u-boot";
+            reg = <0x100000 0xf00000>;
+        };
+
+        partition@200000 {
+            label = "atf-bl31";
+            reg = <0x200000 0x100000>;
+        };
+    };
-- 
2.42.0.582.g8ccd20d70d-goog


