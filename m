Return-Path: <devicetree+bounces-158706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F259A67C4D
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 19:54:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0BC417ABEE8
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 18:53:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FEBB1DD88D;
	Tue, 18 Mar 2025 18:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kleine-koenig.org header.i=@kleine-koenig.org header.b="gBD6wl8/"
X-Original-To: devicetree@vger.kernel.org
Received: from algol.kleine-koenig.org (algol.kleine-koenig.org [162.55.41.232])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C371C4A10
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 18:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.55.41.232
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742324052; cv=none; b=QedIF0sS/yYeXZM5qaiTxlKtB66HCVSy5W7RQuCWYoY+nF3HpJ45Q4Ot0C9seYvgZrNzlSNeQdDVlhq/cgR7OCGLP7E6YzUFrQpNVWzgkfcMuxb0rpiLvTVaPB4Sieo28QmD9mrnE5PjfiNOBs4ER1KDQ+FrdNaMSVuUgPqIvXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742324052; c=relaxed/simple;
	bh=SIYP7xVZV3lmgBMVLByXJICeBe4GP9DuYdjQ55XLqPA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=qlsGpHVVU+Q8CMDRRBSMKWvAdBcFcifX032qEKVf+EKtjeWq0x7SnMHlaorsAfbxOA5FdIf5j4ca181EUjMWwshv8Hfwq1GzFIioNsAoS+0yviofyMDgpXGRxFj0HlkyLuwrFrMe+hcHpT28G+VvviiDBIv0nqNZNbKVgTPxpts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org; spf=pass smtp.mailfrom=kleine-koenig.org; dkim=pass (2048-bit key) header.d=kleine-koenig.org header.i=@kleine-koenig.org header.b=gBD6wl8/; arc=none smtp.client-ip=162.55.41.232
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kleine-koenig.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1742323559;
	bh=SIYP7xVZV3lmgBMVLByXJICeBe4GP9DuYdjQ55XLqPA=;
	h=From:To:Cc:Subject:Date:From;
	b=gBD6wl8/L9k6WBaLBrJWyZ2squ8iBYPKQP0Ygpy6l3Hs9Ym+RHZtG9CpVzHQ97FhN
	 cdq+jLr5gb8oVdsUDCm9/Lqv7lvXuzu5tZ/byw/tT8u22TJZPnmaAKLibhnOHDl9OL
	 zbgs8kTxww7PPQKwPgKEnXWefFIsns4nKu4o0pe2Odh+qgjnbXKthHm+TWo1xhOEXh
	 noxSgxxBrMmuCQ4E2GJh41/fISWYyYFq9YvemE+IS3DcNI4gDBSA7Pg/nl2mF15vin
	 eRKRC1F2cgeTlG+5n6WmBjjcEuIoPT1P6suHQQHWFds8Py9G3TMMLuhs77tf14Z4KZ
	 sKnL0wRIPb+pQ==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id C1A50FC57DD; Tue, 18 Mar 2025 19:45:59 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: Improve gmac phy setup for QNAP-TS433
Date: Tue, 18 Mar 2025 19:45:49 +0100
Message-ID: <20250318184550.47642-2-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1452; i=uwe@kleine-koenig.org; h=from:subject; bh=SIYP7xVZV3lmgBMVLByXJICeBe4GP9DuYdjQ55XLqPA=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBn2b9eGjQYxA360+FfA+V4SDGvIdwQVyFQYDmUI RlbkAY3wP+JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ9m/XgAKCRCPgPtYfRL+ TgMfB/9UMa+vPPygl9iWkXvL5g8ULT0onyQk+mJ7inIUeSMhJs8sORjSJfzePW7viN/txkh8wkH uM7C+sR83bIUdoDdkUQTEMlS2+4eAoL6V2wMADbcrQFqUzE4iLzlJzj0EKd7CVYCp/XOBvWYqww IHLrAlQl4/xWW709iHH1QSGrOalcMZ4DaubVangBfQyVqVSE0zmeYU3ktKaMd1lsjy3WFHkdhl9 f35FUGov7FTWh2rogn/E6/EGXLwIucCM7N/ZFnhqP89OSESnd3HSoCE3hQpYQSNMUzs9Jpqklt4 3ijdgyKUpUxRa2F9OrxTYC7Qi1NlTzZfe8VHd65VnlxqA/vM
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

Instead of relying on the MDIO broadcast address (0) talk to the phy on
its configured address. Also add the phy reset gpio which was found by
Heiko inspecting the U-Boot vendor source code. He is still trying to
recover.

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
 .../arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
index 7bd32d230ad2..411f8ac7994b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -481,9 +481,14 @@ eeprom@56 {
 };
 
 &mdio0 {
-	rgmii_phy0: ethernet-phy@0 {
+	rgmii_phy0: ethernet-phy@3 {
+		/* Motorcomm YT8521 phy */
 		compatible = "ethernet-phy-ieee802.3-c22";
-		reg = <0x0>;
+		reg = <0x3>;
+		pinctrl-0 = <&eth_phy0_reset_pin>;
+		pinctrl-names = "default";
+		reset-assert-us = <10000>;
+		reset-gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_LOW>;
 	};
 };
 
@@ -556,6 +561,12 @@ &pcie3x2 {
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

base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
-- 
2.47.1


