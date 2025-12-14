Return-Path: <devicetree+bounces-246297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FFDCBB9B1
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 12:06:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C61743014AC5
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 11:05:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C8912C08CB;
	Sun, 14 Dec 2025 11:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jD8LUnln"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9564F2C0290
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765710356; cv=none; b=ObEdlvaYYmtyd1bGtxpozeq1404/kscG2NafF7sZKqjB3U+M3OVVT+ONxfe6iR8PIM6YOIcPkmKXX9qFoChujj+MxFRDb5iCVVF3X0tt6cNnvFVcBx9AMCr/IbhP12lu4RHfPM5HYXNCeX/k2QBdFSd+UOjeRPcdaWBho4J++8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765710356; c=relaxed/simple;
	bh=wc1hNM9S6VyXu+UnFmmncpeycGgAm3CAAjOS0sTo/fI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iVV4o9V1d9Rm8FJujkcE58ZTZ3aQyoPZmyaOosiIuxp+LGRtutZ53ZZGh2XPFNSZjBTsVczt/u9xtZ3Td8PegUf3g+VDnSfLtXVLjIvzaOcnPU/LhQ5P7TfM89X6iM/kGxHF4Gku6oSrpU7Z9sY88AprncIAaRQn7EfUSABd+Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jD8LUnln; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-42fb0fc5aa9so862787f8f.1
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 03:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765710352; x=1766315152; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bPsW6S2pqCNYFNBAk1ab6y0h0xeg8Q/fREDfEnNJpHk=;
        b=jD8LUnlniNlSwMudsTCbxXcI5NIuTVG4HRsfOhaGgSWulw80Wn7EDfH2y2+nNOHVbk
         5t9BvcEaGv/Jo8TL/6zZ3dDeYtOkg+IAvqTKaqRGdB48Y9cg4gYXCo7L8yvg5szgt3hl
         bagsgxaq6sZuF7o/Iconmad6MNyEgjYEXdFM/UAwp4bk7IkoVNp++et7iX8EbGl9NDAR
         /1OSOx3eEdH1mZ4okU667b+HSZyTnoQ54zmFDVoytENsiy49sGSWV/hKUKya3aYqONVy
         dM5QDyjprLO7/O9hZrUdyJl/prancgZdVbkVQLceQnjHmGOwVQIcZg1+ADKhZmrNi/JY
         KvvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765710352; x=1766315152;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bPsW6S2pqCNYFNBAk1ab6y0h0xeg8Q/fREDfEnNJpHk=;
        b=fnYCLzA/8bKC3RdnGD+CgOEiFeNNje0NBp1jig8hR7bexyrFemSkWtwW01NGdVzLWr
         UPEGLB2rWJD0uaekHI60/kBaV5SnmUACF0nHc9TxB4i2jhEztuwJvgKzUQGIWySBwMpa
         z8vENY0j9gw//yhtF4QsN4cPTvcwNaxWFJhOnu6U/op84FPpPWQYuKga8RKS72GQaMnY
         B+BKsJMwW8DwitWxf8+hopAJCwqQK7+zJY73C/ePAilYJSxvPPQIW6CngY6xRR6cqi7t
         28lipThKcWTJkEDN/T1wyzDcfZMp/cXjy+APlvXFOzToRBia9BysKRLwURQf5xyWvWWZ
         fkDw==
X-Gm-Message-State: AOJu0Ywh98MmnWDC3k5giqCSmlnLiSbqh5ytnib2qAQH8jO1OBFupi5K
	4owd7LNU2Y1RyiJBLYPLN/ncrF924G7I2DBNowDGwz48MNpLQaSThywu944DZFvs
