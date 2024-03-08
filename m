Return-Path: <devicetree+bounces-49400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37433876491
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 13:53:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 68EC81C217D5
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 12:52:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E86F36AF8;
	Fri,  8 Mar 2024 12:52:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-190b.mail.infomaniak.ch (smtp-190b.mail.infomaniak.ch [185.125.25.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D13F18EAB
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 12:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.25.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709902348; cv=none; b=uB+CKA7P+cQGLjCK0rTj8L/cZP1AXOoMr1Ozey2N1FZ+a25EPTsueWOs0KKLDNVxUe2eklhI+AiJ6JOUJw3SGJ61pSCg+ODCjK8IUK86QHix1FAL4714hH/ZN1SEtuRPCDkcJcmVqCFA3g3LYz9bhX/U+tWLVwMnmmdYu80ARjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709902348; c=relaxed/simple;
	bh=oO4i3HoAXE8oa/LHkMaPbOF10iI4nIvpFAYMuYeeLbM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qPcdB0cfTyVIqJ/s1x77g8J+c+hxnuBTZsgs4abhQMCoTq4dU67ue6Gpq6qHiOxgEYu9sI+3Z0XLWGeaY4BmKR1O+lmR37PVcdV1kZLdCzUZmi041kcOVAcrC2g24Wa+R2UTwvT2rL5ClFzMDo8KcndYzga3MLwzAjwsjms9yDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=185.125.25.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-3-0001.mail.infomaniak.ch (smtp-3-0001.mail.infomaniak.ch [10.4.36.108])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4TrmKF3HfCztpY;
	Fri,  8 Mar 2024 13:52:17 +0100 (CET)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4TrmKD63f6zMppDY;
	Fri,  8 Mar 2024 13:52:16 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Fri, 08 Mar 2024 13:52:10 +0100
Subject: [PATCH 3/3] arm64: dts: rockchip: add regulators for PCIe on
 RK3399 Puma Haikou
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240308-puma-diode-pu-v1-3-2b38457bcdc0@theobroma-systems.com>
References: <20240308-puma-diode-pu-v1-0-2b38457bcdc0@theobroma-systems.com>
In-Reply-To: <20240308-puma-diode-pu-v1-0-2b38457bcdc0@theobroma-systems.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Klaus Goger <klaus.goger@theobroma-systems.com>, 
 Quentin Schulz <foss+kernel@0leil.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
X-Mailer: b4 0.13.0
X-Infomaniak-Routing: alpha

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

The PCIe PHY requires two regulators and are present on the SoM
directly, while the PCIe connector also exposes 3V3 and 12V power rails
which are available on the baseboard.

Considering that 3/4 regulators are always-on on HW level and that the
last one depends on a regulator from the PMIC that is specified as
always on, this commit should be purely cosmetic and no change in
behavior is expected.

Let's add all regulators for PCIe on RK3399 Puma Haikou.

Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 .../arm64/boot/dts/rockchip/rk3399-puma-haikou.dts |  2 ++
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      | 26 ++++++++++++++++++++++
 2 files changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index 18a98c4648eae..66ebb148bbc9a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -194,6 +194,8 @@ &pcie0 {
 	num-lanes = <4>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie_clkreqn_cpm>;
+	vpcie3v3-supply = <&vcc3v3_baseboard>;
+	vpcie12v-supply = <&dc_12v>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 2484ad2bd86fc..1113f57b09313 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -79,6 +79,26 @@ vcc5v0_sys: vcc5v0-sys {
 		regulator-max-microvolt = <5000000>;
 	};
 
+	vcca0v9: vcca0v9-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcca0v9";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		vin-supply = <&vcc_1v8>;
+	};
+
+	vcca1v8: vcca1v8-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcca1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
 		pwms = <&pwm2 0 25000 1>;
@@ -416,6 +436,12 @@ &io_domains {
 	gpio1830-supply = <&vcc_1v8>;
 };
 
+&pcie0 {
+	/* PCIe PHY supplies */
+	vpcie0v9-supply = <&vcca0v9>;
+	vpcie1v8-supply = <&vcca1v8>;
+};
+
 &pcie_clkreqn_cpm {
 	rockchip,pins =
 		<2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_up>;

-- 
2.44.0


