Return-Path: <devicetree+bounces-125649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4939DEDF1
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 02:09:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F0D1281960
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:09:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C16822628C;
	Sat, 30 Nov 2024 01:09:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C33FAD31
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 01:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732928985; cv=none; b=D3OEySrwWoRpmwoavcCsz1bMPsK0UKsSf6aZ4HFAJHG9sqMCznryNqf5TgiRcQwp+ISw7Y9oD81t7mYsEdlodGy8CYPdgnNU0X7toRNJbG2NCcmwzbP3bwHJqrQ89Ht0VPc+zolXxP0fIU2cqxU3jGnk9sSFtWElxYyhap+1wNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732928985; c=relaxed/simple;
	bh=byTWHZQ7mNYbIKMMp4o+mOJHZXM/xGigS61/xeoaJts=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YLc1CFoMWKC4fO5vj+bBv4qieAGffBpBoI0JxPtcHQF1t8hW5FvoMPHVWEHEO9MR8ueoxubvTNU4BAU3X7SdQTPnJElj0JPXi/Q/XgEgo1OH1mbdrxa6XhiVHVfw7fmshOCzQzbwH7UwqV4+utTdzCy8sxVOCj0dlibMVI0oXQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU19BHa024456;
	Sat, 30 Nov 2024 10:09:11 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com, alchark@gmail.com,
        inindev@gmail.com, cristian.ciocaltea@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: remove usb_host0_ohci for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 01:08:57 +0000
Message-ID: <20241130010857.12025-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

on-board USB hub (FE1.1s) has Transaction Translator which can handle
USB 1.1 devices. remove unused usb_host0_ohci.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index e3b2d62427b6..0ec4992b43cd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -883,10 +883,6 @@ &usb_host0_ehci {
 	status = "okay";
 };
 
-&usb_host0_ohci {
-	status = "okay";
-};
-
 &usb_host1_ehci {
 	status = "okay";
 };
-- 
2.43.0


