Return-Path: <devicetree+bounces-255761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 62264D28088
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 20:23:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E1BD130D4709
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 19:18:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14C852FD67C;
	Thu, 15 Jan 2026 19:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D/vJjUJf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA3A2FDC22
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 19:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768504711; cv=none; b=SvvIPWVmPB6lS2GaJp+AsHxN8JoVbh79YiIZVT9r7sovkxMIL2c1VktzUvNPGoRlRBg4IqW6spfPBgES4OFyEFa9iE5fDwcEK+9aqmM15M6VJ7vWOvNkcJfseP6iTBJlg7th1TLOJrI1oAQMNaIPd+jNXkoO+Y39pwXtD/4DcZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768504711; c=relaxed/simple;
	bh=9hhnvku6/o7SnlNe4s7OxE/c/yY1MeLPXn9ZiuwHDts=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cVp0V21695/SWegRa3vCdCaCbfydqeFAbyZzrzfDsQeifk3FWRho2YZFwCTYUbMI1ONaru/3UQi9Dprvamk5opz6LWTm5B+z2XDREtq++E4qT4Thoec+WXSRIaGuAPTRMLpqRPpzM48Aet78K++phArFTSNgHcjY6eHQZL//PmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D/vJjUJf; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-430f2ee2f00so700139f8f.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 11:18:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768504706; x=1769109506; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u4OBbtgA8tqfAE3cwS/lYCrnVUiM8rMD+darqSO7wyo=;
        b=D/vJjUJfz8n1ndJ9FhhzeB/0Nf/qhk6TuIV6uvN+qiv31HQ8CiZp2g2jJFYbbSQo2N
         PBgk8q3lNIfaml8JLF5Tm+4O+jORkFahAxAC78O9kpNX0SJlwLbyz9f+UDeoFA1CCcpt
         FaNinXLnInENznRLixzqXOcjiK6KnrbV0CzuvHYyBxWKzVpzqs7b1OrfvZs1YoAerKmE
         tLKeuIi/MePBsDnesybxEWwmIUqYNO1SpWQD8L1Xy5WQsGgvoH8jdaZ4lXj2r9FXd+1F
         s+aXtnJSch4iBfbBQFyk3VXzBJ2KovC2gnNOKxAqN8sSzozlW+1+r5h0r0pA6zhmML4O
         YnLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768504706; x=1769109506;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=u4OBbtgA8tqfAE3cwS/lYCrnVUiM8rMD+darqSO7wyo=;
        b=vrNLB4Lx39qQk5wOnx810Iq2Ev3MwVoIQohsHXw/moHZgxJfRb7VOjScsUEjDb1VeO
         LG+O5LUwqOxH00tZdZR2D0QR2sVx7ueBw7nYkbWTctX5Jr97IJ69b9/JdyhFZ6xFn0oO
         2dzGAoH5tH8dXHEEbbqe6cQVoBVRBES5pMgYoHI0JT1wiUHaxJphsqF5mt//nRIvisRg
         Vag6sBDZ1w8JQRARfvXWBLDj6JRmTszhhrsHA12H1Jr+aGsBbolT1wNQMHTx3uj2vTEc
         xqm5e3opO9Yl5OwmuNqwf6iCLf3YU4CCGvJbW76D46bBbonNo3RxZXCyodPCPmo9e5S1
         XntA==
X-Forwarded-Encrypted: i=1; AJvYcCVwj7kj1IeW8VKJJi4d/NBYCggsC84G71cPCYMlhnMEvvw/0TkkO5XGYxHYUkl+RQTjR5uYIEi0JcY3@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8jf9dDbH1R0wckojcE6OK851ReCup5K/UJehTgH4aCSx2idu/
	R2k75lvtRcYhwi9MEukYCrY5zr7VmqBFtSwLYSka0uL+UpuP/l3YHpnS
X-Gm-Gg: AY/fxX4WGkixs6nNIgogVB5G2a7dz+mo9w7yK0mVbcohBTrUQOVjrX0Ad+VzhtYJPo6
	WcR6lUqJJdv7vCVztsH0LcTFS6qwS8KgLZMnHUKefvTsICJaZdOpyL9rL9Q1Zq0SzoU/3rxdx4E
	q43vLiyTdUIs0ggZ6e8DsuYsTW+3jkq2/K4bxtZNuntA0SmE/4BYu3d19s0DfNbk4ph1jCPWeMS
	3tUoESHIPIzkez0M01t3lVs2Z+/2ASMp51KeoKV6FOlVY4L1Z6NXf8PqmWJbeDu9Fc3Tdxu9MDj
	uvPzpB49+6wjN+AA7/H+15axOai/FFnh+C4PDPywVOXxWFwuQGpegBaARnvoxEqgLcEY6UWIL7D
	Jl2AMohxMtiY7vYy5jEAsdtSk0wmEMIdEmMVpXToB/l7tYJ62XQyHG77RPmejoQWeBwdEHBLSm5
	/rXBAV6YW3W2kyk11b3ppNX7W7EMdHJw/IZj9FeTz+EzEK
