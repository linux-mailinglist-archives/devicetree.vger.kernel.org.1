Return-Path: <devicetree+bounces-17895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6557F45EE
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 13:23:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A6509280D36
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 12:23:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D3F14D5A2;
	Wed, 22 Nov 2023 12:23:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=feathertop.org header.i=@feathertop.org header.b="I9v2mkDb";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="AAts6AOT"
X-Original-To: devicetree@vger.kernel.org
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C80BD40
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 04:23:35 -0800 (PST)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailout.west.internal (Postfix) with ESMTP id 3294D3200B13;
	Wed, 22 Nov 2023 07:23:34 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute7.internal (MEProxy); Wed, 22 Nov 2023 07:23:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1700655813; x=
	1700742213; bh=EfSIpF5QpRJ/kH88XgJaJqNVfScOGC+iP6Jlp3rOY24=; b=I
	9v2mkDboYLJqiyqnALxwW6oW1DqlQxn9wVmo/c6Em1rbWsfEfvrEjiLvffcRN/76
	U1seAeATdL87VR0RCJVu18YGmQ2DD2YqAdlOv8U9TKLxhSz0a24uWdc4Yem4xD9a
	B7xQZpHENsRiDoVb51TnYgPlQO1IlIvY3V/Q8JVMICw1+0JWw2ScqcGNOgbGe/kl
	cOUOPdk79k493cQpoYCynh93l+VCN8p6U90AHrYmKbADlC7dO/mPoybB0hfonHq/
	HEeQcHu37e+dyxjOFKKmSmyh9N0BbrcEL6DsX/03QxOiG025bAFaXbXYvRu9Iv0w
	Pi0quzV7SJ+14Yom2wyuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1700655813; x=
	1700742213; bh=EfSIpF5QpRJ/kH88XgJaJqNVfScOGC+iP6Jlp3rOY24=; b=A
	Ats6AOTGg68qyNG3t/rwfz0sFgO2iUqRN/6bOCuQkll2JY68xCVFgw/o1xYfI4to
	KVLpXt0oERM9CT8n3uDYEm51yCnDeFyLGB8ASUKEARPJ5qapxEi6NzB4h6RBUzBC
	VJU+zIemuw/vGYQ6YvMeT1vmNaQ/uUtEUzaFJsRF/IVeyWl3uKMUoyJSCXgmXfqv
	m/ZtJXEqGwv64eRj4o0aJG6rmZqMZ3YKpnIiMnVS5pCgufy3/m12rpymOMYpGyEf
	+aI2cZv77LYMauk4sE/deHuUy3nHBHdZ5md8UpoM6vIItLPpMovKZwovlCLGhnqv
	mx0QMKxD5L7WO5bT/vXfQ==
X-ME-Sender: <xms:xfJdZZnypb0TxiXLsvEkvaWpeyLqRJYFcSLXTL_hklsGH5q_UmhHdg>
    <xme:xfJdZU3dn3KighPuZVrOJFL1Ardj45bP-nEC3Ez2Mn5SIu9GNKgaKMT9FFkitgWf7
    kp_HLOa8w>
X-ME-Received: <xmr:xfJdZfq_QC_3FGAHuHJnQOTEwawpuOscJkqVB9_qITUoXAuy2RjhQv8s8P2OPf4Db9jatgKtkvKaatfo8bmox8sNZ1RJJfVZ-H4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudehuddgfeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:xfJdZZnFZ1ZxzzFy9NLdUkr2Xxfqv-bjrgmqXtMnC4eW9m6EuSGQhA>
    <xmx:xfJdZX1cBhn_Hz_qNrBZUkaQn9gGZwAF1-SKkQeJH78d_XF2orq3zQ>
    <xmx:xfJdZYtL8Iijdmf-iPnN6CE1kDP6D7Xf8XEyJypD5zowOsZfQ6ZCjQ>
    <xmx:xfJdZclUn3NccG5cvO_-QN3Gv7m0EKq33bcedZtekKhyLsjtahJsGQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 22 Nov 2023 07:23:28 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Wed, 22 Nov 2023 23:23:25 +1100
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
Subject: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Date: Wed, 22 Nov 2023 23:22:27 +1100
Message-Id: <20231122122232.952696-5-tim@feathertop.org>
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

Add i2c2 node and i2c2_xfer pinctrl for Rockchip RV1126

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

(no changes since v1)

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


