Return-Path: <devicetree+bounces-245415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 709EFCB0986
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 17:36:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 06D0E30F5AC2
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 16:35:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1487B329E46;
	Tue,  9 Dec 2025 16:34:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="UBimT1yA"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1DE328618;
	Tue,  9 Dec 2025 16:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765298091; cv=none; b=ouIglqZHZHRnOF/Yp4CzjOozEDhr8NFGHH5NSM/KUTLBzaxQJCFquwVsd1jj1Sr1hQnJdBQDQ29sqLxJUclsSztryC+RwqTr8cnhnLHA/xpK3Vwx19aWF7Mz5tVcAjCB6xP+nwuAeI01UlAyPyNky8zp0DWOiYoy396VLWaeRyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765298091; c=relaxed/simple;
	bh=31ere9wELpWiw6I9VQGyEhoKrlHRNVq0EYFHaqUGt4I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=u890q+EsNbWLJqhKwc9iSFgo8ZK4m1lLTkkU0mAIE+oNzGnd1Vlx9qYFfO1NWo9ICPmta5fm7Mt1i8YJIAK/IwDihp217nfRBPY2vANd/KIpgeUZtTFQAzvWZsAV3qtgdvGj2YilP/B9ekR4sfZ+jN9LLK2zzo6WQbzfcdJ6eRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=UBimT1yA; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765298088;
	bh=31ere9wELpWiw6I9VQGyEhoKrlHRNVq0EYFHaqUGt4I=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=UBimT1yAkXbNrIfGXVZTMJCH6YAIxgLeXAhvKefMo04Y+nJZ5pcLs5nkg1LJc/MNj
	 p+W+2H1RBdNbvDu/07HxbO5ece0KeramlNou+jj+ypcxWvI8M3HDOyRAH9lMpDiZG2
	 VkaP/vN3U2cmyNB6qQaTayk1orXv03rvgOrAVtfgRPQtNbS3YRR2T6XcxbZVYdrnWr
	 uo9LzHMiP/U+IKOzA4gpmLaRDtQQDs+m07svIKCxrFMd7y3eiyNQY4ig0eJQ8Y4yS1
	 XNhIkMYl3JV4ITGT6MhKf2NsCP49cFWRKh/zc86oSUBBL48KkarDcKe1E9YNKz4STX
	 /jgiH1TFqS1fw==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8F95717E1541;
	Tue,  9 Dec 2025 17:34:47 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Tue, 09 Dec 2025 17:34:34 +0100
Subject: [PATCH 04/12] arm64: dts: mediatek: mt8195: Add DPI1, HDMI, HDMI
 PHY/DDC nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-mtk-genio-evk-hdmi-support-v1-4-9a6106effba6@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765298083; l=4040;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=4dEn1Ni9gYyLg8WywA5ADKYwZgpT521PZNgtKzV5dko=;
 b=H83Yq3pYYIJ3ukNm/su08Wy1tlGiyjoO1EpPiQxI4RQQcHvqM8Xal0zYRWKsFrZkstkfezToC
 W534F28HxkXAe6AjlGdjFxoRjR9oxdpWpsK+yebW3kjZitjJUfOUkU2
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
Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 86 ++++++++++++++++++++++++++++++++
 1 file changed, 86 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index c7adafaa83288d2d86ddf45c97cc984344e1ff77..49e52dde247f29b57d34a25b33f2d5f36f745f30 100644
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
@@ -1857,6 +1859,24 @@ imp_iic_wrap_s: clock-controller@11d03000 {
 			#clock-cells = <1>;
 		};
 
+		hdmi_phy: hdmi-phy@11d5f000 {
+			compatible = "mediatek,mt8195-hdmi-phy";
+			reg = <0 0x11d5f000 0 0x100>;
+			clocks = <&topckgen CLK_TOP_HDMI_XTAL>,
+				 <&infracfg_ao CLK_INFRA_AO_HDMI_26M>,
+				 <&apmixedsys CLK_APMIXED_HDMIPLL1>,
+				 <&apmixedsys CLK_APMIXED_HDMIPLL2>;
+			clock-names = "pll_ref", "hdmi_26m",
+				      "hdmi_pll1", "hdmi_pll2";
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
@@ -3670,6 +3690,34 @@ merge5: vpp-merge@1c110000 {
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
@@ -3730,6 +3778,44 @@ ethdr0: hdr-engine@1c114000 {
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


