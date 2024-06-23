Return-Path: <devicetree+bounces-78924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D674913A8E
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:27:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C74011F20CD9
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 12:27:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43FBA145B0D;
	Sun, 23 Jun 2024 12:27:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EA912E1CA
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 12:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719145648; cv=none; b=pnqHUFJWOBNS0SjcF/WOTBfHJjBwqHmg2dlKjHFhcjp7pusRmRdqxyY4Zmn3INGPGgi+57dU0a0rpmdNmn33ez2+5AYx8uEvvDG71N9OHTqsDckXkl/uxU83IgWgMQRKQC27XXV1qp0DvU+vMSvjwu9wokIS1rkoIwHgt+IREig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719145648; c=relaxed/simple;
	bh=+wKFWA4mE6UfwIEaxsp5VedGH107P6vopaqTb047CcQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=F4aV+7KbTLxa9c7bYlWdKfSEAzzlSYrshpDuY9WmL3ePZvmHzHdwYZqC1aptMaP24KqsliyreS1PPYbLeIO+mt8evMPBorEQb/bmua1yFG7jMILQXDiGuXac6pzoZrCfbtJmf4HT+nvFf0YlS4kATZhpH4X1cEkY5PJxY2XViaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45NCNik5006105;
	Sun, 23 Jun 2024 21:23:45 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 3/3] arm64: dts: rockchip: add support for Radxa ROCK Pi E v3.0
Date: Sun, 23 Jun 2024 21:23:37 +0900
Message-ID: <20240623122337.91914-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240623122337.91914-1-naoki@radxa.com>
References: <20240623122337.91914-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

ROCK Pi E v3.0 is new, incompatible version of ROCK Pi E v1.2x.

Changes are:
- Upgrade DDR3 to DDR4
- Elevate eMMC connector to onboard eMMC
- Update silkscreen to ROCK PI E V3.0

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Changes in v2:
- add change for Makefile to build rk3328-rock-pi-e-v3.dtb
- minor reword in commit message
---
 arch/arm64/boot/dts/rockchip/Makefile                |  1 +
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts | 10 ++++++++++
 2 files changed, 11 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 85d949f2c909..a9b57c09299e 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -24,6 +24,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-orangepi-r1-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-orangepi-r1-plus-lts.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock-pi-e.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock-pi-e-v3.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3368-evb-act8846.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts
new file mode 100644
index 000000000000..be369dace843
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3328-rock-pi-e-base.dtsi"
+
+/ {
+	model = "Radxa ROCK Pi E v3.0";
+	compatible = "radxa,rockpi-e-v3", "rockchip,rk3328";
+};
-- 
2.43.0


