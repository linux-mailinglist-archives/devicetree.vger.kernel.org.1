Return-Path: <devicetree+bounces-254282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B3DD16DF7
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 07:42:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F62F301AD3D
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 06:42:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D9CD368283;
	Tue, 13 Jan 2026 06:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVkNgAwo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2184D35971B;
	Tue, 13 Jan 2026 06:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768286546; cv=none; b=hX8ljt64RUghOrUeBnB/U/AgcpbBC9O2KXSRKMCrfjZGjVG4dR+eD4nXYZroDkeZE6Qj2rmgdI7QvhBNvn/h+hb4A7Xd5HUkT4CrO4a67O/Zalia7g9duDRPJ40BgoAQ8zuW/k6pUul/qDCY/43ar1WBBjwV2/APo0taZUz4MNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768286546; c=relaxed/simple;
	bh=tgNrJivakY84LN4ffX7ynvqrLuzdsKS6bBMEvtxUBUM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JWFktmeOEWzPzeML49wf4we33uwCX5nLin2Of+lYloEmXcbwr2qyHz+FdI6bsJ3LMZi0/ZQb8e3RD/CutJRVllcyuP+ogDXZyN/Q1SlV+Wxsb4zIphj1M6owIfKPA8tZ/a2Glk83wfBVCdHLnUlGgaXOnBuiDh8fk426rwThzPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVkNgAwo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0098C19423;
	Tue, 13 Jan 2026 06:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768286545;
	bh=tgNrJivakY84LN4ffX7ynvqrLuzdsKS6bBMEvtxUBUM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=CVkNgAwowTw3rkY43D3p+qbnYOV8nlcpIC+gdamWnBdYYkQiH60E0xY+VYSGKvOz3
	 W//tZqbuemKHNoltN36iKRkAU2grVtUr+sTmkErxuhM5ajrbynxok6UsVCbhR55q/P
	 2+sInRkNCU0PYrIRyEPOCOyISf4g5IVKkQrbWv0HhV9pu6ZHSc7VsSnTcnTVx/We5L
	 4gIu42OyGTRLwhcpxsUgMY0eIyGNwJ0cu+fMHsqRQtTaxtdXMYHb/QRkw6Lq6drmtI
	 5hW6Jz8xMXOeSqgvm6wMo1F8PTsYNZd2u62L6mAGqDziM/QWAzZxCDwpSvyjyP2+5r
	 4Nsyq3ObCbeHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0374D29DDC;
	Tue, 13 Jan 2026 06:42:25 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Date: Mon, 12 Jan 2026 22:42:24 -0800
Subject: [PATCH 1/3] arm64: dts: rockchip: Add modem to the Pinephone Pro
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260112-ppp_connectivity-v1-1-284d6e83b212@gmail.com>
References: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
In-Reply-To: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Lee Jones <lee@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Rudraksha Gupta <guptarud@gmail.com>, Martijn Braam <martijn@brixit.nl>, 
 =?utf-8?q?Kamil_Trzci=C5=84ski?= <ayufan@ayufan.eu>, 
 Ondrej Jirman <megi@xff.cz>, Danct12 <danct12@disroot.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768286545; l=3643;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=4uS+h5BwUlSPrxpCAFJLMPNjdiivO6iFy+cSgNfP0p0=;
 b=2ksy0syKTvw7tTSOjQGRnnffr+1niVslNBIkAg2/x41pqLBRVxPYmnDfrYxHhjVTbjbMotF10
 4/L/4w2w6ybD5Ram1A8zLKUfrUbuTb4LTHAN8WNWBnfPBjxYbRoVaqX
X-Developer-Key: i=guptarud@gmail.com; a=ed25519;
 pk=ETrudRugWAtOpr0OhRiheQ1lXM4Kk4KGFnBySlKDi2I=
X-Endpoint-Received: by B4 Relay for guptarud@gmail.com/20240916 with
 auth_id=211
X-Original-From: Rudraksha Gupta <guptarud@gmail.com>
Reply-To: guptarud@gmail.com

From: Rudraksha Gupta <guptarud@gmail.com>

This adds the Quectel EG25-G modem to the Pinephone Pro.

Co-developed-by: Martijn Braam <martijn@brixit.nl>
Signed-off-by: Martijn Braam <martijn@brixit.nl>
Co-developed-by: Kamil Trzciński <ayufan@ayufan.eu>
Signed-off-by: Kamil Trzciński <ayufan@ayufan.eu>
Co-developed-by: Ondrej Jirman <megi@xff.cz>
Signed-off-by: Ondrej Jirman <megi@xff.cz>
Co-developed-by: Danct12 <danct12@disroot.org>
Signed-off-by: Danct12 <danct12@disroot.org>
Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
---
 .../boot/dts/rockchip/rk3399-pinephone-pro.dts     | 83 ++++++++++++++++++++++
 1 file changed, 83 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 6b35f59cd58e..97d0bf455258 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -97,6 +97,46 @@ multi-led {
 		leds = <&led_red>, <&led_green>, <&led_blue>;
 	};
 
+	vcc_4g_5v: regulator-vcc-4g-5v {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PC7 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc_4g_5v_en>;
+		regulator-name = "vcc_4g_5v";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
+		regulator-always-on;
+	};
+
+	vcc_4g: regulator-vcc-4g {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PC7 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc_4g_en>;
+		regulator-name = "vcc_4g";
+		regulator-min-microvolt = <3800000>;
+		regulator-max-microvolt = <3800000>;
+		vin-supply = <&vcc_sys>;
+		regulator-always-on;
+	};
+
+	vcc5v0_sys: regulator-vcc5v0-host {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&boost_otg>;
+
+		regulator-state-mem {
+			regulator-on-in-suspend;
+		};
+	};
+
 	vcc_sys: regulator-vcc-sys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_sys";
@@ -274,6 +314,17 @@ rk818: pmic@1c {
 		vcc9-supply = <&vcc3v3_sys>;
 
 		regulators {
+			boost_otg: DCDC_BOOST {
+				regulator-name = "boost_otg";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5000000>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
 			vdd_cpu_l: DCDC_REG1 {
 				regulator-name = "vdd_cpu_l";
 				regulator-always-on;
@@ -702,6 +753,16 @@ blue_led_pin: blue-led-pin {
 		};
 	};
 
+	modem {
+		vcc_4g_5v_en: vcc-4g-5v-en-pin {
+			rockchip,pins = <1 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		vcc_4g_en: vcc-4g-en-pin {
+			rockchip,pins = <4 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
@@ -827,6 +888,16 @@ &tsadc {
 	status = "okay";
 };
 
+
+&u2phy1 {
+	status = "okay";
+};
+
+&u2phy1_host {
+	status = "okay";
+	phy-supply = <&vcc5v0_sys>;
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
@@ -852,6 +923,18 @@ &uart2 {
 	status = "okay";
 };
 
+&uart3 {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
+
 &vopb {
 	status = "okay";
 	assigned-clocks = <&cru DCLK_VOP0_DIV>, <&cru DCLK_VOP0>,

-- 
2.52.0



