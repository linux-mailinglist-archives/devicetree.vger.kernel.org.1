Return-Path: <devicetree+bounces-15336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 462677E9BDD
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:08:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 761411C208C7
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 12:08:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8252A1D548;
	Mon, 13 Nov 2023 12:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=feathertop.org header.i=@feathertop.org header.b="sBqiJz80";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="cpQQ9UlL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE7C61D52A
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:08:05 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0FE3D72
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 04:08:04 -0800 (PST)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 135975C0181;
	Mon, 13 Nov 2023 07:08:04 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 13 Nov 2023 07:08:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1699877284; x=
	1699963684; bh=b3z39HLU34Zt/Lgi51vnxGDXiUQ6mRqHti2fdY7ohMI=; b=s
	BqiJz80GUn9cTG1h5BE1k+Sl3zqGjWheLFBxoURltrW6MAG4lWxArXgQJ9/UjVV0
	dgWTePzHQSso4RYzZIV1CnMTz1f/uAyIRip7uc2D5e9J1uo9IQHOzoNU5nc5iUcO
	Du4C5Ls9B4HQ0tG4tkeeJN4khXrMjiCrrSeMMg17W3f13EAK6OYpCgqVim0tkjtC
	dI96CFjVF1dQF7JlQcpsOu8audD1E9CT01z1z5p3pLZHiv8/VrnSnfVqxwS46fSF
	ji5NmatboX/q9t5G1LrbzCPQ+36AJRqMr5DRSyx2yK43kWe+2N+OEf4G+kEISmLZ
	LJ0c0TRexwSExjSazUWBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1699877284; x=
	1699963684; bh=b3z39HLU34Zt/Lgi51vnxGDXiUQ6mRqHti2fdY7ohMI=; b=c
	pQQ9UlLytylRTwjKO470KiGLUSJBG5HmgoN6neF2fTUyXEZYxa/TQXVVNYv3Hxer
	CUQ9L/FMNPcPYtqZXNPlFGsxP6+hbt4FqPepLPD9TJXdgr7udx0OGwA6ef24TzV1
	3pCfYSaYcgVZ7TYKRFX4M9sTDRcrB32j0kJsAANCPvTKYBjs4/Rhg3hK5PfTlDqx
	TRoo+BaH/QQeqw6sEURq/tj8UM3aplpuFMfijUtCLimfIdVdxRkFjvOlnSG6uQhX
	e8u3iOzt+gADnI4tSzWbdYFHYXLXuRflAho9ujUZI2Rw8MRyjNiX/2WysSka2krh
	MJcto8aCuPMV11AcIvT4g==
X-ME-Sender: <xms:oxFSZVeiOCHVntMxLRF9op7PcUpdKwl-YQv3ye7xBs391OFy0m3R2Q>
    <xme:oxFSZTNlIWn2UeqkrqrMohCFkGM0W4LbeiIRAp6c80JvTat2zCw_jDuraSaapyIYu
    l1a-7a3kw>
X-ME-Received: <xmr:oxFSZehAiECSSkEPFYEqSNzsYcbvFrAJk68eHY_4SQFJzToBsXRafmpYjcJSzAugQLQSrmBHargE8tWvcT7VyKTJd4p9jSnLjm4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeftddgfeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:oxFSZe9-Fy_Zm2koxkAfAzOdQT4xvDJYcist0iOT6X_4O9SsJ8i_pA>
    <xmx:oxFSZRuKo6sqrUJK1W7UhNV4igxREp7_aOoJWblUl4u_SsFOzzueEg>
    <xmx:oxFSZdGrgD7Y5ZonmPiz6Bw5k6h-MZdWNwmPh9F5hsxNTipo0PNghw>
    <xmx:pBFSZS-iyuEZDpl8aM2EyYLfFxjQhv1kQtKGDa4mPlge3U_k6lnQGA>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Nov 2023 07:07:58 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Mon, 13 Nov 2023 23:07:54 +1100
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
Subject: [PATCH 4/8] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Date: Mon, 13 Nov 2023 23:07:01 +1100
Message-Id: <20231113120705.1647498-5-tim@feathertop.org>
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

Add i2c2 node and i2c2_xfer pinctrl for Rockchip RV1126

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 10 ++++++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi         | 15 +++++++++++++++
 2 files changed, 25 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index 4f85b7b3fc4c..167a48afa3a4 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -87,6 +87,16 @@ i2c0_xfer: i2c0-xfer {
 				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
 		};
 	};
+	i2c2 {
+		/omit-if-no-ref/
+		i2c2_xfer: i2c2-xfer {
+			rockchip,pins =
+				/* i2c2_scl */
+				<0 RK_PC2 1 &pcfg_pull_none_drv_level_0_smt>,
+				/* i2c2_sda */
+				<0 RK_PC3 1 &pcfg_pull_none_drv_level_0_smt>;
+		};
+	};
 	pwm2 {
 		/omit-if-no-ref/
 		pwm2m0_pins: pwm2m0-pins {
diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index 6c5c928f06c7..cf1df75df418 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -21,6 +21,7 @@ / {
 
 	aliases {
 		i2c0 = &i2c0;
+		i2c2 = &i2c2;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
@@ -236,6 +237,20 @@ i2c0: i2c@ff3f0000 {
 		status = "disabled";
 	};
 
+	i2c2: i2c@ff400000 {
+		compatible = "rockchip,rv1126-i2c", "rockchip,rk3399-i2c";
+		reg = <0xff400000 0x1000>;
+		interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
+		rockchip,grf = <&pmugrf>;
+		clocks = <&pmucru CLK_I2C2>, <&pmucru PCLK_I2C2>;
+		clock-names = "i2c", "pclk";
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2c2_xfer>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
 	uart1: serial@ff410000 {
 		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
 		reg = <0xff410000 0x100>;
-- 
2.40.1


