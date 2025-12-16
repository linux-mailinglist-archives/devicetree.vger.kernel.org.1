Return-Path: <devicetree+bounces-247039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA33CC34D7
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:43:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 960D730AD695
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:38:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECAA339A124;
	Tue, 16 Dec 2025 13:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="pkWd0vBT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay93-hz2.antispameurope.com (mx-relay93-hz2.antispameurope.com [94.100.136.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD6D398B71
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.193
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765891912; cv=pass; b=a1RgLSE+PoJ2pFZKlCnMcu8IdZ3ZT6xK+hzkU5q8IQbYYwzh2JmAwgewPcg98O+aO2pMStqz5OvDoYGt3cJpLD0luqjBc1cQ4l9Vdn1Bx3QglLd6bKXZGqAGRvo8n7aEbVuDFeTFlcsjtp4jzipNmUHxxaNG7n18CuWVma0q5As=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765891912; c=relaxed/simple;
	bh=1vcbNES+su2OO2olrrDYQUbPCkKYn8vT4vs9BjA2X9k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rLicuyuTnPGxqCfhy7H5395ZKWnvuJX7D6x+Z0OCuOk6tDxFVDZfd2BhvCQI+qD4oRq0OuXj6anlMlOA/lL4gsapFX5tcO+00+OtN4nDzZPFLBm1jvqsKO44PSWUoWzUuShwfLrRo/R6TtMhA4L1X+7BRwi5u83ggiF7+bgu6fQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=pkWd0vBT; arc=pass smtp.client-ip=94.100.136.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate93-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=x9mGmXqHfOmeLgdEOLDPoxQ5MFnm0tlfSuhg2kM00pQ=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765891884;
 b=tlCv+jTLQCg7nuhFJBphFtZMyA2zTmK/OeNtn7w6QQUg2rJRVkNEZQFESWjk/beRfmWLhNQu
 BsMxrGL5vVApB0TSqSjDRykLCdDkYBHWf5tED7Fs9KPbSsGwCLw+oBt2RtvtpekVtz/Qr9Kyg+D
 oRkduVbErEK2WiDBiglm6SY0hjJJ1f2zkMbWtdfThw7GIVMqPCXq6RLHbP3PVfwVcWaXfaZWnpO
 2B6kwYWSuWTxZex4YAdCINjsoWouyOsUHmzPigu89xiFREJVeBuLK+R1UVze5qxtys89lJ5imfJ
 a5XlXqdKcL/q8sCriP9PjCvLyh7oeJicBb/s+pTzDXrww==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765891884;
 b=Z6DAbbPZiXvUen+HISPedhrLLUAbxVO94TKYSs0B0HmAhCdbpnokWpUNqSUe9Anw9tK1UBiy
 NDhuHyaprfZkfTeM5INk7g51x5rQ174Hl6PGXvYLSTTOvi6Z9x8I8AJNCxQEQPMj9eg6U1WA6Fu
 nWT84S6vBNcSSsstpmvUsC/mRkfnopEhmQJGt8LRZwmFI0BGZRR58W0hTTtxcUEk2fZJj03fL72
 8D/kUqYjGaoI1MGEfcKlD7rQaZdE4kbnNtaKn3MwlsIOLRF4t31qa91Tx2xb+sT0G/4MQO4suwk
 Bf3C6HMeZHUrqZZz5KOl2MkbtM87EXAJ8cp3I6z+3Efxg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay93-hz2.antispameurope.com;
 Tue, 16 Dec 2025 14:31:24 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 56EB55A0F66;
	Tue, 16 Dec 2025 14:31:16 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Markus Niebel <Markus.Niebel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH 4/4] arm64: dts: imx8mm-tqma8mqml: fix LDO5 power off
