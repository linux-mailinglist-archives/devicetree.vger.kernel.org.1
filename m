Return-Path: <devicetree+bounces-237029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D00B0C4C1B6
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 08:26:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 033B91898FBE
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 07:20:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C81432AAC5;
	Tue, 11 Nov 2025 07:19:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033F632AAAC
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 07:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762845598; cv=none; b=cocBh96XTKkxhOZAtATg3uGJEWhzV1+Wr+tlB04dwOAWAkpjapp/v4mVxvEKykO0GFdG5fsnduW8OYUSeWHY7EF69Dyt6Wzsc5OAgKCJdcqEFecwD0WyInphW9VfKhBymVoE5Q3f+K4zVrVGMAe60aWkxNknch1o0cXyB/W2PJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762845598; c=relaxed/simple;
	bh=dtYpc0pXxmdttWwYKFwb9obWt/CQ5SHuVDMcmSpJ2vI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sX2PBRHuQnsjx2T32RI5b6jZglISZaEjmFD0O73As7Co/QWsfCI7ZrZWIUzoHOO9jOeA4o2hziN/Y6R1d0uvT8anVpv5CzLnzPSvskZG8PAMdDU0DXz9IbNPLpfixOmdEFlvmJF8cKtlbN4QaWdwZ5ZdjBiaM03RQ4tj2Mn8DeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5AB7HYhU022271;
	Tue, 11 Nov 2025 16:17:37 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        liujianfeng1994@gmail.com, dmitry.baryshkov@oss.qualcomm.com,
        sebastian.reichel@collabora.com, andy.yan@rock-chips.com,
        nicolas.frattaroli@collabora.com, dmitry.osipenko@collabora.com,
        detlev.casanova@collabora.com, didi.debian@cknow.org,
        damon.ding@rock-chips.com, jbx6244@gmail.com,
        kylepzak@projectinitiative.io, dsimic@manjaro.org, alchark@gmail.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Remove sdmmc max-frequency for Radxa ROCK 5 ITX/5B/5B+/5T
Date: Tue, 11 Nov 2025 07:17:30 +0000
Message-ID: <20251111071730.126238-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251111071730.126238-1-naoki@radxa.com>
References: <20251111071730.126238-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Default max-frequency for sdmmc is "200000000"[1]. Remove redundant
definition.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi?h=v6.17#n2013

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- New
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts      | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
index 4c218ae6677ec..e9585cc84080e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
@@ -803,7 +803,6 @@ &sdmmc {
 	cap-sd-highspeed;
 	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
-	max-frequency = <200000000>;
 	no-sdio;
 	no-mmc;
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
index a35c9469a2574..b3e76ad2d8694 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
@@ -596,7 +596,6 @@ &sdhci {
 };
 
 &sdmmc {
-	max-frequency = <200000000>;
 	no-sdio;
 	no-mmc;
 	bus-width = <4>;
-- 
2.43.0


