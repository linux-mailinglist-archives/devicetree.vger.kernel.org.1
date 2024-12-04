Return-Path: <devicetree+bounces-126789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D75969E32CF
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 05:55:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B1130162AB7
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 04:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD469157E9F;
	Wed,  4 Dec 2024 04:55:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9123E502BE
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 04:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733288141; cv=none; b=Wo5BV9aUdU5rx4rW+yu/ymnOim0ONYt5K/rO8IuI2N2TDI+R43ycD2o7Wsb6BWPbmrTDf3vxCbAyYoyOnqfxG4abG5o/Ab6179whlfXdEJJ4Tj45UjV7QuaiNFbKYapUE6YH4ydrLXCsc9DpBhHtEqmpMtjoZcRD+nx0ACk37nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733288141; c=relaxed/simple;
	bh=DHA92ZWrXimp9nN1Ag8IwKtFR4Subbid9YrFqGfqHTU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nvcxU5aG7dW8RjK/IEizg3jISahoUArB7N/UVsBEnzjVX5ViaC8BRm43F6pYCc+xpxS1rWcnX/JuvarPiW2hTZhb1o9kvSEKu/G2XzU8bDKmTfVXMuIsyWu1lYuzRBBN2wlFKQVuliR+Gfn0ky5jA1aPzZvObIyhDJeinGHNSAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B44sq0m009553;
	Wed, 4 Dec 2024 13:54:53 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: fix cooling-levels in pwm-fan for Radxa ROCK 5A/5C
Date: Wed,  4 Dec 2024 04:54:47 +0000
Message-ID: <20241204045447.1036-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241204045447.1036-1-naoki@radxa.com>
References: <20241204045447.1036-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

fan behavior is better than current configuration.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
this patch depends on [1] which depends on [2].

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/20241128121929.62646-1-naoki@radxa.com/
[2] https://patchwork.kernel.org/project/linux-rockchip/patch/20241119095113.78151-1-naoki@radxa.com/
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
index a1cac40d439e..472b41f0d47f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
@@ -36,7 +36,7 @@ analog-sound {
 	fan: fan {
 		compatible = "pwm-fan";
 		#cooling-cells = <2>;
-		cooling-levels = <0 64 128 192 255>;
+		cooling-levels = <0 120 150 180 210 240 255>;
 		fan-supply = <&vcc_5v0>;
 		pwms = <&pwm3 0 60000 0>;
 	};
-- 
2.43.0


