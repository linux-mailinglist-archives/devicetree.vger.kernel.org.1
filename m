Return-Path: <devicetree+bounces-133434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F7A9FA905
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 02:40:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 94008164FE7
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 01:40:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9C4279E1;
	Mon, 23 Dec 2024 01:39:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99491D528
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 01:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734917998; cv=none; b=G7KvqnY5wjWwXQmkjieMth0VczoDmXa/Z7++jd7Gp2UiBBym84Up6EfV4PzQ6ztad/ZKbeGzwUbKRxzhimyXsnSPkpUHAxX7R++KaRNWuE09tMOiec/wqieITRcXbK913qlaCXzf22kAN2bSDTYk2Z7k43Q2fGE/m+Gui16qC68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734917998; c=relaxed/simple;
	bh=rF3JgoCMt1bM4UMNlmu36aE1umsBLLEYlIIZIw1udgQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fqx85bXyclliIdwEBUJZR81hP4W5TGiKXzTMU7WzMdcqPJs3rKS5hOv+l9QvpSFCkB14/JyhzuZzpOpKH/tOZ1jL1NfZqxIktAq4ZrGjaELkXvV/0wmDGelKz9krcHdzVxy6qj7SFAqQk883wPWl3jUVFWi/uGMjQv5mxOmBgFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BN1dW74024519;
	Mon, 23 Dec 2024 10:39:34 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v6 5/7] arm64: dts: rockchip: Fix the properties of the PMIC regulators for Radxa ROCK 5C
Date: Mon, 23 Dec 2024 01:39:24 +0000
Message-ID: <20241223013926.1134-6-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241223013926.1134-1-naoki@radxa.com>
References: <20241223013926.1134-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix mistakes(copy-pasto) in the previous commit.

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v6:
- Reword commit message
Changes in v5:
- Reword commit message
Changes in v4:
- none
Changes in v3:
- none
Changes in v2:
- split from "arm64: dts: rockchip: fix pmic properties for Radxa ROCK 5C"
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 8379bc97705c..9ce69ffad125 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -635,7 +635,6 @@ vcc_2v0_pldo_s3: dcdc-reg7 {
 				regulator-boot-on;
 				regulator-min-microvolt = <2000000>;
 				regulator-max-microvolt = <2000000>;
-				regulator-ramp-delay = <12500>;
 
 				regulator-state-mem {
 					regulator-on-in-suspend;
@@ -789,7 +788,8 @@ vdda_0v75_s0: nldo-reg3 {
 				regulator-max-microvolt = <750000>;
 
 				regulator-state-mem {
-					regulator-off-in-suspend;
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <750000>;
 				};
 			};
 
-- 
2.43.0


