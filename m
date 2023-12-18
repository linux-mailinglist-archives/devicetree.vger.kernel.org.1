Return-Path: <devicetree+bounces-26578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CB3816F96
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 14:07:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DDFB61C22810
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:07:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 537803D54D;
	Mon, 18 Dec 2023 12:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="iTGOaLqS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019C43D559
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 12:55:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702904111; x=1734440111;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=dMNTcEryUPOJQdA6zyo/HXjDgsyIOb6uDssYvhqhwu0=;
  b=iTGOaLqSJAlVb4ONVa7HZL/Wq1CVCXvNgQNZMOWIvyJR1qp40oNnJcI+
   BiyMPDuZOrZtpzqoeo5U5a+7qJNYaXNieUmPBzg9nhO2XbPIEpJQLVY8W
   Mc9vr9WS74yQftnvFviZV86x+tlno9EOpCDno7xFN1Nbsq3lJMUR700BC
   C4H4RfYv8itWymM4/0Iexhm7a3japbVPyNrWE3hbSONUWa2fm9+hw3O1D
   8D/qUJI54BH88nRVJ8IZi4Jfl/KU9lD/vKJC4buHxId99eifbiS9FMSWY
   SlaLIsx8l32wS+r9TH0SaK5+UtZdNFRIpM9M/WXZImgQDyBETGMKKDaN+
   A==;
X-IronPort-AV: E=Sophos;i="6.04,285,1695679200"; 
   d="scan'208";a="34562701"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Dec 2023 13:55:01 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 49B8B28008E;
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
Subject: [PATCH 10/23] ARM: dts: imx7-tqma7: Add i2c bus recovery
Date: Mon, 18 Dec 2023 13:54:46 +0100
Message-Id: <20231218125459.2769733-11-alexander.stein@ew.tq-group.com>
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

Add the pin muxing and GPIO settings for SCL/SDA for i2c1.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi b/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
index e6e40747d5b9..a68f567010f2 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
@@ -30,8 +30,11 @@ qspi-reset-hog {
 };
 
 &i2c1 {
-	pinctrl-names = "default";
+	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_i2c1>;
+	pinctrl-1 = <&pinctrl_i2c1_recovery>;
+	scl-gpios = <&gpio4 8 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio4 9 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	clock-frequency = <100000>;
 	status = "okay";
 
@@ -168,6 +171,12 @@ pinctrl_i2c1: i2c1grp {
 			<MX7D_PAD_I2C1_SCL__I2C1_SCL	0x40000078>;
 	};
 
+	pinctrl_i2c1_recovery: i2c1recoverygrp {
+		fsl,pins =
+			<MX7D_PAD_I2C1_SDA__GPIO4_IO9	0x40000078>,
+			<MX7D_PAD_I2C1_SCL__GPIO4_IO8	0x40000078>;
+	};
+
 	pinctrl_pmic1: pmic1grp {
 		fsl,pins =
 			<MX7D_PAD_SD2_RESET_B__GPIO5_IO11	0x4000005C>;
-- 
2.34.1


