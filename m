Return-Path: <devicetree+bounces-121399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB739C6A61
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 09:13:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 748431F26B3D
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 08:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C34918A6A0;
	Wed, 13 Nov 2024 08:13:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C62189BAE
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 08:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731485617; cv=none; b=QHfxaydgjCMy/eNCREuzSxkSU0vIWuKf5tPSgzfZDS6o2n4L/UTqra7JCZjcXcYS0i7434x1U3tafpidJeQaPN+cgEHB0cQZkX8vwlg9WHDgRfeYkEs1T8Fi5bBNdaRdDLcVEWV7l8OuGuGXy6JPBbVTMjwebGSaBPig/hYFFcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731485617; c=relaxed/simple;
	bh=2hxKvv/RBLXrdE6s7WmlUTbaoRM0ner5pag89tf53ZI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=urrF2wK+eG2oKRjiAcnEGlWAoDYCLjOgwdTT/zZyWEv9v6F2vRlADSEYgxBSF1N2evAtTmnjnMjNKsHj4MqUacaK0OWxjLZi0p+5Mf1j+jlcn+qlwkfdm3kx5scTXbIrORsxhvqET4w5BF87GZwCvxC4oQwX4XE4sFa21nRZvtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AD8D5p6026223;
	Wed, 13 Nov 2024 17:13:06 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        cristian.ciocaltea@collabora.com, jbx6244@gmail.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 5/8] arm64: dts: rockchip: remove usb_host0_ohci for Radxa ROCK 5A
Date: Wed, 13 Nov 2024 08:12:55 +0000
Message-ID: <20241113081258.2745-5-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241113081258.2745-1-naoki@radxa.com>
References: <20241113081258.2745-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

since USB hub(FE1.1s) has Transaction Translator, usb_host0_ohci is
not used for low/full speed USB device. remove it.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 66f6e872856c..66eb38f4d7c0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -811,10 +811,6 @@ &usb_host0_ehci {
 	status = "okay";
 };
 
-&usb_host0_ohci {
-	status = "okay";
-};
-
 &usb_host0_xhci {
 	dr_mode = "host";
 	status = "okay";
-- 
2.43.0


