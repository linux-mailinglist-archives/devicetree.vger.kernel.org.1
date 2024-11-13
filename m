Return-Path: <devicetree+bounces-121321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7D19C6606
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 01:30:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1ED22B30F4A
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 00:22:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF156DF71;
	Wed, 13 Nov 2024 00:22:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8201A259C
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 00:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731457355; cv=none; b=jZrRpYUnLs7fwmmeqzzLtF09f/eCQZXw1nMgDhldRxfbvuSNNr5oMLdjg7JoZ40/6zd4FKHKI7RemNaejz+7ZK3C9LFMTyciYrp0EEBQh6fFNDN2Fm5/DZ7HVrIWzEmE8uXi96xM0fO3iHhpCEiZUKNIFlVU1Vh2CE23+VJ7/Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731457355; c=relaxed/simple;
	bh=WKZ8IS1MEnjZrgFOJ8dRuXIuRLcTpgdYR9ltgolitWc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RAVhMpX07xpaaRddNLGa5DSR1cJYLD2XdQTdOCXX8NPfdL9B5aAZK+9TrdhX76ePREq/QrB436OgH2HTuWTKrJzI7cVXucING6g/apBUu0NwtC99FCZXzscbT3LTPVdFeNn34c7vG72lviGp30gA28dqI72ES7UNOQd4zEj3g7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AD0Dmhw024846;
	Wed, 13 Nov 2024 09:13:49 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 4/5] arm64: dts: rockchip: add usbdp_phy0 property for Radxa ROCK 5C
Date: Wed, 13 Nov 2024 00:13:40 +0000
Message-ID: <20241113001341.7952-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241113001341.7952-1-naoki@radxa.com>
References: <20241113001341.7952-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

add rockchip,dp-lane-mux to usbdp_phy0.

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index e6a0d123ed71..0389f9e3ba65 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -883,6 +883,7 @@ &uart2 {
 };
 
 &usbdp_phy0 {
+	rockchip,dp-lane-mux = <2 3>;
 	status = "okay";
 };
 
-- 
2.43.0


