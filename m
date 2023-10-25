Return-Path: <devicetree+bounces-11733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F377D6709
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:38:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 946CFB21149
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:38:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ECAA224FB;
	Wed, 25 Oct 2023 09:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Fu1V73mE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3B6224D0
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 09:38:35 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6758EA6;
	Wed, 25 Oct 2023 02:38:34 -0700 (PDT)
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 487A96607349;
	Wed, 25 Oct 2023 10:38:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698226713;
	bh=kLtT+q9T1ffNmCgLw5PyOqriOe6qk0elUlRHKVB6dJQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Fu1V73mEIpMdvzkMSD4g0um0+cC+D1UoT+v9rfMiC9Z9lj/GaTStsI0RC43oZGUrE
	 YxspPWCajQGMacpwygaYHJeuvJiVup1Wn4j0+3BuvUm3/KZiUO3Qn6+6Y9UkbmRD/p
	 ummNrMiQVEs7J2ImCBpYLstTFhEA6Idlh7OhCjfQWaY6JyIewKVAQ3asb1LK5pnvGy
	 LgzNCM+tEUKmYMLwyREe1uR1YyD0HSIfMxMd/ZTFEmqkuplwaCnwRN/RkTM9x99U7R
	 WaS8FIaAODKoP08OeiJt/K+7UXna9Dv3CycuhZb+Lt8ti1Us027jte3fKQlyXZFCT1
	 Vk0NTa3vjywwg==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: matthias.bgg@gmail.com
Cc: hsinyi@chromium.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	angelogioacchino.delregno@collabora.com,
	erin.lo@mediatek.com,
	eddie.huang@mediatek.com,
	pihsun@chromium.org,
	fparent@baylibre.com,
	chunfeng.yun@mediatek.com,
	gregkh@linuxfoundation.org,
	michael.kao@mediatek.com,
	mka@chromium.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 3/8] arm64: dts: mediatek: Use interrupts-extended where possible
Date: Wed, 25 Oct 2023 11:38:11 +0200
Message-ID: <20231025093816.44327-4-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231025093816.44327-1-angelogioacchino.delregno@collabora.com>
References: <20231025093816.44327-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As already done for MT8173 and MT8183 devicetrees, change all instances
of interrupt-parent + interrupts to one line as interrupts-extended
where possible across all remaining device trees to both simplify and
reduce code size.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt6358.dtsi                 | 3 +--
 arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts | 3 +--
 arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts | 3 +--
 arch/arm64/boot/dts/mediatek/mt8395-genio-1200-evk.dts   | 6 ++----
 4 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt6358.dtsi b/arch/arm64/boot/dts/mediatek/mt6358.dtsi
index b605313bed99..6f01ddf1acc7 100644
--- a/arch/arm64/boot/dts/mediatek/mt6358.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt6358.dtsi
@@ -8,8 +8,7 @@ &pwrap {
 	pmic: pmic {
 		compatible = "mediatek,mt6358";
 		interrupt-controller;
-		interrupt-parent = <&pio>;
-		interrupts = <182 IRQ_TYPE_LEVEL_HIGH>;
+		interrupts-extended = <&pio 182 IRQ_TYPE_LEVEL_HIGH>;
 		#interrupt-cells = <2>;
 
 		mt6358codec: mt6358codec {
diff --git a/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts b/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
index 3b7a176b7904..2e5b326b0c6f 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
@@ -153,8 +153,7 @@ switch@0 {
 			reg = <0>;
 			interrupt-controller;
 			#interrupt-cells = <1>;
-			interrupt-parent = <&pio>;
-			interrupts = <53 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts-extended = <&pio 53 IRQ_TYPE_LEVEL_HIGH>;
 			reset-gpios = <&pio 54 0>;
 
 			ports {
diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
index af4a4309bda4..a44df2e33552 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
@@ -203,8 +203,7 @@ switch: switch@31 {
 		reg = <31>;
 		interrupt-controller;
 		#interrupt-cells = <1>;
-		interrupt-parent = <&pio>;
-		interrupts = <66 IRQ_TYPE_LEVEL_HIGH>;
+		interrupts-extended = <&pio 66 IRQ_TYPE_LEVEL_HIGH>;
 		reset-gpios = <&pio 5 GPIO_ACTIVE_HIGH>;
 	};
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8395-genio-1200-evk.dts b/arch/arm64/boot/dts/mediatek/mt8395-genio-1200-evk.dts
index 70b465f7c6a7..f54f90a907e7 100644
--- a/arch/arm64/boot/dts/mediatek/mt8395-genio-1200-evk.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8395-genio-1200-evk.dts
@@ -210,8 +210,7 @@ &i2c1 {
 	touchscreen@5d {
 		compatible = "goodix,gt9271";
 		reg = <0x5d>;
-		interrupt-parent = <&pio>;
-		interrupts = <132 IRQ_TYPE_EDGE_RISING>;
+		interrupts-extended = <&pio 132 IRQ_TYPE_EDGE_RISING>;
 		irq-gpios = <&pio 132 GPIO_ACTIVE_HIGH>;
 		reset-gpios = <&pio 133 GPIO_ACTIVE_HIGH>;
 		AVDD28-supply = <&mt6360_ldo1>;
@@ -773,8 +772,7 @@ pins {
 };
 
 &pmic {
-	interrupt-parent = <&pio>;
-	interrupts = <222 IRQ_TYPE_LEVEL_HIGH>;
+	interrupts-extended = <&pio 222 IRQ_TYPE_LEVEL_HIGH>;
 };
 
 &scp {
-- 
2.42.0


