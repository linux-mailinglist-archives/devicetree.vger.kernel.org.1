Return-Path: <devicetree+bounces-184420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A38AD3EF1
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 18:30:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4B7347AE133
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 16:28:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4729C239E63;
	Tue, 10 Jun 2025 16:29:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-8fac.mail.infomaniak.ch (smtp-8fac.mail.infomaniak.ch [83.166.143.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98CD923E32D
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 16:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=83.166.143.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749572974; cv=none; b=IJtHgLweJtng7FQBM+UY2XNZAv5rfwsDssp8vpXnSSanMmDQD93L+XHVFPslDgO9OLf6Ypcrn55W91ZAB41pMgtGvCB0BC0PZsAoBDvG9f7uF1EXBGxvy5qhLniUFpTGfNdizepY7U031i/046zYadnjMwtr9/LIThGkgv33Qbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749572974; c=relaxed/simple;
	bh=Z6D+GL9GtsJgbHK3WL3YW7UtvGDqmKqTgGYeL9dKFuw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NSHPxs+y4kgGWo2wdDBCHiQi2cYuh0+3yyc4/Hy/iLPtNibGCwQI5Chz9ZYYyQFehjISbFBTAt0EommiYVqKuTScqA3Rd6pj2M/6j1O2LyRMUcPksXJ41yIoFT1aCED+Ga2ufD9ncSkIlqGPvf3vd0aIWTK9HoT+ggWCouPGfSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=83.166.143.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-3-0001.mail.infomaniak.ch (smtp-3-0001.mail.infomaniak.ch [10.4.36.108])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4bGvG03JXvznlH;
	Tue, 10 Jun 2025 18:22:32 +0200 (CEST)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4bGvFz4fyJzyLt;
	Tue, 10 Jun 2025 18:22:31 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Tue, 10 Jun 2025 18:22:18 +0200
Subject: [PATCH v2 3/3] arm64: dts: rockchip: support camera module on
 Haikou Video Demo on PX30 Ringneck
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250610-ringneck-haikou-video-demo-cam-v2-3-de1bf87e0732@cherry.de>
References: <20250610-ringneck-haikou-video-demo-cam-v2-0-de1bf87e0732@cherry.de>
In-Reply-To: <20250610-ringneck-haikou-video-demo-cam-v2-0-de1bf87e0732@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

From: Quentin Schulz <quentin.schulz@cherry.de>

The Haikou Video Demo adapter has a proprietary connector for a camera
module which has an OV5675 camera sensor and a companion DW9714 focus
lens driver.

This adds support for the camera module on PX30 Ringneck module fitted
on a Haikou devkit with the Haikou Video Demo adapter.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 .../rockchip/px30-ringneck-haikou-video-demo.dtso  | 53 ++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou-video-demo.dtso b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou-video-demo.dtso
index 7d9ea5aa598486680191d52e4c87af59f7b0e579..ea5ce919984f0704d88dc1f5eb02a42d5633656e 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou-video-demo.dtso
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou-video-demo.dtso
@@ -94,6 +94,15 @@ video-adapter-led {
 	};
 };
 
+&cif_clkout_m0 {
+	rockchip,pins =
+		<2 RK_PB3 1 &pcfg_pull_none_12ma>;
+};
+
+&csi_dphy {
+	status = "okay";
+};
+
 &display_subsystem {
 	status = "okay";
 };
@@ -135,6 +144,12 @@ &i2c1 {
 	/* OV5675, GT911, DW9714 are limited to 400KHz */
 	clock-frequency = <400000>;
 
+	focus: focus@c {
+		compatible = "dongwoon,dw9714";
+		reg = <0xc>;
+		vcc-supply = <&cam_afvdd_2v8>;
+	};
+
 	touchscreen@14 {
 		compatible = "goodix,gt911";
 		reg = <0x14>;
@@ -157,6 +172,44 @@ pca9670: gpio@27 {
 		pinctrl-names = "default";
 		reset-gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
 	};
+
+	camera@36 {
+		compatible = "ovti,ov5675";
+		reg = <0x36>;
+		clocks = <&cru SCLK_CIF_OUT>;
+		assigned-clocks = <&cru SCLK_CIF_OUT>;
+		/* Only parent to get exactly 19.2MHz */
+		assigned-clock-parents = <&cru USB480M>;
+		assigned-clock-rates = <19200000>;
+		avdd-supply = <&cam_avdd_2v8>;
+		dvdd-supply = <&cam_dvdd_1v2>;
+		dovdd-supply = <&cam_dovdd_1v8>;
+		lens-focus = <&focus>;
+		orientation = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cif_clkout_m0>;
+		reset-gpios = <&pca9670 6 GPIO_ACTIVE_LOW>;
+		rotation = <180>;
+
+		port {
+			cam_out: endpoint {
+				data-lanes = <1 2>;
+				link-frequencies = /bits/ 64 <450000000>;
+				remote-endpoint = <&mipi_in_cam>;
+			};
+		};
+	};
+};
+
+&isp {
+	status = "okay";
+};
+
+&isp_in {
+	mipi_in_cam: endpoint {
+		data-lanes = <1 2>;
+		remote-endpoint = <&cam_out>;
+	};
 };
 
 &pinctrl {

-- 
2.49.0


