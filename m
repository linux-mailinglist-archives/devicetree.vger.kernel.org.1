Return-Path: <devicetree+bounces-24193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC9880E560
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 09:01:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2E2831F21382
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 08:01:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CF1F18037;
	Tue, 12 Dec 2023 08:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="iDyiVnK/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE7EFED
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 00:01:43 -0800 (PST)
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702368102;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tM/1a2VCEGvqR7jBkLRKaoNUYZw3NgudYOsE00U6y5k=;
	b=iDyiVnK/MHc4HTR28im2jZQgJeFrWv6VDnWrgeEr03NDTk6rfFn6sVGDtZnbmgXzWyXvt7
	3eX3hOd0PYHVox8YY4eWebrjHYP3JjIhfx6QR3S6eL91HZCgsCUfxnlV8aXIhgME718Aph
	uEteutaVqvQbHntOtgEfF+gXmcOmw7Yg3k5VAeoGX/QCz5z+czx5HdIf9bt6vksiiE7tp4
	GAOomcBc9VWsRsiuHg4G2APk6P1jLxzEOWBeAAN7edka4yVp2hmk9UqM13LWrzAiFScK/L
	cBdEGsZLiPSuD8WnR1k+K0ynrvGp2kVRKC94mip898+qfGjf1mLmaoflszJZTQ==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 1/2] arm64: dts: rockchip: Add ethernet0 alias to the dts for RK3566 boards
Date: Tue, 12 Dec 2023 09:01:39 +0100
Message-Id: <d2a272e0ae0fff0adfab8bb0238243b11d348799.1702368023.git.dsimic@manjaro.org>
In-Reply-To: <cover.1702368023.git.dsimic@manjaro.org>
References: <cover.1702368023.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Add ethernet0 alias to the board dts files for a few supported RK3566 boards
that had it missing.  Also, remove the ethernet0 alias from one RK3566 SoM
dtsi file, which doesn't enable the GMAC, and add the ethernet0 alias back to
the dependent board dts files, which actually enable the GMAC.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts     | 1 +
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts           | 1 +
 arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dts   | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts     | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi        | 1 -
 6 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
index 1b1c67d5b1ef..3ae24e39450a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
@@ -14,6 +14,7 @@ / {
 	compatible = "radxa,cm3-io", "radxa,cm3", "rockchip,rk3566";
 
 	aliases {
+		ethernet0 = &gmac1;
 		mmc1 = &sdmmc0;
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
index 938092fce186..63eea27293fe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
@@ -12,6 +12,7 @@ / {
 	compatible = "firefly,rk3566-roc-pc", "rockchip,rk3566";
 
 	aliases {
+		ethernet0 = &gmac1;
 		mmc0 = &sdmmc0;
 		mmc1 = &sdhci;
 		mmc2 = &sdmmc1;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dts
index 4e49bebf548b..fdbf1c783242 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dts
@@ -13,6 +13,10 @@ / {
 	model = "PINE64 RK3566 SOQuartz on Blade carrier board";
 	compatible = "pine64,soquartz-blade", "pine64,soquartz", "rockchip,rk3566";
 
+	aliases {
+		ethernet0 = &gmac1;
+	};
+
 	/* labeled VCC3V0_SD in schematic to not conflict with PMIC regulator */
 	vcc3v0_sd: vcc3v0-sd-regulator {
 		compatible = "regulator-fixed";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
index cddf6cd2fecb..6ed3fa4aee34 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
@@ -8,6 +8,10 @@ / {
 	model = "Pine64 RK3566 SoQuartz with CM4-IO Carrier Board";
 	compatible = "pine64,soquartz-cm4io", "pine64,soquartz", "rockchip,rk3566";
 
+	aliases {
+		ethernet0 = &gmac1;
+	};
+
 	/* labeled +12v in schematic */
 	vcc12v_dcin: vcc12v-dcin-regulator {
 		compatible = "regulator-fixed";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts
index 2208dbfb7f0a..f2095dfa4eaf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts
@@ -8,6 +8,10 @@ / {
 	model = "PINE64 RK3566 SOQuartz on Model A carrier board";
 	compatible = "pine64,soquartz-model-a", "pine64,soquartz", "rockchip,rk3566";
 
+	aliases {
+		ethernet0 = &gmac1;
+	};
+
 	/* labeled DCIN_12V in schematic */
 	vcc12v_dcin: vcc12v-dcin-regulator {
 		compatible = "regulator-fixed";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
index 63bae36b8f7e..bfb7b952f4c5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
@@ -12,7 +12,6 @@ / {
 	compatible = "pine64,soquartz", "rockchip,rk3566";
 
 	aliases {
-		ethernet0 = &gmac1;
 		mmc0 = &sdmmc0;
 		mmc1 = &sdhci;
 		mmc2 = &sdmmc1;

