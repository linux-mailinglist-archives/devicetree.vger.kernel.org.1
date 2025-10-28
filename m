Return-Path: <devicetree+bounces-232123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 554CFC14795
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 12:54:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D5C5C1888C30
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 11:52:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAFDF30EF90;
	Tue, 28 Oct 2025 11:51:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F3E30EF8C
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 11:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761652294; cv=none; b=fYCHbRaBVZ4VEittGNEWaJ0Vvg8ZJz09X83HploMlYmFC2VJ6zIPF3TnYrJ1CYHeKU271VPmw7EGNAOLFJZhmJmhZUXiCOquEfUWOiOWepXNM9teYjbq9k6R5xB06NrW5KdHuAqmXkgsA8NDsbbZ+LFW4/u51f4ZxhEorcIaP6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761652294; c=relaxed/simple;
	bh=J862So9WFHEmjHELlsZPogdqjVpM3P02UqZOXOx13C0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CnVD+g18EbMWXJM+Mbf3hOxcmcB3UnqLVaDlfCNlbWSQAzAwKNU7SiI7TdVUGiUlgN72zbnsnwVIPfB6joxnqn6NjTTfiNAMrkeNTgAG5XpzIu7ask8e/iM0nGidxvB2Xc3LKoePflkxLTxw2FnsY/XesYKv0ODntjIfLiPTEJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59SBollA002909;
	Tue, 28 Oct 2025 20:50:50 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        liujianfeng1994@gmail.com, dmitry.baryshkov@oss.qualcomm.com,
        sebastian.reichel@collabora.com, andy.yan@rock-chips.com,
        nicolas.frattaroli@collabora.com, damon.ding@rock-chips.com,
        jbx6244@gmail.com, detlev.casanova@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Fix USB Type-C host mode for Radxa ROCK 5 ITX
Date: Tue, 28 Oct 2025 11:50:40 +0000
Message-ID: <20251028115040.101156-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251028115040.101156-1-naoki@radxa.com>
References: <20251028115040.101156-1-naoki@radxa.com>
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

By setting "power-role" to "dual" and "try-power-role" to "sink"
(along with adding related properties), the data role can operate as
host.

Unfortunately, a remaining issue is that when a USB 3.0 SuperSpeed
device's orientation is reverse, the root port is detected but the
device itself is not. This must be addressed separately.
(USB 2.0/1.1 devices operate even in reverse orientation.)

Fixes: 31390eb8ffbf2 ("arm64: dts: rockchip: add ROCK 5 ITX board")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
index bc8140883de47..1664f85db4aaa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
@@ -484,9 +484,14 @@ usb_con: connector {
 			compatible = "usb-c-connector";
 			data-role = "dual";
 			label = "USB-C";
-			power-role = "source";
+			op-sink-microwatt = <50000>;
+			/* fusb302 supports PD Rev 2.0 Ver 1.2 */
+			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x2>;
+			power-role = "dual";
+			sink-pdos = <PDO_FIXED(5000, 10, PDO_FIXED_USB_COMM)>;
 			source-pdos =
 				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
+			try-power-role = "sink";
 
 			ports {
 				#address-cells = <1>;
-- 
2.43.0


