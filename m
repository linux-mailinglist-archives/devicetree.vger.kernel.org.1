Return-Path: <devicetree+bounces-134697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 723119FE505
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 10:49:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B4DD13A1E93
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 09:49:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C791C1A2543;
	Mon, 30 Dec 2024 09:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="kpgTHxdn"
X-Original-To: devicetree@vger.kernel.org
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110261D540;
	Mon, 30 Dec 2024 09:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735552155; cv=none; b=QBur/0PfZoCrYV3Q5Ihm606V+iVzBYJ9O/djDdtD181NHkcewMPNXL2nrNdeQaJya2JG3gU08ccntxULrLw6Yu1n0RwDRn+vR1Tu63UZmDZx9gQLu78bqmAWAcTD71+fLwjbEF6rLzNdiKJGsqda89nUdumJ0pzhJKmCfoWPyvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735552155; c=relaxed/simple;
	bh=INugridwtS+E4nN9Gd7J5g8cl7BaPt+/3IAap7GExso=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=cUVlE0PV8fW3GiX/1oNKe4si5jLoUu3s837Uk71fCSdgg62MlFBviPZT7je+JpZBbt1jnuE2bPfcFfbFDyDGc431JPvSavTW7+WI4qjv9Ogx0aPt2ive1kBxwYnjNe9bEHxb83WmHyn+UVrpJg4Dg4YGzvNKAu648W/AMY70ivY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=kpgTHxdn; arc=none smtp.client-ip=217.70.183.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id A1F83240002;
	Mon, 30 Dec 2024 09:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1735552145;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RBjpLqYRBJQe4l37yBWtKFo1l+XvkZH0NozupgRBcOo=;
	b=kpgTHxdncqXx6zJ5FMkrUUDOAgYUP9bxo09P0XVwvSB8klbRbH6cQgb3c0nYO4QPlc9z61
	a5PY1qx+/KDN3mcEZpqznfDpUopzAMrBXwRgQZJCyXTwZj+MtDgaLwIvOvk22887vGCLl5
	q8265N6B3Jb5vicuuY3qpXCqqjj+KXPKdic+e7oulFwSDVwkM9rzHu5k3yOX+8CDg0hXq9
	5Wf2HM+kDhiSdwu0rkJtrQd5Onryk9cTflkkAfU6mWYmWtM9GSLqTYjrlsq3egN/m7bcWG
	WYeYV24aVsYaMyeZxHlsIVb0VyH706G5GSDzywLPeIllofuUTkcq7tcd0XEJMg==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 30 Dec 2024 10:49:00 +0100
Subject: [PATCH v2] arm64: dts: ti: k3-j784s4: use ti,j7200-padconf
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241230-j784s4-s2r-pinctrl-v2-1-35039fafe2ca@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAItscmcC/22NzQrCMBCEX6Xs2Ug2Df3x5HtID01c7UpNShKKU
 vLuxuJR5vQNzDcbRApMEU7VBoFWjuxdAXWowE6ju5Pga2FQUmlE2YlH2+moRVRBLOxsCrNodE0
 4WiVRWyjDJdCNX7v0MhSeOCYf3vvHit/2p8P6n25FUdKPZBrV1r2xZ+N9mtkdrX/CkHP+AMFMb
 QC2AAAA
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, gregory.clement@bootlin.com, 
 thomas.petazzoni@bootlin.com, richard.genoud@bootlin.com, u-kumar1@ti.com, 
 Thomas Richard <thomas.richard@bootlin.com>
X-Mailer: b4 0.14.1
X-GND-Sasl: thomas.richard@bootlin.com

Like on j7200, pinctrl contexts shall be saved and restored during
suspend-to-ram.

