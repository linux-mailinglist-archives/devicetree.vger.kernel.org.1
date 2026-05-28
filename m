Return-Path: <devicetree+bounces-303785-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uME6FI0aGGoBdQgAu9opvQ
	(envelope-from <devicetree+bounces-303785-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 12:35:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1231A5F0AD6
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 12:35:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DA547300E156
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 10:35:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0840A38837F;
	Thu, 28 May 2026 10:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b="sVs8wgSw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.fris.de (mail.fris.de [116.203.77.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4817D30C632;
	Thu, 28 May 2026 10:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.77.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779964554; cv=none; b=ULqSUySlMQl4gYKlbE+beEaTe7/xMJk/6WwNhv+zMtg4fr4E/73UNii7OY0UGrD79R9pGfiTa77DY2ga30SOYe1HHCYFFtQVYfCgZgWon6BGMO5A78wdVcVZ0OPCFmpH8sXz5HplC1k+RbCLiwie8K8oaxGvNjL9pcOne2qGgek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779964554; c=relaxed/simple;
	bh=8P3lY1/gQp25fWNrD/onc426D6RvDG3yh7pYQHTEHyA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DNMlB6TrX23ouUzsAi9FKBl3YcCH5C0r/o7F9ALKFsCJZxid0PO3i2gDaqzHnyBq10t5NtwVAl8jsi9RTw3ZRDa1i0TsqWW2Y9rR0woJly5AgHzTnWnvufRZO7ypkxvW1sck5IjptkACciIzZBBWHNgi6e9WWF9Z0syw6Ti+NT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de; spf=pass smtp.mailfrom=fris.de; dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b=sVs8wgSw; arc=none smtp.client-ip=116.203.77.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fris.de
From: Frieder Schrempf <frieder@fris.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=mail;
	t=1779964044;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=7xCLVbh1sBBSOmagGE/x9KMj2LGr4xyccPuWMFIUyF8=;
	b=sVs8wgSwuXagVcjaN4bUG8ffMt9SC3SKS7fi/IvtdN2Kjx1bAGOxYocRmpi1oZAgiSpa2b
	XhfjagBznFWm5GX3fpTUEIkvsGvPuNVj2EZHrB4GnNwXnuhGo2fBOtGKCLo9OwP73jN2D2
	Gy6WtVvcNSPqUH2mRSgv5njAsMuR0JMy14ab7T225xdxUcmVj1i8JMi47BWxI8I6O1Smja
	01DcRNx7R25p5NOa7w0L2hWHotSQrwZ3VNw2qeyaOqCVWiilbk+E3xfHpQ10xVFayVK/x7
	w6NNkps3L78GNo7y3sr/9RNdqC5FXoW3qTiBUDPolijNgkocvPYjSGqn48xpWw==
To: Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	imx@lists.linux.dev,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Annette Kobou <annette.kobou@kontron.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH] arm64: dts: imx8mp-kontron: Fix GPIO for display power switch
Date: Thu, 28 May 2026 12:15:56 +0200
Message-ID: <20260528101556.75926-1-frieder@fris.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[fris.de,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[fris.de:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kontron.de,gmail.com,pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-303785-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[frieder@fris.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[fris.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,kontron.de:email,fris.de:mid,fris.de:dkim]
X-Rspamd-Queue-Id: 1231A5F0AD6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Frieder Schrempf <frieder.schrempf@kontron.de>

The GPIO that controls the power supply for the LVDS display
connector has changed between early prototypes and the current
production design of the hardware. Reflect this change in the
devicetree to properly switch on the panel supply.

This was working before even with the wrong GPIO due to the
bidirectional level shifter used on the board which drives the EN
signal high even when the input has a (weak) pull down configured as
reset condition of the SoC pad. As a result the display was working
but the supply was always on.

Tested on BL i.MX8MP to show the correct voltage level on the level
shifter input.

Fixes: 946ab10e3f40 ("arm64: dts: Add support for Kontron OSM-S i.MX8MP SoM and BL carrier board")
Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 .../boot/dts/freescale/imx8mp-kontron-bl-osm-s.dts   | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-kontron-bl-osm-s.dts b/arch/arm64/boot/dts/freescale/imx8mp-kontron-bl-osm-s.dts
index 75ae46642782..29ce863403b8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-kontron-bl-osm-s.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-kontron-bl-osm-s.dts
@@ -49,7 +49,9 @@ pwm-beeper {
 
 	reg_vcc_panel: regulator-vcc-panel {
 		compatible = "regulator-fixed";
-		gpio = <&gpio4 3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_vcc_panel>;
+		gpio = <&gpio5 3 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 		regulator-max-microvolt = <3300000>;
 		regulator-min-microvolt = <3300000>;
@@ -172,7 +174,7 @@ &gpio4 {
 &gpio5 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpio5>;
-	gpio-line-names = "I2S_BITCLK", "I2S_A_DATA_OUT", "I2S_MCLK", "PWM_2",
+	gpio-line-names = "I2S_BITCLK", "I2S_A_DATA_OUT", "I2S_MCLK", "VCC_PANEL_EN",
 			  "PWM_1", "PWM_0", "SPI_A_SCK", "CAN_ADDR1",
 			  "CAN_ADDR0", "SPI_A_CS0", "SPI_B_SCK", "SPI_B_SDO",
 			  "SPI_B_SDI", "SPI_B_CS0", "I2C_A_SCL", "I2C_A_SDA",
@@ -329,4 +331,10 @@ MX8MP_IOMUXC_ECSPI1_MOSI__GPIO5_IO07		0x46 /* CAN_ADR0 */
 			MX8MP_IOMUXC_ECSPI1_MISO__GPIO5_IO08		0x46 /* CAN_ADR1 */
 		>;
 	};
+
+	pinctrl_reg_vcc_panel: regvccpanelgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SPDIF_TX__GPIO5_IO03		0x46
+		>;
+	};
 };
-- 
2.54.0


