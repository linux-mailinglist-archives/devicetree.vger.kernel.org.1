Return-Path: <devicetree+bounces-107471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B73E98EC73
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 11:50:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 115E62851FE
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 09:50:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76AF4146A9F;
	Thu,  3 Oct 2024 09:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="W1N5+oc3"
X-Original-To: devicetree@vger.kernel.org
Received: from out-185.mta0.migadu.com (out-185.mta0.migadu.com [91.218.175.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88C33126C00
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 09:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.185
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727949007; cv=none; b=I7N3cIJJlMePkclcLJYi1+atpyDqYVjHjlfPNjh0cDpiM3+RybQh4tTyiFHRSXdz4eR0ykAibQU/jJiHVWh1/UToUvbhFSyMwxDihaT9xRuEd3oas5ZdyiQS15BE9MwVSpgGXtGQ/QqATsVGtbVJv1vVbnjN3+jy64cJ/r+4BL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727949007; c=relaxed/simple;
	bh=hzjQjk6tzBuYI0SPle6/wI5s9Aj7GMLVr6A6adFanQY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jSyZGp18AZhpH6FUnXEU94oyG9BC27Nc0PFI6nVl7SycMbr9Fsfjaze3z0eWEfQQZd85N6D0HkWj1Bl2EQQIc21b+rPDQcAK+aFe4T5d6xPEXPumQJ/OV4Lp9k10uyyF/wifxzEZP5qTJq3euj+EaR3e7G+Kh3GGvDsGx7K0ZbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=W1N5+oc3; arc=none smtp.client-ip=91.218.175.185
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1727949003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=r+0IzIZkqo5OWrkJ+sBCX8uW4cDLePoKImfyKH4X9YE=;
	b=W1N5+oc3mEKfyfoIyE1MM5WE8u1xF/IsOE1qP/oXBqGQhbmIh3t4dItljrsJ/6Dh8eC7oc
	lED5Pfthn+HpoWze0z04a3iKV1nClJcWKrcPf9EAy20qIUGV64nc7APB3ZvqCNlsm+OWVL
	yFOnQolLyEfCQaWlMRVB8XcrgVw3p0cDK9Yeu5YiiQmbsPrLz6F9hrcBFmV2a4hUrZ8s4D
	X7Uc7p95EuP+DrBdVCnOQO5osXSDkH1f2ZQ4E7I0oTwRPidN5CH+IaxLZOZrVfuEPKI3Hx
	7uNNPB9ieVbOzU8JuM6zwel8Fx0c0e53YbUDuxjB/6ya0hpGI3u7Wr2G02pvuw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH 1/5] arm64: dts: rockchip: px30: Drop rockchip prefix from s-p-c PMIC property
Date: Thu,  3 Oct 2024 11:43:25 +0200
Message-ID: <20241003094927.62042-2-didi.debian@cknow.org>
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
Update the px30 DT files which still used the deprecated variant.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/px30-evb.dts                | 2 +-
 arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi  | 2 +-
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi          | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
index 5eecbefa8a33..dd715d22d4d2 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
@@ -50,7 +50,7 @@ rk809: pmic@20 {
 		interrupts = <RK_PA7 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index 0a90a88fc664..c9d7b32da997 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -189,7 +189,7 @@ rk809: pmic@20 {
 		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <0>;
 		clock-output-names = "xin32k";
diff --git a/arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi b/arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi
index f18d7eb9a9c7..d22ea65b364c 100644
--- a/arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi
@@ -70,7 +70,7 @@ rk809: pmic@20 {
 		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <0>;
 		clock-output-names = "xin32k";
diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
index bb1aea82e666..eb0bb78cff7d 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
@@ -127,7 +127,7 @@ rk809: pmic@20 {
 		pinctrl-names = "default";
 		#clock-cells = <0>;
 		clock-output-names = "xin32k";
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc5v0_sys>;
-- 
2.45.2