X-Gm-Gg: AY/fxX5cRvXQgACi+OgCh/XN8SYcj01FoD8kc7J19Y4gvcIFmuEYk5nI+s89lYzwcSI
	mwyjCa0cJ7SVM3F53HGRa4QmDqK77ccIWZbclbWno3rS5LTKA70m0s5kWfleFSdT6PB3QpYMIzi
	wkT57gIwWU+v5UfkOr0L3vJEZRMlnlsEet9JRs6mTx8earF35/Z60ZwFqwvlouAqUz5FPzv1h1h
	ox1eNlKNYYPUrlUWmEfJznEW9dxFKprnQxIm+bNlMlYHyK6cRx4F9tfr7fNLZGAXmmYFcRJ4Sig
	8eTySRvSyJ5QP2sLWWyfQJhlaKT8XxiDT5WjDluXIepkON9yfNMptjY/7ZtlzrTBgwcvbwZiSOO
	Bumu5/YTIkhvORiwEwHYx4wgdp4HV2oBwU0L6pjVHdry81YedX72giW9Mj1DPLREasJIHyCI/tz
	JA8a1b3pjImfkrbTm50dQeqSH0r0dPRuTv4qVZobDOSTn+l9NStlp8DuiKr59BcWuVTcZSrurk7
	gsa5ec67ZJ6fKOBJmWvEOtp+w==
X-Google-Smtp-Source: AGHT+IHRRCprU7FqKVXYLAB/iaW5bMB8tmN1SK0UGxnB0PPzYkob5dN5fLhAuRr/gkHK27KMmlRlQw==
X-Received: by 2002:a05:6000:26cf:b0:42b:3dfb:645c with SMTP id ffacd0b85a97d-42fb44a0fdamr8844593f8f.12.1765710351632;
        Sun, 14 Dec 2025 03:05:51 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f36b6a19sm7823660f8f.38.2025.12.14.03.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 03:05:51 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 3/6] arm64: dts: imx8mp-var-som: Move UART2 description to Symphony carrier
Date: Sun, 14 Dec 2025 12:05:26 +0100
Message-ID: <20251214110531.9475-4-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251214110531.9475-1-stefano.r@variscite.com>
References: <20251214110531.9475-1-stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The VAR-SOM-MX8MP module does not provide an onboard debug console.
UART2 is routed and exposed only on the Symphony carrier board, while
custom carrier designs may choose to expose a different UART.

Move the UART2 node from the SOM device tree to the
imx8mp-var-som-symphony.dts, keeping the SOM dtsi limited to hardware
present on the module itself.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 .../dts/freescale/imx8mp-var-som-symphony.dts  | 18 ++++++++++++++++++
 .../boot/dts/freescale/imx8mp-var-som.dtsi     | 18 ------------------
 2 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
index 361e6122bdc3..291f65e36865 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
@@ -9,6 +9,10 @@ / {
 	model = "Variscite VAR-SOM-MX8M-PLUS on Symphony-Board";
 	compatible = "variscite,var-som-mx8mp-symphony", "variscite,var-som-mx8mp", "fsl,imx8mp";
 
+	chosen {
+		stdout-path = &uart2;
+	};
+
 	gpio-leds {
 		compatible = "gpio-leds";
 
@@ -68,6 +72,13 @@ usb3-sata-sel-hog {
 	};
 };
 
+/* Console */
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
 /* SD-card */
 &usdhc2 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
@@ -95,6 +106,13 @@ MX8MP_IOMUXC_GPIO1_IO15__GPIO1_IO15                             0xc0
 		>;
 	};
 
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX                            0x40
+			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX                            0x40
+		>;
+	};
+
 	pinctrl_usdhc2_gpio: usdhc2-gpiogrp {
 		fsl,pins = <
 			MX8MP_IOMUXC_GPIO1_IO14__GPIO1_IO14                             0x1c4
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
index 158a78ec9656..5bba91dcef17 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
@@ -15,10 +15,6 @@
 / {
 	model = "Variscite VAR-SOM-MX8M Plus module";
 
-	chosen {
-		stdout-path = &uart2;
-	};
-
 	memory@40000000 {
 		device_type = "memory";
 		reg = <0x0 0x40000000 0 0xc0000000>,
@@ -206,13 +202,6 @@ ldo5: LDO5 {
 	};
 };
 
-/* Console */
-&uart2 {
-        pinctrl-names = "default";
-        pinctrl-0 = <&pinctrl_uart2>;
-        status = "okay";
-};
-
 /* eMMC */
 &usdhc3 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
@@ -267,13 +256,6 @@ MX8MP_IOMUXC_SPDIF_RX__GPIO5_IO04				0x1c0
 		>;
 	};
 
-	pinctrl_uart2: uart2grp {
-	        fsl,pins = <
-		        MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX                            0x40
-			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX                            0x40
-		>;
-	};
-
 	pinctrl_usdhc3: usdhc3grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK				0x190
-- 
2.47.3


