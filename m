Return-Path: <devicetree+bounces-109346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C56996176
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 09:53:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A09DF281EF4
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 07:52:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74456185B78;
	Wed,  9 Oct 2024 07:52:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73D23185B68;
	Wed,  9 Oct 2024 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728460376; cv=none; b=Ynrxf7fxqzR0oHC2WO0deRkT/jio1T6tJE6PB1D8spLuzQrVFzsgQR/eGEsVFr472cjh6Op7ZgSIJg462bnAyVubUPXtXkfKiscmGl3yw32N+j1iAKMBXA8nYSeeVfrTogk2PTbxqxdBvIWbzBQL6+W6wHHFwdQ2/cVDAZT532k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728460376; c=relaxed/simple;
	bh=D74mvb6b5g6ztdkGVjt0dJ1k5IuZejqW/D3kVo+Ehdc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=S0boW/kLI/i+y8jqq+wxI2dnxw0V6DFgwtivvIs/QHs4Sd5yudsyvQHjCEYbEYzgKcJYWMABJBKSUd/oprMs9IIFRKsC7MllyeSblDIEzDZxaOdpRWqYhsJyUZ9f3siMO1D7GfuI9W7er7JwfRk2fEg8DL/2Tf8Xs3KHhy3oPtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.68.38])
	by gateway (Coremail) with SMTP id _____8AxSYpVNgZni7IQAA--.23867S3;
	Wed, 09 Oct 2024 15:52:53 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.38])
	by front1 (Coremail) with SMTP id qMiowMDxL9ZSNgZnqxYhAA--.30729S2;
	Wed, 09 Oct 2024 15:52:51 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Huacai Chen <chenhuacai@kernel.org>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Weidong Wang <wangweidong.a@awinic.com>,
	Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Shuming Fan <shumingf@realtek.com>,
	Binbin Zhou <zhoubinbin@loongson.cn>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 6/9] ASoC: dt-bindings: Add Loongson I2S controller
Date: Wed,  9 Oct 2024 15:52:37 +0800
Message-ID: <91e49509f1aaa70e635b6662ed9fffaf31165799.1728459624.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <cover.1728459624.git.zhoubinbin@loongson.cn>
References: <cover.1728459624.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowMDxL9ZSNgZnqxYhAA--.30729S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoW7uw1xKw4fKFWDKr18Aw1fGrX_yoW8uF15pF
	srCay7GrWIqF17u398Ja48Cw1fX393A3ZrXF47Jw17K3sIga10vw4akF15Z3W3Cry2gFW7
	uFWfK3y8Ka47AwcCm3ZEXasCq-sJn29KB7ZKAUJUUUUd529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUBCb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_tr0E3s1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E
	14v26r4UJVWxJr1ln4kS14v26r1q6r43M2AIxVAIcxkEcVAq07x20xvEncxIr21l57IF6x
	kI12xvs2x26I8E6xACxx1l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v2
	6Fy26r45twAv7VC2z280aVAFwI0_Cr0_Gr1UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0x
	vY0x0EwIxGrwCY1x0262kKe7AKxVW8ZVWrXwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE
	7xkEbVWUJVW8JwCFI7km07C267AKxVWUtVW8ZwC20s026c02F40E14v26r1j6r18MI8I3I
	0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_GFv_WrylIxkGc2Ij64vIr41lIxAI
	cVC0I7IYx2IY67AKxVWDJVCq3wCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr1j6F4UJwCI42
	IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Cr0_Gr1UMIIF0xvEx4A2
	jsIEc7CjxVAFwI0_Gr1j6F4UJbIYCTnIWIevJa73UjIFyTuYvjxUh9NVUUUUU

Add Loongson I2S controller binding with DT schema format using
json-schema.

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/sound/loongson,ls2k1000-i2s.yaml | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/loongson,ls2k1000-i2s.yaml

diff --git a/Documentation/devicetree/bindings/sound/loongson,ls2k1000-i2s.yaml b/Documentation/devicetree/bindings/sound/loongson,ls2k1000-i2s.yaml
new file mode 100644
index 000000000000..da79510bb2d9
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/loongson,ls2k1000-i2s.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/loongson,ls2k1000-i2s.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Loongson-2K1000 I2S controller
+
+maintainers:
+  - Binbin Zhou <zhoubinbin@loongson.cn>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    const: loongson,ls2k1000-i2s
+
+  reg:
+    items:
+      - description: Loongson I2S controller Registers.
+      - description: APB DMA config register for Loongson I2S controller.
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  dmas:
+    maxItems: 2
+
+  dma-names:
+    items:
+      - const: tx
+      - const: rx
+
+  '#sound-dai-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - dmas
+  - dma-names
+  - '#sound-dai-cells'
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/loongson,ls2k-clk.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2s@1fe2d000 {
+        compatible = "loongson,ls2k1000-i2s";
+        reg = <0x1fe2d000 0x14>,
+              <0x1fe00438 0x8>;
+        interrupt-parent = <&liointc0>;
+        interrupts = <5 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clk LOONGSON2_APB_CLK>;
+        dmas = <&apbdma2 0>, <&apbdma3 0>;
+        dma-names = "tx", "rx";
+        #sound-dai-cells = <0>;
+    };
+...
-- 
2.43.5


