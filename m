Return-Path: <devicetree+bounces-17896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 725E97F45EF
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 13:23:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B2D528035B
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 12:23:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCB124D5A9;
	Wed, 22 Nov 2023 12:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=feathertop.org header.i=@feathertop.org header.b="Za2T+ROj";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="hZ/mwYQn"
X-Original-To: devicetree@vger.kernel.org
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DE5C98
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 04:23:45 -0800 (PST)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 2F3823200B11;
	Wed, 22 Nov 2023 07:23:44 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Wed, 22 Nov 2023 07:23:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1700655823; x=
	1700742223; bh=6637XqfC1TU1Zxz/vKsJf0uaCKGteqr2+3uCTcMSoVw=; b=Z
	a2T+ROjXNRPUZO++hgQI9uPIpKKf4sFm5NAMCJ1W0cWmc6W0u6wwoaxWgyofwIBl
	RJebistqmwHW50rEa9iZXD45B5MfNV0IIP/jSi+9ZxEGEChcKw/i6ZdglM+yjPQH
	tqpsVL2eFCDva8abWTZS4HOJs4R4UWmG1KT5waKJPgd8BonN6LZAZBd2R8/mvTJM
	B9pwKXVQapl52smJOCg30tIErFk+T4S42H0CMJKV5u9ddvtai5AS8P7Z1VKIqTvz
	AWycOHKxmdYDC/hXbZR3uoVnRoxcEBKp03UE6aSbCc91cvGx0mJpDfHn1xug0j/C
	TFT45tDd0WPAViideHz3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1700655823; x=
	1700742223; bh=6637XqfC1TU1Zxz/vKsJf0uaCKGteqr2+3uCTcMSoVw=; b=h
	Z/mwYQno5eYY1jZkScHdXU9bsKI345nOrbCDeupk783CzxDMsjyU2/hvDeyEY7sD
	C+XPx7aHtbCRxvpzHPSi5xF2TJhRwXcfu7fE9w8y6JVzuxmjr2QKc+Ih5cxmgNMl
	q+yXgZ26LcDJbKw+pseON2luRcW/jB7ycmSJRFAek3F7zt0DdNVOz/cpLUhcKIs4
	B/kcZEbRUg0NMTDv5iHfL4vby3FkMlLYMCi16yKq4Tm38CCYhwM4Zfszpx6HSO4L
	LFE+yHCt9vcHj/Ja7geEazRUptLJGXRyY55y0klOLtzsE+A2N7GzmtnpyLnhpl3+
	yZn/x9nQBuOn86wzMH8ZA==
X-ME-Sender: <xms:z_JdZXKnL2l3K_BZ3AuN5Sm1hNDpyYslLhzvFb6fHqTX6_tJ0rbm1g>
    <xme:z_JdZbLTyBov1eYzcdcg77y3glpb2gXO2RSuibRGxhd9DhI0WEVg3IyhWkeadbyX_
    -inGMJ_8w>
X-ME-Received: <xmr:z_JdZftmLFHK3tljbDqmFCOvUSlBf8Et-LoJgFTLWlhZ1C9RyzHSiwTyHsGcZEqR8fU-gREt1095Gr9M0-sfuY0Oa1s5reGqmYo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudehuddgfeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:z_JdZQbHtFJ7c6O7qIoMVmyb68dpqQUTpZcoVL-BSEkdDUgqWyqrXw>
    <xmx:z_JdZeblk4ubAbCisM8UitLxQ1-1QvBVqsNL7KWs4PBxLjPZ3EKq1g>
    <xmx:z_JdZUAjdDMnB5mpj8T0Z05PFYNH8vDYXayWMCbUf9E7xxNjEiGb4g>
    <xmx:z_JdZW6utv2NuW1J3EM-5-WAP_MHc7mq1St-58UbDrQsyWXTT9StDA>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 22 Nov 2023 07:23:38 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Wed, 22 Nov 2023 23:23:35 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Tim Lunn <tim@feathertop.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v2 5/9] ARM: dts: rockchip: rv1126: Split up rgmii1 pinctrl
Date: Wed, 22 Nov 2023 23:22:28 +1100
Message-Id: <20231122122232.952696-6-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231122122232.952696-1-tim@feathertop.org>
References: <20231122122232.952696-1-tim@feathertop.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Split up the pinctrl definitions for rgmii1 so it can be shared
with devices using an RMII PHY.

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

