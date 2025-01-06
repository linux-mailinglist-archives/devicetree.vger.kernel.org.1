Return-Path: <devicetree+bounces-135889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 930DBA02D64
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 17:08:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A93223A59BA
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 16:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67E021DF72D;
	Mon,  6 Jan 2025 16:07:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4F081DF276
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 16:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736179642; cv=none; b=m7gX+eImq6MForGCoGMiHSTeL0xwADFdQ3jWZ+WIHuslijk9INO8YXK08Q0Gg5ORo80LRdMpQlrAC+bD8lmEDf9hf3067piACfiICRfsglphfOVM7cKNbOhEC7Lr9M9+gX0R0zN5eKmL25Pc6SPVZrVPPM1dBx0ePxVaBy3gQnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736179642; c=relaxed/simple;
	bh=C451IDPs2diiR6Jobe/SheJ2I89XLWctnX9fEv/gyl4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kg635ZGNF1Z03ULE7k2L7eoYbRGXthA6ao7NW6qT15AWKAkMYsKo8/JNRvc1LLVJaLinoyWIq3KvaYQdI51jiS4BZXawXifNFz57+J8vT8/2MRr5xtcccAYQjUnByaGDX/XPLcqERRRR7r1N7Q67rTPBlxuYje5qGtCr8ExVkNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUpcx-0000CA-KD; Mon, 06 Jan 2025 17:06:51 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUpcw-007C9s-17;
	Mon, 06 Jan 2025 17:06:51 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUpcw-009dVc-39;
	Mon, 06 Jan 2025 17:06:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 06 Jan 2025 17:06:43 +0100
Subject: [PATCH v2 08/10] arm64: dts: imx8mp-skov: describe mains fail
 detection
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250106-skov-dt-updates-v2-8-4504d3f00ecb@pengutronix.de>
References: <20250106-skov-dt-updates-v2-0-4504d3f00ecb@pengutronix.de>
In-Reply-To: <20250106-skov-dt-updates-v2-0-4504d3f00ecb@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Oleksij Rempel <o.rempel@pengutronix.de>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 Frank Li <Frank.li@nxp.com>, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: Oleksij Rempel <o.rempel@pengutronix.de>

The main 24V regulator will toggle GPIO4_IO23 to signal imminent voltage
loss. Reflect this in the DT, so the OS can take appropriate action when
this happens.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
index bce23d62cd277b89ec9ce5ed3651cfe787987158..80d212acc0c33af0b2a812e0b03b36dbb6b3b3fd 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
@@ -116,6 +116,11 @@ reg_24v: regulator-24v {
 		regulator-name = "24V";
 		regulator-min-microvolt = <24000000>;
 		regulator-max-microvolt = <24000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg24v>;
+		interrupts-extended = <&gpio4 23 IRQ_TYPE_EDGE_FALLING>;
+		system-critical-regulator;
+		regulator-uv-less-critical-window-ms = <50>;
 	};
 
 	reg_can2rs: regulator-can2rs {
@@ -591,6 +596,12 @@ MX8MP_IOMUXC_SAI3_MCLK__PWM4_OUT			0x116
 		>;
 	};
 
+	pinctrl_reg24v: reg24vgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI2_RXD0__GPIO4_IO23			0x154
+		>;
+	};
+
 	pinctrl_reg_vsd_3v3: regvsd3v3grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19	0x40

-- 
2.39.5


