Return-Path: <devicetree+bounces-125650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 749109DEDFF
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 02:41:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 98CEEB215C7
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:41:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0672481AF;
	Sat, 30 Nov 2024 01:41:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B6A13B796
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 01:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732930873; cv=none; b=ItXP3yealUPLNy4e0dsMBg+tFjGu7A/9KIpWpKLkRe4lTxl0xE9tycrg2Zj6PHsyM7voMbT/6yKy54ZWviEuUyIv1ABzbIVFRcgTgoW3swPkO4A28Uj9XPtCP7mcd2yIJYe1hxSsmZwWIoBfVN0wTzXmQJHlJJZpauH8h2EIOdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732930873; c=relaxed/simple;
	bh=vbPzggOyq/9/BbR4xLKFnYGZO7BVZldWSIzBh5R2LF8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=B9ecDaKv7GaZcECJRQ1TBgI2Xan7KL92m8ddFAHPZtH/0eXtjNTPApG1OjpwOMDCY7AvHRCrtItDGJ0E15g6RbVdShBojDsDFkbDwWchvE5+LFAEDwDVFkgGc7fIKvZCRZksoptIcUaPQuKyNo7a89bXvE5s+Yd22AfLpdToPrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU1ejXu024551;
	Sat, 30 Nov 2024 10:40:45 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com, alchark@gmail.com,
        inindev@gmail.com, cristian.ciocaltea@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: use Type-C port as USB HOST port for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 01:40:42 +0000
Message-ID: <20241130014043.12942-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Type-C port is dual-role USB 3.0 port. add usb_host0_xhci and phy
nodes to use it as HOST port.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 0ec4992b43cd..c5776e3b4aab 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -840,6 +840,14 @@ &tsadc {
 	status = "okay";
 };
 
+&u2phy0 {
+	status = "okay";
+};
+
+&u2phy0_otg {
+	status = "okay";
+};
+
 &u2phy1 {
 	status = "okay";
 };
@@ -883,6 +891,11 @@ &usb_host0_ehci {
 	status = "okay";
 };
 
+&usb_host0_xhci {
+	dr_mode = "host";
+	status = "okay";
+};
+
 &usb_host1_ehci {
 	status = "okay";
 };
@@ -900,6 +913,10 @@ &usb_host2_xhci {
 	status = "okay";
 };
 
+&usbdp_phy0 {
+	status = "okay";
+};
+
 &usbdp_phy1 {
 	status = "okay";
 };
-- 
2.43.0


