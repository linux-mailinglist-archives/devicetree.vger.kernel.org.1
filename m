Return-Path: <devicetree+bounces-25431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC3F8133CF
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:02:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9936A1F22270
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 15:02:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01AF25B5B9;
	Thu, 14 Dec 2023 15:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="Uv263hjS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80311BD
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 07:02:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702566170; x=1734102170;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=3weEccDHP4bYdWEvQd79Jf6N+sA5GjhNZ6jCZiq2E7o=;
  b=Uv263hjSwIYM3RoN2gbcpEBIr3LAJaSH9g7etb0ts4eShEmR9IThCoDh
   nr5XOTQbgwRrfny6Rmi+1q1FMGZWPApQCrHaIU20xlVrxJImnjxwIP4sE
   KUTVTzXlKhYhw07ykKFVS52ucEQZ6wprz8bn8XllIYVvm5ZGhfSgr7pyR
   RNJ7UErTV8shgfpRlwQ+lBfSjBAEFqDfolhgNA+Lj9GeRtdlmzAbBsvTH
   EqCjCF5Hy/7FPn+Mv1bbXQ0febn1Qi7kgpHr/+kvwo9Bg2bcmp4+Xlx0d
   wav2/yeae6AUm9m5aSKwIOR48FI4GHME2GpisUaa7HxSy7TUTM5ESQgoj
   w==;
X-IronPort-AV: E=Sophos;i="6.04,275,1695679200"; 
   d="scan'208";a="34513400"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2023 16:02:44 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C2271280075;
	Thu, 14 Dec 2023 16:02:44 +0100 (CET)
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
Subject: [PATCH 4/5] arm64: dts: imx8qxp: Add mclkout clock gates
Date: Thu, 14 Dec 2023 16:02:42 +0100
Message-Id: <20231214150243.1991532-5-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214150243.1991532-1-alexander.stein@ew.tq-group.com>
References: <20231214150243.1991532-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

These clock gates provide a clock output on ACM_MCLK_OUT pads. They are
intended to be used as MCLK for SAI0-3.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../boot/dts/freescale/imx8-ss-audio.dtsi     | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
index 29a7d10f7db3d..07afeb78ed564 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
@@ -403,6 +403,26 @@ aud_pll_div1_lpcg: clock-controller@59d30000 {
 		power-domains = <&pd IMX_SC_R_AUDIO_PLL_1>;
 	};
 
+	mclkout0_lpcg: clock-controller@59d50000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x59d50000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&acm IMX_ADMA_ACM_MCLKOUT0_SEL>;
+		clock-indices = <IMX_LPCG_CLK_0>;
+		clock-output-names = "mclkout0_lpcg_clk";
+		power-domains = <&pd IMX_SC_R_MCLK_OUT_0>;
+	};
+
+	mclkout1_lpcg: clock-controller@59d60000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x59d60000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&acm IMX_ADMA_ACM_MCLKOUT1_SEL>;
+		clock-indices = <IMX_LPCG_CLK_0>;
+		clock-output-names = "mclkout1_lpcg_clk";
+		power-domains = <&pd IMX_SC_R_MCLK_OUT_1>;
+	};
+
 	acm: acm@59e00000 {
 		compatible = "fsl,imx8qxp-acm";
 		reg = <0x59e00000 0x1d0000>;
-- 
2.34.1


