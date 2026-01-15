Return-Path: <devicetree+bounces-255760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFFAD2808C
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 20:23:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D49623085044
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 19:18:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24F672FD1CF;
	Thu, 15 Jan 2026 19:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZwCJdi7A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A942FD1A5
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 19:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768504709; cv=none; b=Ru56/gh1uDloga5dmMHwi+zQik4pgWkLV1jm1D1rmQqcQqg0eMXggdVWM0umcDntLWoFogvhhHj6ZMZO4EjTsbx0j8xyabO0mNhn00uPIRb2oNL9arzQNWwe8thCv9LPMx3yvZ58Ly/O1xdqkgtbZBtyFknT0G7Or5cYeXryCtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768504709; c=relaxed/simple;
	bh=ZvpnRa7g8hCkE7r1q64LPBBaiWff0x2lLnMd+0VKnb0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PBfsAIboayeKK75XteWECKtOLz9kt763H2Jz3YF6HdUKQRboR3d9CXeMyEB1/LBoPUC6NBfTIReMpmkFuNC6SCI3JWIrKs1Y974QEguwd6nPGYR5tq+/8EkAPVvYxramE85Rxk/AJtJXu69g5It9F2O0SYlY44GUqo88JBFuXgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZwCJdi7A; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42fb2314eb0so971721f8f.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 11:18:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768504703; x=1769109503; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9bZybh6ajNmTP3emcxjHSZEZGR4b5MsX3LqH44SKh2E=;
        b=ZwCJdi7ApXOmT/0pOHuGsR4hf9tODJBPxzqRxrs0tSBoCawEjWPllrBLoGwVOHGe3Y
         AUw+UQISBOKR2PxDneoe10CjI0XkduyJlAttFlNXdsB1Hv5t+EIhZ7+UhWibRJ7GG1gW
         Yn2xf6Dxri4DEgwNadFUxWKVuoj5nkeNIpIzXEVbQ9MSVOqxocFO6av4AdD9F9Qmi2RI
         DC/spXs/ZlKhC6ST1PQe+oxiA3TJ24CtxkZXXHKdnfp0iObuPgrLmlUt5yS37iYltqvA
         uWimG4KKZXmOE+C3WOKI1fIOD1ukow/whWbQMwibR1z3YknEoGJKCjYl9MkEOm8lL3aF
         t/KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768504703; x=1769109503;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9bZybh6ajNmTP3emcxjHSZEZGR4b5MsX3LqH44SKh2E=;
        b=v7FiS1KHQs+78HLPPoy9xexHZ01bQ/DveizHjJFbm31ihVb2gzu/1dkhFrUUOVDnAj
         N9LFHVqZ0EH9C3amHMOLO3Sbam/S3o++OT7IVQl/Aoe6QXS5EBEiQw0A3IEL7qVIFIcU
         nQ/+r104jnC8w7YVrKsUG0F1kJk0aRYcmsHC3ROJbFhTW6r7+yxGHaNwpmut2LULajmB
         dlBXKSGrpi2n1SowDMG/277OJDwUOaQhozrfzZXMvGkpLXU5uvywliKNEXLeFc3vnhsK
         qgtnYlqYzw6lnS/IXOw26entXiJzoSTDQgErrFDYr+RW5MecTWoDdjJ9Mc6KaAC3lY6C
         Q3Ag==
X-Forwarded-Encrypted: i=1; AJvYcCUSPMTgK+9z7jlHwfzdjVPlsGHrd9phkA+ldydJJIONZiDZ60x694epJp2y/PHHYUWbLdbzwQmLWw+7@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6C6tz7VjB2+scaMQKFUCqA0sh2pJ7BkEFa3pAFtlzjOZQw1XX
	EmzFRwB11TKF2Ssu3u2qEQBNeUS480Rn7HgUviAYTenZ0RK4ytUzg/5t
X-Gm-Gg: AY/fxX7lnRXzaBCBrGUVsOqTZbjPNsYmCtEmTM9iWf8IJ/DJ6qzLHEUySXUn6Ps5Oet
	9yW6Ygh9pT3zMM9J3IS9+nKpBZDivVqrOcuU5p52prSYWEvsKj3FUBiXKw8VnnFgZtw7yXQf/pS
	7cKf9Eg+0hAdkHtjyoEdWOWSP+J9gGggdxu3FawCYtbhZFagF2xOHt8UGo+78MaHxhCgz2TxqmW
	kSICkNBacP9aifBXxEkTrAO/8G0V1mlu+M518QPdsQyYt8BYk95WVjHX/eNBHTljOcNjF2PKRFA
	c7MHzwllocNCKn7GfGD13LdvJyuH6kCvpH2fGcYXnt5WfIy9DEfWqqIsWYW4pYhsJrdAqTNjqfJ
	Z6Pf3ltIJnYKMQsppMKGT2t4ZhetubrzjOEo6SmdV4jk4iOAa4Sn32d17x7tkw3PEM8P2HudWUc
	Sym355fCm0z+puKG0mYzdKyr8psNpEQ7tkFC3EbGmM9my+
X-Received: by 2002:a05:6000:2209:b0:430:f7dc:7e96 with SMTP id ffacd0b85a97d-43569bc59b6mr523652f8f.48.1768504703038;
        Thu, 15 Jan 2026 11:18:23 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43569921dedsm692734f8f.9.2026.01.15.11.18.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 11:18:22 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Date: Thu, 15 Jan 2026 23:17:44 +0400
Subject: [PATCH 7/8] riscv: dts: sophgo: dts nodes for i2s tdm modules
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-cv1800b-i2s-driver-v1-7-e8b22b8578ab@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768504677; l=4041;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=ZvpnRa7g8hCkE7r1q64LPBBaiWff0x2lLnMd+0VKnb0=;
 b=vwb7UYqSlXo3rPP9yGKTfWtMY3ZhNyyOZjfBpq/qKetxn106Ow7lZhWEbkNRzwEkQv1jaiQWa
 4bJ9F94rEA5BNdFZq1EVeJ1mjB3FJd8ZDKSoSUN8dkyyucDYqKQeG9n
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=

New dts nodes for TDMs and readable DMA names

Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
 arch/riscv/boot/dts/sophgo/cv180x-dmamux.h | 57 ++++++++++++++++++++++++++++++
 arch/riscv/boot/dts/sophgo/cv180x.dtsi     | 49 +++++++++++++++++++++++++
 2 files changed, 106 insertions(+)

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
index 06b0ce5a2db7..9dd93e028ba9 100644
--- a/arch/riscv/boot/dts/sophgo/cv180x.dtsi
+++ b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include "cv18xx-reset.h"
+#include "cv180x-dmamux.h"
 
 / {
 	#address-cells = <1>;
@@ -448,6 +449,54 @@ usb: usb@4340000 {
 			status = "disabled";
 		};
 
+		i2s0: i2s@4100000 {
+			compatible = "sophgo,cv1800b-i2s";
+			reg = <0x04100000 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
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
+			#address-cells = <1>;
+			#size-cells = <0>;
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
+			#address-cells = <1>;
+			#size-cells = <0>;
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
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clocks = <&clk CLK_APB_I2S3>, <&clk CLK_SDMA_AUD3>;
+			clock-names = "i2s", "mclk";
+			dmas = <&dmamux DMA_I2S3_RX 1>, <&dmamux DMA_I2S3_TX 1>;
+			dma-names = "rx", "tx";
+			status = "disabled";
+		};
+
 		rtc@5025000 {
 			compatible = "sophgo,cv1800b-rtc", "syscon";
 			reg = <0x5025000 0x2000>;

-- 
2.43.0


