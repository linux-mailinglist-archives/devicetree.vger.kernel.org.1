Return-Path: <devicetree+bounces-17576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6217F2DAD
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 13:51:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 959AB282706
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 12:51:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D20AD3A279;
	Tue, 21 Nov 2023 12:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="gTH53GTf"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5ED8CD71;
	Tue, 21 Nov 2023 04:51:13 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3748F6607319;
	Tue, 21 Nov 2023 12:51:11 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700571072;
	bh=6uV/aa1GXqZk9w0ZoiU/aw6OTSIwDj0KZLX0pQNrucc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gTH53GTfmI0yj69H84sNUw/o1GfBc0RPwtqU956LSEUYkdzVdK+rs6Vxzt4jmo5VW
	 gaquzXsQFkH/PivbRg+Ug2iCwrqiIPhi2cE6exT3izeEzH6HpR5CT5xCfMC3t9sL6U
	 9g6pZu2nHjuKUY44UEuOcCoBErJG4TKWf1HFjR9mvM1KBEV93hgEr12hIfuOQdy+vs
	 x5FY4Pj/4SUGn9WPtpt3s3JWy6p8eSOLGDwdu2e9YOCgAptH4gq4h9ULFxdqGA25UZ
	 pcJojGZkWJCltiCsOH+g3EvBx7muBViZzmGvX6KjkacPQ0sBypAaGn3C8H/kFPkGv8
	 Xdcb0wBIOsO/g==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: matthias.bgg@gmail.com
Cc: krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	robh+dt@kernel.org,
	angelogioacchino.delregno@collabora.com,
	p.zabel@pengutronix.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel@collabora.com,
	wenst@chromium.org
Subject: [PATCH v3 20/20] arm64: dts: mediatek: mt8195: Add SVS node and reduce LVTS_AP iospace
Date: Tue, 21 Nov 2023 13:50:44 +0100
Message-ID: <20231121125044.78642-21-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231121125044.78642-1-angelogioacchino.delregno@collabora.com>
References: <20231121125044.78642-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the MediaTek SVS node: this will lower the voltage of various
components of the SoC based on chip quality (read from fuses) in
order to save power and generate less heat.
Also, reduce the LVTS_AP iospace to 0xc00, because that's exactly
where SVS starts.
 - LVTS_AP start: 0x1100b000 length: 0xc00
 - SVS start:     0x1100bc00 length: 0x400

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index 54c674c45b49..54debd4cf8e6 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -1115,7 +1115,7 @@ spi0: spi@1100a000 {
 
 		lvts_ap: thermal-sensor@1100b000 {
 			compatible = "mediatek,mt8195-lvts-ap";
-			reg = <0 0x1100b000 0 0x1000>;
+			reg = <0 0x1100b000 0 0xc00>;
 			interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&infracfg_ao CLK_INFRA_AO_THERM>;
 			resets = <&infracfg_ao MT8195_INFRA_RST0_THERM_CTRL_SWRST>;
@@ -1124,6 +1124,18 @@ lvts_ap: thermal-sensor@1100b000 {
 			#thermal-sensor-cells = <1>;
 		};
 
+		svs: svs@1100bc00 {
+			compatible = "mediatek,mt8195-svs";
+			reg = <0 0x1100bc00 0 0x400>;
+			interrupts = <GIC_SPI 199 IRQ_TYPE_LEVEL_HIGH 0>;
+			clocks = <&infracfg_ao CLK_INFRA_AO_THERM>;
+			clock-names = "main";
+			nvmem-cells = <&svs_calib_data &lvts_efuse_data1>;
+			nvmem-cell-names = "svs-calibration-data", "t-calibration-data";
+			resets = <&infracfg_ao MT8195_INFRA_RST3_THERM_CTRL_PTP_SWRST>;
+			reset-names = "svs_rst";
+		};
+
 		disp_pwm0: pwm@1100e000 {
 			compatible = "mediatek,mt8195-disp-pwm", "mediatek,mt8183-disp-pwm";
 			reg = <0 0x1100e000 0 0x1000>;
@@ -1682,6 +1694,9 @@ lvts_efuse_data1: lvts1-calib@1bc {
 			lvts_efuse_data2: lvts2-calib@1d0 {
 				reg = <0x1d0 0x38>;
 			};
+			svs_calib_data: svs-calib@580 {
+				reg = <0x580 0x64>;
+			};
 		};
 
 		u3phy2: t-phy@11c40000 {
-- 
2.42.0