So use ti,j7200-padconf compatible.

Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
Second iteration, the series was just rebased to v6.13-rc5.
---
Changes in v2:
- Rebased to v6.13-rc5
- Link to v1: https://lore.kernel.org/r/20241113-j784s4-s2r-pinctrl-v1-1-19aeb62739bc@bootlin.com
---
 arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi     |  6 +++---
 .../boot/dts/ti/k3-j784s4-j742s2-mcu-wakeup-common.dtsi      | 12 ++++++------
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
index 7721852c1f68..026f959e68a2 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
@@ -224,7 +224,7 @@ main_gpio_intr: interrupt-controller@a00000 {
 	};
 
 	main_pmx0: pinctrl@11c000 {
-		compatible = "pinctrl-single";
+		compatible = "ti,j7200-padconf", "pinctrl-single";
 		/* Proxy 0 addressing */
 		reg = <0x00 0x11c000 0x00 0x120>;
 		#pinctrl-cells = <1>;
@@ -234,7 +234,7 @@ main_pmx0: pinctrl@11c000 {
 
 	/* TIMERIO pad input CTRLMMR_TIMER*_CTRL registers */
 	main_timerio_input: pinctrl@104200 {
-		compatible = "pinctrl-single";
+		compatible = "ti,j7200-padconf", "pinctrl-single";
 		reg = <0x00 0x104200 0x00 0x50>;
 		#pinctrl-cells = <1>;
 		pinctrl-single,register-width = <32>;
@@ -243,7 +243,7 @@ main_timerio_input: pinctrl@104200 {
 
 	/* TIMERIO pad output CTCTRLMMR_TIMERIO*_CTRL registers */
 	main_timerio_output: pinctrl@104280 {
-		compatible = "pinctrl-single";
+		compatible = "ti,j7200-padconf", "pinctrl-single";
 		reg = <0x00 0x104280 0x00 0x20>;
 		#pinctrl-cells = <1>;
 		pinctrl-single,register-width = <32>;
diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-mcu-wakeup-common.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-mcu-wakeup-common.dtsi
index 9638130caece..52e2965a3bf5 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-mcu-wakeup-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-mcu-wakeup-common.dtsi
@@ -76,7 +76,7 @@ mcu_ram: sram@41c00000 {
 	};
 
 	wkup_pmx0: pinctrl@4301c000 {
-		compatible = "pinctrl-single";
+		compatible = "ti,j7200-padconf", "pinctrl-single";
 		/* Proxy 0 addressing */
 		reg = <0x00 0x4301c000 0x00 0x034>;
 		#pinctrl-cells = <1>;
@@ -85,7 +85,7 @@ wkup_pmx0: pinctrl@4301c000 {
 	};
 
 	wkup_pmx1: pinctrl@4301c038 {
-		compatible = "pinctrl-single";
+		compatible = "ti,j7200-padconf", "pinctrl-single";
 		/* Proxy 0 addressing */
 		reg = <0x00 0x4301c038 0x00 0x02c>;
 		#pinctrl-cells = <1>;
@@ -94,7 +94,7 @@ wkup_pmx1: pinctrl@4301c038 {
 	};
 
 	wkup_pmx2: pinctrl@4301c068 {
-		compatible = "pinctrl-single";
+		compatible = "ti,j7200-padconf", "pinctrl-single";
 		/* Proxy 0 addressing */
 		reg = <0x00 0x4301c068 0x00 0x120>;
 		#pinctrl-cells = <1>;
@@ -103,7 +103,7 @@ wkup_pmx2: pinctrl@4301c068 {
 	};
 
 	wkup_pmx3: pinctrl@4301c190 {
-		compatible = "pinctrl-single";
+		compatible = "ti,j7200-padconf", "pinctrl-single";
 		/* Proxy 0 addressing */
 		reg = <0x00 0x4301c190 0x00 0x004>;
 		#pinctrl-cells = <1>;
@@ -125,7 +125,7 @@ wkup_gpio_intr: interrupt-controller@42200000 {
 
 	/* MCU_TIMERIO pad input CTRLMMR_MCU_TIMER*_CTRL registers */
 	mcu_timerio_input: pinctrl@40f04200 {
-		compatible = "pinctrl-single";
+		compatible = "ti,j7200-padconf", "pinctrl-single";
 		reg = <0x00 0x40f04200 0x00 0x28>;
 		#pinctrl-cells = <1>;
 		pinctrl-single,register-width = <32>;
@@ -136,7 +136,7 @@ mcu_timerio_input: pinctrl@40f04200 {
 
 	/* MCU_TIMERIO pad output CTRLMMR_MCU_TIMERIO*_CTRL registers */
 	mcu_timerio_output: pinctrl@40f04280 {
-		compatible = "pinctrl-single";
+		compatible = "ti,j7200-padconf", "pinctrl-single";
 		reg = <0x00 0x40f04280 0x00 0x28>;
 		#pinctrl-cells = <1>;
 		pinctrl-single,register-width = <32>;

---
base-commit: 0fcd4792246bb4fd490af35de8d914c33ccfa65f
change-id: 20241108-j784s4-s2r-pinctrl-643e1ac2014c

Best regards,
-- 
Thomas Richard <thomas.richard@bootlin.com>


