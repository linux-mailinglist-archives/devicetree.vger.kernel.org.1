Return-Path: <devicetree+bounces-96584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C6E95EB7D
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 10:12:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E9C6FB209D7
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 08:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48AF2745F4;
	Mon, 26 Aug 2024 08:12:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2B324A28
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 08:12:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724659944; cv=none; b=uygRGaQgVMkd1bAtsqqF1f2IBCCHDirdQ0tu1vsFVAXCy9lSANiGTNRwSJwg1jF8pRg7f0WQAJ8V2i1Dg5MnXN2VOGnSeZBuxGVlcy2C9wt6DNDh6QLdb/g8iraCanwcPyFRpJV06TNKcwKcm3CaQTfe85gsXGa97iwI/KWghcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724659944; c=relaxed/simple;
	bh=XVNMuFqpEPOPM9b8ptGjJ6kF7f/oZ4X5hSdpOODpAas=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KytVOufIgAhyAwL/xPrNsu1G2MPDD753nhAJ9WoSWiDnxLBC9kZ6+0pP35sI14Gx2aZ7U2nBtESx+bvc6yGI1oaT9B5iw4JhdNtzGT5chPXvJcu19MnOuLmjM5GkKtw3kTGOr8lmLNQtr8ot8fzB8FSb17AJhiiou14fe7Bqvos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 47Q856kA025051;
	Mon, 26 Aug 2024 17:05:06 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: enable PCIe on M.2 E key for Radxa ROCK 5A
Date: Mon, 26 Aug 2024 17:04:56 +0900
Message-ID: <20240826080456.525-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable pcie2x1l2 and related combphy/regulator routed to M.2 E key
connector on Radxa ROCK 5A.

Tested with Radxa Wireless Module A8:

$ lspci
0004:40:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0004:41:00.0 Network controller: Realtek Semiconductor Co., Ltd. RTL8852BE PCIe 802.11ax Wireless Network Controller

$ ip l
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN mode DEFAULT group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
2: end0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP mode DEFAULT group default qlen 1000
    link/ether c2:58:fc:70:55:86 brd ff:ff:ff:ff:ff:ff
3: wlP4p65s0: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN mode DEFAULT group default qlen 1000
    link/ether 2c:05:47:65:5b:ed brd ff:ff:ff:ff:ff:ff

$ lsusb
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 001 Device 002: ID 1a40:0101 Terminus Technology Inc. Hub
Bus 001 Device 003: ID 0bda:b85b Realtek Semiconductor Corp. Bluetooth Radio
Bus 002 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 003 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 004 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 005 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 006 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 006 Device 002: ID 0789:0336 Logitec Corp. LMD USB Device
Bus 007 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 008 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub

$ hciconfig
hci0:	Type: Primary  Bus: USB
	BD Address: 2C:05:47:65:5B:EE  ACL MTU: 1021:6  SCO MTU: 255:12
	UP RUNNING
	RX bytes:2698 acl:0 sco:0 events:329 errors:0
	TX bytes:69393 acl:0 sco:0 commands:329 errors:0

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 953a722198fe..294b99dd50da 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -65,6 +65,18 @@ vcc12v_dcin: vcc12v-dcin-regulator {
 		regulator-max-microvolt = <12000000>;
 	};
 
+	vcc3v3_wf: vcc3v3-wf-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_wf";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&pow_en>;
+		pinctrl-names = "default";
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	vcc5v0_host: vcc5v0-host-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_host";
@@ -114,6 +126,10 @@ vcc_1v1_nldo_s3: vcc-1v1-nldo-s3-regulator {
 	};
 };
 
+&combphy0_ps {
+	status = "okay";
+};
+
 &combphy2_psu {
 	status = "okay";
 };
@@ -293,6 +309,14 @@ rgmii_phy1: ethernet-phy@1 {
 	};
 };
 
+&pcie2x1l2 {
+	pinctrl-0 = <&pcie20x1m0_pins>;
+	pinctrl-names = "default";
+	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_wf>;
+	status = "okay";
+};
+
 &pinctrl {
 	leds {
 		io_led: io-led {
@@ -300,6 +324,12 @@ io_led: io-led {
 		};
 	};
 
+	pcie {
+		pow_en: pow-en {
+			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	power {
 		vcc_5v0_en: vcc-5v0-en {
 			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.43.0


