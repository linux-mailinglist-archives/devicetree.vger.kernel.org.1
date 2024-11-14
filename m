Return-Path: <devicetree+bounces-121709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A26999C80E2
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 03:38:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 687BA281E04
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 02:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E8A11E7672;
	Thu, 14 Nov 2024 02:38:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C3C1E3DE6
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 02:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731551928; cv=none; b=T0zVZBtul0/yQnkp4wgaAu5wkcCbG0pW6YhOAtPYdJhnTetAGkRCe+AqKZdJ0BghonyWxTUtX9/iFZWKU0xkkuQvSHt/q2l+zesLZ6l6CfURrt+InqtKb4mquOxNbm2wUIi6LtGIcRdAqrS5bXGjsK4WQmjOWmu+Eqr/G0Wt5ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731551928; c=relaxed/simple;
	bh=dXQuI018lktUZ/koek2krG/toaIdYlVMNOccqGqWSnA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BiRKtF9xMzV+bT+766gpDDxkOyHfzTlBiuxn+OXvCUj/5mDrDeUe838JaxunaBTrkWMDS7NJdk3z25dYNLrHUIJVF8dZt7z1K90P5Kns1tpJC+qPezcauaguOYfpe1JhF5tIh1JlaaX7XmxDxfqeKH7ivpIGbG4IfKWKsD9x4cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AE2bplo029356;
	Thu, 14 Nov 2024 11:37:53 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 2/9] arm64: dts: rockchip: add cd-gpios for sdmmc for Radxa ROCK 5C
Date: Thu, 14 Nov 2024 02:37:39 +0000
Message-ID: <20241114023746.4867-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241114023746.4867-1-naoki@radxa.com>
References: <20241114023746.4867-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

by discussion about cd-gpios and sdmmmc_det pin function[1], it's
better to add cd-gpios for now.

[1] https://lore.kernel.org/linux-rockchip/4920950.GXAFRqVoOG@diego/T/#u

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- none
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 997e95bb5b74..3eed50253442 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -501,6 +501,7 @@ &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	no-sdio;
 	no-mmc;
-- 
2.43.0


