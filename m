Return-Path: <devicetree+bounces-104695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECB8983D7C
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 09:01:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CE27BB23322
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 07:01:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CFF1126C14;
	Tue, 24 Sep 2024 07:01:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DD9982D66;
	Tue, 24 Sep 2024 07:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727161275; cv=none; b=R10tMFb7R0eGm4f9ab08HNU4/MhzLSwghJoUq9mJ4OnjfoQ5rGi6+NasF0zCAn2XGdE8IyKfDpjVdDPGbHNGMKwWCFAwVAOQb4Tej+L5HaQ0yxkiiuzVeur8+yupepuCNCtpbmSWf+coX3GQOK1vvEPDidEnVoz33Bd3ROattSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727161275; c=relaxed/simple;
	bh=37auH5AZQRMmIctd6LDyBY5XNWvnXTh/fbk8ngbRvAA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=l1fAtic22iogh4tqDr0lDhwPHVYcPssIUhjEJtAGLFrluSxuPEoGrsX3SZeOtKFJHkei9qXHWWQpZyhFWkul2PtG5EN5P5uRxAs1Ds7PVj/C5vir1OUd8y7OuIf3EP++E9OUZiDpimNOVuNdhufbgnuhqvT4j5Ca4xMUfx/tLKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.68.38])
	by gateway (Coremail) with SMTP id _____8DxG+q3Y_Jme8UNAA--.32146S3;
	Tue, 24 Sep 2024 15:01:12 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.38])
	by front1 (Coremail) with SMTP id qMiowMAxSeayY_JmA6UNAA--.11218S2;
	Tue, 24 Sep 2024 15:01:08 +0800 (CST)
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
	Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v2 8/9] LoongArch: dts: Add I2S support to Loongson-2K1000
Date: Tue, 24 Sep 2024 15:01:04 +0800
Message-ID: <5d6d5e15f736abd8c9b60833cfc1f7de9d46a338.1727056789.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <cover.1727056789.git.zhoubinbin@loongson.cn>
References: <cover.1727056789.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowMAxSeayY_JmA6UNAA--.11218S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoW7Kw45XryxXr47AF47ZF1kWFX_yoW8tr13p3
	ZFvw4kGrWFqF429as8JFyUJF1rZas5AF97uanIkry7G39Iq3Wjqr48tF93ZF1jqr4fX3y2
	qFs5t347CF1qqwcCm3ZEXasCq-sJn29KB7ZKAUJUUUUd529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUmIb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_tr0E3s1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E
	14v26r4UJVWxJr1ln4kS14v26r1q6r43M2AIxVAIcxkEcVAq07x20xvEncxIr21l57IF6x
	kI12xvs2x26I8E6xACxx1l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v2
	6Fy26r45twAv7VC2z280aVAFwI0_Gr1j6F4UJwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2
	IYc2Ij64vIr41lF7xvrVCFI7AF6II2Y40_Zr0_Gr1UMxkF7I0En4kS14v26r4a6rW5MxAI
	w28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMxCIbckI1I0E14v26r1q6r43MI
	8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AK
	xVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26w1j6s0DMIIF0xvE2Ix0cI
	8IcVCY1x0267AKxVW8Jr0_Cr1UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E
	87Iv67AKxVW8Jr0_Cr1UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr1j6F4UJbIYCTnIWIevJa
	73UjIFyTuYvjxUBSksDUUUU

The module is supported, adding it.

Not all Loongson-2K1000 boards have an i2s interface, here is an example
of enabling it:

sound {
	compatible = "loongson,ls-audio-card";
	model = "Loongson-ASoC";
	mclk-fs = <512>;

	cpu {
		sound-dai = <&i2s>;
	};

	codec {
		sound-dai = <&uda1342>;
	};
};

&apbdma2 {
	status = "okay";
};

&apbdma3 {
	status = "okay";
};

&i2c3 {
	status = "okay";

	pinctrl-0 = <&i2c1_pins_default>;
	pinctrl-names = "default";

	#address-cells = <1>;
	#size-cells = <0>;

	uda1342: codec@1a {
		compatible = "nxp,uda1342";
		reg = <0x1a>;
		#sound-dai-cells = <0>;
	};
};

&i2s {
	status = "okay";

	pinctrl-0 = <&hda_pins_default>;
	pinctrl-names = "default";
};

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 arch/loongarch/boot/dts/loongson-2k1000.dtsi | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/loongarch/boot/dts/loongson-2k1000.dtsi b/arch/loongarch/boot/dts/loongson-2k1000.dtsi
index 92180140eb56..8dff2aa52417 100644
--- a/arch/loongarch/boot/dts/loongson-2k1000.dtsi
+++ b/arch/loongarch/boot/dts/loongson-2k1000.dtsi
@@ -266,7 +266,7 @@ dma-controller@1fe00c10 {
 			status = "disabled";
 		};
 
-		dma-controller@1fe00c20 {
+		apbdma2: dma-controller@1fe00c20 {
 			compatible = "loongson,ls2k1000-apbdma";
 			reg = <0x0 0x1fe00c20 0x0 0x8>;
 			interrupt-parent = <&liointc1>;
@@ -276,7 +276,7 @@ dma-controller@1fe00c20 {
 			status = "disabled";
 		};
 
-		dma-controller@1fe00c30 {
+		apbdma3: dma-controller@1fe00c30 {
 			compatible = "loongson,ls2k1000-apbdma";
 			reg = <0x0 0x1fe00c30 0x0 0x8>;
 			interrupt-parent = <&liointc1>;
@@ -352,6 +352,19 @@ rtc0: rtc@1fe27800 {
 			status = "disabled";
 		};
 
+		i2s: i2s@1fe2d000 {
+			compatible = "loongson,ls2k1000-i2s";
+			reg = <0 0x1fe2d000 0 0x14>,
+			      <0 0x1fe00438 0 0x8>;
+			interrupt-parent = <&liointc0>;
+			interrupts = <5 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk LOONGSON2_APB_CLK>;
+			dmas = <&apbdma2 0>, <&apbdma3 0>;
+			dma-names = "tx", "rx";
+			#sound-dai-cells = <0>;
+			status = "disabled";
+		};
+
 		spi0: spi@1fff0220 {
 			compatible = "loongson,ls2k1000-spi";
 			reg = <0x0 0x1fff0220 0x0 0x10>;
-- 
2.43.5


