Return-Path: <devicetree+bounces-80757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3882B91A5C4
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 13:56:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DCB6C1F22AC7
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 11:56:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FC0914EC75;
	Thu, 27 Jun 2024 11:55:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BE7647A76
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 11:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719489356; cv=none; b=JQtF+mNRCPDEQkiZ0GAyyEwjYf1BpWJ3DnZLvn0niCUsqs6PSZCMdO80QD0857E5b6sgh0EdpQpvLdhNNIxHZ1PRRoluc0Nk62wmLg8tlLRJqmsPg0O2pvC9DYod597/g8l7nOlGcEvRXO9EJD6bo5z3WWeEE8JiZHeFFvgjJ2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719489356; c=relaxed/simple;
	bh=TG0JYKCl8JWPg0ijxiG6vhFzPOE/uS/fYb7UIc3vVGI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=poTtMwbFlU44XV8ME5MM7XCsR/Buh9aJYMxZ8KYWFSak7Eu8IHzfC+3ilm6pTPOwoHBT1eLQgPB4JUr4CsUt5e7TYhtMu0tSzEVW94J6c84fl9l2roT/88r39QjXqUlvCevEY7Io6KyzTU0OAmbdTbeAp/9bYWB4K/dJDsH0gTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=milkv.io; spf=none smtp.mailfrom=milkv.io; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=milkv.io
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=milkv.io
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45RBr0rb021179;
	Thu, 27 Jun 2024 20:53:04 +0900
From: FUKAUMI Naoki <naoki@milkv.io>
To: kernel@esmil.dk
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        FUKAUMI Naoki <naoki@milkv.io>
Subject: [PATCH v3 3/4] riscv: dts: starfive: enable heartbeat LED for Pine64 Star64
Date: Thu, 27 Jun 2024 20:52:35 +0900
Message-ID: <20240627115236.618-3-naoki@milkv.io>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240627115236.618-1-naoki@milkv.io>
References: <20240627115236.618-1-naoki@milkv.io>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Pine64 Star64 has a blue LED to show system load[1]. This patch
enables a blue LED as a heartbeat LED.

Signed-off-by: FUKAUMI Naoki <naoki@milkv.io>

[1] https://github.com/Fishwaldo/Star64_linux/blob/Star64_devel/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dtsi#L79

Changes in v3:
- add default-state = "on" to turn LED on at U-Boot (not enabled yet)
Changes in v2:
- new
---
 .../boot/dts/starfive/jh7110-pine64-star64.dts     | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts b/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts
index 2d41f18e0359..b9962b4e8eca 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts
+++ b/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts
@@ -4,6 +4,8 @@
  */
 
 /dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 #include "jh7110-common.dtsi"
 
 / {
@@ -12,6 +14,18 @@ / {
 	aliases {
 		ethernet1 = &gmac1;
 	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-0 {
+			gpios = <&aongpio 3 GPIO_ACTIVE_HIGH>;
+			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
+			function = LED_FUNCTION_HEARTBEAT;
+			linux,default-trigger = "heartbeat";
+		};
+	};
 };
 
 &gmac0 {
-- 
2.43.0


