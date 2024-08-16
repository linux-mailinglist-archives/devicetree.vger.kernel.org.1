Return-Path: <devicetree+bounces-94094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B0C953FBB
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 04:33:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D154285664
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 02:33:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13D8E482E4;
	Fri, 16 Aug 2024 02:33:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A9B82B9C6
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 02:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723775611; cv=none; b=A5Dfm35Riypn0Izt9Ej92yIMURoRVnR0LNxJRNTxhAaLsVtIfcosuS4FTGOoysadNaky0WBXnsasdW9lwuMMnTQoV4X+W8Fp2je6CZ+QhKsqiramhU8cmKTAAUFRlobFa9PMOfu0nqGDSWTzsf46ZSiyHyXATx6B/HPcpOQMyLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723775611; c=relaxed/simple;
	bh=m5l7n4fJjpBPs3auhb7qQ9u6DyKsWTTclMkaa6VNAEU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BizKlWSmhUa6GS76wAJrSC5FVMZu6Yn7VUwE3M5+2I74sdpodKd3dPVRWwe9knstPEfDEP/nYte2r7O9Sp7tybC0iXXV/VCPJPZOHoSb5odN2Fc6Mh5ZUra75BAh6BstcnpDMC0iHt3WZDyz7+7nRLbSUjO4UHrRMvyOjET1oUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 47G2WnZS023994;
	Fri, 16 Aug 2024 11:32:51 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: make "multi-led" controllable under sysfs for Radxa E25
Date: Fri, 16 Aug 2024 11:32:43 +0900
Message-ID: <20240816023243.487-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240816023243.487-1-naoki@radxa.com>
References: <20240816023243.487-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Radxa E25 carrier board has 16x RGB PWM LEDs. This patch make it
controllable under sysfs.

$ ls /sys/class/leds/rgb\:status
brightness  max_brightness  multi_intensity  subsystem	uevent
device	    multi_index     power	     trigger

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
index 72ad74c38a2b..1eaf304d94b9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -16,6 +16,7 @@ pwm-leds {
 
 		multi-led {
 			color = <LED_COLOR_ID_RGB>;
+			function = LED_FUNCTION_STATUS;
 			max-brightness = <255>;
 
 			led-red {
-- 
2.43.0


