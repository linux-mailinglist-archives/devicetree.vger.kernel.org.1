Return-Path: <devicetree+bounces-250866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 244C4CEC9E1
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 22:58:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8659A3009F88
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 21:58:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B526C30EF92;
	Wed, 31 Dec 2025 21:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="KWC9CLLG";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="KWC9CLLG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2583D30EF7B
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 21:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767218301; cv=none; b=WJwVNdGXiRUXbQQOJQCpg4Drf4S5qPLHIl6HerCw8K9qwRuvogQeU6mIxR9An6ApNs4jj59UVfXtV6jrSIiIbW7Kw1eEjztSmilgZ9HM68TP2geBVkMlaRu+NIYd5c5N4zdnrMyAe4MC3V0drMynyZE/5vp+5kPoE7yfvGoqk0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767218301; c=relaxed/simple;
	bh=JdtssCsbX+e9SzJFbpzCrqk6Y3vDBQbt6w66F2zP+dI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=J4MY74ZMYA7FrWyfOECpKK4J5J3NGzX+WR48pnRIY6pu70Iv7Qlx82Rui9wGfT08oQiHlTVCCjB1Rf4wKx9ppgeZQSgrnUn31hwNSEUM1S1AEIhTeQmXGUHjdq1QTKHEiD9p/5h6Tq9X8udeIgL8Ip63qgbOV2Q4EYduRoVApdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=KWC9CLLG; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=KWC9CLLG; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1767218298; bh=JdtssCsbX+e9SzJFbpzCrqk6Y3vDBQbt6w66F2zP+dI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KWC9CLLGTQ3bnNw/rXqeim+a9aTul2u4nJpsNtSsINzn+FM/iOk4sA5VwFNKqo2eE
	 TQbBjNqSP/fAR7/23jWzDdNCYicYrECwroJoQm47vNQUUrZVxa/rBZqk3ok6k5rTa6
	 THx2SIjd0TRvDfF2QQaeYDx02uVbVoGBPFuTmtr9AUYUT/P1Yy/p3UYXAbKcKFeJVF
	 E0prM6tUcEJ5VSu7cxF2yz5VlQEsCz1OBa6YbnemJaMYo+LOHEGCZU68t5aBunPQUf
	 wNbKLiuVSmRD2ZFcGhsbqfUHS8srbnw8YRhlaf4cozQ5t0L3ujtGoZe5xteQ4NA19n
	 KuDRFgLJy04/g==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id 8B3C43E99A3;
	Wed, 31 Dec 2025 21:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1767218298; bh=JdtssCsbX+e9SzJFbpzCrqk6Y3vDBQbt6w66F2zP+dI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KWC9CLLGTQ3bnNw/rXqeim+a9aTul2u4nJpsNtSsINzn+FM/iOk4sA5VwFNKqo2eE
	 TQbBjNqSP/fAR7/23jWzDdNCYicYrECwroJoQm47vNQUUrZVxa/rBZqk3ok6k5rTa6
	 THx2SIjd0TRvDfF2QQaeYDx02uVbVoGBPFuTmtr9AUYUT/P1Yy/p3UYXAbKcKFeJVF
	 E0prM6tUcEJ5VSu7cxF2yz5VlQEsCz1OBa6YbnemJaMYo+LOHEGCZU68t5aBunPQUf
	 wNbKLiuVSmRD2ZFcGhsbqfUHS8srbnw8YRhlaf4cozQ5t0L3ujtGoZe5xteQ4NA19n
	 KuDRFgLJy04/g==
Received: from mail.mleia.com (91-159-24-186.elisa-laajakaista.fi [91.159.24.186])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mleia.com (Postfix) with ESMTPSA id ECEF63E99A5;
	Wed, 31 Dec 2025 21:58:17 +0000 (UTC)
From: Vladimir Zapolskiy <vz@mleia.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/5] ARM: dts: lpc32xx: Use syscon for system control block
Date: Wed, 31 Dec 2025 23:57:51 +0200
Message-ID: <20251231215754.2222308-3-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251231215754.2222308-1-vz@mleia.com>
References: <20251231215754.2222308-1-vz@mleia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20251231_215818_586730_2412C6F7 
X-CRM114-Status: GOOD (  13.14  )

From: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>

The clock controller is a part of NXP LPC32xx system control block (SCB),
and SCB provides a number of controllers apart of the clock controller.

[vzapolskiy]:
1. kept a simple comment,
2. renamed SoC specific compatible to 'nxp,lpc3220-scb' due to the SoC UM,
3. changed size in 'ranges', since it should cover more SCB functions,
4. updated the commit message.

Link to the original change:
* https://lore.kernel.org/linux-arm-kernel/20240627150046.258795-5-piotr.wojtaszczyk@timesys.com/

Signed-off-by: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
---
 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
index 2236901a0031..89e621dfb950 100644
--- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
@@ -314,17 +314,17 @@ fab {
 			ranges = <0x20000000 0x20000000 0x30000000>;
 
 			/* System Control Block */
-			scb {
-				compatible = "simple-bus";
-				ranges = <0x0 0x40004000 0x00001000>;
+			syscon@40004000 {
+				compatible = "nxp,lpc3220-scb", "syscon", "simple-mfd";
+				reg = <0x40004000 0x1000>;
 				#address-cells = <1>;
 				#size-cells = <1>;
+				ranges = <0 0x40004000 0x1000>;
 
 				clk: clock-controller@0 {
 					compatible = "nxp,lpc3220-clk";
 					reg = <0x00 0x114>;
 					#clock-cells = <1>;
-
 					clocks = <&xtal_32k>, <&xtal>;
 					clock-names = "xtal_32k", "xtal";
 				};
-- 
2.43.0


