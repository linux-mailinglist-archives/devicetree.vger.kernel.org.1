Return-Path: <devicetree+bounces-232124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F0153C14783
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 12:52:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C316624A47
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 11:51:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D410030EF8C;
	Tue, 28 Oct 2025 11:51:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E9030CD87
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 11:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761652295; cv=none; b=jEtskYBTNADN2O+spJ/+lzw5jJK2Ra3klpH+wDaR4Sw+Itf9trdnv1GQvxH8hCteOSWaSoSlnRteAqHaWo/UmvR/IKhuIOulCZVmSdj3IQouxfdecWXCk5OH1BtNK8V6t1BeXyUERt0iJcTF4u1KuCxfKeqWnZ46d3Mewdyxhdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761652295; c=relaxed/simple;
	bh=AXlzOKftd3OyOXr/USu5Yz26p3lIKDmXsdVeTLIvcfE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OYeNMBiISaOxNQixbxj+EzgeNaAzyUmvzfRmui+E4Hc0Mcm1FusdbxvufZsmPNsfN5HmW9tOf7CeT01JkiFln72KtBxJoRiSbBbPG29OoKgYRXLl+LQHy14HmamPprJ7CS8BPRHQRlyvWb0Jg9XeCRYUbFzIyi76JgaXwJ8WOO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59SBoll9002909;
	Tue, 28 Oct 2025 20:50:48 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        liujianfeng1994@gmail.com, dmitry.baryshkov@oss.qualcomm.com,
        sebastian.reichel@collabora.com, andy.yan@rock-chips.com,
        nicolas.frattaroli@collabora.com, damon.ding@rock-chips.com,
        jbx6244@gmail.com, detlev.casanova@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: Fix USB Type-C host mode for Radxa ROCK 5B+/5T
Date: Tue, 28 Oct 2025 11:50:39 +0000
Message-ID: <20251028115040.101156-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The USB Type-C port on the Radxa ROCK 5B+/5T supports Dual-Role-Data
and Dual-Role-Power. However, currently it cannot operate as host/
source.

By setting "power-role" to "dual" (along with adding related
properties), the power role can operate as source and the data role
can operate as host.

Unfortunately, a remaining issue is that when a USB 3.0 SuperSpeed
device's orientation is reverse, the root port is detected but the
device itself is not. This must be addressed separately.
(USB 2.0/1.1 devices operate even in reverse orientation.)

Furthermore, this file is also used by the Radxa ROCK 5B, but the
Type-C port cannot operate as a host regardless of this fix. This must
also be addressed separately.

Fixes: 67b2c15d8fb3c ("arm64: dts: rockchip: add USB-C support for ROCK 5B/5B+/5T")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
index 3bbe78810ec6f..b77c5a8229e75 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
@@ -331,12 +331,14 @@ usb_con: connector {
 			data-role = "dual";
 			/* fusb302 supports PD Rev 2.0 Ver 1.2 */
 			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x2>;
-			power-role = "sink";
+			power-role = "dual";
 			try-power-role = "sink";
 			op-sink-microwatt = <1000000>;
 			sink-pdos =
 				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>,
 				<PDO_VAR(5000, 20000, 5000)>;
+			source-pdos =
+				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
 
 			altmodes {
 				displayport {
-- 
2.43.0


