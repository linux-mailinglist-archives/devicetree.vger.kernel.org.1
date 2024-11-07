Return-Path: <devicetree+bounces-119999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D58609C10F3
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 22:25:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A615286133
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 21:25:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E811F21833C;
	Thu,  7 Nov 2024 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="XliHBAb5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [207.246.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3384218313
	for <devicetree@vger.kernel.org>; Thu,  7 Nov 2024 21:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=207.246.76.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731014693; cv=none; b=b+tIcPQx6Og3O6sFGcAoOoL2IsBMV6LAaRZg50KNA84MNiFJCdEN6e+5t3cD3UJW8XP2DCFM6c65kJBSJ9nXAsiSorSYyOWPIVJ0ti8i+178TZq4K74nZERrElRLJbHMefiwSHm1STVhS5+QJQTYOOiSeoZdp9CJgeBg9MkZczM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731014693; c=relaxed/simple;
	bh=nEdbiAhey1Ph6HCwkhCdXHsA7iVpALvEsN9VncQxqu8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=f+rA9OwkLU1cVxagiF8iZKyhTdfxggzK3p9ZtNntZkKJjLq11Zfjsnl+bvyCJT7BaDEHrlT/Y1Tvss5/KOSrmpsTrvzgjggfY3jn03v46xG+27JuHaFyo0nuvKkXcOZgfdtSj5wfKDu7DzlJVDRQ9eV3nS6qp6GVYpzEQkxQgTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=XliHBAb5; arc=none smtp.client-ip=207.246.76.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1731014685;
 bh=eF3avHwQtvQTUdE1QAl4QZ2NDeHSLkfflTgz6TjoqgY=;
 b=XliHBAb5cWb8GxKaPMOdP4i+9D7uf1hBeKEex1SSxuQVRBDFY5Wmqv9Il8PPN4hV1CaW2vqXw
 eBIMLoNiILIW2xRUZbpI2NNSYcS0/G88yc76p2CFzoB3H6x6A1aZyiu5X3wRXfTjZ6HnYfrk4Iz
 XqzIiMKRhbMFNWjYsfY8B7SxxQzbxGQvYE+bksg5OXs9s3V0/6qW5TKfuibL8FKBB86ICRiilRI
 ta+YozkKVd/EpZY8ruJQ2OjMmhF09v32YefDBxGUy/Q4s1MujpO8b+r5RmLVmsqEEqg6VpfSPXK
 1/E49UTxhLr8g90pLSrJ5Ktc+4IJ8OoseSx1DZ/FjQHw==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Enable HDMI on Hardkernel ODROID-M2
Date: Thu,  7 Nov 2024 21:13:43 +0000
Message-ID: <20241107211345.1318046-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 672d2d906ff4b179fef283e3

Add the necessary DT changes to enable HDMI on Hardkernel ODROID-M2.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
Tested and working with video=1920x1080@60 cmdline on a ODROID-M2.
---
 .../boot/dts/rockchip/rk3588s-odroid-m2.dts   | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dts
index 63d91236ba9f..8f034c6d494c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dts
@@ -5,6 +5,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include <dt-bindings/usb/pd.h>
 #include "rk3588s.dtsi"
 
@@ -22,6 +23,17 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	hdmi-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -236,6 +248,26 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi0 {
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
+		remote-endpoint = <&hdmi_con_in>;
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
@@ -901,3 +933,18 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
 		};
 	};
 };
+
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
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
2.46.2


