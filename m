Return-Path: <devicetree+bounces-78907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D17E913A59
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:06:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 05E4DB2037B
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 12:06:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4CFC180A8A;
	Sun, 23 Jun 2024 12:06:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11EF3146A68
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 12:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719144362; cv=none; b=JHgS66l498cod3gxnnbp4XrLy0/USNgkbECu0RRpTHOWHDmRYlgvQN+t68G6QRopfQ/bADfeFFLIPMEZcbHfyD65HkP0e4Eecpkv3ZTa5exrhQOB9twqqD8ht7/ItBzunNCHz4pi05bhjI7PLAwNzO6RjzRzmT6lmnMQVk5UkFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719144362; c=relaxed/simple;
	bh=eKXG09MssdSlXPXrMsILg81EiS6AqZUtTPb2HIQ31jE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=g6OzUpA4x2pnwyCU367vg4wJUg9Rb0ekGxdCplFBQmoE9jTpyqL96R/iD5/Q8Bst2nwEHV+PKgPb1kfs+pTMxCPM4u2Y1i1q9R+WawpzGfRLpdx7WYHtaCnmsn0mL38KgUGnEBZ+RZ5x2rGdOtDIK/HPSaXoZkNi/3cwl5zGF/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45NC0fJC006059;
	Sun, 23 Jun 2024 21:00:42 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: add support for Radxa ROCK Pi E v3.0
Date: Sun, 23 Jun 2024 21:00:16 +0900
Message-ID: <20240623120016.82990-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240623120016.82990-1-naoki@radxa.com>
References: <20240623120016.82990-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

ROCK Pi E v3.0 is newer version of ROCK Pi E v1.2x. Changes are

- Upgrade DDR3 to DDR4
- Elevate eMMC connector to onboard eMMC
- Update silkscreen to ROCK PI E V3.0

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts | 10 ++++++++++
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts    | 10 ++++++++++
 2 files changed, 20 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts

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
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
new file mode 100644
index 000000000000..bdb2ca1a225f
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3328-rock-pi-e-base.dtsi"
+
+/ {
+	model = "Radxa ROCK Pi E";
+	compatible = "radxa,rockpi-e", "rockchip,rk3328";
+};
-- 
2.43.0


