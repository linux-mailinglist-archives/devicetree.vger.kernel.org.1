Return-Path: <devicetree+bounces-212805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DD98AB43C95
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 15:08:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 01C427B0AD0
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:06:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F24DF30101B;
	Thu,  4 Sep 2025 13:07:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 186752FF66F
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 13:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756991272; cv=none; b=I0Umj6hzvGJ+pHfWAZMQ0GHC5dRfgq5hk21HOFUMpHpYE14AHMpjfd7SQosiDXpRZvZFIAyK3wxRWXFIZu2Kus139uGvSvkqZg9dtUm0VrNKmhjmzATwCwTN7vhpgEWsSboAkDPuN5gIHhTpJzRCiGF2ijioSw+Qn8GikWEH8Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756991272; c=relaxed/simple;
	bh=XRY6xVK2vyBEDQo2juPLvUD6poNLRhV4ZmGowSJal1k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dbLds+O4DI2br2Fr/BdaTc0cL3Mihk6sjT4XMjOgkNjL+1CV354MVSLshCuxmTPaRDn07HoM2ZKjsRuIdo0/hKY1DdxwX96W0glyM32+fryp/ilZUyGuO24fTLTgAHn5hcfJ3Wccz4pU3NETH3Ku63B7wLOm0AL/wB5gd/r6eNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.68.89])
	by gateway (Coremail) with SMTP id _____8Cx5tAij7loj6wGAA--.14065S3;
	Thu, 04 Sep 2025 21:07:46 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.89])
	by front1 (Coremail) with SMTP id qMiowJAxfcEIj7lotA5+AA--.16416S4;
	Thu, 04 Sep 2025 21:07:45 +0800 (CST)
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
	Binbin Zhou <zhoubinbin@loongson.cn>,
	"Rob Herring (Arm)" <robh@kernel.org>
Subject: [PATCH v4 6/7] dt-bindings: mtd: loongson,ls1b-nand-controller: Document the Loongson-2K1000 NAND controller
Date: Thu,  4 Sep 2025 21:07:10 +0800
Message-ID: <ff557c8a4a59ee9ee23f410deb8d7192bf1c8b47.1756991031.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1756991031.git.zhoubinbin@loongson.cn>
References: <cover.1756991031.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowJAxfcEIj7lotA5+AA--.16416S4
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoW7uFy3Ar1fCr43Ww1kGryrZrc_yoW8ury5pF
	9xAayfKF12yF13uFZ8Ka48Gr13ZFyktw1DJFZrJryxG39xXa4UZryakr1rtFsxtr12qry5
	ZFy0gF48G3ZFyrbCm3ZEXasCq-sJn29KB7ZKAUJUUUU3529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUBqb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r106r15M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Ar0_tr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Cr0_Gr1UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v2
	6rxl6s0DM2kKe7AKxVWUAVWUtwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07AIYI
	kI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWrXVW3
	AwAv7VC2z280aVAFwI0_Gr1j6F4UJwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64
	vIr41lc7CjxVAaw2AFwI0_Jw0_GFyl42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_
	Jr0_Gr1l4IxYO2xFxVAFwI0_JF0_Jw1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8Gjc
	xK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r4a6rW5MIIYrxkI7VAKI48JMIIF0xvE2Ix0
	cI8IcVAFwI0_Ar0_tr1lIxAIcVC0I7IYx2IY6xkF7I0E14v26F4j6r4UJwCI42IY6xAIw2
	0EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Gr1j6F4UJwCI42IY6I8E87Iv6xkF
	7I0E14v26r4UJVWxJrUvcSsGvfC2KfnxnUUI43ZEXa7IU0xb15UUUUU==

Add new compatible for the Loongson-2K NAND controller used for
Loongson-2K1000 SoC.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
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


