Return-Path: <devicetree+bounces-125651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D664D9DEDFE
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 02:41:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FCCD28191D
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:41:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E063945979;
	Sat, 30 Nov 2024 01:41:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B65A20330
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 01:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732930873; cv=none; b=PHYvzQjkpSkp1NVfu1OqnB/GVMIJ3nu27QYrDdaoVbmNEnYNwwjX/Y7ga9J8ZaSF84Fv1krxX/TBWNBECrIZh22qeNNMvvmeldf9c9bhYmENVMkEyXFy5X4W6j+HHzW8LLx1uEYM+N5JUXuvjpxU6+KwFFag1cM8tef5IEWIR6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732930873; c=relaxed/simple;
	bh=V0F5KfwmR6Fc8AFt1N+U0hJudbbAgJ+n0H5QLSv35tY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=d3tjeBweQyeqnyHKFnsvKSyYgd2C289rWwY1d29WQ5oOaJU71GIna7vY2+Xk1nnpbUzGJuLQx4J4VIJKj/lMwRuRF3jpj/gAzJb56ZqdMGqLnydoGhQQHIyCB+RqAGtsy/z0h56kqDyF/a//CokS08Ayv0LBzedZr2GmqGNgUpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU1ejXv024551;
	Sat, 30 Nov 2024 10:40:46 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com, alchark@gmail.com,
        inindev@gmail.com, cristian.ciocaltea@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: fix USB 3.0 bottom port for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 01:40:43 +0000
Message-ID: <20241130014043.12942-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241130014043.12942-1-naoki@radxa.com>
References: <20241130014043.12942-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

add rockchip,dp-lane-mux to usbdp_phy1 to make it work properly.

tested with ELECOM U3HC-A424P10BK[1]:

$ lsusb -t
/:  Bus 001.Port 001: Dev 001, Class=root_hub, Driver=ehci-platform/1p, 480M
    |__ Port 001: Dev 002, If 0, Class=Hub, Driver=hub/4p, 480M
        |__ Port 003: Dev 003, If 0, Class=Wireless, Driver=btusb, 12M
        |__ Port 003: Dev 003, If 1, Class=Wireless, Driver=btusb, 12M
/:  Bus 002.Port 001: Dev 001, Class=root_hub, Driver=ohci-platform/1p, 12M
/:  Bus 003.Port 001: Dev 001, Class=root_hub, Driver=ehci-platform/1p, 480M
/:  Bus 004.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
/:  Bus 005.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M
    |__ Port 001: Dev 002, If 0, Class=Mass Storage, Driver=usb-storage, 5000M
/:  Bus 006.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
    |__ Port 001: Dev 002, If 0, Class=Hub, Driver=hub/5p, 480M
        |__ Port 005: Dev 003, If 0, Class=Billboard, Driver=[none], 480M
/:  Bus 007.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M
    |__ Port 001: Dev 002, If 0, Class=Hub, Driver=hub/4p, 5000M
        |__ Port 004: Dev 003, If 0, Class=Mass Storage, Driver=usb-storage, 5000M
/:  Bus 008.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
/:  Bus 009.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M
    |__ Port 001: Dev 002, If 0, Class=Mass Storage, Driver=usb-storage, 5000M

[1] https://www.elecom.co.jp/products/U3HC-A424P10BK.html

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index c5776e3b4aab..43fc1f24dfc9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -918,6 +918,7 @@ &usbdp_phy0 {
 };
 
 &usbdp_phy1 {
+	rockchip,dp-lane-mux = <2 3>;
 	status = "okay";
 };
 
-- 
2.43.0


