Return-Path: <devicetree+bounces-236986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AE4C4B7FD
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 06:10:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D20393A6F32
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 05:10:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C261F27147D;
	Tue, 11 Nov 2025 05:10:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91A991EB193
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 05:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762837831; cv=none; b=pWy0/RCuCpky+8D+4Gg1QNfj8n0nQM7dGOGvpJNU6QAimSc7dOfORMY23oWF/MT/L3gxL9T9um5cC7tT+To/7486Ep5bOBXwgsjoPGC3XH/zox0tsPgAmbGJuXEoUYsq9atKa+QZyNwOlY5qp3tEblCcU6fZ0BK5lOnWRl/PM2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762837831; c=relaxed/simple;
	bh=LVFdUu+0nbauzRzdXF4UgV+mio3KkUEWfgyPenWXE3w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eo9U38Juh/YEi+oOTBZ4+R59xxr1+FDKMRraBDJhNARiYRBDQ/DNUqq2qauiDL4znmJHyFYe0HlD23xj2CqPpm78vNbKe4dreKlyHlxk2WxRH46/jKfrJaIxShl2zoLjAtpFmAwIcvO6+f87+utHcCvhUQ/t2IasV3H7Vh/jVEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5AB59RuU021826;
	Tue, 11 Nov 2025 14:09:32 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        jbx6244@gmail.com, pbrobinson@gmail.com, damon.ding@rock-chips.com,
        sebastian.reichel@collabora.com, kylepzak@projectinitiative.io,
        alchark@gmail.com, dsimic@manjaro.org, amadeus@jmu.edu.cn,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/4] arm64: dts: rockchip: Move eeprom correct bus for Radxa ROCK 5A
Date: Tue, 11 Nov 2025 05:09:20 +0000
Message-ID: <20251111050924.54880-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251111050924.54880-1-naoki@radxa.com>
References: <20251111050924.54880-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

BL24C16 EEPROM chip found on Radxa ROCK 5A is connected on i2c0 bus.
Move eeprom node from i2c2 to i2c0.

Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
Link: https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf p.19
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 19a08f7794e67..428c6f0232a34 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -228,6 +228,12 @@ regulator-state-mem {
 			regulator-off-in-suspend;
 		};
 	};
+
+	eeprom: eeprom@50 {
+		compatible = "belling,bl24c16a", "atmel,24c16";
+		reg = <0x50>;
+		pagesize = <16>;
+	};
 };
 
 &i2c2 {
@@ -249,12 +255,6 @@ regulator-state-mem {
 			regulator-off-in-suspend;
 		};
 	};
-
-	eeprom: eeprom@50 {
-		compatible = "belling,bl24c16a", "atmel,24c16";
-		reg = <0x50>;
-		pagesize = <16>;
-	};
 };
 
 &i2c3 {
-- 
2.43.0


