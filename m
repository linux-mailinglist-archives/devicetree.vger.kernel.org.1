Return-Path: <devicetree+bounces-18292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1AA7F6074
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 14:38:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 531EFB21459
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 13:38:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A74125112;
	Thu, 23 Nov 2023 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhN61Erz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCB7250E2
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 13:38:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E51CC4339A;
	Thu, 23 Nov 2023 13:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700746695;
	bh=KAXGKMe2WBFft3tNq3FpiQGsTc/R5/rmU8Cl5gayixE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BhN61ErzqtMja4ZFFmQQN/xzpcG0fK/ObB0YFgMn1t1PGix45506/KGgqWs9ohzmp
	 teG1YFzyk9oQHh3zwqPYA0hlBtfBusl0Z6r345MOhJnm8rvM4KB48x0iaNk4nldz/u
	 ZS9+xmE2mHJ2uXcQThWf2D8dspHlyDLqj7SjTHHtbjnWOocfW8x7aUWleDr2BtpDjB
	 e5xvjFGDf3TbYpIGlY/vHoscApV9jwAZHzjyfe70iG1Z11sj2tcDmNKKqaVZtAr0qI
	 GXIDyaX0p2WxIBxhNqyYA3+ZN7Nm5yJgt1gk1jWhI4PR5du6I3bNv6b+7Svp2m+9wn
	 NxEvBWQHWjUjA==
From: Michael Walle <mwalle@kernel.org>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	Xinlei Lee <xinlei.lee@mediatek.com>
Cc: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Michael Walle <mwalle@kernel.org>
Subject: [PATCH 3/4] arm64: dts: mediatek: mt8195: add DSI and MIPI DPHY nodes
Date: Thu, 23 Nov 2023 14:37:48 +0100
Message-Id: <20231123133749.2030661-4-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231123133749.2030661-1-mwalle@kernel.org>
References: <20231123133749.2030661-1-mwalle@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the two DSI controller node and the associated DPHY nodes.
Individual boards have to enable them in the board device tree.

Signed-off-by: Michael Walle <mwalle@kernel.org>
---
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 48 ++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index 54c674c45b49..0621bb461967 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -1714,6 +1714,26 @@ u2port3: usb-phy@0 {
 			};
 		};
 
+		mipi_tx0: dsi-phy@11c80000 {
+			compatible = "mediatek,mt8195-mipi-tx", "mediatek,mt8183-mipi-tx";
+			reg = <0 0x11c80000 0 0x1000>;
+			clocks = <&clk26m>;
+			clock-output-names = "mipi_tx0_pll";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		mipi_tx1: dsi-phy@11c90000 {
+			compatible = "mediatek,mt8195-mipi-tx", "mediatek,mt8183-mipi-tx";
+			reg = <0 0x11c90000 0 0x1000>;
+			clocks = <&clk26m>;
+			clock-output-names = "mipi_tx1_pll";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
 		i2c5: i2c@11d00000 {
 			compatible = "mediatek,mt8195-i2c",
 				     "mediatek,mt8192-i2c";
@@ -2737,6 +2757,20 @@ dither0: dither@1c007000 {
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c00XXXX 0x7000 0x1000>;
 		};
 
+		dsi0: dsi@1c008000 {
+			compatible = "mediatek,mt8195-dsi", "mediatek,mt8183-dsi";
+			reg = <0 0x1c008000 0 0x1000>;
+			interrupts = <GIC_SPI 644 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS0>;
+			clocks = <&vdosys0 CLK_VDO0_DSI0>,
+				 <&vdosys0 CLK_VDO0_DSI0_DSI>,
+				 <&mipi_tx0>;
+			clock-names = "engine", "digital", "hs";
+			phys = <&mipi_tx0>;
+			phy-names = "dphy";
+			status = "disabled";
+		};
+
 		dsc0: dsc@1c009000 {
 			compatible = "mediatek,mt8195-disp-dsc";
 			reg = <0 0x1c009000 0 0x1000>;
@@ -2746,6 +2780,20 @@ dsc0: dsc@1c009000 {
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c00XXXX 0x9000 0x1000>;
 		};
 
+		dsi1: dsi@1c012000 {
+			compatible = "mediatek,mt8195-dsi", "mediatek,mt8183-dsi";
+			reg = <0 0x1c012000 0 0x1000>;
+			interrupts = <GIC_SPI 654 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS0>;
+			clocks = <&vdosys0 CLK_VDO0_DSI1>,
+				 <&vdosys0 CLK_VDO0_DSI1_DSI>,
+				 <&mipi_tx1>;
+			clock-names = "engine", "digital", "hs";
+			phys = <&mipi_tx1>;
+			phy-names = "dphy";
+			status = "disabled";
+		};
+
 		merge0: merge@1c014000 {
 			compatible = "mediatek,mt8195-disp-merge";
 			reg = <0 0x1c014000 0 0x1000>;
-- 
2.39.2


