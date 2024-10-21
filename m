Return-Path: <devicetree+bounces-113534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C649A5FBC
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 11:12:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0920828200A
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 09:12:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A5711E284E;
	Mon, 21 Oct 2024 09:12:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 858FA1D04BB
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 09:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729501957; cv=none; b=bz29F+PhLsatvZwruHvVaTZJNntUCutGPIi4UDjcf/qlCy6XxBVEqjI91MLi9tHFMmST34yajlCkElQ2ZSlyq+pr4tG4OA8/mqTn+AxsiNufQ/G7DDKFpHFVZ22bkTiNtOlSGuGInCZ6RCg6ozUHhi1YQZ3t2R33EBPFkDadT7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729501957; c=relaxed/simple;
	bh=06faiV9GKGxxtFuHHNdfCfxSCvwa8L8JBKHOxtS557Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kq84pTDAQcuh0Eqf57blcQKMXe4409WCq2b5KGbTMM6vNiiUjjRd0ZRfprRfG5iJ2K3s2n2Q+Kfgc7ZsU8/7FYObvfcQsTuLoWtQlTFetS8HcsmYq9gLv210/0RVmxUdIZ7vz5Vws/4bTG/GD87KYYHg2o7pC11naBtoeotmvk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 49L96G5l012440;
	Mon, 21 Oct 2024 18:06:20 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        macromorgan@hotmail.com, jonas@kwiboo.se, andyshrk@163.com,
        tim@feathertop.org, jagan@edgeble.ai, dsimic@manjaro.org,
        michael.riesch@wolfvision.net, sebastian.reichel@collabora.com,
        cfsworks@gmail.com, kever.yang@rock-chips.com, jing@jing.rocks,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 RESEND 3/3] arm64: dts: rockchip: Enable HDMI0 on rock-5c
Date: Mon, 21 Oct 2024 09:05:48 +0000
Message-ID: <20241021090548.1052-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241021090548.1052-1-naoki@radxa.com>
References: <20241021090548.1052-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the necessary DT changes to enable HDMI0 on Radxa ROCK 5C.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2
- sort nodes alphanumerically
- fix pinctrl for hdmi0
---
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index c80428305f0b..9b14d5383cdc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -8,6 +8,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3588s.dtsi"
 
 / {
@@ -35,6 +36,17 @@ analog-sound {
 			  "Headphone", "Headphones";
 	};
 
+	hdmi0-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi0_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -245,6 +257,31 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmim0_tx0_cec
+		     &hdmim1_tx0_hpd
+		     &hdmim0_tx0_scl
+		     &hdmim0_tx0_sda>;
+	status = "okay";
+};
+
+&hdmi0_in {
+	hdmi0_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi0>;
+	};
+};
+
+&hdmi0_out {
+	hdmi0_out_con: endpoint {
+		remote-endpoint = <&hdmi0_con_in>;
+	};
+};
+
+&hdptxphy_hdmi0 {
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0m2_xfer>;
@@ -866,3 +903,18 @@ &usb_host1_ohci {
 &usb_host2_xhci {
 	status = "okay";
 };
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vop {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi0_in_vp0>;
+	};
+};
-- 
2.43.0


