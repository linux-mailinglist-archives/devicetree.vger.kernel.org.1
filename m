Return-Path: <devicetree+bounces-203067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9ECAB1FEF0
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 08:03:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E4913A57CA
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 06:03:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3E0527703D;
	Mon, 11 Aug 2025 06:03:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 130FE27701E
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 06:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754892227; cv=none; b=tnf4Cd05pxiHk+ejws0p2BRTckZTFwO2ubbQnNjues4sQj/w1+05XZoAi+B77yRne5IqX3kFThrJE4+6CwdOHiRxzEbVseo+sh7cszsgzxDi+ERuZA/iyiHfhAujlCSEmTcy2fXO4OX6wMqAWGDgfQ2oePHH+4ig69gheGDX7us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754892227; c=relaxed/simple;
	bh=0wVviiyWpRTGwPwyz1H+d13LQrzM589Tl1MtkYHMZV8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sSeEYNE1gW4+CHiHrtCgFS5SZ8ahQ39dh0DdcA1K7go/vJSKIiLcjUsu7KYBtlILj2K4eGf6qJ9TsNMO/eSfd9WqHEUzDjb2h4WotfXthhDTakz+9hhkWhkNQ3hNdfH3kjL4Zk7GzzX6ilT4x65uHeeBgQv1ZqFAoxPLnWDjM+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.69.45])
	by gateway (Coremail) with SMTP id _____8Bx63G+h5loCEM+AQ--.52572S3;
	Mon, 11 Aug 2025 14:03:42 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.69.45])
	by front1 (Coremail) with SMTP id qMiowJAxVOSrh5loVlVCAA--.52188S5;
	Mon, 11 Aug 2025 14:03:36 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Keguang Zhang <keguang.zhang@gmail.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>
Cc: Huacai Chen <chenhuacai@kernel.org>,
	Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-mtd@lists.infradead.org,
	Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v2 7/8] dt-bindings: mtd: loongson,ls1b-nand-controller: Document the Loongson-2K1000 NAND controller
Date: Mon, 11 Aug 2025 14:03:14 +0800
Message-ID: <e6568dad8dfc1c2fba6b31a1fbb113e82f8c5da5.1754890670.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1754890670.git.zhoubinbin@loongson.cn>
References: <cover.1754890670.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowJAxVOSrh5loVlVCAA--.52188S5
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoW7uFy3Ar1fCr43Ww1kGryrZrc_yoW8ZFWDpF
	nxAayfKF12yF13uFZ8Ka48Gr13ZFyktw1DJFZrXryxG39xXa4UZrWakr1rtFsxtr12qry5
	ZFy0gF48J3ZFyrbCm3ZEXasCq-sJn29KB7ZKAUJUUUU3529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUBlb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_tr0E3s1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIE14v26F4UJVW0owA2z4x0Y4vEx4A2jsIEc7CjxVAF
	wI0_Cr1j6rxdM2kKe7AKxVWUAVWUtwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07
	AIYIkI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVW3
	AVW8Xw1lYx0Ex4A2jsIE14v26F4j6r4UJwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2
	Ij64vIr41lc7CjxVAaw2AFwI0_Jw0_GFyl42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Y
	z7v_Jr0_Gr1l4IxYO2xFxVAFwI0_JF0_Jw1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x
	8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE
	2Ix0cI8IcVAFwI0_Ar0_tr1lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4UJVWxJr1lIxAIcV
	CF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26F4j6r4UJwCI42IY6I8E87Iv
	6xkF7I0E14v26r4UJVWxJrUvcSsGvfC2KfnxnUUI43ZEXa7IU08-BtUUUUU==

Add new compatible for the Loongson-2K NAND controller used for
Loongson-2K1000 SoC.

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 .../mtd/loongson,ls1b-nand-controller.yaml    | 50 ++++++++++++++++++-
 1 file changed, 49 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mtd/loongson,ls1b-nand-controller.yaml b/Documentation/devicetree/bindings/mtd/loongson,ls1b-nand-controller.yaml
index 4ec2b5d1e89d..cf85d0cede00 100644
--- a/Documentation/devicetree/bindings/mtd/loongson,ls1b-nand-controller.yaml
+++ b/Documentation/devicetree/bindings/mtd/loongson,ls1b-nand-controller.yaml
@@ -26,18 +26,22 @@ properties:
           - loongson,ls1b-nand-controller
           - loongson,ls1c-nand-controller
           - loongson,ls2k0500-nand-controller
+          - loongson,ls2k1000-nand-controller
       - items:
           - enum:
               - loongson,ls1a-nand-controller
           - const: loongson,ls1b-nand-controller
 
   reg:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   reg-names:
+    minItems: 2
     items:
       - const: nand
       - const: nand-dma
+      - const: dma-config
 
   dmas:
     maxItems: 1
@@ -54,6 +58,27 @@ required:
 
 unevaluatedProperties: false
 
+if:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - loongson,ls2k1000-nand-controller
+
+then:
+  properties:
+    reg:
+      minItems: 3
+    reg-names:
+      minItems: 3
+
+else:
+  properties:
+    reg:
+      maxItems: 2
+    reg-names:
+      maxItems: 2
+
 examples:
   - |
     nand-controller@1fe78000 {
@@ -72,3 +97,26 @@ examples:
             nand-ecc-algo = "hamming";
         };
     };
+
+  - |
+    nand-controller@1fe26000 {
+        compatible = "loongson,ls2k1000-nand-controller";
+        reg = <0x1fe26000 0x24>,
+              <0x1fe26040 0x4>,
+              <0x1fe00438 0x8>;
+        reg-names = "nand", "nand-dma", "dma-config";
+        dmas = <&apbdma0 0>;
+        dma-names = "rxtx";
+
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        nand@0 {
+            reg = <0>;
+            label = "ls2k1000-nand";
+            nand-use-soft-ecc-engine;
+            nand-ecc-algo = "bch";
+            nand-ecc-strength = <8>;
+            nand-ecc-step-size = <512>;
+        };
+    };
-- 
2.47.3


