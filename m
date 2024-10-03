Return-Path: <devicetree+bounces-107474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A042A98EC77
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 11:50:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E3F52820F2
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 09:50:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32BFE1474CF;
	Thu,  3 Oct 2024 09:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="Wkdwycke"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta0.migadu.com (out-181.mta0.migadu.com [91.218.175.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC05413B58A
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 09:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727949021; cv=none; b=TVIqg34tU8cFOEj7M+rQHI+mn9M+FZxSRzF8Z6lVYNDbFBF673L2NfLzEE9yNafv3lLqusZFsw3edk5t7W7teziho1P6w6cZmPE2DzgKrzez8bRPras4fhaGNDpWP4fCzTVfYxwCllcr4nWy4zrkDccpkNjaP53AF1ChRrtfCxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727949021; c=relaxed/simple;
	bh=8WoL8ave4t75S3/aDP1YYkxE0/JikX7Cws8deVruDQg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JXYsuI05M2pXvYIb6BBe89iRO8O7e0JIqfi0yYqoGO6e4OkCdgMoepqlv5/ow8ZQjh65yrH3QyBF5MwX+29L8vVZXDbCJ1nltpSAoigV4EP6Dr5+w4T6pY8vGCGJBnsn/qjKbNCSjyUjvJvvcMnsBhHsdzvqblKjoIX0ZQYcmTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=Wkdwycke; arc=none smtp.client-ip=91.218.175.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1727949017;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=crP7QBj1eIxrhK4AYKdqfhxHntrdN+1O9B9c04iM0Vo=;
	b=WkdwyckemiTzNV7KW0DZo05f5r7PnAe8FycHSYUur5JbpnSz94kQRp04ZOwLLJeZVJV4dI
	wJCNPie8Nk//HO3FKzM0Iy8MMIWNak3GVYmMBrL1Cl7G1rnlwa10JqOEVpsn1HJ4qjOH05
	8BAgU5yZj1BrWa2mO5M6HAJbfQss+dXELF8bVKv+N/l1fJ3Za2PTeQrxDbNN3NCYg58f0d
	SZuTXm3NiW2SFglHmTF+3KzZTrDliQQ1LBlLIJ4/S3xIYed8xzwRvwvJb48PUAsT96L7U+
	zfEeWpVTuX+EoG7Fcw1EDerMN1kpBh9yGjRmNGfZDpvSyWfoietnE16HsgEDjg==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH 4/5] arm64: dts: rockchip: rk3399: Drop rockchip prefix from s-p-c PMIC property
Date: Thu,  3 Oct 2024 11:43:28 +0200
Message-ID: <20241003094927.62042-5-didi.debian@cknow.org>
In-Reply-To: <20241003094927.62042-1-didi.debian@cknow.org>
References: <20241003094927.62042-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

961748bb1555 ("dt-bindings: mfd: rk8xx: Deprecate rockchip,system-power-controller")
made "rockchip,system-power-controller" deprecated in favor of (just)
"system-power-controller".
Update the rk3399 DT files which still used the deprecated variant.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-evb.dts            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi  | 2 +-
 19 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
index 1489eb32e266..040845570a6d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
@@ -309,7 +309,7 @@ rk808: pmic@1b {
 		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 		clock-output-names = "xin32k", "rk808-clkout2";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
index 54e67d2dac09..ef29dc0c3caf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
@@ -178,7 +178,7 @@ rk808: pmic@1b {
 		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index f4491317a1b0..e7d6c8e34210 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -326,7 +326,7 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index 5a02502d21cd..ed0301ff642c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -252,7 +252,7 @@ rk808: pmic@1b {
 		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 		clock-output-names = "xin32k", "rtc_clko_wifi";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index c772985ae4e5..00e399d6dabd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -315,7 +315,7 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vsys_3v3>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index b0c1fb0b704e..6086b9782f29 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -309,7 +309,7 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		vcc1-supply = <&vcc5v0_sys>;
 		vcc2-supply = <&vcc5v0_sys>;
 		vcc3-supply = <&vcc5v0_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
index f12b1eb00575..d2ffa5fdbff7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
@@ -187,7 +187,7 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc5v0_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 7debc4a1b5fa..65ea8dff0476 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -269,7 +269,7 @@ rk808: pmic@1b {
 		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>, <&ap_pwroff>, <&clk_32k>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc3v3_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index 07ec33f3f55f..2a354a3a281b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -262,7 +262,7 @@ rk808: pmic@1b {
 		clock-output-names = "rtc_clko_soc", "rtc_clko_wifi";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc3v3_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index a5a7e374bc59..d02aea19b329 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -447,7 +447,7 @@ rk808: pmic@1b {
 		interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l_pin>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sysin>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 1a44582a49fb..33c128bff6fa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -243,7 +243,7 @@ rk818: pmic@1c {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 650b1ba9c192..80768b6d3bdf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -205,7 +205,7 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc5v0_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index d95b1cde1fc3..9b0b3e5ccbe6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -298,7 +298,7 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc3v3_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index 475d57f64d58..f8c3454435ab 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -220,7 +220,7 @@ rk809: pmic@20 {
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>, <&i2s_8ch_mclk>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		#sound-dai-cells = <0>;
 		wakeup-source;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 9666504cd1c1..9814f5772002 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -245,7 +245,7 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc5v0_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
index 8146f870d2bd..335aa3cc1e88 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
@@ -186,7 +186,7 @@ rk808: pmic@1b {
 		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 		clock-output-names = "xin32k", "rk808-clkout2";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 11d99d8b34a2..ddba1841e187 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -342,7 +342,7 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc5v0_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 31832aae9ab6..cd891bc199d9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -233,7 +233,7 @@ rk808: pmic@1b {
 		clock-output-names = "xin32k", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index 8823c924dc1d..86cf2f27ac13 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -78,7 +78,7 @@ rk809: pmic@20 {
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc5v0_sys>;
-- 
2.45.2


