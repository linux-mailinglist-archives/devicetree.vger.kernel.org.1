Return-Path: <devicetree+bounces-132246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7F39F63FB
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 11:55:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8BAB91895BBF
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 10:55:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00DC119CC36;
	Wed, 18 Dec 2024 10:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="eeH5vW/0"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2160719C54E;
	Wed, 18 Dec 2024 10:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734519249; cv=none; b=Ys9AyMlWocGHhniYELPpTxjNW3GoyInqy7Dr1TVrVgrBr22bXREc1NHbm3ixMLVTCB+yeOoo3MgvEZf41YhyHc1+3Lk3qoeE4EMcpOiX7wkyfQULELDmnPIoks/EUmVMFea728s1iP7z6/sWZodBK/ZrHhRNmCoCWzYte8Tzcs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734519249; c=relaxed/simple;
	bh=lwa2Aanvu6wwjTw0UAbbus9QalNA9gO3+PoHt/GT5XQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ayLzPVGmU8XBj0qNwVR2posJBIP+j+1sj2kviyMDQiJTwEbfVvytslqhCdlDAAT5LDYAKOK91D5we6qQAN+hTBvAbRcAfKxESJH9I1pK7QKojXjFD2S3vctNvEPTq5jWGxI+EG3MhoiJ+nE72fWDOCfT7coVBoYFKvFhLfC8Puk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=eeH5vW/0; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734519245;
	bh=lwa2Aanvu6wwjTw0UAbbus9QalNA9gO3+PoHt/GT5XQ=;
	h=From:To:Cc:Subject:Date:From;
	b=eeH5vW/0G8EO1jJeMkoLkYW4J8aP/VE9sgVvobyXuae49rwS4jW8lD6ojjOYPZZmI
	 E6EXtSLSo0uaJDc6GfHvUJ3mJE5IF7jkN4gPnOcNr9+W2pUou06P1U2OOyV6OF4WkX
	 BLS9XCIQuSsvM36v6HY42d89nfjLWfK1sJy8+VrnLfLraHT1JuJuzVCQBTac8381HY
	 3Tbbq7HBLREtm0mEPFl9/7LmX7TDHM/Z2VjOr9oR6xZYhBd7MiJQVUEWFnBSIy+tiu
	 GJHiqDbQhzaUo7bTYLEwuveBr7q0EbDFEY/juj2pvs4CSY1hx9dBoi517ZJDGf6+2U
	 wSy377bOKDL5g==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9B85D17E3612;
	Wed, 18 Dec 2024 11:54:04 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	macpaul.lin@mediatek.com
Subject: [PATCH] arm64: dts: mediatek: mt8188: Add VDO0's DSC and MERGE block nodes
Date: Wed, 18 Dec 2024 11:53:56 +0100
Message-ID: <20241218105356.39111-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.47.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add nodes for the DSC0 and MERGE0 blocks, located in VDOSYS0 and
necessary to add support for Display Stream Compression with a
display pipeline that looks like:

    [other components] -> DSC0 -> MERGE0 -> Display Interface

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 137bd39808ea..6ef385072c9f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -26,9 +26,11 @@ / {
 	aliases {
 		dp-intf0 = &dp_intf0;
 		dp-intf1 = &dp_intf1;
+		dsc0 = &dsc0;
 		ethdr0 = &ethdr0;
 		gce0 = &gce0;
 		gce1 = &gce1;
+		merge0 = &merge0;
 		merge1 = &merge1;
 		merge2 = &merge2;
 		merge3 = &merge3;
@@ -2880,6 +2882,15 @@ disp_dsi0: dsi@1c008000 {
 			status = "disabled";
 		};
 
+		dsc0: dsc@1c009000 {
+			compatible = "mediatek,mt8188-disp-dsc", "mediatek,mt8195-disp-dsc";
+			reg = <0 0x1c009000 0 0x1000>;
+			clocks = <&vdosys0 CLK_VDO0_DSC_WRAP0>;
+			interrupts = <GIC_SPI 645 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS0>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c00XXXX 0x9000 0x1000>;
+		};
+
 		disp_dsi1: dsi@1c012000 {
 			compatible = "mediatek,mt8188-dsi";
 			reg = <0 0x1c012000 0 0x1000>;
@@ -2895,6 +2906,17 @@ disp_dsi1: dsi@1c012000 {
 			status = "disabled";
 		};
 
+		merge0: merge0@1c014000 {
+			compatible = "mediatek,mt8188-disp-merge", "mediatek,mt8195-disp-merge";
+			reg = <0 0x1c014000 0 0x1000>;
+			clocks = <&vdosys0 CLK_VDO0_VPP_MERGE0>,
+				 <&vdosys1 CLK_VDO1_MERGE_VDO1_DL_ASYNC>;
+			clock-names = "merge", "merge_async";
+			interrupts = <GIC_SPI 656 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS0>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c01XXXX 0x4000 0x1000>;
+		};
+
 		dp_intf0: dp-intf@1c015000 {
 			compatible = "mediatek,mt8188-dp-intf";
 			reg = <0 0x1c015000 0 0x1000>;
-- 
2.46.1


