Return-Path: <devicetree+bounces-250891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC992CECDAF
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 07:43:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A5A1630084C0
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 06:43:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B916B22B8A9;
	Thu,  1 Jan 2026 06:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EO8ZpR1G"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91365221721;
	Thu,  1 Jan 2026 06:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767249827; cv=none; b=BYxB62MGaGXfnKUpbFQMUzZaIaB8xbeplh2/adgKGvsu5hwbQg/Xz85E3cIBF0X4llwWKLpxXbCiqiC3/sHtnlZJOpOJ+mhRQhhPsYR2IL3oklWZddlvOGk7B0NPSr/MIh70WSwsP0RPT86PJ0RPMG/QVTGG6Iww57spvJeQrtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767249827; c=relaxed/simple;
	bh=nyREQ8mGyrIWw5gzZ8ndGSNZXA7rebJqyK2xBVXL+Zs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jhL3pZbkyYOCvIIQSxf9qInaWZvk2gp9e0+aMfdAgbn5oNqYLpR82fOmRxheKdkzrrW4ccl8yBlUQPWlg4pEjRPqlmGxRvZomJyPVwLHQu0PjFQwqD5Ofgru8XuJqqBCuBNl/WhvH27NtzQruBxYS9ThAEfEqfBn12H0KDmGmfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EO8ZpR1G; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3469AC16AAE;
	Thu,  1 Jan 2026 06:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767249827;
	bh=nyREQ8mGyrIWw5gzZ8ndGSNZXA7rebJqyK2xBVXL+Zs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=EO8ZpR1GnHKd/CoJA+5AUvsvzW+CMNv87TvvERWehG226V/nKQ8X0b1b/IeiaPYrp
	 S4ESBPKyh9MrmTkcDnHLT0PyfLRVwRfZW5Pd/Dr/Nr27ZETI7J7FhYFFzBPZK6U9ws
	 Xm2Krd+mQETMSXy3fJtJ0AsSPUfMaQYstZ6dD1RvIgejYXiGEWcTNIidHjsF5ksxns
	 8Na26F6cQ6qrVBZ+9z1b8BaySxl5NCq7JXgTpGsOInqhZjNR5tlrT/g0s5T58+QOGf
	 NL6xUcBUz+E9LLEUy1wOTIS0ivLhgLCPCdNwXSuN9Ykz8WsdK6qa3eT3L14q5wL+oc
	 V1Pa4dyi3BC6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26F1BEEB57B;
	Thu,  1 Jan 2026 06:43:47 +0000 (UTC)
From: Ricardo Pardini via B4 Relay <devnull+ricardo.pardini.net@kernel.org>
Date: Thu, 01 Jan 2026 07:43:09 +0100
Subject: [PATCH v2 1/3] arm64: dts: rockchip: Enable the NPU on NanoPC
 T6/T6-LTS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260101-arm64-dts-rockchip-rk3588-npu-enablements-v2-1-013cf5d5c39d@pardini.net>
References: <20260101-arm64-dts-rockchip-rk3588-npu-enablements-v2-0-013cf5d5c39d@pardini.net>
In-Reply-To: <20260101-arm64-dts-rockchip-rk3588-npu-enablements-v2-0-013cf5d5c39d@pardini.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jimmy Hon <honyuenkwun@gmail.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>, 
 Ricardo Pardini <ricardo@pardini.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1717;
 i=ricardo@pardini.net; h=from:subject:message-id;
 bh=shFG9R6+v5sNoFpWnfg7ZTJoiZw4vZTXsI7KdVCsRTs=;
 b=owEBbQGS/pANAwAIATteP+Oex+3pAcsmYgBpVheh7MFP/7SozKGqT+2LoTktB4u2fxOXWTiDT
 nu3Y1cAdY6JATMEAAEIAB0WIQSsGCMM9q/qytxIiJM7Xj/jnsft6QUCaVYXoQAKCRA7Xj/jnsft
 6RNOB/9efcvKbL7zz3E+rnkdD2iazUZI9FmPbkEcR0H0nBk7FFKDdaHiRhWoIepZ9nFKMk6y7zo
 Hho6TSDexjkPswr+1LqKX1DlBAAKnn9gHxjAWJqHDSu3rZK7RcgmXoUa3YA+OwpgalGbhH5jnzt
 keZqSoZiJo2AOp+zyPLmxn4sbT0gqV86turDQk4iwh+CxuxWSO4kZn7BozCUIJxwWBO9dLx4Mk7
 YhQ4g2KrNSZeuEyX/kulvAI51pG4ASPI2JWXUtGzN76AwQq28h/Zz+HILHfI54I/c1/rTsI+EYb
 JuNHoUYGO+C4/aaXY6E7Qf+xUlmF1D9RWO5FZDvvjtPh8jBY
X-Developer-Key: i=ricardo@pardini.net; a=openpgp;
 fpr=AC18230CF6AFEACADC4888933B5E3FE39EC7EDE9
X-Endpoint-Received: by B4 Relay for ricardo@pardini.net/default with
 auth_id=588
X-Original-From: Ricardo Pardini <ricardo@pardini.net>
Reply-To: ricardo@pardini.net

From: Ricardo Pardini <ricardo@pardini.net>

Enable the NPU on FriendlyElec NanoPC T6/T6-LTS boards.
The regulator vdd_npu_s0 was already in place; since
the NPU power domain supply is now described, remove the
regulator's always-on.

Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 36 +++++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index fafeabe9adf9e..90e7fe254491b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -458,7 +458,6 @@ vdd_npu_s0: regulator@42 {
 		reg = <0x42>;
 		fcs,suspend-voltage-selector = <1>;
 		regulator-name = "vdd_npu_s0";
-		regulator-always-on;
 		regulator-boot-on;
 		regulator-min-microvolt = <550000>;
 		regulator-max-microvolt = <950000>;
@@ -629,6 +628,10 @@ &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
 &pinctrl {
 	gpio-leds {
 		sys_led_pin: sys-led-pin {
@@ -706,6 +709,37 @@ &pwm1 {
 	status = "okay";
 };
 
+&rknn_core_0 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_1 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_2 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_mmu_0 {
+	status = "okay";
+};
+
+&rknn_mmu_1 {
+	status = "okay";
+};
+
+&rknn_mmu_2 {
+	status = "okay";
+};
+
+
 &saradc {
 	vref-supply = <&avcc_1v8_s0>;
 	status = "okay";

-- 
2.52.0



