Return-Path: <devicetree+bounces-125396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1289DBE3D
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 01:25:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B2BC0B21121
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 00:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAD9E4683;
	Fri, 29 Nov 2024 00:25:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3681361
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 00:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732839921; cv=none; b=jdFa+Uli3sKcmbwyS3KfDgZQIlh4SHqshhBX5vOqJb7kvSMxHIbfjnv4v6FqdN5Qef7hTqn6PdfzHCxksQl7LxO3vcNsibZCy4CMVlZDeAfOhaONNP2IA1yK1sjRHeSUTzck+sJSMlPJCn+r8dZuR/CAi0p7Lwbq+sYJqXbjDXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732839921; c=relaxed/simple;
	bh=CA0CQzdah0M5ibLJerN7SlONHN2d/0kNooIj3n1ZtRg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=N/ph9MUy20wtANlQpg87FsLbe9L5ZJi8t4kvp7q3E1HAveayLC8UKMMsDQt3ipgnx6TbR/qqPQRley5PP1Dg762erJ1j4jhrXXKmNLltrSVjGzafth5FSRr/OPcnTzC3ffWzlZQ24+qKhQQZ7JRLgpLY9oLNDkhGW/8oCfZeKjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AT0OVdB020450;
	Fri, 29 Nov 2024 09:24:31 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        macromorgan@hotmail.com, jonas@kwiboo.se, andyshrk@163.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: add support for device tree overlays for Radxa devices
Date: Fri, 29 Nov 2024 00:24:19 +0000
Message-ID: <20241129002419.60404-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

since Radxa devices use device tree overlays[1][2][3], make base .dts
support them.

[1] arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
[2] arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-srns.dtso
[3] https://github.com/radxa-pkg/radxa-overlays

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/Makefile | 28 +++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 86cc418a2255..cac3f39af82a 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -1,4 +1,32 @@
 # SPDX-License-Identifier: GPL-2.0
+
+# Enables support for device tree overlays for Radxa devices
+DTC_FLAGS_rk3308-rock-pi-s := -@
+DTC_FLAGS_rk3308-rock-s0 := -@
+DTC_FLAGS_rk3328-rock-pi-e := -@
+DTC_FLAGS_rk3399-rock-4c-plus := -@
+DTC_FLAGS_rk3399-rock-4se := -@
+DTC_FLAGS_rk3399-rock-pi-4a-plus := -@
+DTC_FLAGS_rk3399-rock-pi-4a := -@
+DTC_FLAGS_rk3399-rock-pi-4b-plus := -@
+DTC_FLAGS_rk3399-rock-pi-4b := -@
+DTC_FLAGS_rk3399-rock-pi-4c := -@
+DTC_FLAGS_rk3399pro-rock-pi-n10 := -@
+DTC_FLAGS_rk3528-radxa-e20c := -@
+DTC_FLAGS_rk3566-radxa-cm3-io := -@
+DTC_FLAGS_rk3566-radxa-cm3.dtsi := -@
+DTC_FLAGS_rk3566-radxa-zero-3e := -@
+DTC_FLAGS_rk3566-radxa-zero-3w := -@
+DTC_FLAGS_rk3566-rock-3c := -@
+DTC_FLAGS_rk3568-radxa-cm3i.dtsi := -@
+DTC_FLAGS_rk3568-radxa-e25 := -@
+DTC_FLAGS_rk3568-rock-3a := -@
+DTC_FLAGS_rk3568-rock-3b := -@
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


