Return-Path: <devicetree+bounces-125639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C336E9DEDDC
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:41:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 80EF9280FE0
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 00:41:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB39F38FAD;
	Sat, 30 Nov 2024 00:41:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CECF9224F6
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 00:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732927314; cv=none; b=G7YsvpoL/RxQ08aa8xvTyMlkd6dm7muEWFFa6kUfOvR+SK73bCDL/WjeiPQydJDFRvJkgQAD96kgiLIxevPMBvnnodwCTZh/XfLUoZXV5LZTRvUxSRC3nTc/xy4jEstb0d7OHhkIeZjYvaGkqQ9hbAlBCQU+VuzzqaDq64WX1Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732927314; c=relaxed/simple;
	bh=0z2fsP3BUtvONvFyAY5BuDWgra1qmjDa2yDjKegbOtA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CelmtV1qD6FCiU/L7EZCvArWRexqhDSUXtK25I34887WnkHfLYESma4BW3+fy3Yb0W5Q4aURHF50RuleNCJ6ozKbiXi+RIfANWYRVSnyFgpDZTUOwdXK3G8rlyvRhlVvV0YXmKPljRwe+7/mX+z4aAOBwMVkP74mLcU9KzsPnf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU0f3BJ024368;
	Sat, 30 Nov 2024 09:41:05 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com, alchark@gmail.com,
        inindev@gmail.com, cristian.ciocaltea@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 5/6] arm64: dts: rockchip: fix pwm-fan node for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 00:40:56 +0000
Message-ID: <20241130004057.7432-6-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241130004057.7432-1-naoki@radxa.com>
References: <20241130004057.7432-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

fix properties to match with vendor kernel.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 7c8359fe712a..6a02febaefb7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -64,10 +64,10 @@ led-0 {
 
 	fan: pwm-fan {
 		compatible = "pwm-fan";
-		cooling-levels = <0 120 150 180 210 240 255>;
-		fan-supply = <&vcc5v0_sys>;
-		pwms = <&pwm1 0 50000 0>;
 		#cooling-cells = <2>;
+		cooling-levels = <0 64 128 192 255>;
+		fan-supply = <&vcc5v0_sys>;
+		pwms = <&pwm1 0 60000 0>;
 	};
 
 	rfkill {
-- 
2.43.0


