Return-Path: <devicetree+bounces-190727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7805CAEC7F0
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 16:52:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7C69E189FBD4
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 14:52:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5419B25D208;
	Sat, 28 Jun 2025 14:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="daIS9324"
X-Original-To: devicetree@vger.kernel.org
Received: from out-182.mta0.migadu.com (out-182.mta0.migadu.com [91.218.175.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF15025B305
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 14:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751122181; cv=none; b=lbA2PauNoCCwU+SM2U7/UJJ/YqhVuupcQZlEEbr81AylSaFwTg2Aj/DHdBx6G63cMSG7tqjn/6NLJuZf8IFfkr6oGKOuPh+TtN4pT/0zo3oE8aVUKth6t3mK8yFmjwnNzz6PaLD4rokXakSWmsj5nQ6FRIf8pxVXDFm998AHEe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751122181; c=relaxed/simple;
	bh=nsAfoD3v/HBr6ID5bxFuUM7z5sm2UrulP0r+6b9gb7Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tMw8xq+94Y1QAufxPap0TuejDaLAvvt/EfdFZx9gfFlkm7gxG1rxU/J3BP4zH1P68InOCxrqHjnYRad5Fn8bPr0Qf3pET1nR927dX1TP3+oKnGH256b9U59eVxAecDFNXg6FgN9Cmhxe51Ndk9GuXuyMS/qnm8hw5Ts/zwJozq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=daIS9324; arc=none smtp.client-ip=91.218.175.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1751122175;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nOCOpdzyJGYo0WmyPHPzo5U4cOQf2vkC3N8qsd5gyAo=;
	b=daIS9324QttA57y7l+xdjF7zturzgBK5nNg+qp3Hk7JGrM5dsSwOhhvgWyEOv2FaWA6MgQ
	wNZDOMw83JkimbY/BaGuief0BcMrDrw7TLOAMfIfpSnu05VHGMBji2Q3nMAkNM99walqix
	nkxax+IBVUL8jS5pnk+2DI7eutzBBjrcMK5X2worrx6c8OFrDQI2iuR/5SzLoZmuby5/R7
	9OfOAu+w60u3SyjLzP5l4ipwonv5LF0ia+6l7DiGoSQzE2g1BgUyJB897dmulltNf2vUoB
	Rrawoo02XSQFcRVttstA+PpPp0evYF5WTfjTXy6NERsMmDJFjB+6Ha/+k7Vg+g==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v2 10/10] arm64: dts: rockchip: Drop regulator-compatible property on rk3399
Date: Sat, 28 Jun 2025 16:32:44 +0200
Message-ID: <20250628144915.839338-11-didi.debian@cknow.org>
In-Reply-To: <20250628144915.839338-1-didi.debian@cknow.org>
References: <20250628144915.839338-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

The regulator-compatible property has never existed in the
regulator/fcs,fan53555.yaml binding, so drop it.

This fixes the following DTB validation warnings:

  Unevaluated properties are not allowed
  ('regulator-compatible' was unexpected)

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts   | 2 --
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 2 --
 2 files changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index 81c4fcb30f39..352c8efb37e0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -211,7 +211,6 @@ &i2c0 {
 	vdd_cpu_b: syr827@40 {
 		compatible = "silergy,syr827";
 		reg = <0x40>;
-		regulator-compatible = "fan53555-reg";
 		pinctrl-0 = <&vsel1_pin>;
 		regulator-name = "vdd_cpu_b";
 		regulator-min-microvolt = <712500>;
@@ -229,7 +228,6 @@ regulator-state-mem {
 	vdd_gpu: syr828@41 {
 		compatible = "silergy,syr828";
 		reg = <0x41>;
-		regulator-compatible = "fan53555-reg";
 		pinctrl-0 = <&vsel2_pin>;
 		regulator-name = "vdd_gpu";
 		regulator-min-microvolt = <712500>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index 15da5c80d25d..962b8b231c96 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -421,7 +421,6 @@ vdd_cpu_b: regulator@40 {
 		compatible = "silergy,syr827";
 		reg = <0x40>;
 		fcs,suspend-voltage-selector = <1>;
-		regulator-compatible = "fan53555-reg";
 		pinctrl-0 = <&vsel1_gpio>;
 		vsel-gpios = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
 		regulator-name = "vdd_cpu_b";
@@ -440,7 +439,6 @@ vdd_gpu: regulator@41 {
 		compatible = "silergy,syr828";
 		reg = <0x41>;
 		fcs,suspend-voltage-selector = <1>;
-		regulator-compatible = "fan53555-reg";
 		pinctrl-0 = <&vsel2_gpio>;
 		vsel-gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_HIGH>;
 		regulator-name = "vdd_gpu";
-- 
2.50.0


