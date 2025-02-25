Return-Path: <devicetree+bounces-150925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEC6A43ED9
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 13:09:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C47C819C0F1B
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 12:08:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42648267F6D;
	Tue, 25 Feb 2025 12:07:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF57267B0A
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 12:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740485255; cv=none; b=GJZAfyl7yq9iLc9tCpSNqsEsDhr19lSbTAkNe9BP7HHPMyY7oTTSaSRJsUUaUUm/+NxFEs7XdjHtOKXLNF4nLI+o95Q/89FferNEFmX7wWrHOpWRfE6L7EWY1iOoPWj0VqhsZkg5mMUOacTIrJH014rfiGOj0RYk1Wb0zLjapII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740485255; c=relaxed/simple;
	bh=zyNOL+XOkWD5oCudbzTVBi8p8ROknmM1P+qr25UGyKA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=XFLBbyu6H8hAqNDPu4sgXJ2TVU7fy5bG5RPySAkTMk3aMU1j1XoV6rTaUnjgpNWyVakAfiCNsb20s5nqktshZmkGeePz7Uv1nnBDFwOJXPGBm8xiE6zNuPcIhCrfrmvrjB7UE1SbdM0Feg/7fNZkxBGAOEebMsEQetjruwKDVXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1tmtid-00055V-T1; Tue, 25 Feb 2025 13:07:23 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: "robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, Sascha Hauer" <s.hauer@pengutronix.de>
Cc: kernel@pengutronix.de,
	aford173@gmail.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] arm64: dts: imx8mn: fix micfil dmas settings
Date: Tue, 25 Feb 2025 13:07:04 +0100
Message-Id: <20250225120707.2658709-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The third dma cell is used for priority information not to encode
something else. The NXP downstream kernel use the third cell to encode
more information:

 - Bit31: sw_done feature enable/disable
 - Bit15~Bit8: selector
 - Bit7~Bit0: priority level

but this was never mainlined. Therefore drop the further information and
just specify the priority which is 0.

FTR: The sw_done feature was mainlined without making use of the
devicetree.

Fixes: cca69ef6eba5 ("arm64: dts: imx8mn: Add support for micfil")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index a5f9cfb46e5d..8ab4af78acb5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -369,7 +369,7 @@ micfil: audio-controller@30080000 {
 						 <&clk IMX8MN_CLK_EXT3>;
 					clock-names = "ipg_clk", "ipg_clk_app",
 						      "pll8k", "pll11k", "clkext3";
-					dmas = <&sdma2 24 25 0x80000000>;
+					dmas = <&sdma2 24 25 0>;
 					dma-names = "rx";
 					#sound-dai-cells = <0>;
 					status = "disabled";
-- 
2.39.5


