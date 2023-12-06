Return-Path: <devicetree+bounces-22340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 989FF8072CE
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 15:44:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4323A1F218BA
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 14:44:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BC933DBB2;
	Wed,  6 Dec 2023 14:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b="UCYx6MrK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.fris.de (mail.fris.de [116.203.77.234])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 690B6D59;
	Wed,  6 Dec 2023 06:44:39 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7D5BBC0131;
	Wed,  6 Dec 2023 15:44:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=dkim;
	t=1701873877; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=tMSX8hysbUP88C2UKn2uKuZ0nkUjhmVSfTTqVo0O4Rk=;
	b=UCYx6MrKF2ksjayBn+9pCB7GcXteUArdpZEbvpemiq9EoFtB6F5KJRTOLoLDrDgHkUaaQ2
	a2ZGwYnDTiBDr8feqKWexaJe2ecbJLgR9FP4nyvd7UD3VtXyFCHbqLPYlsQhi5UkffJKhf
	AXMrdK8+JGZE+0yoLXIEZKTRh7Vc7GXoQIoPJDGQ1+gMuNWnCvRZCa8gKt802Bg0MmquVf
	Icd+IEfeP/6sXRwds38WlNLlpxqWzSFW3Vz4vKrvyyaWiHfO50ZkwBfGRcek7Iy4LtfGdE
	8yy66P5hCkEfJlolNgJoem27FilAp9hrz+Li+K51jgvCfYREqHS4gFqPBUQF3g==
From: Frieder Schrempf <frieder@fris.de>
To: Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v3 07/14] arm64: dts: imx8mm-kontron: Disable pull resistors for SD card signals on BL OSM-S board
Date: Wed,  6 Dec 2023 15:41:10 +0100
Message-ID: <20231206144201.46911-8-frieder@fris.de>
In-Reply-To: <20231206144201.46911-1-frieder@fris.de>
References: <20231206144201.46911-1-frieder@fris.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

From: Frieder Schrempf <frieder.schrempf@kontron.de>

Some signals have external pullup resistors on the board and don't need
the internal ones to be enabled. Due to silicon errata ERR050080 let's
disable the internal pull resistors whererever possible and prevent
any unwanted behavior in case they wear out.

Fixes: de9618e84f76 ("arm64: dts: Add support for Kontron SL/BL i.MX8MM OSM-S")
Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
Changes for v3:
* none

Changes for v2:
* none
---
 .../dts/freescale/imx8mm-kontron-bl-osm-s.dts  | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-kontron-bl-osm-s.dts b/arch/arm64/boot/dts/freescale/imx8mm-kontron-bl-osm-s.dts
index 1dd03ef0a7835..d9fa0deea7002 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-kontron-bl-osm-s.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-kontron-bl-osm-s.dts
@@ -337,40 +337,40 @@ MX8MM_IOMUXC_NAND_CE1_B_GPIO3_IO2		0x19
 
 	pinctrl_usdhc2: usdhc2grp {
 		fsl,pins = <
-			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK			0x190
+			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK			0x90
 			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD			0x1d0
 			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0		0x1d0
 			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1		0x1d0
 			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2		0x1d0
 			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d0
-			MX8MM_IOMUXC_SD2_CD_B_GPIO2_IO12		0x019
-			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0x1d0
+			MX8MM_IOMUXC_SD2_CD_B_GPIO2_IO12		0x19
+			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0xd0
 		>;
 	};
 
 	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
 		fsl,pins = <
-			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK			0x194
+			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK			0x94
 			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD			0x1d4
 			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0		0x1d4
 			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1		0x1d4
 			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2		0x1d4
 			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d4
-			MX8MM_IOMUXC_SD2_CD_B_GPIO2_IO12		0x019
-			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0x1d0
+			MX8MM_IOMUXC_SD2_CD_B_GPIO2_IO12		0x19
+			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0xd0
 		>;
 	};
 
 	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
 		fsl,pins = <
-			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK			0x196
+			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK			0x96
 			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD			0x1d6
 			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0		0x1d6
 			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1		0x1d6
 			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2		0x1d6
 			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d6
-			MX8MM_IOMUXC_SD2_CD_B_GPIO2_IO12		0x019
-			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0x1d0
+			MX8MM_IOMUXC_SD2_CD_B_GPIO2_IO12		0x19
+			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0xd0
 		>;
 	};
 };
-- 
2.43.0