(no changes since v1)

 .../dts/rockchip/rv1126-edgeble-neu2-io.dts   |  2 +-
 .../arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 46 +++++++++++++------
 2 files changed, 34 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
index f09be8405964..0c2396b8f8db 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
+++ b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
@@ -61,7 +61,7 @@ &gmac {
 	phy-mode = "rgmii";
 	phy-supply = <&vcc_3v3>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&rgmiim1_pins &clk_out_ethernetm1_pins>;
+	pinctrl-0 = <&rgmiim1_miim &rgmiim1_bus2 &rgmiim1_bus4 &clk_out_ethernetm1_pins>;
 	tx_delay = <0x2a>;
 	rx_delay = <0x1a>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index 167a48afa3a4..06b1d7f2d858 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -115,36 +115,56 @@ pwm11m0_pins: pwm11m0-pins {
 	};
 	rgmii {
 		/omit-if-no-ref/
-		rgmiim1_pins: rgmiim1-pins {
+		rgmiim1_miim: rgmiim1-miim {
 			rockchip,pins =
 				/* rgmii_mdc_m1 */
 				<2 RK_PC2 2 &pcfg_pull_none>,
 				/* rgmii_mdio_m1 */
-				<2 RK_PC1 2 &pcfg_pull_none>,
-				/* rgmii_rxclk_m1 */
-				<2 RK_PD3 2 &pcfg_pull_none>,
+				<2 RK_PC1 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		rgmiim1_rxer: rgmiim1-rxer {
+			rockchip,pins =
+				/* rgmii_rxer_m1 */
+				<2 RK_PC0 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		rgmiim1_bus2: rgmiim1-bus2 {
+			rockchip,pins =
 				/* rgmii_rxd0_m1 */
 				<2 RK_PB5 2 &pcfg_pull_none>,
 				/* rgmii_rxd1_m1 */
 				<2 RK_PB6 2 &pcfg_pull_none>,
-				/* rgmii_rxd2_m1 */
-				<2 RK_PC7 2 &pcfg_pull_none>,
-				/* rgmii_rxd3_m1 */
-				<2 RK_PD0 2 &pcfg_pull_none>,
 				/* rgmii_rxdv_m1 */
 				<2 RK_PB4 2 &pcfg_pull_none>,
-				/* rgmii_txclk_m1 */
-				<2 RK_PD2 2 &pcfg_pull_none_drv_level_3>,
 				/* rgmii_txd0_m1 */
 				<2 RK_PC3 2 &pcfg_pull_none_drv_level_3>,
 				/* rgmii_txd1_m1 */
 				<2 RK_PC4 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txen_m1 */
+				<2 RK_PC6 2 &pcfg_pull_none_drv_level_3>;
+		};
+		/omit-if-no-ref/
+		rgmiim1_bus4: rgmiim1-bus4 {
+			rockchip,pins =
+				/* rgmii_rxclk_m1 */
+				<2 RK_PD3 2 &pcfg_pull_none>,
+				/* rgmii_rxd2_m1 */
+				<2 RK_PC7 2 &pcfg_pull_none>,
+				/* rgmii_rxd3_m1 */
+				<2 RK_PD0 2 &pcfg_pull_none>,
+				/* rgmii_txclk_m1 */
+				<2 RK_PD2 2 &pcfg_pull_none_drv_level_3>,
 				/* rgmii_txd2_m1 */
 				<2 RK_PD1 2 &pcfg_pull_none_drv_level_3>,
 				/* rgmii_txd3_m1 */
-				<2 RK_PA4 2 &pcfg_pull_none_drv_level_3>,
-				/* rgmii_txen_m1 */
-				<2 RK_PC6 2 &pcfg_pull_none_drv_level_3>;
+				<2 RK_PA4 2 &pcfg_pull_none_drv_level_3>;
+		};
+		/omit-if-no-ref/
+		rgmiim1_mclkinout: rgmiim1-mclkinout {
+			rockchip,pins =
+				/* rgmii_clk_m1 */
+				<2 RK_PB7 2 &pcfg_pull_none>;
 		};
 	};
 	sdmmc0 {
-- 
2.40.1