X-Received: by 2002:a5d:5848:0:b0:42c:b8fd:21b4 with SMTP id ffacd0b85a97d-43569bd3483mr527130f8f.57.1768504706222;
        Thu, 15 Jan 2026 11:18:26 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43569921dedsm692734f8f.9.2026.01.15.11.18.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 11:18:25 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Date: Thu, 15 Jan 2026 23:17:45 +0400
Subject: [PATCH 8/8] riscv: dts: sophgo: add Milk-V Duo 256M board dts
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-cv1800b-i2s-driver-v1-8-e8b22b8578ab@gmail.com>
References: <20260115-cv1800b-i2s-driver-v1-0-e8b22b8578ab@gmail.com>
In-Reply-To: <20260115-cv1800b-i2s-driver-v1-0-e8b22b8578ab@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
 Inochi Amaoto <inochiama@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, 
 "Anton D. Stavinskii" <stavinsky@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768504677; l=6398;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=9hhnvku6/o7SnlNe4s7OxE/c/yY1MeLPXn9ZiuwHDts=;
 b=j7D/duGQ4GkjR/PUiJLYxY2ySpoiZWhKC8trthmiOSLexzpyG9Kh+TZAgY8WBeTjjKbHh/F7s
 iKkJ7H/r284CqabbvOv7ff/QWJ2jz2zIhswlcsz/Ux6bUvDo5XxUoDn
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=

Example of usage internal dac/adc and external I2S mic
The example shows how to use the card and
will actually work other boards.
Fixed clocks needed to make simple card make
initial .set_sysclk with proper clock rates.
Same for DAC. I2S3 has to be started not only
for DAC but for the ADC also because it
provides mclk for both.

dai-link@2 will only work if registers
are set according to this issue
https://github.com/sophgo/sophgo-doc/issues/174#event-21395297524
in other case i2s2 will not output clocks and data.
Those changes are not connected to the driver itself,
but for another subsystem which is not yet ipmlemented.
The following config properly works for MilkV Duo/256Mm, Module.
Basically everything with sg2000/sg2002 but on some boards
i2s2 output pins are soldered to Ethernet module.
In Milk 256M they are free to use as external DAC/ADC.

Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
 arch/riscv/boot/dts/sophgo/Makefile                |   1 +
 .../boot/dts/sophgo/sg2002-milkv-duo-256m.dts      | 231 +++++++++++++++++++++
 2 files changed, 232 insertions(+)

diff --git a/arch/riscv/boot/dts/sophgo/Makefile b/arch/riscv/boot/dts/sophgo/Makefile
index 6f65526d4193..c8901ff680cb 100644
--- a/arch/riscv/boot/dts/sophgo/Makefile
+++ b/arch/riscv/boot/dts/sophgo/Makefile
@@ -6,3 +6,4 @@ dtb-$(CONFIG_ARCH_SOPHGO) += sg2042-milkv-pioneer.dtb
 dtb-$(CONFIG_ARCH_SOPHGO) += sg2042-evb-v1.dtb
 dtb-$(CONFIG_ARCH_SOPHGO) += sg2042-evb-v2.dtb
 dtb-$(CONFIG_ARCH_SOPHGO) += sg2044-sophgo-srd3-10.dtb
