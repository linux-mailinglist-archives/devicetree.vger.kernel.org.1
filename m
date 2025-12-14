Return-Path: <devicetree+bounces-246338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BDFCBC0A8
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 22:53:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0D2B3015AA2
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 21:53:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17ECD2DAFB0;
	Sun, 14 Dec 2025 21:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dnZ6hpjU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DD7B246774
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 21:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765749188; cv=none; b=cX7FD5oc8Dj307pEo1MGMQ2VK6qRRwdwFhlzD4bsIN6jWJZ73dC8LrsFFb3jCOXhyMDFv+5owuAAOxn5jh/2IoI9/n0hSUg2upYxKYJJY4svHWZRImmzJcFHyNihEEs141Pwc2WRw732BVnxP+LhnXxT07QO53q0juJDjLT+Uj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765749188; c=relaxed/simple;
	bh=wc1hNM9S6VyXu+UnFmmncpeycGgAm3CAAjOS0sTo/fI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Xyzw8R5MuPuCuLCMXB+ja9dq59QAmiyDsxgcWvF6A2HlJ2/rWFKM7d9/F4AoOH9nh0T4wTJym3Q7+jYIAlSP7xsRZq2GSvNs2Qz6skhJ7k6TUPnnZdwn6faoVkNBZiKgbNgzuV2N0dYWY8gQLoea0gxQlBF3CmB+Yc1HxujynA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dnZ6hpjU; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-430f57cd471so417365f8f.0
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 13:53:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765749185; x=1766353985; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bPsW6S2pqCNYFNBAk1ab6y0h0xeg8Q/fREDfEnNJpHk=;
        b=dnZ6hpjUINNKo619GlbjJCPsqLd5lgTdC1CqMZ2tl990HzknGJC32U+qz0IYwi/ZLk
         BEDkitwSq+iF7Z9scQ8ruZkweFz3RUytrrNz2M+TFRaKnETW+ArWgr8e2IYwe2y5pc5i
         CAshWBFXyEfxiM/J/zAUzmtKvGIND5op8HiHmndVBAxqcnRULNba2d1EcqcVksxWLk5R
         /Ra1x9XHQfIo7eU+KKd7YBIvUtBGO52lVB6Clr+jNq/31uQrDwT8wYieA2K/FbF2ONhu
         R51Q8UXA/9VXrtBR26UAnPogEs8Rhn6T9J5j+5QQ+Tw8yXgFQqHXA57EwV2V1+fDze2x
         7FdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765749185; x=1766353985;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bPsW6S2pqCNYFNBAk1ab6y0h0xeg8Q/fREDfEnNJpHk=;
        b=qMogKlgk9l6ZTOw7xvhXpluXkmR40fDuDb4ea40i7fwYrC8fyJ7NdTUaSNgrHn0W2B
         TEhAqXKgTOSd0U2uxZDV9CGWK2rWb/KDnDSZYYGYg4FTyc9GhoEctGPIhc8GITqhvbAR
         jCGT9jEpPT0cyTAg+nXnahiOOa9WmwP8UUJe8myIkZnvgdb0KsruXT8pYps/FAl0HDFO
         JyVNoVZu+j6vNa0pB8rq3Xs1lhfgIa49bt5/2dTXxUu8mBUZKECkDiKZ+KFXnYpGoxyX
         3QCpw0n4e9qmwjqC9UkeKYwMzTHH8LZ23H8DA/1IY48TF4DsoUhGi3DwNOO74H6bLn1S
         Z8tQ==
X-Gm-Message-State: AOJu0YwqCYSW8u9j54RUZA7mMLd+qogrIYRmVDfsPmwzolNsJOktuXwY
	/FhELZXn1dAjCX+wl6Dvb4n23BxiMzfn1uUgDSxtXOy6i1z0XKZ0yVC+InyYi1Nt
X-Gm-Gg: AY/fxX66TmqSQOr3jg70q2eSrV/yIylY7RUfJU+Za2RPAaXNj8IM/IseDmVxBSysgcP
	Am5xUNGZ34ZwE0sGqYNPlZfe6bHK2NsdjoyA0ZZlJ59GuHKBIRmrfb7EB7wl69AXR1x10Rpi5tQ
	hbiLZO2zqdgt1JdWXCgBeDo27uqeS5HoYWNlJbN4Db4dmqRVPfZR4sgvFCW7gnGTYhZE3BpmabC
	hY/Q3w7MbVpAZsmh4xXQ6rWjldsGCqepiFXzUIhmOoPvJy6rusciqutQ/YekmzylkGOwnVRnqo2
	4xzLpmAnhOonlcRJ3Q3+wnKdTL49K470aHjsQrES/4zvr2DIfKCc2bC35gTtJ54lt28QfvU6Rd0
	m9DuvC8oOYrJauIi0eamBgMV/vJxXkH8KurrLHVinImML4WxVkQzavqHurcxnWFORFbIx4NCEt9
	1MPlQIF4OYq71+Nw2ABu/ZFWC/XKuz++NhKvGh03xKmUD7cN1gMjWk7WEobSyFYA/ALBJOf2XOS
	It8G0Qldgxj8cA=
X-Google-Smtp-Source: AGHT+IFUiPfYqnPKnFAbb7dTQ9/Zlq66KzQosb/pDW7TXkp0BLQndAEW5/VGYv+cRcJO8L2g0Ou2XA==
X-Received: by 2002:a05:6000:2411:b0:42b:2fb5:73c9 with SMTP id ffacd0b85a97d-42fb48e870emr9116098f8f.58.1765749184691;
        Sun, 14 Dec 2025 13:53:04 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f6a42c8csm7625568f8f.16.2025.12.14.13.53.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 13:53:03 -0800 (PST)
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
Subject: [PATCH v4 3/6] arm64: dts: imx8mp-var-som: Move UART2 description to Symphony carrier
Date: Sun, 14 Dec 2025 22:52:50 +0100
Message-ID: <20251214215256.5812-4-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251214215256.5812-1-stefano.r@variscite.com>
References: <20251214215256.5812-1-stefano.r@variscite.com>
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


