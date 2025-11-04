Return-Path: <devicetree+bounces-234731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCE6C30230
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 10:03:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ADF863A5C92
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 08:56:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8121260588;
	Tue,  4 Nov 2025 08:54:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AAC5261B78
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 08:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762246477; cv=none; b=VKNthO0mcrUgXrc3nAA2agxQuF/NTti1vRIbtmBCuMey5JFXZ5iCWOGjifliDYZgblhIQFP5HBV/bBa69mTM0tGdPzunxuNgddjFW2UMtbu1bpfzxxWNSKHX9asZyHJEbw+d3+iECq5xsTZyi+JUOy3f9lUn08gnnnlhBPE+Aw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762246477; c=relaxed/simple;
	bh=zEDqpi0DIhsRS0o+OWMI8pdvUhbkKiO55WU+zH69LCw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FCkfQlL5VbwtSlrNLTVg5lPW9wKXDy+78KXRfzEs5kEd0QqZ2ARAYszBSNnAAK4YXUq8OnEPYDb59w74d19musMLqQFghWZ4HhOSKJ/RK1Lm19BHse7lg7lIZNJrWCsNcutBZNuS+R1hJgZBpJACeMr+g+F3eGBcaksU2QNaizs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5A48qYtt028441;
	Tue, 4 Nov 2025 17:52:34 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        sebastian.reichel@collabora.com, nicolas.frattaroli@collabora.com,
        quentin.schulz@cherry.de, jbx6244@gmail.com, didi.debian@cknow.org,
        damon.ding@rock-chips.com, cristian.ciocaltea@collabora.com,
        detlev.casanova@collabora.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3] arm64: dts: rockchip: Fix USB Type-C host mode for Radxa ROCK 5B+/5T
Date: Tue,  4 Nov 2025 08:52:27 +0000
Message-ID: <20251104085227.820-1-naoki@radxa.com>
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

The ROCK 5T should only support the "source" power-role.

This allows the port to act as a host, supply power to the port, and
allow bus-powered devices to work.

Note that on the ROCK 5T, with this patch applied, it has been
observed that some bus-powered devices do not work correctly. Also,
it has been observed that after connecting a device (and the data-role
switches to host), connecting a host device does not switch the
data-role back to the device role. These issues should be addressed
separately.

Note that there is a separate known issue where USB 3.0 SuperSpeed
devices do not work when oriented in reverse. This issue should also be
addressed separately. (USB 2.0/1.1 devices work in both orientations)

Fixes: 67b2c15d8fb3c ("arm64: dts: rockchip: add USB-C support for ROCK 5B/5B+/5T")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v3:
- Use power-role = "source" for ROCK 5T
Changes in v2:
- Refine commit message
- Use board-specific dts to describe (try-)power-role
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts    | 5 +++++
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts         | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts         | 4 ++++
 4 files changed, 15 insertions(+), 2 deletions(-)

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
index c1763835f53d4..0dd90c744380b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
@@ -130,6 +130,10 @@ usbc_sbu_dc: usbc-sbu-dc {
 	};
 };
 
+&usb_con {
+	power-role = "source";
+};
+
 &usbdp_phy0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&usbc_sbu_dc>;
-- 
2.43.0


