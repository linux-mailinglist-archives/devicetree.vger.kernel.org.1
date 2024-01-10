Return-Path: <devicetree+bounces-30897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8EB8296CD
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 11:01:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 909DE1C25D1E
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 10:01:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64D5F3D967;
	Wed, 10 Jan 2024 10:00:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="iPFUFPMW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B21E3F8D4
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 10:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1704880854; x=1736416854;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=OLyp1ICWd0G/YPF8zkEl5A+hQlhmDxp0FKlzwStg3RA=;
  b=iPFUFPMWFsY5jaLaPq+HlnGaUVwYvSgHoLStnl54dURgKt1ahavZns5k
   gUuiXjuGKEOO5UVHz/gDUEHHIDwRkFh3GOtyqj/3oMozm47jTkL21B9X0
   6NiFOzEcULu/fOQCPZPVHPmlKEWi2E9OeSdtx+F4OkqwY4J6rSmDK/ZpY
   Vflj+lbLP5csY7AE/amRju/tax3ipP0+ftYkS92CHE1OKwsoD0Vr/H5nm
   JxEJwXIPGEcOodYNO6ouhsDtbLsBGS7ytIRVClV5cSK4J8C1fqRXz2KOK
   QfPHZDJqOjGwdpbrq/Cu3v0we8Y9ynn+1L1yNwx5mnbOLvAejVSqUybH9
   w==;
X-IronPort-AV: E=Sophos;i="6.04,184,1695679200"; 
   d="scan'208";a="34825035"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 10 Jan 2024 11:00:51 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 97FCC280075;
	Wed, 10 Jan 2024 11:00:51 +0100 (CET)
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
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: imx8mp: reparent MEDIA_MIPI_PHY1_REF to CLK_24M
Date: Wed, 10 Jan 2024 11:00:48 +0100
Message-Id: <20240110100048.478001-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is already done in dsi node, introduced in commit eda09fe149df4
("arm64: dts: imx8mp: Add display pipeline components").
This needs to be applied to csi nodes as well or the clock might be busy
if both csi and dsi nodes are enabled.
Fixes error:
 clk: failed to reparent media_mipi_phy1_ref to osc_24m: -16

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 76c73daf546bd..9ab9c057f41ea 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1636,8 +1636,10 @@ mipi_csi_0: csi@32e40000 {
 					 <&clk IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT>,
 					 <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>;
 				clock-names = "pclk", "wrap", "phy", "axi";
-				assigned-clocks = <&clk IMX8MP_CLK_MEDIA_CAM1_PIX>;
-				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>;
+				assigned-clocks = <&clk IMX8MP_CLK_MEDIA_CAM1_PIX>,
+						  <&clk IMX8MP_CLK_MEDIA_MIPI_PHY1_REF>;
+				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>,
+							 <&clk IMX8MP_CLK_24M>;
 				assigned-clock-rates = <500000000>;
 				power-domains = <&media_blk_ctrl IMX8MP_MEDIABLK_PD_MIPI_CSI2_1>;
 				status = "disabled";
@@ -1670,8 +1672,10 @@ mipi_csi_1: csi@32e50000 {
 					 <&clk IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT>,
 					 <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>;
 				clock-names = "pclk", "wrap", "phy", "axi";
-				assigned-clocks = <&clk IMX8MP_CLK_MEDIA_CAM2_PIX>;
-				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>;
+				assigned-clocks = <&clk IMX8MP_CLK_MEDIA_CAM1_PIX>,
+						  <&clk IMX8MP_CLK_MEDIA_MIPI_PHY1_REF>;
+				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>,
+							 <&clk IMX8MP_CLK_24M>;
 				assigned-clock-rates = <266000000>;
 				power-domains = <&media_blk_ctrl IMX8MP_MEDIABLK_PD_MIPI_CSI2_2>;
 				status = "disabled";
-- 
2.34.1


