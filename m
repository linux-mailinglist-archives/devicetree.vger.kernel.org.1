Return-Path: <devicetree+bounces-104696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E04983D7D
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 09:01:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 41F061F23FD1
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 07:01:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBE5782D66;
	Tue, 24 Sep 2024 07:01:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BB19126C1D;
	Tue, 24 Sep 2024 07:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727161279; cv=none; b=DkflI1NiB39u0gFOphxXpstGq8KqgofMlItcvpgj4A+p8OBo9teYl4LnfEEaYSqB71Ljg2d113WNMBC5ZMMkCGvKqZ5j6yXHGncAruu3wfaDwvmy1FAXAITox7McmP81OWuWUTAZkydL+3tWtTSU5yAqQsWBM1oOjrmAYV2nlb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727161279; c=relaxed/simple;
	bh=uvEbzJ/pOvdhu2JpfUea1G2jjPAPO7O8//5rWein2no=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UkTsc1kULiO/6wthDdeKSYVO6pCnifGg0MqzaKHB8xi0B3ttwdCUrNkosLkS5ZQpVGdMxyEeHLvCfPwhW2KP6ofpuPYfqo8+h8b9A6hANuqgxG72N4c4AzLSO3nfK5UOcyEo6oWHPbuvLxZceJbcs7AUgA9pH+bJSlqmAF8OHJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.68.38])
	by gateway (Coremail) with SMTP id _____8CxB+m8Y_JmlMUNAA--.30604S3;
	Tue, 24 Sep 2024 15:01:16 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.38])
	by front1 (Coremail) with SMTP id qMiowMAxSeayY_JmA6UNAA--.11218S3;
	Tue, 24 Sep 2024 15:01:10 +0800 (CST)
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
Subject: [PATCH v2 9/9] LoongArch: dts: Add I2S support to Loongson-2K2000
Date: Tue, 24 Sep 2024 15:01:05 +0800
Message-ID: <750a6cd487e34c62974ecb26dd48a6ecf54dd1d0.1727056789.git.zhoubinbin@loongson.cn>
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
X-CM-TRANSID:qMiowMAxSeayY_JmA6UNAA--.11218S3
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoW7Kw45XryxCr4xGFyDur45urX_yoW8CFyUpF
	Zru3yDGr4rXF129a15JFWUJr1rJF9YkF93W3ZIy3y8Gw4qgw1jvr48tF92vF1xW3yrX3y2
	qrnYkryjk3WUJwcCm3ZEXasCq-sJn29KB7ZKAUJUUUUd529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUmIb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_tr0E3s1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E
	14v26r4UJVWxJr1ln4kS14v26r1q6r43M2AIxVAIcxkEcVAq07x20xvEncxIr21l57IF6x
	kI12xvs2x26I8E6xACxx1l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v2
	6r45tVCq3wAv7VC2z280aVAFwI0_Gr1j6F4UJwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2
	IYc2Ij64vIr41lF7xvrVCFI7AF6II2Y40_Zr0_Gr1UMxkF7I0En4kS14v26r4a6rW5MxAI
	w28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMxCIbckI1I0E14v26r1q6r43MI
	8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AK
	xVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26w1j6s0DMIIF0xvE2Ix0cI
	8IcVCY1x0267AKxVW8Jr0_Cr1UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E
	87Iv67AKxVW8Jr0_Cr1UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr1j6F4UJbIYCTnIWIevJa
	73UjIFyTuYvjxUHnYwUUUUU

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
		sound-dai = <&es8323>;
	};
};

&i2c1 {
	status = "okay";
	#address-cells = <1>;
	#size-cells = <0>;

	es8323:es8323@10 {
		compatible = "everest,es8323";
		reg = <0x10>;
		#sound-dai-cells = <0>;
	};
};

&i2s {
	status = "okay";

	clock-frequency = <175000000>;
	#sound-dai-cells = <0>;
};

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 arch/loongarch/boot/dts/loongson-2k2000.dtsi | 22 ++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/arch/loongarch/boot/dts/loongson-2k2000.dtsi b/arch/loongarch/boot/dts/loongson-2k2000.dtsi
index 0953c5707825..b4ff55a33e90 100644
--- a/arch/loongarch/boot/dts/loongson-2k2000.dtsi
+++ b/arch/loongarch/boot/dts/loongson-2k2000.dtsi
@@ -173,6 +173,22 @@ rtc0: rtc@100d0100 {
 			status = "disabled";
 		};
 
+		i2c@1fe00120 {
+			compatible = "loongson,ls2k-i2c";
+			reg = <0x0 0x1fe00120 0x0 0x8>;
+			interrupt-parent = <&liointc>;
+			interrupts = <8 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		i2c@1fe00130 {
+			compatible = "loongson,ls2k-i2c";
+			reg = <0x0 0x1fe00130 0x0 0x8>;
+			interrupt-parent = <&liointc>;
+			interrupts = <9 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
 		uart0: serial@1fe001e0 {
 			compatible = "ns16550a";
 			reg = <0x0 0x1fe001e0 0x0 0x10>;
@@ -243,9 +259,11 @@ display@6,1 {
 				status = "disabled";
 			};
 
-			hda@7,0 {
+			i2s@7,0 {
 				reg = <0x3800 0x0 0x0 0x0 0x0>;
-				interrupts = <58 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <78 IRQ_TYPE_LEVEL_HIGH>,
+					     <79 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "tx", "rx";
 				interrupt-parent = <&pic>;
 				status = "disabled";
 			};
-- 
2.43.5


