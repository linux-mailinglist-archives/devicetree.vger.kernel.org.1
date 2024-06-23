Return-Path: <devicetree+bounces-78851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 486289138D2
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 09:54:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EE1761F21210
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 07:54:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BCD5288A4;
	Sun, 23 Jun 2024 07:54:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615941EB25
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 07:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719129276; cv=none; b=kJyP+IMb3jc4y9ukWyBtu4h4D20ywWs9ZMrtlrImS6sfXvb4lDSHKLm1qCuELRCLeWi5914D2zIbxpIPzZ+puQB3FPcnFCl+7UUcZTCdqCZ+I0VssFQ9IZeotRmvK4j14ZAAdLKDhbTVztFZZ/ohGHgBGpJq707emGiLzynxU8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719129276; c=relaxed/simple;
	bh=cuUthcKqup0Ja7UwBpAxGNK81p+k1Tv/YvPqAtzwdVA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TUUTSagss1k9sKqO70crMHvJD26oPQcCKLtp+ma8L30lDZ4WXD7EFm9hUVjUUE+L52phbWmMan+ITHoKDgtDZHI2WrNoPotrWBNcumc/ISxDc90jBTwjzuO2RqY+rTb4SGf93wZwA7NlnT/36Nj1w+HDXvx7Q6zHOCpmNMjb6vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45N7rSgi005540;
	Sun, 23 Jun 2024 16:53:29 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: add dts for Radxa ROCK Pi E v3.0
Date: Sun, 23 Jun 2024 16:53:18 +0900
Message-ID: <20240623075318.80492-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Radxa ROCK Pi E v3.0 has DDR4 SDRAM instead of DDR3 SDRAM.

for Linux, this change doesn't make any difference from a device tree
POV. but, for bootloader (U-Boot TPL), it makes a difference.

bootloader needs a separeted dts for v3, so I add new dts for it.
dtb can be shared between v3 and prior, so I don't touch Makefile.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts
new file mode 100644
index 000000000000..956345274c12
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts
@@ -0,0 +1,3 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+#include "rk3328-rock-pi-e.dts"
-- 
2.43.0


