Return-Path: <devicetree+bounces-10280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A15217D09D1
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 09:55:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D245D1C20ED1
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 07:55:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D544DDA6;
	Fri, 20 Oct 2023 07:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="DaE1iuAO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FEA6D52B
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 07:55:53 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE3CBE8;
	Fri, 20 Oct 2023 00:55:51 -0700 (PDT)
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AABB2660734F;
	Fri, 20 Oct 2023 08:55:49 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697788550;
	bh=0c2z7sk1bqZ1kYpcBZ8rifCI5ElDpfSDLTU9DxlgN9A=;
	h=From:To:Cc:Subject:Date:From;
	b=DaE1iuAOfw41MEP9QbDlwfaur5zRugIhl6yLcjWN9IRb3VkOYDiI6NVilalU9E/zS
	 Nrp9t9+edMN+7piU+KVpE9FGe6FmTQWPJjWev5l0G/vnEJ7+PxUjOMLJycl0Sueqmb
	 GL2j3nRBsqUC9soCI2KT5vumxLlNkE6Bhz8inT9c7j7J+ijydVix0PtwLQHg653fxx
	 9gFd0V929+J30P+k4fbpC9PFw0J5LPAwp+nsPfYRVzXhqHGhLTUbdpDsEVeuL3q9Q3
	 ImFZvPHi3QwzFiNzjRWGNAO77lsm7kGJnjnJBnDHZuhZ9PBLK6L7IwBoB1ZJt6IVM+
	 mYkWHxdIJwLZw==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: matthias.bgg@gmail.com
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	allen-kh.cheng@mediatek.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	wenst@chromium.org,
	kernel@collabora.com,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: [PATCH] arm64: dts: mediatek: mt8186: Add I2C arbiter clocks to i2c 1/2/5
Date: Fri, 20 Oct 2023 09:55:40 +0200
Message-ID: <20231020075540.15191-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The I2C busses 1, 2 and 5 have got a separated arbiter clock: add it
to their respective nodes.

Fixes: 2e78620b1350 ("arm64: dts: Add MediaTek MT8186 dts and evaluation board and Makefile")
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
index f04ae70c470a..af6f6687de35 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
@@ -1224,8 +1224,9 @@ i2c1: i2c@11008000 {
 			      <0 0x10200200 0 0x100>;
 			interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&imp_iic_wrap CLK_IMP_IIC_WRAP_AP_CLOCK_I2C1>,
-				 <&infracfg_ao CLK_INFRA_AO_AP_DMA>;
-			clock-names = "main", "dma";
+				 <&infracfg_ao CLK_INFRA_AO_AP_DMA>,
+				 <&infracfg_ao CLK_INFRA_AO_I2C1_ARBITER>;
+			clock-names = "main", "dma", "arb";
 			clock-div = <1>;
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -1238,8 +1239,9 @@ i2c2: i2c@11009000 {
 			      <0 0x10200300 0 0x180>;
 			interrupts = <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&imp_iic_wrap CLK_IMP_IIC_WRAP_AP_CLOCK_I2C2>,
-				 <&infracfg_ao CLK_INFRA_AO_AP_DMA>;
-			clock-names = "main", "dma";
+				 <&infracfg_ao CLK_INFRA_AO_AP_DMA>,
+				 <&infracfg_ao CLK_INFRA_AO_I2C2_ARBITER>;
+			clock-names = "main", "dma", "arb";
 			clock-div = <1>;
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -1280,8 +1282,9 @@ i2c5: i2c@11016000 {
 			      <0 0x10200700 0 0x100>;
 			interrupts = <GIC_SPI 354 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&imp_iic_wrap CLK_IMP_IIC_WRAP_AP_CLOCK_I2C5>,
-				 <&infracfg_ao CLK_INFRA_AO_AP_DMA>;
-			clock-names = "main", "dma";
+				 <&infracfg_ao CLK_INFRA_AO_AP_DMA>,
+				 <&infracfg_ao CLK_INFRA_AO_I2C5_ARBITER>;
+			clock-names = "main", "dma", "arb";
 			clock-div = <1>;
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.42.0


