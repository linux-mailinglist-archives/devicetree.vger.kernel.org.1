Return-Path: <devicetree+bounces-10865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AF97D2ECC
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 11:46:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1014BB20C9E
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 09:46:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 420A313AC9;
	Mon, 23 Oct 2023 09:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="n02jASmO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8DDD134CD
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 09:46:16 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E566CA4
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 02:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1698054374; x=1729590374;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=yNDakSBJiLDmDrrKfDAnDXHB76PZcRTWX3Nz0Nx2QS0=;
  b=n02jASmOhoZ7x2imVnaGu+OVId2UMoG/s/Q+WNpck072p0XFVc6CwoB7
   hpKFZjq+EHGDWuH/ucnd4kbollq0vuoIlVKgH32plc+hFkPHpCtRWcdJX
   pk3s+uioMuBoMj2towl+mSU2DZSBo+iH8M7KSb6MC9EU6acYuO1DlxMPH
   39C6IKuZ8Bda0w8lf5k3q7kVBtenGS7h7tOkmNu4eWkzmr3BypKCYzyeo
   dLQnTkbB92Sxda6wK6dS6CxMcRYENU15Ul2mPWOZSP1IztpffnlcHa+3d
   vsuLGw0QbY/bgo44s/wMtW0yg6+DZHWIMrHP914Wzuso7mvFrP7JUJBCF
   w==;
X-IronPort-AV: E=Sophos;i="6.03,244,1694728800"; 
   d="scan'208";a="33597591"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 23 Oct 2023 11:46:12 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 9829828007F;
	Mon, 23 Oct 2023 11:46:12 +0200 (CEST)
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
Subject: [PATCH 1/1] ARM: dts: imx7s: Add DMA channels for CSPI peripherals
Date: Mon, 23 Oct 2023 11:46:12 +0200
Message-Id: <20231023094612.374487-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds the rx/tx DMA channels for CSPI peripherals. Channel numbers
are taken from i.MX7D RM Rev1 01/2018.
Peripheral types ID (7) is selected according to fsl,imx-sdma.yaml and
is similar to i.MX6 and i.MX8M platforms. Same goes for transfer
priority ID (last number).

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Tested on TQMa7D/MBa7x using the on-board SPI attached NOR flash.

 arch/arm/boot/dts/nxp/imx/imx7s.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7s.dtsi b/arch/arm/boot/dts/nxp/imx/imx7s.dtsi
index b563383be695..38a72f969b4e 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7s.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7s.dtsi
@@ -725,6 +725,8 @@ ecspi4: spi@30630000 {
 				clocks = <&clks IMX7D_ECSPI4_ROOT_CLK>,
 					<&clks IMX7D_ECSPI4_ROOT_CLK>;
 				clock-names = "ipg", "per";
+				dma-names = "rx", "tx";
+				dmas = <&sdma 6 7 1>, <&sdma 7 7 2>;
 				status = "disabled";
 			};
 
@@ -880,6 +882,8 @@ ecspi1: spi@30820000 {
 					clocks = <&clks IMX7D_ECSPI1_ROOT_CLK>,
 						<&clks IMX7D_ECSPI1_ROOT_CLK>;
 					clock-names = "ipg", "per";
+					dma-names = "rx", "tx";
+					dmas = <&sdma 0 7 1>, <&sdma 1 7 2>;
 					status = "disabled";
 				};
 
@@ -892,6 +896,8 @@ ecspi2: spi@30830000 {
 					clocks = <&clks IMX7D_ECSPI2_ROOT_CLK>,
 						<&clks IMX7D_ECSPI2_ROOT_CLK>;
 					clock-names = "ipg", "per";
+					dma-names = "rx", "tx";
+					dmas = <&sdma 2 7 1>, <&sdma 3 7 2>;
 					status = "disabled";
 				};
 
@@ -904,6 +910,8 @@ ecspi3: spi@30840000 {
 					clocks = <&clks IMX7D_ECSPI3_ROOT_CLK>,
 						<&clks IMX7D_ECSPI3_ROOT_CLK>;
 					clock-names = "ipg", "per";
+					dma-names = "rx", "tx";
+					dmas = <&sdma 4 7 1>, <&sdma 5 7 2>;
 					status = "disabled";
 				};
 
-- 
2.34.1


