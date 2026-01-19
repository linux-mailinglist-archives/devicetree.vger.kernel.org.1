Return-Path: <devicetree+bounces-256984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCCFD3B200
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 17:46:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1176230D8F03
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 16:43:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4854E3D1CCD;
	Mon, 19 Jan 2026 16:31:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cDES+EjT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 856563D1CB5
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 16:31:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768840270; cv=none; b=YuRBUvxr22jTrdmExDtmZd4ErUF8EOkP3n6NVwrIBkQWobr3luNH/LYrfqZ2XJ2iQECTxsHfaxKyWPBTrkWRCEE6TVUCaEr/9ZIJtn5Qy+wcvSNOpky1aebW27NluhQzfouu4tVvE1OSl5Z9WZnqIFXuNpAZ5sLZU9a+kdicGvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768840270; c=relaxed/simple;
	bh=X+s12PRGw5dEE4UNo2e5A0PjiGovDts5oKNtEN72P90=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KiA7vfF8uTXm4297nYG17oPjjgsizfz07CFw/oHed9ag6ERQZaquh7cVvUoBGuGhOR6RAWaDEKgpR38qoJw2JRfxqJArJicqOqYi5Ysb43FLpoG4S5GJE7OzXiqi4lN0jt0FnUYNyHK4sl/WuQ77lvNBf6UuIi/ejidsmWd8sAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cDES+EjT; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47ee937ecf2so32233395e9.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 08:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768840267; x=1769445067; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XNGQeFUv68F6qppT5//wf2zYpim+0plexrvmi4qsXjc=;
        b=cDES+EjTB7J4bOCnK5Y1/3cqdwTn7Shcgw2MBFxknvYF75njoVQo8LT6lM6H+K6nCa
         Nof3ycNdg8w5+54zNrJbUZCcsGv4XpdK/NQYobzaS3xfxofENaym2cSVQ0w5fZAUWRFp
         5NciNal/jJsrnSLgvptIKQ7YlcfyEAc6tMZ83JCewQ7NK78nvkGaZJqhwkcAh8rss90e
         5XLgUJ34Pt2Y8NT9Hs9mDQsXFFHiQEhzFBG3EiG+YSc0sZi6sHKFeUkmMV81d5q3Apck
         07nl2AjLId62SLKYXtmJsAqW5L8eLJgmRM/9vJHRdqBIMwYIqKA6RCCsAhyWROVxVkzs
         XFHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768840267; x=1769445067;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XNGQeFUv68F6qppT5//wf2zYpim+0plexrvmi4qsXjc=;
        b=pnJTM5UW4ljQkg3Gz1pA0EFmPVDu5EOg9Jck0ivWPH407tPXieVXXvASpVzYvCTI9P
         bCEF+o16xgxhYPfl09rgHt+luaz/fThwSJaNXrZPRd+AnxImzEx2vbvdGdEuzLeb+fsi
         bA3h1jIaDhcj8AjmPaWEhQVVbwZK2dHu5TpDePp+fBUrh4LunmOPKc5Uhdhp/4pTgcg7
         jRXQsEp3DkQB0U4TYs5IH9EzzNoPwUT6yxR0h/jYWGI0dtDzdnhP7V43piRSYDHC/hSu
         CaGZ5+7waCHVcoXuvQ/Sbkyq73d0krG1s4+uyLge8GBlOY6a4ZpxvnOK1SgAg7XdhYIr
         FkWg==
X-Forwarded-Encrypted: i=1; AJvYcCVo2wgIizX3+aey4wwxP81hf71dlk2Blh2UmTq1uoJA+X8p47UcHkSOWsNUkppqK4ACnwcRPPZWxBfv@vger.kernel.org
X-Gm-Message-State: AOJu0YyQWBGfKBfbxScymSePJk4CtvbIW5+ZtocTlg5jXxZ1Z8jJ3uPa
	wly276ZCOSRhPYPQijMtiBAsP59+Vo4dJnu16itQPJoZaT9rLMnI+Ky7
