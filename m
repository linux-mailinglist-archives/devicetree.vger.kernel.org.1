Return-Path: <devicetree+bounces-122749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C08179D22D2
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 10:52:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4A4DDB23EFA
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 09:52:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D57321C2334;
	Tue, 19 Nov 2024 09:52:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFB9A1C2324
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 09:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732009925; cv=none; b=HzgiuX7qVvf/jfIi9n7aLG5kljv/F+njOm6PNfdp3Ie4tzpOlrHTNIeShsf0low9CLdcCd5Vr64rk+fKy1fYP3fNqlIA9tMacbJoM53uaFBpTTbYunA9ZBbf1+DIW/EyDzj+iGAMxbRH9i1AUU0ysESpZa5NbJvV5ddQS/XmGG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732009925; c=relaxed/simple;
	bh=wfdml6dKKaaksL2m95l3jxF9IUER9C1SYz+bxXRlu+E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b7lw14/TC9Bw6PKBhzACx0PABRmUEqdoTggNlqi9E7Pe2NxUcyAB803TlCaSbHPSubiT93IEBANlvNe+gW6PykNf8iyU6qt5CUuov2uSjpc1nx80dSPZE13N+iIk13GfWWuObT3tuCDOx0CV7SjQGdA6FudH9Qx7MnaIPGoDKl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AJ9pHSO016079;
	Tue, 19 Nov 2024 18:51:19 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 09/11] arm64: dts: rockchip: sort nodes for Radxa ROCK 5C
Date: Tue, 19 Nov 2024 09:51:10 +0000
Message-ID: <20241119095113.78151-9-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241119095113.78151-1-naoki@radxa.com>
References: <20241119095113.78151-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

sort nodes alphanumerically.

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v3:
- none
Changes in v2:
- new
---
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 28 +++++++++----------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index af6770a1ffbd..9f4779b9f3e7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -36,6 +36,14 @@ analog-sound {
 			  "Headphone", "Headphones";
 	};
 
+	fan {
+		compatible = "pwm-fan";
+		#cooling-cells = <2>;
+		cooling-levels = <0 64 128 192 255>;
+		fan-supply = <&vcc_5v0>;
+		pwms = <&pwm3 0 60000 0>;
+	};
+
 	hdmi0-con {
 		compatible = "hdmi-connector";
 		type = "a";
@@ -68,14 +76,6 @@ led-1 {
 		};
 	};
 
-	fan {
-		compatible = "pwm-fan";
-		#cooling-cells = <2>;
-		cooling-levels = <0 64 128 192 255>;
-		fan-supply = <&vcc_5v0>;
-		pwms = <&pwm3 0 60000 0>;
-	};
-
 	vcc3v3_pcie2x1l2: regulator-vcc3v3_pcie2x1l2 {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -859,11 +859,6 @@ &uart2 {
 	status = "okay";
 };
 
-&usbdp_phy0 {
-	rockchip,dp-lane-mux = <2 3>;
-	status = "okay";
-};
-
 &usb_host0_ehci {
 	status = "okay";
 };
@@ -885,7 +880,8 @@ &usb_host2_xhci {
 	status = "okay";
 };
 
-&vop_mmu {
+&usbdp_phy0 {
+	rockchip,dp-lane-mux = <2 3>;
 	status = "okay";
 };
 
@@ -893,6 +889,10 @@ &vop {
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


