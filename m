Return-Path: <devicetree+bounces-13005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D247DC480
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 03:37:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D50C1C20BE7
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 02:37:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F3D010E1;
	Tue, 31 Oct 2023 02:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080D2EC6
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 02:37:00 +0000 (UTC)
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9C19DF7;
	Mon, 30 Oct 2023 19:36:54 -0700 (PDT)
Received: from loongson.cn (unknown [112.20.110.17])
	by gateway (Coremail) with SMTP id _____8BxpPBDaEBlQt41AA--.40033S3;
	Tue, 31 Oct 2023 10:36:51 +0800 (CST)
Received: from localhost.localdomain (unknown [112.20.110.17])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8Axzy85aEBla0Q3AA--.53709S4;
	Tue, 31 Oct 2023 10:36:50 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Huacai Chen <chenhuacai@kernel.org>,
	loongson-kernel@lists.loongnix.cn,
	devicetree@vger.kernel.org,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	linux-mips@vger.kernel.org,
	lvjianmin@loongson.cn,
	WANG Xuerui <git@xen0n.name>,
	loongarch@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v3 2/5] dt-bindings: interrupt-controller: loongson,liointc: Fix dtbs_check warning for reg-names
Date: Tue, 31 Oct 2023 10:36:37 +0800
Message-Id: <fd5efc8a21b94e044e4e225255655fc92beb0c63.1698717154.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <cover.1698717154.git.zhoubinbin@loongson.cn>
References: <cover.1698717154.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:AQAAf8Axzy85aEBla0Q3AA--.53709S4
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoWxZw15ZF4kKrWrXFy7tFW3CFX_yoW5ArWfpa
	y7CanFgF48KF13Z3y8t340krnxZr93AwnIkan7J3y7GFsFq34UXr13tF95JF4fGrWIqa4j
	vryFgayfGFyjyabCm3ZEXasCq-sJn29KB7ZKAUJUUUUf529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUBIb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AK
	xVW8Jr0_Cr1UM2kKe7AKxVWUAVWUtwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07
	AIYIkI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWU
	tVWrXwAv7VC2z280aVAFwI0_Gr0_Cr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7V
	AKI48JMxkF7I0En4kS14v26r1q6r43MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY
	6r1j6r4UMxCIbckI1I0E14v26r126r1DMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7
	xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xII
	jxv20xvE14v26ryj6F1UMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw2
	0EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Gr0_Cr1lIxAIcVC2z280aVCY1x02
	67AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IU8XTm3UUUUU==

As we know, the Loongson-2K0500 is a single-core CPU, and the
core1-related register (isr1) does not exist, and we need a separate
declaration.

This fixes dtbs_check warning:

DTC_CHK arch/loongarch/boot/dts/loongson-2k0500-ref.dtb
arch/loongarch/boot/dts/loongson-2k0500-ref.dtb: interrupt-controller@1fe11400: reg-names: ['main', 'isr0'] is too short
        From schema: Documentation/devicetree/bindings/interrupt-controller/loongson,liointc.yaml
arch/loongarch/boot/dts/loongson-2k0500-ref.dtb: interrupt-controller@1fe11400: Unevaluated properties are not allowed ('reg-names' was unexpected)
        From schema: Documentation/devicetree/bindings/interrupt-controller/loongson,liointc.yaml
arch/loongarch/boot/dts/loongson-2k0500-ref.dtb: interrupt-controller@1fe11400: reg: [[0, 534844416, 0, 64], [0, 534843456, 0, 8]] is too short
        From schema: Documentation/devicetree/bindings/interrupt-controller/loongson,liointc.yaml
arch/loongarch/boot/dts/loongson-2k0500-ref.dtb: interrupt-controller@1fe11440: reg-names: ['main', 'isr0'] is too short
        From schema: Documentation/devicetree/bindings/interrupt-controller/loongson,liointc.yaml

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 .../loongson,liointc.yaml                     | 22 ++++++++++++++-----
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/loongson,liointc.yaml b/Documentation/devicetree/bindings/interrupt-controller/loongson,liointc.yaml
index 0d9511b8a792..7393d7dfbe82 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/loongson,liointc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/loongson,liointc.yaml
@@ -11,8 +11,13 @@ maintainers:
 
 description: |
   This interrupt controller is found in the Loongson-3 family of chips and
-  Loongson-2K1000 chip, as the primary package interrupt controller which
+  Loongson-2K series chips, as the primary package interrupt controller which
   can route local I/O interrupt to interrupt lines of cores.
+  Be aware of the following points.
+  1.The Loongson-2K0500 is a single core CPU, the isr1 register could not be defined;
+  2.The Loongson-2K0500/2K1000 has 64 device interrupt sources as inputs, so we
+    need to define two nodes in dts{i} to describe the "0-31" and "32-61" interrupt
+    sources respectively.
 
 allOf:
   - $ref: /schemas/interrupt-controller.yaml#
@@ -29,10 +34,14 @@ properties:
     maxItems: 3
 
   reg-names:
-    items:
-      - const: main
-      - const: isr0
-      - const: isr1
+    oneOf:
+      - items:
+          - const: main
+          - const: isr0
+      - items:
+          - const: main
+          - const: isr0
+          - const: isr1
 
   interrupt-controller: true
 
@@ -94,7 +103,8 @@ if:
 then:
   properties:
     reg:
-      minItems: 3
+      minItems: 2
+      maxItems: 3
 
   required:
     - reg-names
-- 
2.39.3