Date: Tue, 16 Dec 2025 14:31:07 +0100
Message-ID: <20251216133110.905950-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251216133110.905950-1-alexander.stein@ew.tq-group.com>
References: <20251216133110.905950-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-body-digest:f05457902f37798828b49e9ea5497943
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay93-hz2.antispameurope.com with 4dVyW90kQLz4QHDJ
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:8607d1a79e30606a7dcee9ac57a97bd3
X-cloud-security:scantime:2.034
DKIM-Signature: a=rsa-sha256;
 bh=x9mGmXqHfOmeLgdEOLDPoxQ5MFnm0tlfSuhg2kM00pQ=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765891883; v=1;
 b=pkWd0vBT9XdOvw0ZhOjCrX7MfX8goHbdbKIvXcuY2W3qiRuP2SgU6v28RMONTx6/amk1f9Am
 KMPbP6nA+olGPfY93hbi7kGlozHqyuWhEESSkAGCD/Y0k3ueT1lidlqBiPvE6Gur5j4NuLkQAsZ
 cHgqYDBXsz28YoQrlXHvMmcpIuBupXlWxj6Fykl6x+LwG2BzW8IARgE4dWr5blr3zZwK5OnWLop
 lpohUT/RfT5PQ7quqhChe2DtmgD5XlozmFmaP6rrLoemVV+/uG1P9Wdyxy2VWDCjghw9R3mA8s0
 LLxFkC+j2WGOTozZ48CAS5kz2WytcYjcPLF6wsQbV3dMQ==

From: Markus Niebel <Markus.Niebel@ew.tq-group.com>

Fix SD card removal caused by automatic LDO5 power off after boot.

To prevent this, add vqmmc regulator for USDHC, using a GPIO-controlled
regulator that is supplied by LDO5. Since this is implemented on SoM but
used on baseboards with SD-card interface, implement the functionality
on SoM part and optionally enable it on baseboards if needed.

Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../dts/freescale/imx8mm-tqma8mqml-mba8mx.dts | 13 ++++++-----
 .../boot/dts/freescale/imx8mm-tqma8mqml.dtsi  | 22 +++++++++++++++++++
 2 files changed, 29 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
index b941c8c4f7bb4..8dcc5cbcb8f66 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
@@ -101,6 +101,10 @@ &pcie0 {
 	status = "okay";
 };
 
+&reg_usdhc2_vqmmc {
+	status = "okay";
+};
+
 &sai3 {
 	assigned-clocks = <&clk IMX8MM_CLK_SAI3>;
 	assigned-clock-parents = <&clk IMX8MM_AUDIO_PLL1_OUT>;
@@ -276,8 +280,7 @@ pinctrl_usdhc2: usdhc2grp {
 			   <MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0		0x1d4>,
 			   <MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1		0x1d4>,
 			   <MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2		0x1d4>,
-			   <MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d4>,
-			   <MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x84>;
+			   <MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d4>;
 	};
 
 	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
@@ -286,8 +289,7 @@ pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
 			   <MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0		0x1d4>,
 			   <MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1		0x1d4>,
 			   <MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2		0x1d4>,
-			   <MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d4>,
-			   <MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x84>;
+			   <MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d4>;
 	};
 
 	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
@@ -296,7 +298,6 @@ pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
 			   <MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0		0x1d4>,
 			   <MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1		0x1d4>,
 			   <MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2		0x1d4>,
-			   <MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d4>,
-			   <MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x84>;
+			   <MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d4>;
 	};
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
index 2e3860a5f4fd2..29b298af0d739 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
@@ -16,6 +16,20 @@ memory@40000000 {
 		reg = <0x00000000 0x40000000 0 0x40000000>;
 	};
 
+	reg_usdhc2_vqmmc: regulator-usdhc2-vqmmc {
+		compatible = "regulator-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_usdhc2_vqmmc>;
+		regulator-name = "V_SD2";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
+		states = <1800000 0x1>,
+			 <3300000 0x0>;
+		vin-supply = <&ldo5_reg>;
+		status = "disabled";
+	};
+
 	reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -227,6 +241,10 @@ &pcie_phy {
 	fsl,clkreq-unsupported;
 };
 
+&usdhc2 {
+	vqmmc-supply = <&reg_usdhc2_vqmmc>;
+};
+
 &usdhc3 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc3>;
@@ -281,6 +299,10 @@ pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
 		fsl,pins = <MX8MM_IOMUXC_SD2_RESET_B_GPIO2_IO19		0x84>;
 	};
 
+	pinctrl_reg_usdhc2_vqmmc: regusdhc2vqmmcgrp {
+		fsl,pins = <MX8MM_IOMUXC_GPIO1_IO04_GPIO1_IO4		0xc0>;
+	};
+
 	pinctrl_usdhc3: usdhc3grp {
 		fsl,pins = <MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x1d4>,
 			   <MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d2>,
-- 
2.43.0


