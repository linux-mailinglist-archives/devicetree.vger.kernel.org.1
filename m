Return-Path: <devicetree+bounces-26573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BE19D816F8F
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 14:06:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E367288FA4
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:06:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C4EF3D54A;
	Mon, 18 Dec 2023 12:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="i9U+4+Hp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3527A37894
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 12:55:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702904107; x=1734440107;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=w4vffnCBrf/RiXQUyuxsVyjURmX/KikU3tXyDH4w3Ec=;
  b=i9U+4+Hp/8XyigkUPeUJyPPC9qQWLXBeeN/hZ4VQzBf0lyRIt9far4jw
   ZEjFs6yByc0RRq1OOKsNi0G+6g2aJMOVNR/tp2nIcaMzsqQEboJWlESbo
   SnLH14EcryuMm7mDG0jkzK14Jb1pik5GXpVDstPT1VD7ydbxxK/jpR+Hj
   0ua54dI0Lt7M1vwZd7BzjNIQiBfSzI6W9s2DRYb3Dx6+mDWwqPlX/Tc7R
   jEOjMWF26eRGwQc2RtdQ4P5t8HFbKZNQmWg5u8dA4klaywcDOorNkLAF6
   9PouKbGIDgj7ykoCn5uj5NxnSOBpKIcLTnOOYqrPzMe1rI4xGSHdVri2F
   g==;
X-IronPort-AV: E=Sophos;i="6.04,285,1695679200"; 
   d="scan'208";a="34562695"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Dec 2023 13:55:00 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 0721928008D;
	Mon, 18 Dec 2023 13:55:00 +0100 (CET)
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
Subject: [PATCH 05/23] ARM: dts: imx7[d]-mba7: hog Mini PCIe signals
Date: Mon, 18 Dec 2023 13:54:41 +0100
Message-Id: <20231218125459.2769733-6-alexander.stein@ew.tq-group.com>
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

PCIE_DIS & PCIE_RST (correctly named W_DISABLE# & PERST#) affect USB
devices as well. So hog them to make USB devices attached to Mini PCIe
connector available, despite PCIe being disabled.
Supply voltages are enabled unconditionally.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts | 28 ++++++++++++++++++++----
 1 file changed, 24 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts b/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
index 34adf76b713e..8f2f3898d9d1 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
@@ -46,9 +46,25 @@ ethphy2_0: ethernet-phy@0 {
 	};
 };
 
+&gpio2 {
+	pcie-dis-hog {
+		gpio-hog;
+		gpios = <29 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "pcie-dis";
+	};
+
+	pcie-rst-hog {
+		gpio-hog;
+		gpios = <12 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "pcie-rst";
+	};
+};
+
 &iomuxc {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_hog_mba7_1>;
+	pinctrl-0 = <&pinctrl_hog_mba7_1>, <&pinctrl_hog_pcie>;
 
 	pinctrl_enet2: enet2grp {
 		fsl,pins =
@@ -76,15 +92,19 @@ pinctrl_enet2_phy: enet2phygrp {
 			<MX7D_PAD_EPDC_PWR_STAT__GPIO2_IO31	0x40000078>;
 	};
 
-	pinctrl_pcie: pciegrp {
+	pinctrl_hog_pcie: hogpciegrp {
 		fsl,pins =
-			/* #pcie_wake */
-			<MX7D_PAD_EPDC_PWR_COM__GPIO2_IO30		0x70>,
 			/* #pcie_rst */
 			<MX7D_PAD_SD2_CLK__GPIO5_IO12			0x70>,
 			/* #pcie_dis */
 			<MX7D_PAD_EPDC_BDR1__GPIO2_IO29			0x70>;
 	};
+
+	pinctrl_pcie: pciegrp {
+		fsl,pins =
+			/* #pcie_wake */
+			<MX7D_PAD_EPDC_PWR_COM__GPIO2_IO30		0x70>;
+	};
 };
 
 &iomuxc_lpsr {
-- 
2.34.1