+dtb-$(CONFIG_ARCH_SOPHGO) += sg2002-milkv-duo-256m.dtb
diff --git a/arch/riscv/boot/dts/sophgo/sg2002-milkv-duo-256m.dts b/arch/riscv/boot/dts/sophgo/sg2002-milkv-duo-256m.dts
new file mode 100644
index 000000000000..cc33c4355969
--- /dev/null
+++ b/arch/riscv/boot/dts/sophgo/sg2002-milkv-duo-256m.dts
@@ -0,0 +1,231 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2024 Thomas Bonnefille <thomas.bonnefille@bootlin.com>
+ */
+
+/dts-v1/;
+
+#include "sg2002.dtsi"
+
+/ {
+	model = "Milk-V duo 256M";
+	compatible = "milkv,duo-256m",
+	"sipeed,licheerv-nano",
+	"sophgo,sg2002";
+
+	aliases {
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
+		gpio3 = &gpio3;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
+		serial4 = &uart4;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&osc {
+	clock-frequency = <25000000>;
+};
+
+&pinctrl {
+	uart0_cfg: uart0-cfg {
+		uart0-pins {
+			pinmux = <PINMUX(PIN_UART0_TX, 0)>,
+			<PINMUX(PIN_UART0_RX, 0)>;
+			bias-pull-up;
+			drive-strength-microamp = <10800>;
+			power-source = <3300>;
+		};
+	};
+
+	sdhci0_cfg: sdhci0-cfg {
+		sdhci0-clk-pins {
+			pinmux = <PINMUX(PIN_SD0_CLK, 0)>;
+			bias-pull-up;
+			drive-strength-microamp = <16100>;
+			power-source = <3300>;
+		};
+
+		sdhci0-cmd-pins {
+			pinmux = <PINMUX(PIN_SD0_CMD, 0)>;
+			bias-pull-up;
+			drive-strength-microamp = <10800>;
+			power-source = <3300>;
+		};
+
+		sdhci0-data-pins {
+			pinmux = <PINMUX(PIN_SD0_D0, 0)>,
+			<PINMUX(PIN_SD0_D1, 0)>,
+			<PINMUX(PIN_SD0_D2, 0)>,
+			<PINMUX(PIN_SD0_D3, 0)>;
+			bias-pull-up;
+			drive-strength-microamp = <10800>;
+			power-source = <3300>;
+		};
+
+		sdhci0-cd-pins {
+			pinmux = <PINMUX(PIN_SD0_CD, 0)>;
+			bias-pull-up;
+			drive-strength-microamp = <10800>;
+			power-source = <3300>;
+		};
+	};
+};
+
+&sdhci0 {
+	pinctrl-0 = <&sdhci0_cfg>;
+	pinctrl-names = "default";
+	status = "okay";
+	bus-width = <4>;
+	no-1-8-v;
+	no-mmc;
+	no-sdio;
+	disable-wp;
+};
+
+&usb {
+	dr_mode = "peripheral";
+	status = "okay";
+	g-rx-fifo-size = <1536>;
+	g-tx-fifo-size = <128 128 64 64 64 64 32 32>;
+};
+
+&uart0 {
+	pinctrl-0 = <&uart0_cfg>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&dmac {
+	status = "okay";
+};
+
+&dmamux {
+	status = "okay";
+};
+
+&pinctrl {
+	i2s2_cfg: i2s2-cfg {
+		i2s2-out-pins {
+			pinmux = <PINMUX(PIN_ETH_TXM, 7)>,
+			<PINMUX(PIN_ETH_RXP,  7)>,
+			<PINMUX(PIN_ETH_RXM,  7)>;
+
+			drive-strength-microamp = <15700>;
+			power-source = <1800>;
+		};
+
+		i2s2-in-pins {
+			pinmux = <PINMUX(PIN_ETH_TXP, 7)>;
+			power-source = <1800>;
+		};
+	};
+};
+
+&i2s0 {
+	#sound-dai-cells = <0>;
+	status = "okay";
+};
+
+&i2s2 {
+	pinctrl-0 = <&i2s2_cfg>;
+	pinctrl-names = "default";
+	#sound-dai-cells = <0>;
+	status = "okay";
+};
+
+&i2s3 {
+	#sound-dai-cells = <0>;
+	status = "okay";
+};
+
+/ {
+	int_adc: codec@300a100 {
+		compatible = "sophgo,cv1800b-sound-adc";
+		#sound-dai-cells = <0>;
+		reg = <0x300a100 0x100>;
+	};
+
+	int_dac: codec@300a000 {
+		compatible = "sophgo,cv1800b-sound-dac";
+		#sound-dai-cells = <0>;
+		reg = <0x300a000 0x100>;
+	};
+
+	ext_adc: my-ext-adc {
+		compatible = "invensense,ics43432";
+		#sound-dai-cells = <0>;
+	};
+
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "cv1800b card";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		simple-audio-card,dai-link@0 {
+			reg = <0>;
+			format = "i2s";
+			bitclock-master = <&clock_master0>;
+			frame-master = <&clock_master0>;
+
+			codec {
+				sound-dai = <&int_dac>;
+			};
+
+			clock_master0: cpu {
+				system-clock-frequency = <12288000>;
+				system-clock-fixed;
+				system-clock-direction-out;
+				mclk-fs = <256>;
+				sound-dai = <&i2s3>;
+			};
+		};
+
+		simple-audio-card,dai-link@1 {
+			reg = <1>;
+			format = "i2s";
+			bitclock-master = <&clock_master1>;
+			frame-master = <&clock_master1>;
+
+			clock_master1: codec {
+				mclk-fs = <256>;
+				system-clock-frequency = <12288000>;
+				system-clock-fixed;
+				sound-dai = <&int_adc>;
+			};
+
+			cpu {
+				mclk-fs = <256>;
+				system-clock-frequency = <12288000>;
+				system-clock-fixed;
+				sound-dai = <&i2s0>;
+			};
+		};
+
+		simple-audio-card,dai-link@2 {
+			reg = <2>;
+			format = "i2s";
+			bitclock-master = <&clock_master2>;
+			frame-master = <&clock_master2>;
+
+			codec {
+				sound-dai = <&ext_adc>;
+			};
+
+			clock_master2: cpu {
+				mclk-fs = <256>;
+				system-clock-frequency = <12288000>;
+				system-clock-fixed;
+				sound-dai = <&i2s2>;
+			};
+		};
+	};
+};

-- 
2.43.0


