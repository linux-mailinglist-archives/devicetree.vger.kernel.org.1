Return-Path: <devicetree+bounces-135884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F47A02D5C
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 17:08:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 036CD188563A
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 16:08:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4CCE1DED4F;
	Mon,  6 Jan 2025 16:07:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4994213AD11
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 16:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736179626; cv=none; b=skb6ZptX6G6MM+6n3X6zKGJqQFdsiyjiEaYENWHK8JH+zCDR8r2YWmjZfWgPEDo9mVA1d+sbtD2Z1+fxs2Uf0iFk9rzLGqZCZwpTdn+/vy1s6rd6A60PSSU5qxxOw0+A56IH+zvwaeYtvo3BYUiR72nX7GnzYglwiL3O+uJdpUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736179626; c=relaxed/simple;
	bh=H9lawugqoEDWMIMX1/H4erCBUAn5FVPqkxgTgCG/iog=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YZRaZ0wnfTIzwKZtN8jgRTtw+2Dk4Lx369AEmme4OsaUZcJ2Tiu0t0SwrTiDh5ZXqK+3EkPXZqTfgosNjhUbL6nxR0hB1uxIjYoDvVJ20MFLZtsWzam/i47rWKcQ3X8uYO5HQ8Hc1ZcJh35igeC+kO4zjxeJacLoryVpdnQBaLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUpcx-0000C5-KD; Mon, 06 Jan 2025 17:06:51 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUpcw-007C9o-0y;
	Mon, 06 Jan 2025 17:06:51 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUpcw-009dVc-35;
	Mon, 06 Jan 2025 17:06:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 06 Jan 2025 17:06:39 +0100
Subject: [PATCH v2 04/10] arm64: dts: imx8mp-skov: describe HDMI display
 pipeline
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250106-skov-dt-updates-v2-4-4504d3f00ecb@pengutronix.de>
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

Back when this device tree was first added, there were no i.MX8MP
HDMI bindings upstream yet. This has changed now, so let's use them
to describe the HDMI on the imx8mp-skov-revb-hdmi board.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 .../boot/dts/freescale/imx8mp-skov-revb-hdmi.dts      | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-hdmi.dts b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-hdmi.dts
index 206116be816662349ef5b54e288b945f171f5637..32a429437cbdbd153e6efb2bff6cd16e20ecb423 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-hdmi.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-hdmi.dts
@@ -9,6 +9,21 @@ / {
 	compatible = "skov,imx8mp-skov-revb-hdmi", "fsl,imx8mp";
 };
 
+&hdmi_pvi {
+	status = "okay";
+};
+
+&hdmi_tx {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hdmi>;
+	ddc-i2c-bus = <&i2c5>;
+	status = "okay";
+};
+
+&hdmi_tx_phy {
+	status = "okay";
+};
+
 &i2c5 {
 	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_i2c5>;
@@ -19,6 +34,10 @@ &i2c5 {
 	status = "okay";
 };
 
+&lcdif3 {
+	status = "okay";
+};
+
 &iomuxc {
 	pinctrl_hdmi: hdmigrp {
 		fsl,pins = <

-- 
2.39.5


