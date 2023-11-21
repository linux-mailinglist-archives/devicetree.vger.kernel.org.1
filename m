Return-Path: <devicetree+bounces-17526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A11A87F2C47
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 12:56:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BAC51B21C68
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 11:56:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24F3948CF3;
	Tue, 21 Nov 2023 11:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="czeauBKl"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E759018F;
	Tue, 21 Nov 2023 03:56:34 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0C4B566072F6;
	Tue, 21 Nov 2023 11:56:31 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700567792;
	bh=sMWHddCvw/Ujx/UtO/I5fhryZnx4605LdfFnzpLxwHk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=czeauBKlRlF/wJqxiNf1ks8mQDJ3NbIxGr2qzb3Qbway6mD3g5YCjbOqTMfNRNC6Q
	 s/nyCzzcdYxV9I4+wxsZI2AcmKXeXFVRbyzAk7dQLZNb8NospAVNL6b0fMbYoubxP1
	 /ZOm4QU24baJ537e2079m+8hf9SDfRU5zvy0kS7gOqwDyOEQqCdMjGgy8V5m9QgGSt
	 k9Uv7Kd8NJ+h/4v3L5hJb8l45O7L7SNfvGXTnhela5u6wUcAFab2T7nOTAZ+YWrPTo
	 8P0UILhY0R6/GMfZ7uNO2/9lqrFfJeMXcKf9OyJ8aIOW05QbTH+lpN6YE1cY++wHIJ
	 VloguQ+1N5K+w==
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
Subject: [PATCH v2 01/20] arm64: dts: mediatek: mt8183: Change iospaces for thermal and svs
Date: Tue, 21 Nov 2023 12:56:05 +0100
Message-ID: <20231121115624.56855-2-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231121115624.56855-1-angelogioacchino.delregno@collabora.com>
References: <20231121115624.56855-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SVS iospace starts at 0x1100bc00 and not at 0x1100b000 as the
latter is the thermal sensor iospace instead.

Change the iospaces for both as following:
 - Thermal: 0x1100b000, length 0xc00
 - SVS: 0x1100bc00, length 0x400

Please note that while this would be a breaking change for SVS (but
not for thermal sensors), it doesn't matter because the svs driver
never worked anyway because of the missing trips in tzts2, causing
that thermal zone to never actually register, hence the SVS driver
to fail probing anyway.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 26 ++++++++++++------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 5169779d01df..13c3104bc67b 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -1183,22 +1183,10 @@ spi0: spi@1100a000 {
 			status = "disabled";
 		};
 
-		svs: svs@1100b000 {
-			compatible = "mediatek,mt8183-svs";
-			reg = <0 0x1100b000 0 0x1000>;
-			interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_LOW>;
-			clocks = <&infracfg CLK_INFRA_THERM>;
-			clock-names = "main";
-			nvmem-cells = <&svs_calibration>,
-				      <&thermal_calibration>;
-			nvmem-cell-names = "svs-calibration-data",
-					   "t-calibration-data";
-		};
-
 		thermal: thermal@1100b000 {
 			#thermal-sensor-cells = <1>;
 			compatible = "mediatek,mt8183-thermal";
-			reg = <0 0x1100b000 0 0x1000>;
+			reg = <0 0x1100b000 0 0xc00>;
 			clocks = <&infracfg CLK_INFRA_THERM>,
 				 <&infracfg CLK_INFRA_AUXADC>;
 			clock-names = "therm", "auxadc";
@@ -1210,6 +1198,18 @@ thermal: thermal@1100b000 {
 			nvmem-cell-names = "calibration-data";
 		};
 
+		svs: svs@1100bc00 {
+			compatible = "mediatek,mt8183-svs";
+			reg = <0 0x1100bc00 0 0x400>;
+			interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg CLK_INFRA_THERM>;
+			clock-names = "main";
+			nvmem-cells = <&svs_calibration>,
+				      <&thermal_calibration>;
+			nvmem-cell-names = "svs-calibration-data",
+					   "t-calibration-data";
+		};
+
 		thermal_zones: thermal-zones {
 			cpu_thermal: cpu-thermal {
 				polling-delay-passive = <100>;
-- 
2.42.0


