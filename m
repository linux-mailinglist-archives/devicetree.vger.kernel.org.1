Return-Path: <devicetree+bounces-3993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E42547B0D3F
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 22:21:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7563E283918
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 20:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E1D01A589;
	Wed, 27 Sep 2023 20:21:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 903ED7490
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 20:21:12 +0000 (UTC)
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com [IPv6:2607:f8b0:4864:20::d36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7949D122
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 13:21:10 -0700 (PDT)
Received: by mail-io1-xd36.google.com with SMTP id ca18e2360f4ac-79fe612beabso131883639f.3
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 13:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695846070; x=1696450870; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1kq9WoSgqEviF42jhwFTI980vH31ePAvDcikVyQPxtc=;
        b=JcwztSVLq69Lbxb/oyjJw8+PibiGvIjJ5thiZUJOm2Dep/lmTNYXE4YEbQ1c7qu7p3
         faHR06qLKFPWogsRMB3FDWeOktENmTLEfDiU+Pk/PqoyANg1xCcZOxwpQpkI+4caQbO+
         kRfXg1knzZQf+MmrpAUJx2uIcPvdnc7NbIKes=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695846070; x=1696450870;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1kq9WoSgqEviF42jhwFTI980vH31ePAvDcikVyQPxtc=;
        b=s7JY1WzKnJjVaCSKjQoFTmgnGck1br4Xa2ERj6QUjBGojF2r8mIem/ZV0/DXo4bRBk
         eaCdOKTNiO2RwkZ/EU+uKbvW1PYVUzsJbE908zeDZCU/za+zzL3oHjebvVIQUVFbMEVi
         lGLR40NSUqgB3dOJHfUWWZxV2HCNBUtp/RiYKYSqLmHeGQWHy59L6AYMgFUV7XsL7C2A
         7kluldIrA4zukrZ3SNZKvouj8zpPbiQShV5sgjjedimDn7ydlslVdUqrUgXqZ28V8PIj
         hKwPMvoGx/i2IiU5atNBa1z1cJE35Rrj4jyEpCX5lZkbehlPZ6EZnhqe1NvwPU+xyri0
         uLvA==
X-Gm-Message-State: AOJu0YwAILlIGTXi1wsdc8OKO+KTm3wS23qeDnRUoN8BCcXiQVJvc+mI
	XmJod6bwkIg1Vju/JrHasONAnit8HjVh1K6DUKQ=
X-Google-Smtp-Source: AGHT+IFhPJEncrLdXnOVjxjuTHH/e94XYzo89HB1tZ1pWdiwxx4ZhAkrwcRurxLK1zLwja0dnf6dQQ==
X-Received: by 2002:a5e:a610:0:b0:795:16b8:85fc with SMTP id q16-20020a5ea610000000b0079516b885fcmr2995614ioi.0.1695846069701;
        Wed, 27 Sep 2023 13:21:09 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:5d4f:fe51:5575:6f76])
        by smtp.gmail.com with ESMTPSA id ei15-20020a05663829af00b0042fec8620e4sm4113299jab.57.2023.09.27.13.21.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 13:21:09 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: linux-mtd@lists.infradead.org,
	U-Boot Mailing List <u-boot@lists.denx.de>,
	Tom Rini <trini@konsulko.com>,
	Rob Herring <robh@kernel.org>,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Rob Herring <robh+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: mtd: binman-partition: Add binman labels
Date: Wed, 27 Sep 2023 14:20:52 -0600
Message-ID: <20230927202057.3676497-2-sjg@chromium.org>
X-Mailer: git-send-email 2.42.0.515.g380fc7ccd1-goog
In-Reply-To: <20230927202057.3676497-1-sjg@chromium.org>
References: <20230927202057.3676497-1-sjg@chromium.org>
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

Add two labels for binman entries, as a starting point for the schema.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

 .../mtd/partitions/binman-partition.yaml      | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml

diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
new file mode 100644
index 000000000000..6ee832cb4c4c
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
+        partition-u-boot@100000 {
+            label = "u-boot";
+            reg = <0x100000 0xf00000>;
+        };
+
+        partition-atf-bl31t@200000 {
+            label = "atf-bl31";
+            reg = <0x200000 0x100000>;
+        };
+    };
-- 
2.42.0.515.g380fc7ccd1-goog


