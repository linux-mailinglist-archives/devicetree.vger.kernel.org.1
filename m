Return-Path: <devicetree+bounces-121400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5447E9C6A62
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 09:13:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D3EFFB23507
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 08:13:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A696C18A6B5;
	Wed, 13 Nov 2024 08:13:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83472189F48
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 08:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731485617; cv=none; b=cJtM5o69jSVKdU6IziAx5QYJDJgYKXEY/eAPxMo4Dngfgx0Y0gfs7LwzSL6qx75dIDFJfJhEycp4+PDDAirOvb7BxEhNx6K72jmtTAL+JpmRckAgtQ+NyPb+qKJrFYTGXOupgHqF8OzljeVnLinjD/0PmJ68Va4z1LRUsq5bMNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731485617; c=relaxed/simple;
	bh=yKwtf8NWzU98EDDWw34f3aRB3FTpmKkXi7jELRYb76c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HamtJpS+dz2sQAfC9xZaOAvfJk31dwXCEOn4r/vShBPx4WXTxrrN4KXcbOJqigrLY/1QgqfOiE2XiFFkEKaX5OA9nQoa+hAfj5ZSFX/FWZnJpI74EnQ+iAybsvB6sDYP3QRwh8jiJx8YS2ric9ZOs2x3TtG931qGSADBB/jNh9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AD8D5p3026223;
	Wed, 13 Nov 2024 17:13:06 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        cristian.ciocaltea@collabora.com, jbx6244@gmail.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/8] arm64: dts: rockchip: remove i2c3 and i2c5 node for Radxa ROCK 5A
Date: Wed, 13 Nov 2024 08:12:52 +0000
Message-ID: <20241113081258.2745-2-naoki@radxa.com>
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

currently i2c3 and i2c5 are not used. remove them.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 56c818c45dc0..274dec748a1c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -261,16 +261,6 @@ regulator-state-mem {
 	};
 };
 
-&i2c3 {
-	status = "okay";
-};
-
-&i2c5 {
-	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c5m2_xfer>;
-};
-
 &i2c7 {
 	status = "okay";
 
-- 
2.43.0


