Return-Path: <devicetree+bounces-247341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 444D7CC7A22
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:35:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CBCF03008D7C
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:35:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCD0636C0D4;
	Wed, 17 Dec 2025 10:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ZOmJCNXE"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239AC36BCEC;
	Wed, 17 Dec 2025 10:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765966784; cv=none; b=oJgAVB78y41k2fbnAvxs1VHWd8RkNLRSP/699+U8m7+Pq+rgdGHFJhUmOug1tsr62I26ugRqLkMUdM2EZlM5GfLuMh4MaN5nbh8CZjg3YbQmD9vZQ1CpSYrT+Yf77Yd4UWiBl9IMbyYvhW5tw60Cd9EEleDcFZUw5pwnwi9VyTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765966784; c=relaxed/simple;
	bh=vNhSVscuscEmPcEu/lvBeEn5gH/+iNIwHB4CcrstT2I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IeVcAqiu8paYQetYN+0A9irzv0ms73cmSj0BpLi+HOGzyya3t9OIz2V4J/EmtemQgF+UeWRmDDLboslIGRgwHD4kzuj6EQVGPMiXeIJAz3r6idjnjBA9MgAXnuJqG8DbqBfXt4NVKGvgXHKNzh1REmkNt3setsfLt7gSXXpDhHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ZOmJCNXE; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765966780;
	bh=vNhSVscuscEmPcEu/lvBeEn5gH/+iNIwHB4CcrstT2I=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ZOmJCNXEjPFxEOxmnHDp1zF50SWP43srE//6wqs47Xa3PnAEO708mgqu9+fXWJqKp
	 ZoyD+mquILovezREDAVb1XG0h+2ofSu2Zg4wahv50aU/FXqhs223YPMC2pXG+Y123w
	 /WD21G5Y6YuJVFDREhNQBd+tXrZBh0XYzpnDdxoZ94KLZYJPCiSd7rWQmgjG1zsmuG
	 e2IOXeJ7h7PsncHTOrTk8u6DYpri9mevSvd11EYDjmLQNzv1ZjbNXIhsz0H1qfjdXH
	 MBSv7HqGlRMQ4eUrXPtPda0UcT0cLS0yU+dqsKv6hS82ZoRhcIdWexGESFcUM7ryUe
	 3ACziIix2AQTA==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7B8EB17E1154;
	Wed, 17 Dec 2025 11:19:39 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Wed, 17 Dec 2025 11:19:03 +0100
Subject: [PATCH v2 04/12] arm64: dts: mediatek: mt8195: Add DPI1, HDMI,
 HDMI PHY/DDC nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-mtk-genio-evk-hdmi-support-v2-4-a994976bb39a@collabora.com>
References: <20251217-mtk-genio-evk-hdmi-support-v2-0-a994976bb39a@collabora.com>
In-Reply-To: <20251217-mtk-genio-evk-hdmi-support-v2-0-a994976bb39a@collabora.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Guillaume Ranquet <granquet@baylibre.com>
Cc: kernel@collabora.com, Krzysztof Kozlowski <krzk@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765966775; l=4074;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=Y1v2lGdQpJwleBRikt6kGv8mnAsSiaZMYKsA1D9bHOM=;
 b=u+ricinVwJ/GQe4sn+LrUAdUDIUuFNjkkO4txjVm42r/jkR/bgJcRyD2rqSZuodMM/F6SngmW
 LTezFXJO1xLC/7Yx4/TLFPIMJpj4vZc+iyDfN08b+FQ7/BwqPBsB0Jp
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Add all of the nodes that are required to enable HDMI output,
including ones describing the HDMI PHY, Controller and DDC,
and the Digital Parallel Interface instance that is internally
connected to the HDMI Controller.

