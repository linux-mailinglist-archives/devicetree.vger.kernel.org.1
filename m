Return-Path: <devicetree+bounces-125850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 374E19DF8ED
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 03:34:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0F352804E4
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 02:34:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FB52282F1;
	Mon,  2 Dec 2024 02:34:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9140522EED
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 02:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733106885; cv=none; b=RAOqxZxa0gNWA+r0vEv2JtGYy7NKCuPWf5YYQ+UrD6uLJ+9MuWjUJB0r7zfcUSLIdaxnF2fwEG9nWbrBYaq1VMnOOPhf1j2f4ZaPRWPB1RumUJ4k4h/bJSt+6EttPOOq7HtKnRpjeK/UadBo1Msqb0tvLziR+6fSnmepu9SVvS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733106885; c=relaxed/simple;
	bh=A75ab4iPWcnKY6EATYxT4RhYE3PHgdN9FBub5pelDyc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T07OInBUcJXehiSgg0kJl9jdo/6mRoUBvWFeyDi7u7KUb4QnFyvCeZRdy6sJEYb/4cxOmPdSQSLyuiHH2OHS7nbw1Gxhe9V9pHZQ90DzLLHr094OHC/egTpfQjmxoRkYH4B0rVjHO2mAxUt845ceak3N6MydGA6I+KTt2dwjzTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B22XVDe000375;
	Mon, 2 Dec 2024 11:33:34 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com, alchark@gmail.com,
        inindev@gmail.com, cristian.ciocaltea@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 1/4] arm64: dts: rockchip: sort nodes in .dts for Radxa ROCK 5B
Date: Mon,  2 Dec 2024 02:32:24 +0000
Message-ID: <20241202023227.2671-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241202023227.2671-1-naoki@radxa.com>
References: <20241202023227.2671-1-naoki@radxa.com>
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
Changes in v2:
- none
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


