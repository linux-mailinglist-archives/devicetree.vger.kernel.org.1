Return-Path: <devicetree+bounces-122744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C76D29D22CE
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 10:52:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 609EDB23CB2
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 09:52:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 683A71C1F3A;
	Tue, 19 Nov 2024 09:52:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2068B1C175C
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 09:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732009923; cv=none; b=cbfMVLkxyaIuKfZifyx0wOicqcQ7BTU/YnNR5pzXoSuiyPeSGdJu/h5u/+Sq3yTQEUDF04x8crJ7jy07AB8Hbh+hOMPYNatNV2ilYx8+UQck8x2/Ospf7hQkO9g+gmyWPgihWt3diZBoEUe0ntCWvX9b73OWSSkehKTWMkcgB3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732009923; c=relaxed/simple;
	bh=8fXMRHH4tZ3OjMZQU9Ptl7xxfW18pr/BH+uEFdrD3AY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LmYgfvB2Yac7jUMa0j80JxbwoMiyjP9jH/SYno+Z3ak9p52tETjLOWTitqaQ0qvSnBftebU7IPgMD1e2gWxQ3Cr/dyWbH2jTR/b/IF2vHj0yOKl1RESq25bTH/2rTqA6UDNQEXs2mJCYzCy1IRa9wZ6e9Iorx6u0JolFSg9pFRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AJ9pHSQ016079;
	Tue, 19 Nov 2024 18:51:19 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 11/11] arm64: dts: rockchip: separate pinctrl for vcc_5v0 for Radxa ROCK 5C
Date: Tue, 19 Nov 2024 09:51:12 +0000
Message-ID: <20241119095113.78151-11-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241119095113.78151-1-naoki@radxa.com>
References: <20241119095113.78151-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

vcc_5v0 is used in many places, separate vcc_5v0_pwren_h from usb in
pinctrl.

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v3:
- new
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 4262ae9c2703..6da13b6b9a7b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -446,7 +446,9 @@ usb_otg_pwren_h: usb-otg-pwren-h {
 		usb_wifi_pwr: usb-wifi-pwr {
 			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+	};
 
+	vcc-5v0 {
 		vcc_5v0_pwren_h: vcc-5v0-pwren-h {
 			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-- 
2.43.0


