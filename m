Return-Path: <devicetree+bounces-174911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC2EAAF43A
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 09:02:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 33A3C4C6526
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 07:03:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DE0121CC49;
	Thu,  8 May 2025 07:02:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1680B21577E
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 07:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746687774; cv=none; b=ODTwPhF5lJJh/6DjLT/VUW65vkDHMhRl7VzVdrAAoAgGDUkNh9YgZifEnrTJdt7aYMtHnnm6B6i9FJuA83LZvAIKr1cwijEjhrBBGLeHt1NtxasUCZM+/lcVVKMwzWRl0hGDSVb+yQQ7I30GW6BIxQtQtErIPvmPea9DlrdAvBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746687774; c=relaxed/simple;
	bh=RKxas14JlrLGmO2AriMM/F4axoSBYQ44QGwJC36uwug=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VnWHA63DXYXENyQwgc3T46i2xOTH2UwHqxfCEeCYIYqP/rEeQV6xf89VIhxvTx5c9hR8KzLbzpJYgXvCbNDB+FbePs8PUaH8Jv/tbbOmyrogZcMEQxrmlNoPbKRjg23qf7IAS+Sx3wwXMrYguxRh84pDDAN01EFGEiafjscVlf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.68.186])
	by gateway (Coremail) with SMTP id _____8CxqmoaVxxoZmXZAA--.31044S3;
	Thu, 08 May 2025 15:02:50 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.186])
	by front1 (Coremail) with SMTP id qMiowMBxLscWVxxo6nO8AA--.25269S5;
	Thu, 08 May 2025 15:02:49 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Huacai Chen <chenhuacai@kernel.org>,
	Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev,
	devicetree@vger.kernel.org,
	Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v1 3/3] LoongArch: dts: Add PWM support to Loongson-2K2000
Date: Thu,  8 May 2025 15:02:36 +0800
Message-ID: <9cd407aacc09f9581361e9ef07024c4306bd0146.1746684614.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1746684614.git.zhoubinbin@loongson.cn>
References: <cover.1746684614.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowMBxLscWVxxo6nO8AA--.25269S5
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoW7AFW8Gw4rXrWkKr1ruFWrXrc_yoW8Kw48pa
	srC3yUKrW0qF1Ikwn8XFy8KFZ3Zr9YkF9rWFnrAFyUJ34DKw4jv3WxGFyxXF1xWr4UX34a
	vFnak34jgFZrXwcCm3ZEXasCq-sJn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUk0b4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r126r13M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Cr0_Gr1UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v2
	6rxl6s0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l57IF6xkI12xvs2x26I8E6xACxx1l5I
	8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1q6rW5McIj6I8E87Iv67AK
	xVW8JVWxJwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41l42xK82IYc2Ij64
	vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8G
	jcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2I
	x0cI8IcVAFwI0_Gr0_Xr1lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK
	8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVW8JVWxJwCI42IY6I8E87Iv6xkF7I
	0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjxUco7KUUUUU

The module is supported, enable it.

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 arch/loongarch/boot/dts/loongson-2k2000.dtsi | 60 ++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/loongarch/boot/dts/loongson-2k2000.dtsi b/arch/loongarch/boot/dts/loongson-2k2000.dtsi
index b4ff55a33e90..9e0411f2754c 100644
--- a/arch/loongarch/boot/dts/loongson-2k2000.dtsi
+++ b/arch/loongarch/boot/dts/loongson-2k2000.dtsi
@@ -165,6 +165,66 @@ msi: msi-controller@1fe01140 {
 			interrupt-parent = <&eiointc>;
 		};
 
+		pwm@100a0000 {
+			compatible = "loongson,ls2k2000-pwm", "loongson,ls7a-pwm";
+			reg = <0x0 0x100a0000 0x0 0x10>;
+			interrupt-parent = <&pic>;
+			interrupts = <24 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk LOONGSON2_MISC_CLK>;
+			#pwm-cells = <3>;
+			status = "disabled";
+		};
+
+		pwm@100a0100 {
+			compatible = "loongson,ls2k2000-pwm", "loongson,ls7a-pwm";
+			reg = <0x0 0x100a0100 0x0 0x10>;
+			interrupt-parent = <&pic>;
+			interrupts = <25 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk LOONGSON2_MISC_CLK>;
+			#pwm-cells = <3>;
+			status = "disabled";
+		};
+
+		pwm@100a0200 {
+			compatible = "loongson,ls2k2000-pwm", "loongson,ls7a-pwm";
+			reg = <0x0 0x100a0200 0x0 0x10>;
+			interrupt-parent = <&pic>;
+			interrupts = <26 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk LOONGSON2_MISC_CLK>;
+			#pwm-cells = <3>;
+			status = "disabled";
+		};
+
+		pwm@100a0300 {
+			compatible = "loongson,ls2k2000-pwm", "loongson,ls7a-pwm";
+			reg = <0x0 0x100a0300 0x0 0x10>;
+			interrupt-parent = <&pic>;
+			interrupts = <27 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk LOONGSON2_MISC_CLK>;
+			#pwm-cells = <3>;
+			status = "disabled";
+		};
+
+		pwm@100a0400 {
+			compatible = "loongson,ls2k2000-pwm", "loongson,ls7a-pwm";
+			reg = <0x0 0x100a0400 0x0 0x10>;
+			interrupt-parent = <&pic>;
+			interrupts = <38 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk LOONGSON2_MISC_CLK>;
+			#pwm-cells = <3>;
+			status = "disabled";
+		};
+
+		pwm@100a0500 {
+			compatible = "loongson,ls2k2000-pwm", "loongson,ls7a-pwm";
+			reg = <0x0 0x100a0500 0x0 0x10>;
+			interrupt-parent = <&pic>;
+			interrupts = <39 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk LOONGSON2_MISC_CLK>;
+			#pwm-cells = <3>;
+			status = "disabled";
+		};
+
 		rtc0: rtc@100d0100 {
 			compatible = "loongson,ls2k2000-rtc", "loongson,ls7a-rtc";
 			reg = <0x0 0x100d0100 0x0 0x100>;
-- 
2.47.1


