Return-Path: <devicetree+bounces-249310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 491E1CDAAF3
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 22:36:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2357F30402C1
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 21:35:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E58230F94B;
	Tue, 23 Dec 2025 21:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="eVcP47gv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A9A931195C;
	Tue, 23 Dec 2025 21:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766525709; cv=none; b=VVWEtuKTx9AKprtS6r/wqaQagIuj98CYfSnLyP5oXbN0hiKsSKmOXwnJYWRvQAf5XZk8Y271kZIhPbA9O28dOzEnI46/AVRl/VfCQZ/AMFbMl7fS0xn5PmU6vMHbiMO99rHE0GsdGVaB/E44uND7/rCVdVnAzs2XE3TYcEP0eiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766525709; c=relaxed/simple;
	bh=BHNbAqff+cdDItirvWIczJy92NVcYnnRIx7j+hS8iJo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JPMP3u35DDAONkFzojNFEtgUNs4ixb3KEYHqoOKpBg9PPUX1NB7EfLnbV4T0W2Ku4gRiDPI1o6FgsI+19cR1XNMZ9sH4UtMhkj8n3DI0/RH2lOeAiwoPrRdawWYFrwyv3fGFcfMBDGIwHvmPdkFgA/8T3B81AUWyJ6K8sSXXbFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=eVcP47gv; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=Cc:In-Reply-To:References:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=q/b5Wv8KkPTKa0fsi8+phTwp7+2Ee7sd60DvAoOHJfk=; b=eVcP47gv26jr1RYTDBI4FcsqPn
	TCy76Kv9yY+J4Saqtoia3gYx1cAlN1stlsDxudwENaTcO2gbQOup4Nm2w+36EcaUx2m+pOWfKgdsy
	IVqqEEKdxpCLnduJOUagjqLCah3erFK7Fh9Y2OMfwLKJ92Oa4Foc+ZYesMxsRuA+0dLaKoTLGANlG
	OTlcixX4/E4mI03nZdjdYYYieYgcdRmQjacQeH7NLPlZ/GqbdC/bo/4rYZasbS3uyQ+teRwq2dzUu
	jenic5SC7AoDV8uGnILl3aXWNhF4cgpStbQelGDSs68HG8/uIXQC6d6nAiqsaEsAVMUmJIgtloXL2
	2brLA2SQ==;
From: Andreas Kemnade <andreas@kemnade.info>
Date: Tue, 23 Dec 2025 22:34:02 +0100
Subject: [PATCH 1/2] ARM: dts: imx: imx6sll-kobo-clara2e: add regulator for
 EPD.
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251223-fp9931-clara2e-v1-1-e5b1cb79330a@kemnade.info>
References: <20251223-fp9931-clara2e-v1-0-e5b1cb79330a@kemnade.info>
In-Reply-To: <20251223-fp9931-clara2e-v1-0-e5b1cb79330a@kemnade.info>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Andreas Kemnade <andreas@kemnade.info>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2410; i=andreas@kemnade.info;
 h=from:subject:message-id; bh=BHNbAqff+cdDItirvWIczJy92NVcYnnRIx7j+hS8iJo=;
 b=owGbwMvMwCUm/rzkS6lq2x3G02pJDJneXH+endoya47Y4ksZtbn13yNa+Z66LTY49ljv8NQs7
 qTJJ3NndJSyMIhxMciKKbL8slZw+6TyLDd4aoQ9zBxWJpAhDFycAjARvjqGf2Y3u1aX9x+VfcDb
 7fbxyr9DJb+DS3cLXmAvlXuw687xFilGhgWbpL8dmDTdwGdDdNurJdPlr7xmS/bJqOpyyDzH1O+
 iwwEA
X-Developer-Key: i=andreas@kemnade.info; a=openpgp;
 fpr=EEC0DB858E66C0DA70620AC07DBD6AC74DE29324

Now there is a driver and binding for the JD9930, so add the information
to the devicetree for revision b.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 .../boot/dts/nxp/imx/imx6sll-kobo-clara2e-b.dts    | 61 +++++++++++++++++++++-
 1 file changed, 60 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sll-kobo-clara2e-b.dts b/arch/arm/boot/dts/nxp/imx/imx6sll-kobo-clara2e-b.dts
index f81aeacf5142..f5e88764a08c 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sll-kobo-clara2e-b.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6sll-kobo-clara2e-b.dts
@@ -16,8 +16,67 @@
 / {
 	model = "Kobo Clara 2E";
 	compatible = "kobo,clara2e-b", "kobo,clara2e", "fsl,imx6sll";
+
+	epd_pmic_supply: regulator-epd-pmic-in {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_epd_pmic_supply>;
+		regulator-name = "epd_pmic_supply";
+		gpio = <&gpio2 14 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		startup-delay-us = <20000>;
+	};
 };
 
 &i2c2 {
-	/* EPD PMIC JD9930 at 0x18 */
+	jd9930: pmic@18 {
+		compatible = "fitipower,jd9930", "fitipower,fp9931";
+		reg = <0x18>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_jd9930_gpio>;
+		vin-supply = <&epd_pmic_supply>;
+		pg-gpios = <&gpio2 7 GPIO_ACTIVE_HIGH>;
+		en-ts-gpios = <&gpio2 9 GPIO_ACTIVE_HIGH>;
+		enable-gpios = <&gpio2 8 GPIO_ACTIVE_HIGH>;
+		fitipower,tdly-ms = <2 2 2 2>;
+
+		regulators {
+			vcom_reg: vcom {
+				regulator-name = "vcom";
+				/*
+				 * For optimal performance these should be
+				 * tuned on a per batch basis e.g. using
+				 * overlays.
+				 */
+				regulator-min-microvolt = <2352840>;
+				regulator-max-microvolt = <2352840>;
+			};
+
+			vposneg_reg: vposneg {
+				regulator-name = "vposneg";
+				regulator-min-microvolt = <15060000>;
+				regulator-max-microvolt = <15060000>;
+			};
+
+			v3p3_reg: v3p3 {
+				regulator-name = "v3p3";
+			};
+		};
+	};
+};
+
+&iomuxc {
+	pinctrl_jd9930_gpio: jd9930-gpiogrp {
+		fsl,pins = <
+			MX6SLL_PAD_EPDC_PWR_CTRL0__GPIO2_IO07	0x17059 /* PG */
+			MX6SLL_PAD_EPDC_PWR_CTRL1__GPIO2_IO08	0x40010059 /* EN */
+			MX6SLL_PAD_EPDC_PWR_CTRL2__GPIO2_IO09	0x40010059 /* EN_TS */
+		>;
+	};
+
+	pinctrl_epd_pmic_supply: epd-pmic-supplygrp {
+		fsl,pins = <
+			MX6SLL_PAD_EPDC_PWR_WAKE__GPIO2_IO14	0x40010059
+		>;
+	};
 };

-- 
2.47.3


