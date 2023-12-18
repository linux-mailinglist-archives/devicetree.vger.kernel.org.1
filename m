Return-Path: <devicetree+bounces-26577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E83816F95
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 14:07:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C01DA1C23399
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:06:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 192DD3D54B;
	Mon, 18 Dec 2023 12:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="dEDtwuve"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FB537894
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 12:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702904110; x=1734440110;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ROKCvixOUKQraTc0wIHbXHqwGgtAARQbRSjoRrhIefc=;
  b=dEDtwuveYQxsFTgpim/fvV09KjMOxK/uvXoGnpZAo7gVLbTamcVKLeEX
   sygTWQTX5qpFCAwjvmFQnmOR54sB63TGLaB0yLAhWWx9xQGRAhzXLqXze
   WkN5W+hslE6RO7ld9E94C2oOJJCwEA2zIz+xiRURZShFW4LPuareReLgP
   y/Qj7PLpBg/03WWu+UwkBY8kWIB3GZeQiRn/vR/tUg05gzjjTknzDWkuX
   dV9q3FXFzWmVJ57L8EAK05bmf1M8oRx+vmEMYJ4i87bzSElaHc/73HIQH
   3ld7YhI2wGsWdLWDV5/+/giXDo+vg0SYNbO8SRb9foXA8EU9FtULg5xW8
   Q==;
X-IronPort-AV: E=Sophos;i="6.04,285,1695679200"; 
   d="scan'208";a="34562700"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Dec 2023 13:55:01 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 0FA30280092;
	Mon, 18 Dec 2023 13:55:01 +0100 (CET)
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
Subject: [PATCH 09/23] ARM: dts: imx7-mba7: Add SPI1_SS0 as chip select 3
Date: Mon, 18 Dec 2023 13:54:45 +0100
Message-Id: <20231218125459.2769733-10-alexander.stein@ew.tq-group.com>
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

ECSPI1.SS0 was missing in the list.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
index 7b7bc86265fc..e887889816c7 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
@@ -209,9 +209,9 @@ &adc2 {
 
 &ecspi1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_ecspi1>;
+	pinctrl-0 = <&pinctrl_ecspi1>, <&pinctrl_ecspi1_ss0>;
 	cs-gpios = <&gpio4 0 GPIO_ACTIVE_LOW>, <&gpio4 1 GPIO_ACTIVE_LOW>,
-		   <&gpio4 2 GPIO_ACTIVE_LOW>;
+		   <&gpio4 2 GPIO_ACTIVE_LOW>, <&gpio4 19 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
@@ -357,6 +357,12 @@ pinctrl_ecspi1: ecspi1grp {
 			<MX7D_PAD_UART2_RX_DATA__GPIO4_IO2		0x74>;
 	};
 
+	pinctrl_ecspi1_ss0: ecspi1ss0grp {
+		fsl,pins = <
+			MX7D_PAD_ECSPI1_SS0__GPIO4_IO19			0x74
+		>;
+	};
+
 	pinctrl_ecspi2: ecspi2grp {
 		fsl,pins =
 			<MX7D_PAD_ECSPI2_MISO__ECSPI2_MISO		0x7c>,
-- 
2.34.1


