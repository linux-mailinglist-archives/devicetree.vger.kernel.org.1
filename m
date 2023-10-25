Return-Path: <devicetree+bounces-11734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6CD7D6707
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:38:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2770A1C20D6A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:38:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0377223747;
	Wed, 25 Oct 2023 09:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="bkh6ZynZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90BEB22EFC
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 09:38:37 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CADE7A1;
	Wed, 25 Oct 2023 02:38:35 -0700 (PDT)
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 675BA660734A;
	Wed, 25 Oct 2023 10:38:33 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698226714;
	bh=efDJQrKjAe7kgKeNlCXYP3DvHJae+s5csugVhpTz98s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bkh6ZynZVWdd84IVwPJs+fMMRyRQyTYRbNddFux4rCSuSeV6Uc6v8sFqxzheYP9E7
	 vvzUXW/bVY2VojPei5A1c7bE23uUjtR1UYdLBA6023hRBGhuiE2n4beyZVHwm9mV4T
	 nBUkuMj0hXoVmK8WyVU/da4pST3uQywH8zyeDARkG0M20L/kV/kdfyX08N8cl5fC8z
	 gKyI2+0xvQ7xxgQBGC+un30XJrP0rk/4XTLbRuwi2f6cnqe7kcl5Rdg41Yadk/mynm
	 eVoAs/3mojMsmSjx1//Hi/dBma8E0RBNgMYp139TbxeMd+7zPnjwjyjwhz95Yxb4UJ
	 eb/kyu2XasOvQ==
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
Subject: [PATCH 4/8] arm64: dts: mediatek: Move MT6358 PMIC interrupts to MT8183 boards
Date: Wed, 25 Oct 2023 11:38:12 +0200
Message-ID: <20231025093816.44327-5-angelogioacchino.delregno@collabora.com>
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

MT6358 is a PMIC that is typically used on MT8183 boards, and it has
its own dtsi file, declaring interrupts-extended on its node.

The interrupt pin of that PMIC is connected to a SoC GPIO and that
is therefore not only SoC-specific, but board-specific: this means
that the interrupt-extended property does not belong to the PMIC
dtsi file, but to board files using that PMIC.

For correctness, transfer the interrupts-extended property from the
PMIC-specific mt6358.dtsi to board files.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt6358.dtsi        | 1 -
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts     | 4 ++++
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi  | 4 ++++
 arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts | 4 ++++
 4 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt6358.dtsi b/arch/arm64/boot/dts/mediatek/mt6358.dtsi
index 6f01ddf1acc7..61a655356663 100644
--- a/arch/arm64/boot/dts/mediatek/mt6358.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt6358.dtsi
@@ -8,7 +8,6 @@ &pwrap {
 	pmic: pmic {
 		compatible = "mediatek,mt6358";
 		interrupt-controller;
-		interrupts-extended = <&pio 182 IRQ_TYPE_LEVEL_HIGH>;
 		#interrupt-cells = <2>;
 
 		mt6358codec: mt6358codec {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index ce336a48c897..f8c1f8df85d0 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -381,6 +381,10 @@ pins_pwm {
 	};
 };
 
+&pmic {
+	interrupts-extended = <&pio 182 IRQ_TYPE_LEVEL_HIGH>;
+};
+
 &mfg {
 	domain-supply = <&mt6358_vgpu_reg>;
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index adadfc653f39..c81407e44eca 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -846,6 +846,10 @@ pins_wifi_wakeup {
 	};
 };
 
+&pmic {
+	interrupts-extended = <&pio 182 IRQ_TYPE_LEVEL_HIGH>;
+};
+
 &pwm0 {
 	status = "okay";
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts b/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
index b5784a60c315..76449b4cf236 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
@@ -370,6 +370,10 @@ pins_clk {
 	};
 };
 
+&pmic {
+	interrupts-extended = <&pio 182 IRQ_TYPE_LEVEL_HIGH>;
+};
+
 &mfg {
 	domain-supply = <&mt6358_vgpu_reg>;
 };
-- 
2.42.0


