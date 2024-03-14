Return-Path: <devicetree+bounces-50370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C36C87B65B
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 03:18:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0330A287328
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 02:18:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FFCD1A38F8;
	Thu, 14 Mar 2024 02:18:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="SYt5dr7Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 959742F44
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 02:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710382691; cv=none; b=GRHks1Gs7lzhjNKtv3CAS4UitN33yFCtfTa5ByixU9e7iI2P4jYzfAguG/JfGSYYa+zPrTrZRgte7L2flltELvp/yx/ju8Ccg4Pefx6FvgznbATN6BH+9FlnUVVE2XE4eCalmbBU8zdEEVKpw+hEkQHGl/2MqdTlb2InM6venNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710382691; c=relaxed/simple;
	bh=FFT+kshlP8IvZkSDJMUj66oZlx/qU05+9qLGQo4+SB8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=uKbfeq1j9im/NCLH8UDRWc9cA0x0Ec0rEjZsCoM3TDayK5lOQAmihHxdTgS3jT1a23ooj7yqmeywDqQZts26sncnborK7vJtaBJ35pfHllLt2qJGBYFgQABzzGWFaQN85wbPiswHBzofXs8UC+TcUmjl5tVEgTqlXPTVctbIWes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=SYt5dr7Y; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-5dbf7b74402so402028a12.0
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 19:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1710382688; x=1710987488; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bw/+Z7r/txSTQl3/VBt2dWxefijuFQx/eWY4cCx1Vxc=;
        b=SYt5dr7YU0VcWwf9ggzT+1KHRVbaS4WeI4Pl0SheyBk0FtAVvg6TmlWpG6Q3kLInpj
         sUteD750Hvx3ziXK3+S6HmXTe8129s4IZguBKUNdEGPkIssFyUNUVHwZkZJJsHaRSlG8
         IUG8chQ2ny/T5W1wg1vuGpubg7wxCZqZ/EjU0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710382688; x=1710987488;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bw/+Z7r/txSTQl3/VBt2dWxefijuFQx/eWY4cCx1Vxc=;
        b=hXU0JGEJZdGhiLbr50Gf/xh0DDKeKTHnTTNJerLPYt9F/pR5I47HkIU4QlxReTlkA1
         zrNi2Owx8I5RDysW4GHrTbt0B+yILvXSz9ML88+4gqxbMjHwD+Dx6SilCLeu6G/nrH4g
         hDlnXCa7HD3eSuyS3FK51b7tsoNP1UFO/scHe6colaeFzWj5iViBvu6fB3T5INJcQZij
         nFTxw0S/bE3WwaRHdtbrnv1fNpiAFCv6UkWvtuWFz3HzJcGyPPz5+IecKinxubrX9gx0
         7918d7nu9jpGPm2cuFYJvOGiX+wsDwxehQAGDD+a6cF8AL/Sc60VccWWk6f/PMuaXtha
         C/4Q==
X-Gm-Message-State: AOJu0YzvJYvn3y4pV1AMvp4jj6hDj8/2rBXBGnUh6SoD2Uw5ZXK5il6J
	FImwQ1l1WuOVGzwJ7jj2ZY6Tsj9cyd206eQNsNAb4Mt7gR/Bzo/IHNsKoPM/FxYTpXYeJI3B/8I
	=
X-Google-Smtp-Source: AGHT+IEGCQ0dir7xQW4xKnBdRv5fD3d9jdrPjgJZwAI2oEu7UpTxG2WSBqCuGmEu9uHnxxEjUnqRMw==
X-Received: by 2002:a17:90a:d18e:b0:29c:289b:1eb3 with SMTP id fu14-20020a17090ad18e00b0029c289b1eb3mr452033pjb.6.1710382688593;
        Wed, 13 Mar 2024 19:18:08 -0700 (PDT)
Received: from chromium.org ([118.149.82.233])
        by smtp.gmail.com with ESMTPSA id o1-20020a17090aac0100b0029bc25f7181sm1993937pjq.54.2024.03.13.19.18.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 19:18:08 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	Michael Walle <mwalle@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-mtd@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Richard Weinberger <richard@nod.at>,
	Rob Herring <robh+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 1/2] dt-bindings: mtd: fixed-partition: Add binman compatibles
Date: Thu, 14 Mar 2024 15:17:53 +1300
Message-Id: <20240314021754.84557-1-sjg@chromium.org>
X-Mailer: git-send-email 2.34.1
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

 .../bindings/mtd/partitions/binman.yaml       | 49 +++++++++++++++++++
 MAINTAINERS                                   |  5 ++
 2 files changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman.yaml

diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
new file mode 100644
index 000000000000..83417ad5cee9
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/partitions/binman.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Binman entries
+
+description: |
+  TBD
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
+      - binman,entry # generic binman entry
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
diff --git a/MAINTAINERS b/MAINTAINERS
index 1aabf1c15bb3..66f5e09e2d70 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3576,6 +3576,11 @@ F:	Documentation/filesystems/bfs.rst
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
2.34.1


