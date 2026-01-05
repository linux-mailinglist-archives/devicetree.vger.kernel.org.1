Return-Path: <devicetree+bounces-251663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A148CF564B
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 20:34:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6E8FF3094F87
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 19:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 212F2299A8A;
	Mon,  5 Jan 2026 19:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOTeemel"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDA8213FEE;
	Mon,  5 Jan 2026 19:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767641577; cv=none; b=h+qQOHplM9AIwWKnGDiC0dthxNthL6GNiRHul4ZjNWMtq5UVzXj9mInbIpd910ZJ1PyqqvSifiBiruE0Z1HxIckvxXMnolQiW7XA0i6flbQt+xd3VS8o7GpGucB71onJze8lFlko/QS2Raf9j9vGH+LligbsPkwL8ikM85RXPHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767641577; c=relaxed/simple;
	bh=PR0XZGtoFMCwR/4sKrH7vwiahr0M5+UDd/92nG3vRBw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=defYLzl+AMiLyZPWD7eHhtsYa0guQ/azB2YJtbLOQ/RJR/tLkhCN6CBOZCJfKsUFqcQMS9Lg97hA5Ov2tj5eOjGsJsFHD0kXVyKPfRXRufDyYOOwVrDrIu3YP9j0bMMTx8xIflfPbk1wwUbXp0UQDiKIQOaSM+iWFIIzAFujNlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOTeemel; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F2D5C116D0;
	Mon,  5 Jan 2026 19:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767641576;
	bh=PR0XZGtoFMCwR/4sKrH7vwiahr0M5+UDd/92nG3vRBw=;
	h=From:To:Cc:Subject:Date:From;
	b=tOTeemel9LzhhV2R0rp4vgWHp2RszJDuT6i+62e73KKXmsRJBXZHpyCV2bM1SEUdg
	 NE22EJugKYqQqNYFRBcYSXOQZBMI55Z1V93vriFPFUP7+7b45PmPjG6yJUguyLJZJe
	 ExYY5K56RryzSXW0OqgSiOBRkPg0WLmzPKTcLBvMKABr0wyjAnZU2XRyBQsrVEj23a
	 ODcmLv5psMxHSZ4k10qHiApN4EBUU5oCyyERB1FBW6zTDNZzrW8IVQgU2xQ6ovi20H
	 zuLzwZ6ewSBrFl9fH9lzEDtgiF64nUoxtGKRin6KESo2GJ5bqHbs2ZgYxQKr5/Uohh
	 4FXgaMEFAw/1g==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: rk3399-roc-pc-plus: Add missing everest,es8388 supplies
Date: Mon,  5 Jan 2026 13:32:44 -0600
Message-ID: <20260105193245.3167500-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The regulator supplies for everest,es8388 audio codec are missing and
are required. Add them based on the schematics found here:

https://personalbsd.org/download/Documents/SCH/ROC-RK3399-PC-PLUS-V20-20210809.pdf

With this, "regulator-always-on" should no longer be necessary for LDO5.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
I don't have this h/w, so completely untested.
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi     | 1 -
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
index 8e3858cf988c..4f2831097624 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
@@ -116,6 +116,10 @@ es8388: es8388@11 {
 		reg = <0x11>;
 		clocks = <&cru SCLK_I2S_8CH_OUT>;
 		#sound-dai-cells = <0>;
+		AVDD-supply = <&vcca3v0_codec>;
+		DVDD-supply = <&vcca1v8_codec>;
+		HPVDD-supply = <&vcca3v0_codec>;
+		PVDD-supply = <&vcca1v8_codec>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index fc9279627ef6..ac62e8f5d9f5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -408,7 +408,6 @@ regulator-state-mem {
 
 			vcca3v0_codec: LDO_REG5 {
 				regulator-name = "vcca3v0_codec";
-				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <3000000>;
 				regulator-max-microvolt = <3000000>;
-- 
2.51.0


