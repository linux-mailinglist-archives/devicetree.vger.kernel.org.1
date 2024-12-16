Return-Path: <devicetree+bounces-131379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0939F2F81
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 12:35:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 969FA7A28F8
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 11:35:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 660BE205AA8;
	Mon, 16 Dec 2024 11:31:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B52A20551B
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 11:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734348708; cv=none; b=od8B630p6XmUS7sZAOoWKmR205bxgyQ4MrAp8rslE4FKt+6HL8evLChuv41uC4AaylUmGp9VpALTu+qYS5r9H26cAFuTxNAsbG0k29pjKL10bbbt4ZiOd4tQlM9BmKoG0kFgbr/i7KmDo7nHYS3kcKJAGIKxvTgSS4rU9usK16k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734348708; c=relaxed/simple;
	bh=Lkm+qxcp9oqkof7FC1G73AgT0WSxwlc5bvJWqFbIiHg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fj7YhJR6FlbN0wbMDzOme2Odkg8mXC1niK4SqwtRNwTEt75jatvggVTYgbeGdUxEf/k9MpkrpxvJEI3jhMqnQnW0nYJyn7XWX4j6SODhZcSv6de2KkNj7xWhUZNz6cR5sIlrA8cingmOpp+6xX7d8wKAoxTG1ltN9FhEexj6e5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BGBUxOS028690;
	Mon, 16 Dec 2024 20:31:01 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v5 07/12] arm64: dts: rockchip: Separate pinctrl for vcc_5v0 for Radxa ROCK 5C
Date: Mon, 16 Dec 2024 11:30:47 +0000
Message-ID: <20241216113052.15696-8-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241216113052.15696-1-naoki@radxa.com>
References: <20241216113052.15696-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

vcc_5v0 is used in many places, separate vcc_5v0_pwren_h from usb in
pinctrl. No functional change.

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v5:
- Reword commit message
Changes in v4:
- none
Changes in v3:
- new
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 1ba94396aab8..b632093183b2 100644
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


