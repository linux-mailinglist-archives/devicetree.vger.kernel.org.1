Return-Path: <devicetree+bounces-159233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA7DA6A148
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 09:26:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D830C980560
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 08:23:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC6FF21420E;
	Thu, 20 Mar 2025 08:23:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C99211488
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 08:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742458980; cv=none; b=IxZJuweIU6UAM+pfMnNEPGKt9tAnOvyZ1jnLm7Ub8DeceaqbeVf3lzUK96YKtbufZ+CUSDy0CAVFkdKh8LxoqrmIKGOH4GG/vJ6DUjsLZi+r/rmCHoB2gtV8t1z6EpQsJFJ9HbVRiHVls3CNu5VB/05qz1AZFlzsCcFspKhWmxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742458980; c=relaxed/simple;
	bh=8PAQxxUx5ouSc99odereci9thBZUXzL3TR7dd2bmNac=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=k9b+3ahqUJ+1d/9wKNcT6nXY9eXXtYLLXMi77GduHzgKhMLjTJV3OzyBBJIUMQ2ZdUrYc7rdqNpEUXcsNEoUBBtt1WibpLFBK8LywxFK35W5ydNS8vck7ZhpkDe9jbhTfJgfRZE2aoeCGrDHcUd0Fd/g2G1pFLNFGEczAkESR0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 52K8GcOh007966;
	Thu, 20 Mar 2025 17:16:39 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        sebastian.reichel@collabora.com, dsimic@manjaro.org,
        damon.ding@rock-chips.com, alchark@gmail.com, cfsworks@gmail.com,
        cristian.ciocaltea@collabora.com, jbx6244@gmail.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: Enable HDMI 4K (DP to HDMI) port for Radxa ROCK 5A
Date: Thu, 20 Mar 2025 08:16:32 +0000
Message-ID: <20250320081632.233424-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the HDMI 4K port located next to the USB Type-C power port.
It's driven by DP0 on the RK3588S via a RA620 DP to HDMI converter.

Note that ROCKCHIP_VOP2_EP_DP0 is defined as 10 in dt-binding header,
but it will trigger a dtc warning like "graph node unit address error,
expected "a"" if we use it directly after endpoint, so we use "a"
instead here.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
This patch depends
 https://patchwork.kernel.org/project/linux-rockchip/cover/20250312104214.525242-1-andyshrk@163.com/
---
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index f894742b1ebe..6173b0ccb639 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -36,6 +36,17 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	dp-con {
+		compatible = "dp-connector";
+		type = "full-size"; // HDMI Type-D via RA620
+
+		port {
+			dp_con_in: endpoint {
+				remote-endpoint = <&dp0_out_con>;
+			};
+		};
+	};
+
 	hdmi0-con {
 		compatible = "hdmi-connector";
 		type = "d";
@@ -178,6 +189,24 @@ &cpu_l3 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
 
+&dp0 {
+	status = "okay";
+	pinctrl-0 = <&dp0m1_pins>;
+	pinctrl-names = "default";
+};
+
+&dp0_in {
+	dp0_in_vp2: endpoint {
+		remote-endpoint = <&vp2_out_dp0>;
+	};
+};
+
+&dp0_out {
+	dp0_out_con: endpoint {
+		remote-endpoint = <&dp_con_in>;
+	};
+};
+
 &gpu {
 	mali-supply = <&vdd_gpu_s0>;
 	status = "okay";
@@ -849,3 +878,10 @@ vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		remote-endpoint = <&hdmi0_in_vp0>;
 	};
 };
+
+&vp2 {
+	vp2_out_dp0: endpoint@a {
+		reg = <ROCKCHIP_VOP2_EP_DP0>;
+		remote-endpoint = <&dp0_in_vp2>;
+	};
+};
-- 
2.43.0


