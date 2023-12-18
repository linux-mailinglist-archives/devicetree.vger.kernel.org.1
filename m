Return-Path: <devicetree+bounces-26581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A973816F9C
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 14:07:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0B6F0B22107
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:07:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D8BF3D56E;
	Mon, 18 Dec 2023 12:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="HWAbwz6w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D9C3D561
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 12:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702904113; x=1734440113;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=YI6oB8xSfd4xN7ORbpQbcbcK/IMlsd9E7bHq6s4iajw=;
  b=HWAbwz6w2Kv1BrKegaO9GEvDPK2WUkANlUL5a1k5LCESblvm7363urie
   yhkKTMIr/CEWig4QsB1ma7u2RgoAzd+G+SkL1HRiWH4sEBRrA3n2lxHsd
   aNyQb4ILohGClgJEgpZ4WD1JdLXzxG4l2kGQkY/k4PLLaGKH4FXADwp0a
   ksdTQ3c8xQRW1aFmhTxpDsPuEcoJpkxjXKxLLshODsW7nrPHAj0YLM+Tg
   FuS8suCjcjVBNONf/Y0cR/P0+TJo2XehHB8qUrMIZ5GZ81XVtwWDiKtSq
   KlwMC5WgsRxrNke/sbK0Zj4+JGedyoQaUTQWgScM8I1uyFHEKfcx9yeyv
   w==;
X-IronPort-AV: E=Sophos;i="6.04,285,1695679200"; 
   d="scan'208";a="34562705"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Dec 2023 13:55:02 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 0A17A280088;
	Mon, 18 Dec 2023 13:55:02 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 13/23] ARM: dts: imx7-mba7: Fix iomuxc node names
Date: Mon, 18 Dec 2023 13:54:49 +0100
Message-Id: <20231218125459.2769733-14-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>
References: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The node name must end with 'grp'

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
index f72fd912e1a6..ac905615ee03 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
@@ -504,7 +504,7 @@ pinctrl_uart7: uart7grp {
 			<MX7D_PAD_EPDC_DATA14__UART7_DCE_RTS	0x7e>;
 	};
 
-	pinctrl_usdhc1_gpio: usdhc1grp_gpio {
+	pinctrl_usdhc1_gpio: usdhc1_gpiogrp {
 		fsl,pins =
 			/* WP */
 			<MX7D_PAD_SD1_WP__GPIO5_IO1		0x7c>,
@@ -524,7 +524,7 @@ pinctrl_usdhc1: usdhc1grp {
 			<MX7D_PAD_SD1_DATA3__SD1_DATA3		0x5e>;
 	};
 
-	pinctrl_usdhc1_100mhz: usdhc1grp_100mhz {
+	pinctrl_usdhc1_100mhz: usdhc1_100mhzgrp {
 		fsl,pins =
 			<MX7D_PAD_SD1_CMD__SD1_CMD		0x5a>,
 			<MX7D_PAD_SD1_CLK__SD1_CLK		0x57>,
@@ -534,7 +534,7 @@ pinctrl_usdhc1_100mhz: usdhc1grp_100mhz {
 			<MX7D_PAD_SD1_DATA3__SD1_DATA3		0x5a>;
 	};
 
-	pinctrl_usdhc1_200mhz: usdhc1grp_200mhz {
+	pinctrl_usdhc1_200mhz: usdhc1_200mhzgrp {
 		fsl,pins =
 			<MX7D_PAD_SD1_CMD__SD1_CMD		0x5b>,
 			<MX7D_PAD_SD1_CLK__SD1_CLK		0x57>,
-- 
2.34.1


