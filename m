Return-Path: <devicetree+bounces-232710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 387CEC1AC2A
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:37:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B593562719D
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 13:10:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E909299A8E;
	Wed, 29 Oct 2025 13:04:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2362298CBC
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 13:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761743043; cv=none; b=De0g/VpspN8I7e8XzMMkHfWWui/mtMzHBS5VnkvVFWFiMHwsYEyfXmq9okoabQo/lbhKhOvn1SptNRQGACRTFkO9pL0VNdYIrxC1N9Ao+7AfUisSCQhAw9I65gtSN47lAw3D2eXUMmhTCPCX2IDHlFt+sbK7NK+Vo3zQY+V/pUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761743043; c=relaxed/simple;
	bh=VehAPzAeP841uQNI60NUn4rt/mfMOaCGITEQQA15vU0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HKZsvSrVQzde3OpoF9Rn1brd8b0wGQDIm2EXBbxcl/w1xCWip9oVmTYLrJzZssZz2KHXkz4haU+vupo19p6jl3LZxp+jIMlRTihH6oLuxlGF47dhGb9VVOc694OLtr3tWGJe4awPXSZhhK1OBda46N9rK98FBsNDaDCD5qi+hnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59TD27WF006853;
	Wed, 29 Oct 2025 22:02:07 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        liujianfeng1994@gmail.com, dmitry.baryshkov@oss.qualcomm.com,
        andy.yan@rock-chips.com, sebastian.reichel@collabora.com,
        nicolas.frattaroli@collabora.com, dmitry.osipenko@collabora.com,
        damon.ding@rock-chips.com, jbx6244@gmail.com,
        shreeya.patel@collabora.com, didi.debian@cknow.org,
        cristian.ciocaltea@collabora.com, detlev.casanova@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 1/2] arm64: dts: rockchip: Fix USB Type-C host mode for Radxa ROCK 5B+/5T
Date: Wed, 29 Oct 2025 13:01:59 +0000
Message-ID: <20251029130200.987580-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Radxa ROCK 5B+/5T USB Type-C port supports Dual Role Data and
should also act as a host. However, currently, when acting as a host,
only self-powered devices work.

Since the ROCK 5B+ supports Dual Role Power, set the power-role
property to "dual" and the try-power-role property to "sink". (along
with related properties)

The ROCK 5T should only support the "source" power role, but when the
power-role property is set to "source", when acting as a host, only
self-powered devices work. As a workaround, set the power-role
property to "dual" and the try-power-role property to "sink".

This allows the port to act as a host, supply power to the port, and
allow bus-powered devices to work.

Note that there is a separate known issue where USB 3.0 SuperSpeed
devices do not work when oriented in reverse. This issue should be
addressed separately. (USB 2.0/1.1 devices work in both orientations)

Fixes: 67b2c15d8fb3c ("arm64: dts: rockchip: add USB-C support for ROCK 5B/5B+/5T")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- Refine commit message
- Use board-specific dts to describe (try-)power-role
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts    | 5 +++++
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts         | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts         | 5 +++++
 4 files changed, 16 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
index 3bbe78810ec6f..7aac77dfc5f16 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
@@ -331,12 +331,12 @@ usb_con: connector {
 			data-role = "dual";
 			/* fusb302 supports PD Rev 2.0 Ver 1.2 */
 			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x2>;
-			power-role = "sink";
-			try-power-role = "sink";
 			op-sink-microwatt = <1000000>;
 			sink-pdos =
 				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>,
 				<PDO_VAR(5000, 20000, 5000)>;
+			source-pdos =
+				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
 
 			altmodes {
 				displayport {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
index 5e984a44120e4..07a840d9b3859 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
@@ -110,6 +110,11 @@ vcc5v0_host_en: vcc5v0-host-en {
 	};
 };
 
+&usb_con {
+	power-role = "dual";
+	try-power-role = "sink";
+};
+
 &usbdp_phy0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&usbc_sbu_dc>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 8ef01010d985b..da13dafcbc823 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -49,6 +49,10 @@ vcc5v0_host_en: vcc5v0-host-en {
 	};
 };
 
+&usb_con {
+	power-role = "sink";
+};
+
 &usbdp_phy0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&usbc_sbu_dc>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
index c1763835f53d4..96ffffec7e05d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
@@ -130,6 +130,11 @@ usbc_sbu_dc: usbc-sbu-dc {
 	};
 };
 
+&usb_con {
+	power-role = "dual";
+	try-power-role = "sink";
+};
+
 &usbdp_phy0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&usbc_sbu_dc>;
-- 
2.43.0


