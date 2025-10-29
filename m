Return-Path: <devicetree+bounces-232709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 39393C1A985
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:18:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4ECFD1B20B95
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 13:10:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CB652765FF;
	Wed, 29 Oct 2025 13:04:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F22D9298CAB
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 13:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761743043; cv=none; b=EEmxB7Td4DeT53NfcfBCgNNMedYY6d8YXgOFa9qCsjpZkPrGQ2Nnz3XLmLUb3ThGRpPLJQ/SjnwO3zdAnMVWM1LvZp9HnT6kH8WIN2G+pX4tJXUyj5eaZmhLffKM9053hZlPxc/sKBgNn6GGTHbU44/WPhTW5ZAnoTVbxtQ2b38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761743043; c=relaxed/simple;
	bh=NSsryjUB7E+RalvYG1vZtnTce2po0lPYlluJtCH8h6o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FOcnH4Y+VdBmNz473ZRWgSYEQ6ZW/KgX2l/xOy6ujaTN6Z5e34XxJY6lWmjxirdUq58rpWDlbQbiT6+0u9wDgiC003SUXYVhZIE8cpf751pBK58p0VzC8gMS8nqj0c5pdoIOsgdl2hVnnayHXDkkcqZq6FQZaVgkAWAVv3/5PHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59TD27WG006853;
	Wed, 29 Oct 2025 22:02:10 +0900
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
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Fix USB Type-C host mode for Radxa ROCK 5 ITX
Date: Wed, 29 Oct 2025 13:02:00 +0000
Message-ID: <20251029130200.987580-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251029130200.987580-1-naoki@radxa.com>
References: <20251029130200.987580-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Radxa ROCK 5 ITX USB Type-C port supports Dual Role Data and
should also act as a host. However, currently, when acting as a host,
only self-powered devices work.

As a workaround, set the power-role property to "dual" and the
try-power-role property to "sink". (along with related properties)

This allows the port to act as a host, supply power to the port, and
allow bus-powered devices to work.

Note that there is a separate known issue where USB 3.0 SuperSpeed
devices do not work when oriented in reverse. This issue should be
addressed separately. (USB 2.0/1.1 devices work in both orientations)

Fixes: 31390eb8ffbf2 ("arm64: dts: rockchip: add ROCK 5 ITX board")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- Refine commit message
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


