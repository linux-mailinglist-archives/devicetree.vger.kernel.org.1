Return-Path: <devicetree+bounces-236493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7FCC44DB9
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 04:55:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 288834E0259
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 03:55:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E109288505;
	Mon, 10 Nov 2025 03:55:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB69C194098
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 03:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762746946; cv=none; b=iAes8QZj2pekSSEmdsuA4LLpPGASmTJMufGwEThI5oG85fCsL0nlKiDjhyZwfzck2Gm4BEWTGDDnp99Yl3Xx+xAsKBy7GHZLkSZDfmXHKQ26HzofAiFW85WFFfVJVhD2CGzmPGnm9oBHScFGFxeQoLyebXrLFTBdDHF0JCq2l0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762746946; c=relaxed/simple;
	bh=2tcp80OWuUsdHutXeiCaQsu/C3p27iCzoqvDc7vtsI0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GSDAkz/p9tpxzgvwtaxYHJ8+99iXejIqkW6Vq8BaB9f8ew3u3C0CodeFEpqyY+jPKcKLBAGtxtaCyQAH3MSFlBzzhhChqmtN81+HW025NDa1LZSUD5Rv8hQ9s5SLdEYA92YOjhurqB8Ynq1toBoeDrQzTQKaJx8kA5KVs70OvrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5AA3t1OU017086;
	Mon, 10 Nov 2025 12:55:06 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        jbx6244@gmail.com, pbrobinson@gmail.com, kylepzak@projectinitiative.io,
        damon.ding@rock-chips.com, sebastian.reichel@collabora.com,
        amadeus@jmu.edu.cn, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 5A
Date: Mon, 10 Nov 2025 03:54:55 +0000
Message-ID: <20251110035455.839863-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251110035455.839863-1-naoki@radxa.com>
References: <20251110035455.839863-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Make EEPROM read-only as it may contain factory-programmed
board-specific data.

Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 19a08f7794e67..ae7b03488c9e7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -254,6 +254,7 @@ eeprom: eeprom@50 {
 		compatible = "belling,bl24c16a", "atmel,24c16";
 		reg = <0x50>;
 		pagesize = <16>;
+		read-only;
 	};
 };
 
-- 
2.43.0


