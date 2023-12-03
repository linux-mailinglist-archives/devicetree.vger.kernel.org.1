Return-Path: <devicetree+bounces-21083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E548023C9
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 13:40:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 23E691C20829
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 12:40:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F63AD30B;
	Sun,  3 Dec 2023 12:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=feathertop.org header.i=@feathertop.org header.b="OFcTly8G";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="a3otkyWE"
X-Original-To: devicetree@vger.kernel.org
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69F9CFF
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 04:40:31 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id D378C5C01B0;
	Sun,  3 Dec 2023 07:40:30 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Sun, 03 Dec 2023 07:40:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1701607230; x=
	1701693630; bh=fHjqMIVkUoOeZZGQ1RvEQKU4oOmmUmOkrhmvKngdij4=; b=O
	FcTly8G3zoochwKapCK0Ox9OXcMlcXT1kPU+G2XaNtPXSLMaaYJoHchcfeFaDl32
	FZTeHTzibJrkebxTH4GS2FK7eUn7MBevo0sD1jXJMrwjCz+ZKElswKCA1HcB1Z9h
	Rk4y3igvCgyK+XYDUMbIap3DcWivRozAIRY/Y5kO/lkIjqBkwRn3+0D6CnhLYGxd
	FYnbHvTdCkt0lv4bvX02jiiXqj+8pJhrcx7pfTy6MCom1jfkD6x6RWcbpbGu0hwT
	LCjeNmwCO/wQVAzL/GRqxNWbk6eTEOsjAFO91ewL7kt9SSbMKLL10XbURPffY3Zv
	B/jNEcae8KMMA84btqO8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1701607230; x=
	1701693630; bh=fHjqMIVkUoOeZZGQ1RvEQKU4oOmmUmOkrhmvKngdij4=; b=a
	3otkyWEtX4FN6yDMBFJw9teC79oeglliRuafTFepdIMPFXMq8VOYqFzCizBlEe0w
	8ytXbY+P0yPsEo1A2pM5EScSUIIa8lU74/a7EnBgW4nLciCZBL4EwdDz6qLxm9dd
	JEd6zVNSq53HHUHfz08/y+mGgjd4uV034vbsXnjeD3AXQESOcI4t9sQYlW0oscI4
	HwGSP4UIrmKzEMQCPonCgQpwi+TeEO5/9+QhUKrCRqqC5x6yqeqaPcggNBHhMwrI
	cq2zoGSmtGQAE+OANEpf1/LoAm23nDHLpqo2SOMBieS2HvBtbsiZChcKKg3k74ud
	1jzz+CNfQi5rZ4RVBdaFA==
X-ME-Sender: <xms:PndsZa54Wl883adNnvvVfkdnQEh-iRZUVy9JSx-7cJOmjdRguT6WMA>
    <xme:PndsZT7ST05nPX8AUrOhLLrBUn-A8NCyVKUCzSaWbn8F4FkR-xvbM2EZ9Lgx74Hak
    V2IYg2p3g>
X-ME-Received: <xmr:PndsZZeQaJt2xpbYSkQw5p3IZ9xW_HR3HDc9hNUMLQaN-wneteRsbmKAK0wlcOgfx_D05GHXUAmFTPODaDpTKxQJMYI6iVHuOT4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudejgedggeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:PndsZXKmhJ9VHkFCasDpqYlFigKR3abmxodyhglw2WGV3svLFomtTA>
    <xmx:PndsZeIOYaJnpGrbIBkaSQT_XoY3nWh4YsIXnb_yHvzzLoRgDbUbXg>
    <xmx:PndsZYz-8Ivjb5fUGFEHeTjKxHI4itvlfnx_T5GaT4Nsctc2BHSiQQ>
    <xmx:PndsZfpnavjRWvXv5EH27mjpQPvEMT_dkTl7NMJQeICWUefW9CjxSQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 3 Dec 2023 07:40:25 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Sun, 03 Dec 2023 23:40:22 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tim Lunn <tim@feathertop.org>
Subject: [PATCH v3 1/8] ARM: dts: rockchip: rv1126: Add alternate UART pins
Date: Sun,  3 Dec 2023 23:39:57 +1100
Message-Id: <20231203124004.2676174-2-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231203124004.2676174-1-tim@feathertop.org>
References: <20231203124004.2676174-1-tim@feathertop.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add uart3m2_xfer and uart4m2_xfer pins for Rockchip RV1126. These are
used as serial ports for the indicator and Zigbee radio on the iHost.

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

(no changes since v1)

 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index bb34b0c9cb4a..4f85b7b3fc4c 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -263,6 +263,14 @@ uart3m0_xfer: uart3m0-xfer {
 				/* uart3_tx_m0 */
 				<3 RK_PC6 4 &pcfg_pull_up>;
 		};
+		/omit-if-no-ref/
+		uart3m2_xfer: uart3m2-xfer {
+			rockchip,pins =
+				/* uart3_rx_m2 */
+				<3 RK_PA1 4 &pcfg_pull_up>,
+				/* uart3_tx_m2 */
+				<3 RK_PA0 4 &pcfg_pull_up>;
+		};
 	};
 	uart4 {
 		/omit-if-no-ref/
@@ -273,6 +281,14 @@ uart4m0_xfer: uart4m0-xfer {
 				/* uart4_tx_m0 */
 				<3 RK_PA4 4 &pcfg_pull_up>;
 		};
+		/omit-if-no-ref/
+		uart4m2_xfer: uart4m2-xfer {
+			rockchip,pins =
+				/* uart4_rx_m2 */
+				<1 RK_PD4 3 &pcfg_pull_up>,
+				/* uart4_tx_m2 */
+				<1 RK_PD5 3 &pcfg_pull_up>;
+		};
 	};
 	uart5 {
 		/omit-if-no-ref/
-- 
2.40.1