All of the added nodes are disabled by default as usage is
board dependent.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
[Louis-Alexis Eyraud: addressed feedback from mailing list]
Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 85 ++++++++++++++++++++++++++++++++
 1 file changed, 85 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index c7adafaa83288d2d86ddf45c97cc984344e1ff77..c72e34c57629d0fabd08fabab8250e2f865de915 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -26,8 +26,10 @@ / {
 	aliases {
 		dp-intf0 = &dp_intf0;
 		dp-intf1 = &dp_intf1;
+		dpi1 = &dpi1;
 		gce0 = &gce0;
 		gce1 = &gce1;
+		hdmi0 = &hdmi;
 		ethdr0 = &ethdr0;
 		mutex0 = &mutex;
 		mutex1 = &mutex1;
@@ -1857,6 +1859,23 @@ imp_iic_wrap_s: clock-controller@11d03000 {
 			#clock-cells = <1>;
 		};
 
+		hdmi_phy: hdmi-phy@11d5f000 {
+			compatible = "mediatek,mt8195-hdmi-phy";
+			reg = <0 0x11d5f000 0 0x100>;
+			clocks = <&topckgen CLK_TOP_HDMI_XTAL>,
+				 <&infracfg_ao CLK_INFRA_AO_HDMI_26M>,
+				 <&apmixedsys CLK_APMIXED_HDMIPLL1>,
+				 <&apmixedsys CLK_APMIXED_HDMIPLL2>;
+			clock-names = "pll_ref", "26m", "pll1", "pll2";
+			clock-output-names = "hdmi_txpll";
+
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+			mediatek,ibias = <0xa>;
+			mediatek,ibias_up = <0x1c>;
+			status = "disabled";
+		};
+
 		i2c0: i2c@11e00000 {
 			compatible = "mediatek,mt8195-i2c",
 				     "mediatek,mt8192-i2c";
@@ -3670,6 +3689,34 @@ merge5: vpp-merge@1c110000 {
 			resets = <&vdosys1 MT8195_VDOSYS1_SW0_RST_B_MERGE4_DL_ASYNC>;
 		};
 
+		dpi1: dpi@1c112000 {
+			compatible = "mediatek,mt8195-dpi";
+			reg = <0 0x1c112000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_DPI1>,
+				 <&vdosys1 CLK_VDO1_DPI1_MM>,
+				 <&vdosys1 CLK_VDO1_DPI1_HDMI>;
+			clock-names = "pixel", "engine", "pll";
+			interrupts = <GIC_SPI 512 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS1>;
+			resets = <&vdosys1 MT8195_VDOSYS1_SW0_RST_B_DPI1>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					dpi1_in: endpoint { };
+				};
+
+				port@1 {
+					reg = <1>;
+					dpi1_out: endpoint { };
+				};
+			};
+		};
+
 		dp_intf1: dp-intf@1c113000 {
 			compatible = "mediatek,mt8195-dp-intf";
 			reg = <0 0x1c113000 0 0x1000>;
@@ -3730,6 +3777,44 @@ ethdr0: hdr-engine@1c114000 {
 				      "gfx_fe1_async", "vdo_be_async";
 		};
 
+		hdmi: hdmi-tx@1c300000 {
+			compatible = "mediatek,mt8195-hdmi-tx";
+			#sound-dai-cells = <1>;
+			reg = <0 0x1c300000 0 0x1000>;
+			clocks = <&topckgen CLK_TOP_HDMI_APB>,
+				 <&topckgen CLK_TOP_HDCP>,
+				 <&topckgen CLK_TOP_HDCP_24M>,
+				 <&vppsys1 CLK_VPP1_VPP_SPLIT_HDMI>;
+			clock-names = "bus", "hdcp", "hdcp24m", "hdmi-split";
+			assigned-clocks = <&topckgen CLK_TOP_HDCP>;
+			assigned-clock-parents = <&topckgen CLK_TOP_UNIVPLL_D4_D8>;
+			interrupts = <GIC_SPI 677 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8195_POWER_DOMAIN_HDMI_TX>;
+			phys = <&hdmi_phy>;
+			phy-names = "hdmi";
+			status = "disabled";
+
+			hdmitx_ddc: i2c {
+				compatible = "mediatek,mt8195-hdmi-ddc";
+				clocks = <&clk26m>;
+			};
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					hdmi0_in: endpoint { };
+				};
+
+				port@1 {
+					reg = <1>;
+					hdmi0_out: endpoint { };
+				};
+			};
+		};
+
 		edp_tx: edp-tx@1c500000 {
 			compatible = "mediatek,mt8195-edp-tx";
 			reg = <0 0x1c500000 0 0x8000>;

-- 
2.52.0


