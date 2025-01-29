Return-Path: <devicetree+bounces-141582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCA7A217C6
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 07:43:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6055818881A4
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 06:43:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65F6418E75A;
	Wed, 29 Jan 2025 06:43:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5968823DE
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 06:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738132995; cv=none; b=YL4/Bc7gh5YG+dc0lbLrTE4fa9rSFlMxviDs/RLMYP3BmTsFqpufAVajDT7X26Gl8HEVFbeVPLOSGGKBO3w0/knjK/OugJNPP1LkPGXZHNryboWTXGuonq139ke6OGZHTrqsPWLRJFRzQ7ei+9FhNQzeCA5YVTvH6lc7cX100TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738132995; c=relaxed/simple;
	bh=USafknG5OokJmhIO3KUhbkwJwGs/wIMHsBskQbbvqAE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZFlY/QATVY1pYmWBjv7tvDJ0wqthDVj+0UJqOK2MnEFKGXyVGg3Y+UODridkVQ2gYo9Uq7nM35oT8VXab0lyno0+FenhuFQYeBspf7mWhRtIoqxa4LK+zh2FdtcyGxasVTK+vlDO3byw0HVH//vmNKQwqLIZXkhRtz4na/WZs6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 50T6glYa009998;
	Wed, 29 Jan 2025 15:42:47 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
        macromorgan@hotmail.com, michael.riesch@wolfvision.net,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2] arm64: dts: rockchip: Add support for device tree overlays for Radxa devices
Date: Wed, 29 Jan 2025 06:42:42 +0000
Message-ID: <20250129064242.162265-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since Radxa devices use device tree overlays[1][2][3], make base .dts
support them.

[1] arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
[2] arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-srns.dtso
[3] https://github.com/radxa-pkg/radxa-overlays

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- Remove .dtsi
- Add rk3582-radxa-e52c
- Sort
---
 arch/arm64/boot/dts/rockchip/Makefile | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index def1222c1907..729109375d78 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -1,4 +1,31 @@
 # SPDX-License-Identifier: GPL-2.0
+
+# Enables support for device tree overlays for Radxa devices
+DTC_FLAGS_rk3308-rock-pi-s := -@
+DTC_FLAGS_rk3308-rock-s0 := -@
+DTC_FLAGS_rk3328-rock-pi-e := -@
+DTC_FLAGS_rk3399-rock-4c-plus := -@
+DTC_FLAGS_rk3399-rock-4se := -@
+DTC_FLAGS_rk3399-rock-pi-4a := -@
+DTC_FLAGS_rk3399-rock-pi-4a-plus := -@
+DTC_FLAGS_rk3399-rock-pi-4b := -@
+DTC_FLAGS_rk3399-rock-pi-4b-plus := -@
+DTC_FLAGS_rk3399-rock-pi-4c := -@
+DTC_FLAGS_rk3399pro-rock-pi-n10 := -@
+DTC_FLAGS_rk3528-radxa-e20c := -@
+DTC_FLAGS_rk3566-radxa-cm3-io := -@
+DTC_FLAGS_rk3566-radxa-zero-3e := -@
+DTC_FLAGS_rk3566-radxa-zero-3w := -@
+DTC_FLAGS_rk3566-rock-3c := -@
+DTC_FLAGS_rk3568-radxa-e25 := -@
+DTC_FLAGS_rk3568-rock-3a := -@
+DTC_FLAGS_rk3568-rock-3b := -@
+DTC_FLAGS_rk3582-radxa-e52c := -@
+DTC_FLAGS_rk3588-rock-5-itx := -@
+DTC_FLAGS_rk3588-rock-5b := -@
+DTC_FLAGS_rk3588s-rock-5a := -@
+DTC_FLAGS_rk3588s-rock-5c := -@
+
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2-of10.dtb
-- 
2.43.0


