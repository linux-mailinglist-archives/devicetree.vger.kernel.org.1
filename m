Return-Path: <devicetree+bounces-158741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A97BA67E79
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 22:09:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B90A63BF91F
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 21:08:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A920C206F08;
	Tue, 18 Mar 2025 21:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kleine-koenig.org header.i=@kleine-koenig.org header.b="UQ44t6LT"
X-Original-To: devicetree@vger.kernel.org
Received: from algol.kleine-koenig.org (algol.kleine-koenig.org [162.55.41.232])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3518A1FF7CD
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.55.41.232
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742332144; cv=none; b=TmyylQJTiiAS3PlfzsYM7D1L7aKslP06QB6YBMNsNdtgSaKIXZFChJ0jplncfACSuQGxa5BTPHZ/6QkytVzPSOEX5o5JL0wqwEus0lZ7O6IWPP1+jQzxSqk93VB3bmq8cLc0DrSBwLdpe3qqKwstD3Fo0LxXbYQMWUZq+oS9kzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742332144; c=relaxed/simple;
	bh=F4648vkOLnU4pJA2jQ7juGAADHW7vjTnKVeqoZ+opAU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=d4YaxKi6u0Jik6f+Ywy2w/rh4DE4/8GQs6ykg7xl1gvZCEyAz60XbdDqKmflnbJ4p1DW/vmXVXbXBYlrrNoSw5+AIoIIl0A19w8fRzexMl9z6H/7BtAh9/FJLiQO4RRjpnMm1TaBgV4giPg432UmFIk33eAq4OtENQnEnvRSQRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org; spf=pass smtp.mailfrom=kleine-koenig.org; dkim=pass (2048-bit key) header.d=kleine-koenig.org header.i=@kleine-koenig.org header.b=UQ44t6LT; arc=none smtp.client-ip=162.55.41.232
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kleine-koenig.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1742332141;
	bh=F4648vkOLnU4pJA2jQ7juGAADHW7vjTnKVeqoZ+opAU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UQ44t6LT6NqErEzEJGn7sag8JnW83bV9MayxheM5NZxgkGLATxhP6m/MR/2vp+XMT
	 WufQGYCH8ob9CuqH7CViiMbkj5ILhq/ZPt8PR6kJS4713a0/ZO9Fq5LpTC7K7bJA4/
	 raxeRIxDwSXDV1zAUsezZ6JkKM7yl+U97G2liLpkm9v9pkBzld9gG8BSDDWQrzHsjB
	 BSBRnQucLStGo7xdRdh3IwXJ157BO4BB0TNqlV4pC3n1Mrg1yEoIumrHwRD5KVvJpr
	 aVkTyt44PJiWujDb24xT7UhqaCzd11nNke0KZir5M6isZWwMqgM94lmYc7c6QLuRmL
	 cea2mh8x21eFw==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id 4FF1FFC59B5; Tue, 18 Mar 2025 22:09:01 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Add gmac phy reset GPIO
Date: Tue, 18 Mar 2025 22:08:46 +0100
Message-ID:  <49f66206fccc714a8745b9ac35247615ad5cc369.1742331667.git.ukleinek@kernel.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1742331667.git.ukleinek@kernel.org>
References: <cover.1742331667.git.ukleinek@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1275; i=uwe@kleine-koenig.org; h=from:subject:message-id; bh=F4648vkOLnU4pJA2jQ7juGAADHW7vjTnKVeqoZ+opAU=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBn2eDjzSXuxpZ3lfvuA3S8ps3JGWjzXDDllYuJm J5M21at3BuJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ9ng4wAKCRCPgPtYfRL+ TswmB/4hiprY5BOxwZ0bWC6FZz7ZhAyy7ZHjQxXFdJ/yOTGiEZXG89731nSmlImqO3Axd+dy+tt ZFFRPBVnkt+YSoIsSgkfEIUQBLgioj8kby/jTG1x6E53Cheqd/sc2VR98m0M/oo5Ri2fGHC2Gnp 5yuAQiRs8pFSRS6hPhEYOTnpYp54oeFNECIGGeqDvGyCcJwquuYSMpdXHDDmmbQYTwm98EGFUgY +QwgkmQ3g24109qwJlUWXwS7oq4fy2YTV4D4sk5MiWm+OsuceZXxY9NUXQwTMubA4EcQzEX6hA9 UehLBs8bukPyT651UURA+AbSYocLZ3HZQsE7j6pPrTBTpY5R
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

While looking through the vendor U-Boot code Heiko spotted that a SoC
GPIO is connected to the ethernet phy's reset pin. Add the respective
reset-gpios property with pinmuxing for the GPIO to the phy node.

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
index 70e88769e21c..411f8ac7994b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -485,6 +485,10 @@ rgmii_phy0: ethernet-phy@3 {
 		/* Motorcomm YT8521 phy */
 		compatible = "ethernet-phy-ieee802.3-c22";
 		reg = <0x3>;
+		pinctrl-0 = <&eth_phy0_reset_pin>;
+		pinctrl-names = "default";
+		reset-assert-us = <10000>;
+		reset-gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_LOW>;
 	};
 };
 
@@ -557,6 +561,12 @@ &pcie3x2 {
 };
 
 &pinctrl {
+	gmac0 {
+		eth_phy0_reset_pin: eth-phy0-reset-pin {
+			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	keys {
 		copy_button_pin: copy-button-pin {
 			rockchip,pins = <0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.47.1


