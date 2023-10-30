Return-Path: <devicetree+bounces-12884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD947DBAAA
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 14:25:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 085D01C20AB2
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 13:25:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CA9A168D4;
	Mon, 30 Oct 2023 13:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="DkG7Kijv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3435168AC
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 13:25:32 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 379B7A2;
	Mon, 30 Oct 2023 06:25:31 -0700 (PDT)
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 692936607385;
	Mon, 30 Oct 2023 13:25:29 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698672330;
	bh=igvycGvXnIubgLktMRrTkJSESlnPoKAakpRSWANTs88=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DkG7Kijv85Vq/fYlqdDuAa9BlltysX2NepDDr0PqsTnKChqKZd5xmcl9O2wRHMqbj
	 eFloZOLxCUgF4rU7Oh8dMQ5g0LoDS8ewJEuCP8D15UHT/vei/BpPUpf9z7lEcxdFsV
	 odYpItm+64SWNp1bhDeMZ6+8VLecnLxnRtoPKVcCVCLfl7WgPd84fPQ07oBVqgC0pc
	 ZG1TUMTU9GW0UCmVAgp7dlhIrP5EJYY1T3u3tR/59TuUlIcqVnbeVzQS6WWAOmUBGf
	 UPe9f6HdzCWiBVsUCqmlCZnL6G4kwkld7Cu+lum01f+0YL0SzBzGpP+RNXW2oJnFC+
	 7eoHpo2zkmxvg==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: matthias.bgg@gmail.com
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	wenst@chromium.org,
	angelogioacchino.delregno@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 2/2] arm64: dts: mediatek: mt8195-cherry: Assign sram supply to MFG1 pd
Date: Mon, 30 Oct 2023 14:25:23 +0100
Message-ID: <20231030132523.86123-3-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231030132523.86123-1-angelogioacchino.delregno@collabora.com>
References: <20231030132523.86123-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a phandle to the MT8195_POWER_DOMAIN_MFG1 power domain and
assign the GPU SRAM (vsram_others) supply to that in mt8195-cherry:
this allows to keep the sram powered up while the GPU is used.

This means that it's now possible to remove the regulator-always-on
property from the mt6359_vsram_others_ldo_reg vreg, so that it will
be switched on and off during suspend.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 5 ++++-
 arch/arm64/boot/dts/mediatek/mt8195.dtsi        | 2 +-
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index 26213100419a..9d0f3d25cb07 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -482,6 +482,10 @@ &mfg0 {
 	domain-supply = <&mt6315_7_vbuck1>;
 };
 
+&mfg1 {
+	domain-supply = <&mt6359_vsram_others_ldo_reg>;
+};
+
 &mmc0 {
 	status = "okay";
 
@@ -552,7 +556,6 @@ &mt6359_vrf12_ldo_reg {
 
 /* for GPU SRAM */
 &mt6359_vsram_others_ldo_reg {
-	regulator-always-on;
 	regulator-min-microvolt = <750000>;
 	regulator-max-microvolt = <750000>;
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index 79934cf051b9..8136d7631166 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -538,7 +538,7 @@ mfg0: power-domain@MT8195_POWER_DOMAIN_MFG0 {
 					#size-cells = <0>;
 					#power-domain-cells = <1>;
 
-					power-domain@MT8195_POWER_DOMAIN_MFG1 {
+					mfg1: power-domain@MT8195_POWER_DOMAIN_MFG1 {
 						reg = <MT8195_POWER_DOMAIN_MFG1>;
 						clocks = <&apmixedsys CLK_APMIXED_MFGPLL>,
 							 <&topckgen CLK_TOP_MFG_CORE_TMP>;
-- 
2.42.0