X-Gm-Gg: AY/fxX6gA0KacdKrfEZeRlxxP247Gh3IbmNoraYbYtvfDwr4vQLlzyiHNoKsAaMp1Rs
	VyNeRW/3AhZvmbLmZ1JDPCrwptwnu8tSwl0aUCQ5TW824pbuoxQet1/CfoX749I5CryMaLVVraW
	msU94jkUhyOPIUhKKj3IUoYrT4TA0SKTlaq/l36z86e/M00in01sREIC99C+flrJOuAPl2fKZTU
	0L+qizBp+hxFBXJYZNZgKryz2xt6c/kS9WiyAfXgVfzhlsQURYJdfpc98c6bC6mBQWghIf6utNJ
	rETa3GRFCdKS3kAQk5a6et0WLDzO6S8f25wMq3EMoYnGa1VBrF+d70Vm+wBb9ph13L/z2PICf/L
	F8Tjg2XgFK/LUVX9egKBe7Awj6ZG8uI9RsRwkb8wuCMx6iLEXYGz8T4jUENdnI/m2EJNZRnYc+s
	EMHEAKupfhaP5Gz5OS3rNiGI4e0wBGdayF1bBZYiqQkNLO
X-Received: by 2002:a05:600c:3484:b0:46e:59bd:f7e2 with SMTP id 5b1f17b1804b1-4801e670bf9mr159794485e9.11.1768840266726;
        Mon, 19 Jan 2026 08:31:06 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e879537sm201666795e9.5.2026.01.19.08.31.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 08:31:06 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Date: Mon, 19 Jan 2026 20:30:47 +0400
Subject: [PATCH v3 6/6] riscv: dts: sophgo: dts nodes for i2s tdm modules
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-cv1800b-i2s-driver-v3-6-04006f4111d7@gmail.com>
References: <20260119-cv1800b-i2s-driver-v3-0-04006f4111d7@gmail.com>
In-Reply-To: <20260119-cv1800b-i2s-driver-v3-0-04006f4111d7@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768840243; l=4275;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=X+s12PRGw5dEE4UNo2e5A0PjiGovDts5oKNtEN72P90=;
 b=r9Z1y74tcJ8gis3RDlg74cE+YXsoSshHRNU33vg0Nu0vl7bHYJmVj2LjZTiPZ8Sjv9vKTCkv5
 kS1aMfQsPoUCC57nRHqqNt4XubsJOaZPwNoX290TDNqfFrgV2YiTRLS
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=

Introduced I2S nodes and internal dac and adc nodes as well
The new header file provided in order to make DMA channel names
more readable.

Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
 arch/riscv/boot/dts/sophgo/cv180x-dmamux.h | 57 ++++++++++++++++++++++++++++++
 arch/riscv/boot/dts/sophgo/cv180x.dtsi     | 55 ++++++++++++++++++++++++++++
 2 files changed, 112 insertions(+)

