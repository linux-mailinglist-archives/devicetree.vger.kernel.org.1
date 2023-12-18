Return-Path: <devicetree+bounces-26590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51AA3816FA5
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 14:07:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 775481C2391C
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:07:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F78E4236F;
	Mon, 18 Dec 2023 12:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="bCbYpunK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA5C83D571
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 12:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702904119; x=1734440119;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=IA2pAaUtCGqfwktAnviz0mbxYRofeT2V1SZd+2BLhJ4=;
  b=bCbYpunKcI+vkSvay4as0HlN5ONdTO5g44Qnp1Wq3k7BN/6K4BCl5GK/
   uGuiNpvlQ7/2GRjTQjooDtEl9L6a2zbTEKS54Yi9rnxTTIA6OZfmEs+ci
   IbUJpk/NgZ258aruIf2r0jvT+EK40h4wnhE9L3nVmxTAdg9yST12b89hE
   gcn7RRnEwm2SB24PNpQj/PxVdwNCnT6jQIKds4GTD0Tukn+/5Dutpgvvl
   cR7vcYhxgPb9oCFvjsxOOKkRrlQffZFT19ZRP1kuQpSEXC0GD72vi/YFu
   XWa4TmvAp3cHVNxaBNBeD+5stopJ3woWNSnGiy+JacbuHbpYkhwDE/kcY
   w==;
X-IronPort-AV: E=Sophos;i="6.04,285,1695679200"; 
   d="scan'208";a="34562717"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Dec 2023 13:55:05 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 731E92800A3;
	Mon, 18 Dec 2023 13:55:04 +0100 (CET)
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
Subject: [PATCH 22/23] ARM: dts: imx7-mba7: Add missing vcc supply to i2c devices
Date: Mon, 18 Dec 2023 13:54:58 +0100
Message-Id: <20231218125459.2769733-23-alexander.stein@ew.tq-group.com>
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

Fixes the warnings:
pca953x 1-0020: supply vcc not found, using dummy regulator
lm75 0-0049: supply vs not found, using dummy regulator

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
index 1b1eac33a70f..1235a71c6abe 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
@@ -182,6 +182,14 @@ reg_audio_3v3: regulator-audio-3v3 {
 		regulator-always-on;
 	};
 
+	reg_vcc_3v3: regulator-vcc-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
 	sound {
 		compatible = "fsl,imx-audio-tlv320aic32x4";
 		model = "imx-audio-tlv320aic32x4";
@@ -304,6 +312,7 @@ &i2c1 {
 	lm75: temperature-sensor@49 {
 		compatible = "national,lm75";
 		reg = <0x49>;
+		vs-supply = <&reg_vcc_3v3>;
 	};
 };
 
@@ -336,6 +345,7 @@ pca9555: gpio-expander@20 {
 		interrupts = <12 IRQ_TYPE_EDGE_FALLING>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+		vcc-supply = <&reg_vcc_3v3>;
 	};
 };
 
-- 
2.34.1


