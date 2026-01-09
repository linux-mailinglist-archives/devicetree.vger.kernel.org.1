Return-Path: <devicetree+bounces-253270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D478D09062
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 12:51:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A8394306E465
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 11:48:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FBC535A949;
	Fri,  9 Jan 2026 11:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="cvmeO+w/"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0849E359F91;
	Fri,  9 Jan 2026 11:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767959295; cv=none; b=lt1ubL7penEmvW4DqUm8F5GCF3YlxicCHGvycLqCuygJk3HQYzgRlqiat0ls0LJ+evZBX4h1zUAwcy73kYzB2WrU7cWHJTbrsITgbOVgTCIsXJvNZx64KWW1r4xrovtnNqZ6iVra9dX+vJ1/mGDAVtgEV8HLdwmCRK4Dfslc+f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767959295; c=relaxed/simple;
	bh=O82ASAKq/ZZiQDxIMJucuo2x/rTm+Aj4VNeXdcRjSIg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=golAS9xVKogfg8L+B8IAxILHbSXzHKNtHpTTdpCtBCXp0DOaiZPaRzSZtUBAOJpVPQiOrDAqd2+n8p++4CNj0MWe/t6NOppNEMAcU4ZwoeACZesIo5yQADNoRtHCEx/jcYl7Zlf2dc0FUCi9b9CkU33XjS4gUQhTwMLyfyQfTSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=cvmeO+w/; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767959283;
	bh=O82ASAKq/ZZiQDxIMJucuo2x/rTm+Aj4VNeXdcRjSIg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cvmeO+w/9ehs0ZCizvmlkuhv/adQcZkrMmjuf7D50chvOCCqbNawnexaEz5C88Ftw
	 YKRgqeJoySCEWPUw7ic8/z47eyJa6iyq+NtS+oxnQ2Qcr0oUUsKPTkc/rcJ5cAaTvD
	 p4nesm4Nq/NqbBbwUC22BkuLi2ZVlATIZYKZPfjQFCRCd4rgiDVOxe6LrxY566EkPx
	 nLoa0W386DkrymyVvBYshtbXKGQAZeCxqjMptzHowKvOdjwBRvao6KcLNlAdVH/Tcs
	 4xgLb6GFHD9JzIvzbGq2QJ/0pxcP5fhh6XpV8uPrUXblx7UH51uyaLl+bzFvP9fb9l
	 MRMqi9aHTcyvw==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C6E7017E13D3;
	Fri,  9 Jan 2026 12:48:02 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	sjoerd@collabora.com,
	hsinyi@chromium.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 11/11] arm64: dts: mediatek: mt6795-xperia-m5: Add UHS pins for MMC1 and 2
Date: Fri,  9 Jan 2026 12:47:47 +0100
Message-ID: <20260109114747.37189-12-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com>
References: <20260109114747.37189-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the UHS state pins for the MMC1 and MMC2 controllers and,
while at it, also add the correct drive strength parameters
for the default pin states for those two.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../dts/mediatek/mt6795-sony-xperia-m5.dts    | 48 ++++++++++++++++++-
 1 file changed, 46 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts b/arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts
index fccb948cfa45..ecd13d089ceb 100644
--- a/arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts
+++ b/arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts
@@ -227,8 +227,9 @@ &mmc0 {
 
 &mmc1 {
 	/* MicroSD card slot */
-	pinctrl-names = "default";
+	pinctrl-names = "default", "state_uhs";
 	pinctrl-0 = <&mmc1_pins_default>;
+	pinctrl-1 = <&mmc1_pins_uhs>;
 	vmmc-supply = <&mt6331_vmc_reg>;
 	vqmmc-supply = <&mt6331_vmch_reg>;
 	status = "okay";
@@ -236,8 +237,9 @@ &mmc1 {
 
 &mmc2 {
 	/* SDIO WiFi on MMC2 */
-	pinctrl-names = "default";
+	pinctrl-names = "default", "state_uhs";
 	pinctrl-0 = <&mmc2_pins_default>;
+	pinctrl-1 = <&mmc2_pins_uhs>;
 	vmmc-supply = <&mt6331_vmc_reg>;
 	vqmmc-supply = <&mt6331_vmch_reg>;
 	status = "okay";
@@ -324,11 +326,32 @@ pins-cmd-dat {
 				 <PINMUX_GPIO170__FUNC_MSDC1_CMD>;
 			input-enable;
 			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+			drive-strength = <4>;
 		};
 
 		pins-clk {
 			pinmux = <PINMUX_GPIO175__FUNC_MSDC1_CLK>;
 			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+			drive-strength = <4>;
+		};
+	};
+
+	mmc1_pins_uhs: microsd-uhs-pins {
+		pins-cmd-dat {
+			pinmux = <PINMUX_GPIO171__FUNC_MSDC1_DAT0>,
+				 <PINMUX_GPIO172__FUNC_MSDC1_DAT1>,
+				 <PINMUX_GPIO173__FUNC_MSDC1_DAT2>,
+				 <PINMUX_GPIO174__FUNC_MSDC1_DAT3>,
+				 <PINMUX_GPIO170__FUNC_MSDC1_CMD>;
+			input-enable;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+			drive-strength = <6>;
+		};
+
+		pins-clk {
+			pinmux = <PINMUX_GPIO175__FUNC_MSDC1_CLK>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+			drive-strength = <8>;
 		};
 	};
 
@@ -341,11 +364,32 @@ pins-cmd-dat {
 				 <PINMUX_GPIO105__FUNC_MSDC2_CMD>;
 			input-enable;
 			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+			drive-strength = <4>;
+		};
+
+		pins-clk {
+			pinmux = <PINMUX_GPIO104__FUNC_MSDC2_CLK>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+			drive-strength = <4>;
+		};
+	};
+
+	mmc2_pins_uhs: sdio-uhs-pins {
+		pins-cmd-dat {
+			pinmux = <PINMUX_GPIO100__FUNC_MSDC2_DAT0>,
+				 <PINMUX_GPIO101__FUNC_MSDC2_DAT1>,
+				 <PINMUX_GPIO102__FUNC_MSDC2_DAT2>,
+				 <PINMUX_GPIO103__FUNC_MSDC2_DAT3>,
+				 <PINMUX_GPIO105__FUNC_MSDC2_CMD>;
+			input-enable;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+			drive-strength = <8>;
 		};
 
 		pins-clk {
 			pinmux = <PINMUX_GPIO104__FUNC_MSDC2_CLK>;
 			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+			drive-strength = <8>;
 		};
 	};
 
-- 
2.52.0


