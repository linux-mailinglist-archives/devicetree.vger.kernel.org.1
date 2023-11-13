Return-Path: <devicetree+bounces-15337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A097E9BDE
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:08:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 782051C20865
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 12:08:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E2F11D555;
	Mon, 13 Nov 2023 12:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=feathertop.org header.i=@feathertop.org header.b="ZGNwQm9B";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="oQQok6Df"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D0F1D548
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:08:15 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCDC7D70
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 04:08:14 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 36CC25C0182;
	Mon, 13 Nov 2023 07:08:14 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Mon, 13 Nov 2023 07:08:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1699877294; x=
	1699963694; bh=zHvORWRQtcIWVtbpyvMcONTFEtZd4zutQ/GP55XH68s=; b=Z
	GNwQm9Bk+faJItpqFW0LbPuNmcXrTb/gdolqkBpDJ44Vui9qf0AKydLpVKLz3kxG
	HF0MqujeAaFnz9M6pjxNLVglWD8ILTRbtMBm/tyATrZ+Ma+Xbkfpa3I0JrYVlFZh
	ZFDFljGc2K7f8u0mGCbMqwtaSoFbTtOWb3++2jY+Nqwz0iI+jmR6hYe6NxCaNeoL
	Lg5vE7eCU2L7kK6w8QjvSRAFEAuaVZs21PwhtJrfsS790DlxC5sP9iCmil7cqzZa
	kqQlc4M2FuruxUBR81R0dKkXpSnTR/Dvpk86fPGfjENeK7Pc9moOIdDByul4rnWr
	SxxwAKeHH570eX4H5Bk8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1699877294; x=
	1699963694; bh=zHvORWRQtcIWVtbpyvMcONTFEtZd4zutQ/GP55XH68s=; b=o
	QQok6DfUAw5eo/K0+I2/xc83hDyEKoeLE5G1FGfh3SJScsZaX/iITd56mRmqR3Vx
	YiDyPkISLSkGm67IGaN4oC9ga9NO/UveCD6gc/dvfxmaX0FYvYmS5Kvg45KJtTOs
	52cfmX+GXy/Uauir5CUKrCiWCnSPTfEhCmk4XCeXvZ2N7qKhhSzSywEty8j8pbHQ
	7H686A5kN2GQW23jswSmPgoDpUU6kB4s5SXSd5gJr7FiQwCFScv9hv1MZl+bQ2AC
	kofHR/kZ7jZqEcSxPpgpB2zZJhEyvluk4GJ5tdnTK4SeyKEO6o4pVfEWyMnjk78g
	2Ek3RDtvs1v9pBZtsNbSg==
X-ME-Sender: <xms:rhFSZeXGb0VUUHFQZ92En1-wG3ExDPlBzan41-eDqj5SIx321Q_DWg>
    <xme:rhFSZamJWzaX6PcoW5VIS0CLKqWbVAfNW67YMv-azPApeQo-9fQEFC7IS-7oYu2PN
    1UMCaJOVQ>
X-ME-Received: <xmr:rhFSZSbL08-83AP2dz8J_wq0Z5b09b92dZ7izy2qRft37C99KCcgQIHuTuTvRG3Nem3eN0vJG5n04b_Z7Y5uGimE4wZ2LBYOH7o>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeftddgfeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:rhFSZVUPnUUcin-QfOyKtwO6MUVVjey5OKYxWbE_pMlcNMC7Lr1ixw>
    <xmx:rhFSZYmpRdTArzrI2bw1oBubuosJNtRw3JE2hyw-IpN-LHjNrK0t6w>
    <xmx:rhFSZafhLJERpgQWZjfgWc0gAmu5iVwyqo8O8gh8e6P5Zii7hcsIzQ>
    <xmx:rhFSZSXQTjfEc6DHlu3iO65U5cPMyUf5ylXxkacYKHv7z_UuhnVX1g>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Nov 2023 07:08:08 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Mon, 13 Nov 2023 23:08:04 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tim Lunn <tim@feathertop.org>,
	Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 5/8] ARM: dts: rockchip: rv1126: Split up rgmii1 pinctrl
Date: Mon, 13 Nov 2023 23:07:02 +1100
Message-Id: <20231113120705.1647498-6-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231113120705.1647498-1-tim@feathertop.org>
References: <20231113120705.1647498-1-tim@feathertop.org>
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


