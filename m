Return-Path: <devicetree+bounces-132338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AED9D9F6A29
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 16:37:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C841816DF86
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 15:37:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1AE41F2396;
	Wed, 18 Dec 2024 15:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b="zTTNS0Ek"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.fris.de (mail.fris.de [116.203.77.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB4F71B425A;
	Wed, 18 Dec 2024 15:36:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.77.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734536212; cv=none; b=tbbuXTzEchz/9BREWitd7t7bDkIxl+r8wuryXo2jo4UsuUbPKq+QnFUCbunKFMraPiP9ThqK8h7qQS1b0mUn7zblZ9PuRiwDpX/bAhYrM83i25PqWRjzMM2vZfOZ3soUQVMbXbtcLjbgJ/Mj064HKKQh10GmyqszEZKD8OExrYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734536212; c=relaxed/simple;
	bh=tGc9xVwfmgpgk71ZWecJKg+KkXdqZ2zUCeIsc1Nr4a8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sWAJQ4ZekOI4b/yUiNeJLMFT93o+Tm3wPCnH0I3e+labWYqMsOr3WZBuwJpvKkiQjfc+9e9eeJecX+LoDta8Zj2ijMo6uL9PoFkx7fs1639yX0qzZBIEIb5BmjA80V4QhlYckUGE2dnwQvt9jEyajRPA1YpRVflcoghiTS8ZbGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de; spf=pass smtp.mailfrom=fris.de; dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b=zTTNS0Ek; arc=none smtp.client-ip=116.203.77.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fris.de
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D80F0BFB70;
	Wed, 18 Dec 2024 16:29:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=dkim;
	t=1734535786; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=A+MEtWqv+jtuMkcOt3EU3LJknR9R8KvXbro2h2nqPjw=;
	b=zTTNS0Ekiu3XFX9gHx6F0jaivYzGs4wdcpgnCHwLtjWnAeINTdfGHJccOgQiDD1PGJem0R
	fzpbonJQFl94z6tF6/owTw/85uW3gRHHPN+VBNYM0+M0B2s3IqvrZHLJ8+ISIwbOMh00mv
	k1KTIKGV+e/xC0sp2q2EUIemqAWmej2woXCVxC3e3Kmp6S/8YJwgBjDiMNbQzpjlPzE0pz
	aQD8o5Pe0a5Z7jjbB/1EGSV6uZCzb2fNqfr15CuMLet8N8gAQWoNBl8vrxqraM2jl9Lo88
	/NGmGne1M+DSYtZx91mUnc+5W4Q8CNXzdPCWozo1r1gyiRlI8pcJqQt5LoCAiw==
From: Frieder Schrempf <frieder@fris.de>
To: linux-arm-kernel@lists.infradead.org,
	Marek Vasut <marex@denx.de>,
	Conor Dooley <conor@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v3 2/9] arm64: dts: imx8mp-skov-reva: Use hardware signal for SD card VSELECT
Date: Wed, 18 Dec 2024 16:27:25 +0100
Message-ID: <20241218152842.97483-3-frieder@fris.de>
In-Reply-To: <20241218152842.97483-1-frieder@fris.de>
References: <20241218152842.97483-1-frieder@fris.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

From: Frieder Schrempf <frieder.schrempf@kontron.de>

The USDHC controller is able to control the IO voltage of the SD card.
There is no reason to use a GPIO to control it.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
Changes for v3:
* Rebase to next-20241218

Changes for v2:
* new patch
---
 arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
index 59813ef8e2bb3..33031e946329d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
@@ -232,7 +232,6 @@ pmic@25 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_pmic>;
 		interrupts-extended = <&gpio1 3 IRQ_TYPE_EDGE_RISING>;
-		sd-vsel-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
 
 		regulators {
 			reg_vdd_soc: BUCK1 {
@@ -555,7 +554,6 @@ MX8MP_IOMUXC_I2C4_SDA__I2C4_SDA				0x400001c3
 	pinctrl_pmic: pmicirqgrp {
 		fsl,pins = <
 			MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03			0x41
-			MX8MP_IOMUXC_GPIO1_IO04__GPIO1_IO04			0x41
 		>;
 	};
 
@@ -623,6 +621,7 @@ MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0			0x1d0
 			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1			0x1d0
 			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2			0x1d0
 			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3			0x1d0
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT			0xc0
 		>;
 	};
 
@@ -634,6 +633,7 @@ MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0			0x1d4
 			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1			0x1d4
 			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2			0x1d4
 			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3			0x1d4
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT			0xc0
 		>;
 	};
 
@@ -645,6 +645,7 @@ MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0			0x1d6
 			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1			0x1d6
 			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2			0x1d6
 			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3			0x1d6
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT			0xc0
 		>;
 	};
 
-- 
2.47.1


