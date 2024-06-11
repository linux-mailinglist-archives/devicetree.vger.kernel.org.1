Return-Path: <devicetree+bounces-74602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 527CD903BE0
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 14:29:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D1618283B19
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 12:29:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C720E17B419;
	Tue, 11 Jun 2024 12:29:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4833517BB25
	for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 12:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718108948; cv=none; b=gWle7T0m+b7PeOmivuMq+pEIrJ5uoRvrIohzxP7m3gqDPyNM9Noyc2i/dH+mBtqFd5AgyoUkLSPQKmwdxmYTRhNEvZOs+5OhL8wJ3E0U8MadRg0rU3PpwyH4ze+I+7+zVz2EdTGsu8siLPwqvi/AnF02T1jGz5TPPL75/OhXI2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718108948; c=relaxed/simple;
	bh=9YHbJh5sjFmf2SgUyuayf4Y2xp/vi5CmO7YjABPYCzU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jwtFdVPD7WrGh9yE2AkHTdhTgojzUdY1hsfCBfC+oH/piyH8IAee0TQDY24VqSfetttDlcdi4wBSVHo3DbTDRhmDY2P64bBzQirQbEFZTS1KlDWJWC9y+c4tr6c06dy0sTFwlTKEPlSOS4y45ZbL3YCQKsK7RsxpplwZU4Il8q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45BCSHA9028451;
	Tue, 11 Jun 2024 21:28:17 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: make "poweroff" work on rock-5a
Date: Tue, 11 Jun 2024 21:27:46 +0900
Message-ID: <20240611122746.751-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

to make "poweroff" command work, add "system-power-controller;" into
pmic@0. without this, "poweroff" works as same as "reboot".

Fixes: 75fdcbc8f4c1 ("arm64: dts: rockchip: add PMIC to rock-5a")

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index b070955627be..cf7b878a3eb2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -395,6 +395,8 @@ pmic@0 {
 			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
 		spi-max-frequency = <1000000>;
 
+		system-power-controller;
+
 		vcc1-supply = <&vcc5v0_sys>;
 		vcc2-supply = <&vcc5v0_sys>;
 		vcc3-supply = <&vcc5v0_sys>;
-- 
2.43.0


