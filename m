Return-Path: <devicetree+bounces-108953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB129945DB
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 12:55:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9A33AB22743
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 10:55:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2EE81CBE9E;
	Tue,  8 Oct 2024 10:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="CUuPkBxR"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta1.migadu.com (out-174.mta1.migadu.com [95.215.58.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90BAC1C9B77
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 10:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728384935; cv=none; b=t4IIKvlUj8URXMuMun3vynXFGTzuBmW+0mvIj6FJcO2p1LCZOmo3onpymt8HBd1qEIo4iFaXilsPIeiilDtbxn5aTkG6MmfyW8+pRRIjeYSWkZn4ubN7yznQ0ucg+0qDL77Mqp4dWpvhyBtHkjoEaV1cQBOVBLRlyKb2RaSFf5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728384935; c=relaxed/simple;
	bh=sJMWP9I+fEp4xnlXKFfX1M519y40dT6PyAEI6bN/nBM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gA4a6HD3r8aEU3gJaICMWBTNPBloWW1Pit5x64d4+rEW4ECcvEbkwgIbzav/HTGUnZDoUUYHjoLNc6xGo5dVWh/RagMqZXQBE6sk8lWiYZVWpNPg7ZmB+i4no4w+sz3Js8i68Vtmqn4y3rVspwUTKcGbDlXhKimTuGPcvWxRubY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=CUuPkBxR; arc=none smtp.client-ip=95.215.58.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728384931;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cO281Vn2GDde8/HTib7+9qr1w8/8qF2aRDbkYCjACpc=;
	b=CUuPkBxR2J9xNhJVtp4rrFL+fj3KkZHJW/sI+9pIQI9wbFJClvHNFn7nbdQNTBBxWtr93Q
	faJloaKyJ1K6JzubsSyKiFOsunxX4YS++6S5pJxG1UrG6+oaBy8OFnH7oHUwo+z1Z8DMi0
	Ptx60+zZxHDw8HfXry4k2ld1mzBo8KTPpIeHk8zt+Vqvq0v5NyIW2vKaMjN1sOmzIjZMBN
	aGLK2ST6aIefwg/XvijUnpv1CGie1YV6W2LefVjOMgLbgp02HG2fp9Y87RAjJYxIXviQR9
	BpunmAfrxfvrjzDQToHmLxmhxiPvCMPXvku91tBD9vduNloaULWoyEnHogY1Ow==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v2 4/5] arm64: dts: rockchip: rk3399: Drop rockchip prefix from s-p-c PMIC property
Date: Tue,  8 Oct 2024 12:48:04 +0200
Message-ID: <20241008105450.20648-5-didi.debian@cknow.org>
In-Reply-To: <20241008105450.20648-1-didi.debian@cknow.org>
References: <20241008105450.20648-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Property 'rockchip,system-power-controller' was deprecated in commit
961748bb1555 ("dt-bindings: mfd: rk8xx: Deprecate rockchip,system-power-controller")

in the "rockchip,rk{805,808,809,817,818}.yaml" mtd bindings and its
replacement is (just) 'system-power-controller'.

Update the rk3399 DT files which still used the deprecated variant.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
changes in v2:
- rephrased commit message a bit

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


