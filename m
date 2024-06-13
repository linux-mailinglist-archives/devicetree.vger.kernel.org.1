Return-Path: <devicetree+bounces-75243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4A2906223
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 04:49:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 89571B21C84
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 02:49:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3F6512C466;
	Thu, 13 Jun 2024 02:49:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11AEE33062
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 02:49:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718246985; cv=none; b=JD3sZiAbRB3RoTF2iKyXKLyIvG49TKk7rObSON083z+5fukoFcr39W7fElqNP8wSaNpNToXiTOEupCr+xWbWA68OpDU0PZTa2caY+og0nuRXl8O/E74KauHwpnYzX2wE0gu6qZ+2IA4H+k38RIjsNKUgOjajF+vppzr72QtMl1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718246985; c=relaxed/simple;
	bh=Hc283nIw5wAu+AHaKP5vQDPcmxgPA0tgWOImZWbryN4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hXud+v5DXCwuBzn9ZQ5/vC5Z0O+NqBJ+BLoKxUiUqiNl7LlibLENfdUATZXGkXSHdk+lO0e3ujjaph14LBdoyIIkQCCidFKTS4zh/VXp86VI0qIN7EAPYM5Clxd5pWxnCHKFdHKFvXyKWszE+e1XXvTrwN1ZE2klIoy6QRygVWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=milkv.io; spf=none smtp.mailfrom=milkv.io; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=milkv.io
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=milkv.io
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45D2n0mp000957;
	Thu, 13 Jun 2024 11:49:01 +0900
From: FUKAUMI Naoki <naoki@milkv.io>
To: kernel@esmil.dk
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        FUKAUMI Naoki <naoki@milkv.io>
Subject: [PATCH 2/2] riscv: dts: starfive: enable heartbeat LED for Milk-V Mars
Date: Thu, 13 Jun 2024 11:48:26 +0900
Message-ID: <20240613024827.36512-2-naoki@milkv.io>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240613024827.36512-1-naoki@milkv.io>
References: <20240613024827.36512-1-naoki@milkv.io>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Milk-V Mars has a green LED to show system load. This patch enables
a green LED as a heartbeat LED.

Signed-off-by: FUKAUMI Naoki <naoki@milkv.io>
---
 arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
index fa0eac78e0ba..4f4bbf64dbe4 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
+++ b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
@@ -4,11 +4,24 @@
  */
 
 /dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 #include "jh7110-common.dtsi"
 
 / {
 	model = "Milk-V Mars";
 	compatible = "milkv,mars", "starfive,jh7110";
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-0 {
+			gpios = <&aongpio 3 GPIO_ACTIVE_HIGH>;
+			color = <LED_COLOR_ID_GREEN>;
+			linux,default-trigger = "heartbeat";
+			function = LED_FUNCTION_HEARTBEAT;
+		};
+	};
 };
 
 &gmac0 {
-- 
2.43.0


