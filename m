Return-Path: <devicetree+bounces-245416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F2FCB098F
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 17:37:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B2A5B310C8BB
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 16:35:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3720132A3C0;
	Tue,  9 Dec 2025 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Ousl20UD"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E64A1329367;
	Tue,  9 Dec 2025 16:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765298093; cv=none; b=hnuvlC1o2958wAkL8Vr3iH2TnYrSGRMVjioiTQtmOQvAZNqWsCpkuQpQ0rOwOHn8fL209wi99q64obwOnJYwHTyQo2ddfLnPaFw12HQyx7CrhvF0vr9BQ4AOj1KnPgOPX0j1fu9YoLua60OsYYLqH4AQhsOWr7T2Wn4ukdLonVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765298093; c=relaxed/simple;
	bh=qX5XyIOYv+b2ax3FxX/MNYKL4WF0tdZx7pCW9mbbTu4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kILwRx2YFJvk1+mU7274DLjQV22hzNRSt0exIGN+pD3LjhSl3OQbqnWf9LlYzB2pLoAn6y4+9YqHFZM1k/CuoZV2PtQDhRFmBhgS1J3UonIkmUqm+2/Yo9CAq/fCqfZQNDXH24HvdFdhX8nf6Y5UrEzPnKz03sg9mfK8PSzzCRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Ousl20UD; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765298089;
	bh=qX5XyIOYv+b2ax3FxX/MNYKL4WF0tdZx7pCW9mbbTu4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Ousl20UD79EU7W0z7h+GsoUC9VjnAn0LYw8LT7fF9Myf5cnecp4WRXkFRV8rJOCF6
	 8LowOd12XejKxJUi250kNd26RVUCi9hbCKEu6v1uoVEgOvpPOhe0hlr0hkUV+wET2u
	 BDtnoFlyemMPF2tfAmwsGJ4AI+HZU8tyoCWOeI/jLKzwMRX9VwYV2bWZRT2hBHgMsl
	 TfYZICVSFEUw/gyeY2wF/gqvmfkAHNcmgg/mzwgw4gB0xUorAEaTk+5wo8EV7AeTAN
	 b7extGuedJwEg5LEDBHlJ5iVTORHhGtDINsm+Ck5LmZltg17GWiDuO2UnTO60BPrzF
	 Y/JPN9jbOVgaA==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7283A17E1546;
	Tue,  9 Dec 2025 17:34:48 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Tue, 09 Dec 2025 17:34:35 +0100
Subject: [PATCH 05/12] arm64: dts: mediatek: mt8188: Add DPI1, HDMI, HDMI
 PHY/DDC nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-mtk-genio-evk-hdmi-support-v1-5-9a6106effba6@collabora.com>
References: <20251209-mtk-genio-evk-hdmi-support-v1-0-9a6106effba6@collabora.com>
In-Reply-To: <20251209-mtk-genio-evk-hdmi-support-v1-0-9a6106effba6@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765298083; l=3935;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=kpw0b8yueUuZaNO1KJHETqOqEfGoas9Skta7fvnHXNY=;
 b=LyRMPXwXkll1igIAjdIQpOJKgCuJzMXdlw4ULyhAxCufAYRPyP0udq3DhJJEV8lQkqrfnuUWu
 tveqNf7T2XPAzL3r3YrewaP2twwKSQeTJtjwwJRIyp+3LLVwRHdyHEm
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
[Louis-Alexis Eyraud: reworded subject and description]
Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 82 ++++++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 90c388f1890f5139be6a9513c4cd9b683a501279..e2a17359e407f0bdd3ae6ef8ade668e67a9bd493 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -26,6 +26,7 @@ / {
 	aliases {
 		dp-intf0 = &dp_intf0;
 		dp-intf1 = &dp_intf1;
+		dpi1 = &dpi1;
 		dsc0 = &dsc0;
 		ethdr0 = &ethdr0;
 		gce0 = &gce0;
@@ -2038,6 +2039,19 @@ pcieport: pcie-phy@0 {
 			};
 		};
 
+		hdmi_phy: hdmi-phy@11d5f000 {
+			compatible = "mediatek,mt8188-hdmi-phy", "mediatek,mt8195-hdmi-phy";
+			reg = <0 0x11d5f000 0 0x100>;
+			clocks = <&infracfg_ao CLK_INFRA_AO_HDMI_26M>;
+			clock-names = "pll_ref";
+			clock-output-names = "hdmi_txpll";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+			mediatek,ibias = <0xa>;
+			mediatek,ibias_up = <0x1c>;
+			status = "disabled";
+		};
+
 		mipi_tx_config0: dsi-phy@11c80000 {
 			compatible = "mediatek,mt8188-mipi-tx", "mediatek,mt8183-mipi-tx";
 			reg = <0 0x11c80000 0 0x1000>;
@@ -3406,6 +3420,34 @@ merge5: merge@1c110000 {
 			mediatek,merge-fifo-en;
 		};
 
+		dpi1: dpi@1c112000 {
+			compatible = "mediatek,mt8188-dpi", "mediatek,mt8195-dpi";
+			reg = <0 0x1c112000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_DPI1>,
+				 <&vdosys1 CLK_VDO1_DPI1_MM>,
+				 <&vdosys1 CLK_VDO1_DPI1_HDMI>;
+			clock-names = "pixel", "engine", "pll";
+			interrupts = <GIC_SPI 524 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			resets = <&vdosys1 MT8188_VDO1_RST_DPI1_MM_CK>;
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
 			compatible = "mediatek,mt8188-dp-intf";
 			reg = <0 0x1c113000 0 0x1000>;
@@ -3530,6 +3572,46 @@ padding7: padding@1c124000 {
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c12XXXX 0x4000 0x1000>;
 		};
 
+		hdmi: hdmi@1c300000 {
+			compatible = "mediatek,mt8188-hdmi-tx";
+			#sound-dai-cells = <1>;
+			reg = <0 0x1c300000 0 0x1000>;
+			clocks = <&topckgen CLK_TOP_HDMI_APB>,
+				 <&topckgen CLK_TOP_HDCP>,
+				 <&topckgen CLK_TOP_HDCP_24M>,
+				 <&vppsys1 CLK_VPP1_VPP_SPLIT_HDMI>;
+			clock-names = "bus", "hdcp", "hdcp24m", "hdmi-split";
+			assigned-clocks = <&topckgen CLK_TOP_HDCP>;
+			assigned-clock-parents = <&topckgen CLK_TOP_UNIVPLL_D4_D8>;
+			interrupts = <GIC_SPI 686 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_HDMI_TX>;
+			phys = <&hdmi_phy>;
+			phy-names = "hdmi";
+			status = "disabled";
+
+			hdmi_ddc: i2c {
+				compatible = "mediatek,mt8188-hdmi-ddc",
+					     "mediatek,mt8195-hdmi-ddc";
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
+
 		edp_tx: edp-tx@1c500000 {
 			compatible = "mediatek,mt8188-edp-tx";
 			reg = <0 0x1c500000 0 0x8000>;

-- 
2.52.0


