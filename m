Return-Path: <devicetree+bounces-121396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EC19C6A5E
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 09:13:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 79BF81F2691B
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 08:13:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 045CC189F25;
	Wed, 13 Nov 2024 08:13:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC1117C22E
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 08:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731485612; cv=none; b=my/yhjSM0MJ51LEt+0hnStehIo80JaazspQ9syFsPimS2kuuWj05Jqsuc8E7UWlrzCTZy8kBJGgHDmDPFvRHgyFUFPd/igTEwllDz9xp/kFV+mJlWUgvWyHyx9D7wyaWapxSsSh7R6UhYHRfDXm/8YOgrte/3NrEdmUJlcfug0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731485612; c=relaxed/simple;
	bh=Lq5s5oMggRbZluYz1a95IfOn8IowYQ/apep/urKzfo0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RrW9O97xFJ/5fuZ7JBYcVRFlNu12rg1MDSAMSTMFaGXff6ht37JR3iv/jMSqrW539Av1iKtjAB4cEo5EozBW89HSvbARHE4B+n9U+b0NTFAZMGQNndiHKaajEzzCOYw4+c6pld5butM4cnTP2Drvxtq1pTri0CbU3Nih/uOsF4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AD8D5p5026223;
	Wed, 13 Nov 2024 17:13:06 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        cristian.ciocaltea@collabora.com, jbx6244@gmail.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 4/8] arm64: dts: rockchip: fix u2phy2_host phy-supply for Radxa ROCK 5A
Date: Wed, 13 Nov 2024 08:12:54 +0000
Message-ID: <20241113081258.2745-4-naoki@radxa.com>
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

by schematic[1], USB2.0 HOST0 is connected to USB hub(FE1.1s), and USB
hub power is supplied by vcc_5v0.

[1] https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index bb0b2897dac9..66f6e872856c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -783,8 +783,9 @@ &u2phy2 {
 };
 
 &u2phy2_host {
+	/* connected to USB hub, which is powered by vcc_5v0 */
+	phy-supply = <&vcc_5v0>;
 	status = "okay";
-	phy-supply = <&vcc5v0_host>;
 };
 
 &u2phy3 {
-- 
2.43.0


