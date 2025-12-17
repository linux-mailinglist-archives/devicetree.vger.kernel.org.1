Return-Path: <devicetree+bounces-247303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2227DCC6ABC
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 09:58:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8B04C30996CF
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 08:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E095342513;
	Wed, 17 Dec 2025 08:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="G+uWYf/W"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay96-hz2.antispameurope.com (mx-relay96-hz2.antispameurope.com [94.100.136.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2901A329E7A
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.196
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765961347; cv=pass; b=s+hyyP72rsvafjQq80U7EeADXIhZn82O2JV8EUkRP58DJscebMb3qyW/rC0DL9d1vTZYWZ+w6XVc+hX9SbYtTluPGL99AbbtRrwDge/NoYNO66MUAj6pNOF+4iyoUJ9VsINPsAv2du89s4XWGp79skYCaN+aVKkzQWW/Fn/LTV0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765961347; c=relaxed/simple;
	bh=h1Ja/rSQIq1TWvNF38IFvW9sEAqOWuoSLE1OhJQnWqA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rZ7XQFRmJkYwJeDVQk5DOrDTl3kBi/WHcAh+NxfAkHeRKWiHe+xa0ZL62DxGwm8XpS2IcZvYi83L7Fr12qAodZKy7DqYiqvWnsEMnVh1JZGCH3e/B7p16Aw4fIvDhyCF0tKUcyDIsm/48xMg4rC4W/IOUKuVIkyvtjUOZFxOoy4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=G+uWYf/W; arc=pass smtp.client-ip=94.100.136.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate96-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=e8+/cZk0H8N2WAzWr4PEnz6SuI6lU+scC72gDf6sJvg=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765961297;
 b=N+1kDsUyGby2zYRln6Z5bsUE6bLnYN161jPhYUEFWbFWk6j56VQRgrVmcR/P31fcFu4yEX0H
 5l0DhfyEM5V+aNChU58Xz4e6ah6LeoIfKDPpViHJG6rtVSc5cGHpU1ZRPL0CPl6E5+B8yRgw3oc
 4Jr08BMkZU4XRrQuHLvIxdvww+s4hQGu581Dch5VSmRXXdncs+dQrJ9GdWUbMrw2w7F95DBcPcV
 lXTCwbMW4gGT41Q8et1+NwNl6elRHBYjlkFXVAEBJGDznoYYiyqw0tQ3SEj6iGxeUmqBGDaEqQA
 q22FIbI3dHz83EwAnjW8waVyQFyEAkFIGuaZlmpyYyn0g==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765961297;
 b=nscygIH30d9Ab//NirLn6Ut2JvXz2XVPHVUqPXfBkL95vEBPKWaJPWtjOnna9zsdUHe+jNP/
 Zrd3GpaCQ9Ku2PZkf0yOHjL2+NEn2Lq6TFuYZCc29SCLpAH/CRD1wYu3n76NbWdQ61HSLz1vD+y
 FSVt3wmLpxqqCIoWJB6QMYqTWY6KJae6U0xZccqRjvqWEYIU1TH+BcNCUd2jnLkNEeNhpF3CfXm
 oUdw6ldygMp6u5wv/mY+5fywCFkC/dPaIrJEwfPVLO1xhl2r17FdMSLb2Ew9wFgtKxvamFsnkYr
 ZM/ZiogCIIpFCeDu8+u+TFJrBldrKprzNem5wLM2zt0bA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay96-hz2.antispameurope.com;
 Wed, 17 Dec 2025 09:48:17 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 5FB5A220CD8;
	Wed, 17 Dec 2025 09:48:09 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux@ew.tq-group.com,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] arm64: dts: mb-smarc-2: Add PCIe support
Date: Wed, 17 Dec 2025 09:48:04 +0100
Message-ID: <20251217084806.41853-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay96-hz2.antispameurope.com with 4dWSB20czCz1TMgh
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:1eff63407a427bebdc6c421623ea4ad2
X-cloud-security:scantime:2.164
DKIM-Signature: a=rsa-sha256;
 bh=e8+/cZk0H8N2WAzWr4PEnz6SuI6lU+scC72gDf6sJvg=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765961296; v=1;
 b=G+uWYf/WbEMzDmo4NrXd7Jruj2WMCblL80yOelBmhrYHJN+1IH7gx/ODI/OQW6vDtUaQy8NH
 o8z1s7zs/ihILZ1kIWJWEdX9oQLRFmgGnJyDdAGdKuVcHMeGK9bYuRwprJGgeM0nl2wVhrI79J3
 0Z2keJcSZFY7svX3pgKG4IDkIB4oIo6sITZnU92WRsP57kyO5FgEjl61fbxBSaSRh6iNP7x5f6O
 d3+rlnhMrkD0IkL9GGjdXd+8K3dLgxzpAl/W4yQsS41nI3WcckojRCl7WYxLO0Sfgur8j5QU0yT
 08p6RZvTaRgtBo6oFYsmBIIPY/mblzLebZmVKLfZi5zNQ==

TQMa8XxS on MB-SMARC-2 supports mPCIe on X44.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../boot/dts/freescale/tqma8xxs-mb-smarc-2.dtsi    | 10 ++++++++++
 arch/arm64/boot/dts/freescale/tqma8xxs.dtsi        | 14 +++++++++++---
 2 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/tqma8xxs-mb-smarc-2.dtsi b/arch/arm64/boot/dts/freescale/tqma8xxs-mb-smarc-2.dtsi
index 8bfe77113d64b..050ae23c4dc1e 100644
--- a/arch/arm64/boot/dts/freescale/tqma8xxs-mb-smarc-2.dtsi
+++ b/arch/arm64/boot/dts/freescale/tqma8xxs-mb-smarc-2.dtsi
@@ -126,6 +126,12 @@ &flexcan3 {
 	status = "okay";
 };
 
+&hsio_phy {
+	fsl,hsio-cfg = "pciea-x2-pcieb";
+	fsl,refclk-pad-mode = "input";
+	status = "okay";
+};
+
 &i2c0 {
 	tlv320aic3x04: audio-codec@18 {
 		compatible = "ti,tlv320aic32x4";
@@ -156,6 +162,10 @@ &lpuart3 {
 	status = "okay";
 };
 
+&pcieb {
+	status = "okay";
+};
+
 &reg_sdvmmc {
 	off-on-delay-us = <200000>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/freescale/tqma8xxs.dtsi b/arch/arm64/boot/dts/freescale/tqma8xxs.dtsi
index ebf20d5b5df9c..bfc918f18d011 100644
--- a/arch/arm64/boot/dts/freescale/tqma8xxs.dtsi
+++ b/arch/arm64/boot/dts/freescale/tqma8xxs.dtsi
@@ -402,6 +402,14 @@ &mu1_m0 {
 	status = "okay";
 };
 
+&pcieb {
+	phys = <&hsio_phy 0 PHY_TYPE_PCIE 0>;
+	phy-names = "pcie-phy";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pcieb>;
+	reset-gpio = <&lsio_gpio4 0 GPIO_ACTIVE_LOW>;
+};
+
 &sai1 {
 	assigned-clocks = <&clk IMX_SC_R_AUDIO_PLL_0 IMX_SC_PM_CLK_PLL>,
 			  <&clk IMX_SC_R_AUDIO_PLL_0 IMX_SC_PM_CLK_SLV_BUS>,
@@ -646,9 +654,9 @@ pinctrl_i2c0_gpio_mipi_lvds0: mipi-lvds0-i2c0-gpiogrp {
 	};
 
 	pinctrl_pcieb: pcieagrp {
-		fsl,pins = <IMX8QXP_PCIE_CTRL0_PERST_B_LSIO_GPIO4_IO00	0x06000041>,
-			   <IMX8QXP_PCIE_CTRL0_CLKREQ_B_LSIO_GPIO4_IO01	0x06000041>,
-			   <IMX8QXP_PCIE_CTRL0_WAKE_B_LSIO_GPIO4_IO02	0x04000041>;
+		fsl,pins = <IMX8QXP_PCIE_CTRL0_PERST_B_LSIO_GPIO4_IO00		0x06000041>,
+			   <IMX8QXP_PCIE_CTRL0_CLKREQ_B_HSIO_PCIE0_CLKREQ_B	0x06000041>,
+			   <IMX8QXP_PCIE_CTRL0_WAKE_B_LSIO_GPIO4_IO02		0x04000041>;
 	};
 
 	pinctrl_pwm_mipi_lvds0: mipi-lvds0-pwmgrp {
-- 
2.43.0