diff --git a/arch/riscv/boot/dts/sophgo/cv180x-dmamux.h b/arch/riscv/boot/dts/sophgo/cv180x-dmamux.h
new file mode 100644
index 000000000000..6314bf6e9dc8
--- /dev/null
+++ b/arch/riscv/boot/dts/sophgo/cv180x-dmamux.h
@@ -0,0 +1,57 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
+/*
+ * Copyright (C) 2025 Inochi Amaoto <inochiama@gmail.com>
+ */
+
+#ifndef _SOPHGO_CV18XX_DMAMUX
+#define _SOPHGO_CV18XX_DMAMUX
+
+#define DMA_I2S0_RX		0
+#define DMA_I2S0_TX		1
+#define DMA_I2S1_RX		2
+#define DMA_I2S1_TX		3
+#define DMA_I2S2_RX		4
+#define DMA_I2S2_TX		5
+#define DMA_I2S3_RX		6
+#define DMA_I2S3_TX		7
+#define DMA_UART0_RX	8
+#define DMA_UART0_TX	9
+#define DMA_UART1_RX	10
+#define DMA_UART1_TX	11
+#define DMA_UART2_RX	12
+#define DMA_UART2_TX	13
+#define DMA_UART3_RX	14
+#define DMA_UART3_TX	15
+#define DMA_SPI0_RX		16
+#define DMA_SPI0_TX		17
+#define DMA_SPI1_RX		18
+#define DMA_SPI1_TX		19
+#define DMA_SPI2_RX		20
+#define DMA_SPI2_TX		21
+#define DMA_SPI3_RX		22
+#define DMA_SPI3_TX		23
+#define DMA_I2C0_RX		24
+#define DMA_I2C0_TX		25
+#define DMA_I2C1_RX		26
+#define DMA_I2C1_TX		27
+#define DMA_I2C2_RX		28
+#define DMA_I2C2_TX		29
+#define DMA_I2C3_RX		30
+#define DMA_I2C3_TX		31
+#define DMA_I2C4_RX		32
+#define DMA_I2C4_TX		33
+#define DMA_TDM0_RX		34
+#define DMA_TDM0_TX		35
+#define DMA_TDM1_RX		36
+#define DMA_AUDSRC		37
+#define DMA_SPI_NAND	38
+#define DMA_SPI_NOR		39
+#define DMA_UART4_RX	40
+#define DMA_UART4_TX	41
+#define DMA_SPI_NOR1	42
+
+#define DMA_CPU_A53		0
+#define DMA_CPU_C906_0	1
+#define DMA_CPU_C906_1	2
+
+#endif // _SOPHGO_CV18XX_DMAMUX
diff --git a/arch/riscv/boot/dts/sophgo/cv180x.dtsi b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
index 06b0ce5a2db7..ebe5e8113939 100644
--- a/arch/riscv/boot/dts/sophgo/cv180x.dtsi
+++ b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include "cv18xx-reset.h"
+#include "cv180x-dmamux.h"
 
 / {
 	#address-cells = <1>;
@@ -448,6 +449,60 @@ usb: usb@4340000 {
 			status = "disabled";
 		};
 
+		i2s0: i2s@4100000 {
+			compatible = "sophgo,cv1800b-i2s";
+			reg = <0x04100000 0x1000>;
+			clocks = <&clk CLK_APB_I2S0>, <&clk CLK_SDMA_AUD0>;
+			clock-names = "i2s", "mclk";
+			dmas = <&dmamux DMA_I2S0_RX 1>, <&dmamux DMA_I2S0_TX 1>;
+			dma-names = "rx", "tx";
+			status = "disabled";
+		};
+
+		i2s1: i2s@4110000 {
+			compatible = "sophgo,cv1800b-i2s";
+			reg = <0x04110000 0x1000>;
+			clocks = <&clk CLK_APB_I2S1>, <&clk CLK_SDMA_AUD1>;
+			clock-names = "i2s", "mclk";
+			dmas = <&dmamux DMA_I2S1_RX 1>, <&dmamux DMA_I2S1_TX 1>;
+			dma-names = "rx", "tx";
+			status = "disabled";
+		};
+
+		i2s2: i2s@4120000 {
+			compatible = "sophgo,cv1800b-i2s";
+			reg = <0x04120000 0x1000>;
+			clocks = <&clk CLK_APB_I2S2>, <&clk CLK_SDMA_AUD2>;
+			clock-names = "i2s", "mclk";
+			dmas = <&dmamux DMA_I2S2_RX 1>, <&dmamux DMA_I2S2_TX 1>;
+			dma-names = "rx", "tx";
+			status = "disabled";
+		};
+
+		i2s3: i2s@4130000 {
+			compatible = "sophgo,cv1800b-i2s";
+			reg = <0x04130000 0x1000>;
+			clocks = <&clk CLK_APB_I2S3>, <&clk CLK_SDMA_AUD3>;
+			clock-names = "i2s", "mclk";
+			dmas = <&dmamux DMA_I2S3_RX 1>, <&dmamux DMA_I2S3_TX 1>;
+			dma-names = "rx", "tx";
+			status = "disabled";
+		};
+
+		int_adc: codec@300a100 {
+			compatible = "sophgo,cv1800b-sound-adc";
+			#sound-dai-cells = <0>;
+			reg = <0x300a100 0x100>;
+			status = "disabled";
+		};
+
+		int_dac: codec@300a000 {
+			compatible = "sophgo,cv1800b-sound-dac";
+			#sound-dai-cells = <0>;
+			reg = <0x300a000 0x100>;
+			status = "disabled";
+		};
+
 		rtc@5025000 {
 			compatible = "sophgo,cv1800b-rtc", "syscon";
 			reg = <0x5025000 0x2000>;

-- 
2.43.0


