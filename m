Return-Path: <devicetree+bounces-125644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9F69DEDE4
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:49:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C00201635E5
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 00:49:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 823D12AF06;
	Sat, 30 Nov 2024 00:49:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 770EBB658
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 00:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732927787; cv=none; b=WVd/ohi6RwQhMcxbTE74w5BkqKdYtlj7Ysz/ox85pQmoteoJsaY4L/1XKK5ihz6Rnolx+1U/RXNNSAQJNpFxTNcjuFd/SCdWrwLF6Sjvd+Kf98YMqjbXOByxBqwRWvkGtSaFySg18bN8RtQM9/y1W4cL1t5K5jPp9nUBlfjdQH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732927787; c=relaxed/simple;
	bh=Qm3Hladquqbiawt1VL4zdiFv9vfQhklDG4+8ixKq3qk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=c1UR1Vdb2omJtkAlCvK6EGLgFOlL4e+MjiXWnXTeSJaRltw9t1kAtY6ey8eRokoTXcxlFEqb9F8qONdijRGceMWPBqH5F/8zd8b3vSFQxylSWPG+Kv6wO9WfSZhSEENNy/nWQ2TVGtDIjHQDp2zTyyk8N+xLgNty57/C7VLW5P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU0nQ2M024394;
	Sat, 30 Nov 2024 09:49:27 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com, alchark@gmail.com,
        inindev@gmail.com, cristian.ciocaltea@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/4] arm64: dts: rockchip: sort nodes in .dts for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 00:49:17 +0000
Message-ID: <20241130004920.7505-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241130004920.7505-1-naoki@radxa.com>
References: <20241130004920.7505-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

sort alphanumerically.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 56 +++++++++----------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index fbe231973b24..08f5efeeac9c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -473,21 +473,6 @@ &sdhci {
 	status = "okay";
 };
 
-&sdmmc {
-	max-frequency = <200000000>;
-	no-sdio;
-	no-mmc;
-	bus-width = <4>;
-	cap-mmc-highspeed;
-	cap-sd-highspeed;
-	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
-	disable-wp;
-	sd-uhs-sdr104;
-	vmmc-supply = <&vcc_3v3_s3>;
-	vqmmc-supply = <&vccio_sd_s0>;
-	status = "okay";
-};
-
 &sdio {
 	max-frequency = <200000000>;
 	no-sd;
@@ -509,6 +494,21 @@ &sdio {
 	status = "okay";
 };
 
+&sdmmc {
+	max-frequency = <200000000>;
+	no-sdio;
+	no-mmc;
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_3v3_s3>;
+	vqmmc-supply = <&vccio_sd_s0>;
+	status = "okay";
+};
+
 &sfc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&fspim2_pins>;
@@ -523,12 +523,6 @@ flash@0 {
 	};
 };
 
-&uart6 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart6m1_xfer &uart6m1_ctsn &uart6m1_rtsn>;
-	status = "okay";
-};
-
 &spi2 {
 	status = "okay";
 	assigned-clocks = <&cru CLK_SPI2>;
@@ -858,11 +852,6 @@ &tsadc {
 	status = "okay";
 };
 
-&uart2 {
-	pinctrl-0 = <&uart2m0_xfer>;
-	status = "okay";
-};
-
 &u2phy1 {
 	status = "okay";
 };
@@ -891,7 +880,14 @@ &u2phy3_host {
 	status = "okay";
 };
 
-&usbdp_phy1 {
+&uart2 {
+	pinctrl-0 = <&uart2m0_xfer>;
+	status = "okay";
+};
+
+&uart6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart6m1_xfer &uart6m1_ctsn &uart6m1_rtsn>;
 	status = "okay";
 };
 
@@ -920,7 +916,7 @@ &usb_host2_xhci {
 	status = "okay";
 };
 
-&vop_mmu {
+&usbdp_phy1 {
 	status = "okay";
 };
 
@@ -928,6 +924,10 @@ &vop {
 	status = "okay";
 };
 
+&vop_mmu {
+	status = "okay";
+};
+
 &vp0 {
 	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
-- 
2.43.0


