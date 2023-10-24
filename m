Return-Path: <devicetree+bounces-11468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ED45A7D5D5F
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 23:41:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8D17EB20EE5
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 21:41:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 258B43FB3F;
	Tue, 24 Oct 2023 21:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lBeixISw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B8E73D399
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 21:41:19 +0000 (UTC)
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C385C10D4
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:41:17 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1bf55a81eeaso35034305ad.0
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698183677; x=1698788477; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qlj3Zfises7r0D8qFU0FTbLuXsSPwTC7ghoEI6cXzzE=;
        b=lBeixISwFVwDkdi/qQ9H2Trq3Uj9yzWAPbG7fIN1b8/CFlNBQXI4tv8BGqu3GIxMd7
         acFTNdSuWPN/x/5hsiyTOvwrNXCYSIq+R0lxCN/HjyuDIhF7uMxh8PD8r9wsQ23EX7qu
         JCjg0odMGrwkrMHMVg9x4f5mFDRofZYS85cxA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698183677; x=1698788477;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qlj3Zfises7r0D8qFU0FTbLuXsSPwTC7ghoEI6cXzzE=;
        b=c/r0xMBiVLBOMv9wY/7PKxdmMkzHP8FwMB1ALuGHGFqUvt7NWIOjQh8Mhs4muAOmUd
         srioY+rWb6mtgXI5zPSrlX2758DRxbutmB5MOqD4AcrS8j/mcZ7m3JAboEZs6Vq1tPFV
         Fqq54QTMJ/lKhsX7i6KlPDdBQOs0k/+4E6Sq+24j6VoKJCIll5J7OnqA/0a2De4TMEvr
         RE6QwvUsQdIL99mWv8RuiulisOCjklKbQ3TBUFpLYd10Xl8IEAiYhOnJszv6eJJCBJEf
         NPSZg+FDvpHRXQZe62yWAYcJQETbVw3GgbEToEyg/7BSm5H4Wdb8kmYxKCkAOOzxrFdH
         B0lQ==
X-Gm-Message-State: AOJu0YwYC4J8xWAFhBI0vsIK5yClBk8c/0IYgnBJ++FwJy1xcQHMY1Cp
	kYMrBjIkrzSFqHm7Zekv2XB6wWQZWdIKXbgdbHk2Qg==
X-Google-Smtp-Source: AGHT+IGxvWj9Xsu3pRzsZTnMyZCtBlY1xbUa07gBVG2GR0HjQ/NJi+InpJB7d3yeYs2gM51dcxBfDg==
X-Received: by 2002:a17:902:c215:b0:1c7:3558:721a with SMTP id 21-20020a170902c21500b001c73558721amr10294915pll.58.1698183677103;
        Tue, 24 Oct 2023 14:41:17 -0700 (PDT)
Received: from sjg1.roam.corp.google.com ([202.144.206.130])
        by smtp.gmail.com with ESMTPSA id 18-20020a170902c21200b001c5f7e06256sm7861055pll.152.2023.10.24.14.41.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 14:41:16 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: linux-mtd@lists.infradead.org,
	U-Boot Mailing List <u-boot@lists.denx.de>,
	Michael Walle <mwalle@kernel.org>,
	Tom Rini <trini@konsulko.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Richard Weinberger <richard@nod.at>,
	Rob Herring <robh+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/3] dt-bindings: mtd: binman-partition: Add binman compatibles
Date: Wed, 25 Oct 2023 10:39:17 +1300
Message-ID: <20231024213940.3590507-2-sjg@chromium.org>
X-Mailer: git-send-email 2.42.0.758.gaed0368e0e-goog
In-Reply-To: <20231024213940.3590507-1-sjg@chromium.org>
References: <20231024213940.3590507-1-sjg@chromium.org>
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

 .../mtd/partitions/binman-partition.yaml      | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml

diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
new file mode 100644
index 00000000000000..37a413464b0ce5
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
@@ -0,0 +1,50 @@
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
+    - enum:
+        - binman,entry # generic binman entry
+        - u-boot       # u-boot.bin from U-Boot project
+        - tfa-bl31     # bl31.bin or bl31.elf from TF-A project
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


