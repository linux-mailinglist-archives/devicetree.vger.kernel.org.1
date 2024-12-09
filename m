Return-Path: <devicetree+bounces-128710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2929E94DA
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:52:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4899818816B8
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:52:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 490FB227BAC;
	Mon,  9 Dec 2024 12:52:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DB9226EDC
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 12:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733748748; cv=none; b=m2euJFJE1iIHUhPJP7fBfUcSnsp1pbPklXgvAc9YPaYLiPLjf47FdB7lCTghBPKOKZjvR7VfVaP6rzWKWg5EwBOEzxbW8RhTBb0RhMGHBXP4fS/Sg9Zao5tSKpnhdiRoMzFNS72ySOKRuJG6t4ydapdtRW0tmNmw2aw/zVBqyTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733748748; c=relaxed/simple;
	bh=jkEL7SJRr0wpWq5DczVHsKLPfPjN5jCM2+ItwlGA8U4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HgkRZz2GtVfj1TREk7DXgnoVRndT44My+JXQSBQC7m8ssixIcgtMBFH2iRZW/+y3t2ipFjgEIccq5HGdmPH8jvvhti2aZRFxKu2D7gQLJMf2RQyVXyt6IedKC59hJXJ85wM12K1FfYIqs36LHYqfOfli/C9nGOoTgz8FbEhYEpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B9CpdQ9031943;
	Mon, 9 Dec 2024 21:51:47 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v4 09/12] arm64: dts: rockchip: fix pmic dcdc-reg7 regulator-name for Radxa ROCK 5C
Date: Mon,  9 Dec 2024 12:51:28 +0000
Message-ID: <20241209125131.4101-10-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241209125131.4101-1-naoki@radxa.com>
References: <20241209125131.4101-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

fix regulator-name to match with node label.

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v4:
- none
Changes in v3:
- new
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 1da082b18c0e..0f8048f6511b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -634,7 +634,7 @@ regulator-state-mem {
 			};
 
 			vcc_2v0_pldo_s3: dcdc-reg7 {
-				regulator-name = "vdd_2v0_pldo_s3";
+				regulator-name = "vcc_2v0_pldo_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <2000000>;
-- 
2.43.0


