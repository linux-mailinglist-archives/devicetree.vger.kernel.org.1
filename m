Return-Path: <devicetree+bounces-128800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 115009E975B
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 14:40:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 756C1162348
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:40:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84E00233144;
	Mon,  9 Dec 2024 13:40:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E536F233135
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 13:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733751626; cv=none; b=OXqB9neTBTWM1Ego70NFkTpKakYIEL1s6Ej7SDkrjmbuRhvZrXd0skeEV2yTyLMAqIr46gcEMQPa3AFQYmwlOiFj4YIQ5sr5xKtHZqwOISkNrsy8aQeh7Kfgwwic/+Q979eG+lBHnxNXgDVHjhdhTZFMT596IhfDLz0/Pgm+NFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733751626; c=relaxed/simple;
	bh=AVbbNqsya/JEdMrHopThl+i7y5jsoP3erLIELyHNKNY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=h6S4ifTY0MXDFm4E60B+Hq/RgspV0Zni5gvU5ymSFoAu9D2tWKSyq+YtyxZODRdWaV1wT67bKtroVbL5xSizI+iO2TVPqVTjI7YtyuwCkGSAkSS8bm9QwlZd/IuZ7ul9Kzzes5Oinog3FIDDM62lNmeJoloU24RqGNpdZaJv7ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B9Ddotw032095;
	Mon, 9 Dec 2024 22:39:50 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        cristian.ciocaltea@collabora.com, kever.yang@rock-chips.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2] arm64: dts: rockchip: add rfkill for wireless modules for Radxa ROCK 5A
Date: Mon,  9 Dec 2024 13:39:41 +0000
Message-ID: <20241209133941.4750-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Radxa ROCK 5A has a M.2 E key slot which can be used for wireless
modules. there are two enable/disable switch pins, one for Wi-Fi,
another for Bluetooth. these pins are connected to GPIO.

add rfkill and rfkill-bt to control these pins via GPIO.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
this patch depends on [1] which depends on [2].

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/20241209132406.4232-1-naoki@radxa.com/
[2] https://patchwork.kernel.org/project/linux-rockchip/cover/20241209125131.4101-1-naoki@radxa.com/
---
Changes in v2
- put rfkill nodes correct place
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 095e1f5f7786..278d372e9b16 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -19,4 +19,18 @@ regulator-vbus-typec {
 		regulator-min-microvolt = <12000000>;
 		regulator-max-microvolt = <12000000>;
 	};
+
+	rfkill {
+		compatible = "rfkill-gpio";
+		label = "rfkill-m2-wlan";
+		radio-type = "wlan";
+		shutdown-gpios = <&gpio0 RK_PD3 GPIO_ACTIVE_HIGH>;
+	};
+
+	rfkill-bt {
+		compatible = "rfkill-gpio";
+		label = "rfkill-m2-bt";
+		radio-type = "bluetooth";
+		shutdown-gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
+	};
 };
-- 
2.43.0


