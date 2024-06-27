Return-Path: <devicetree+bounces-80755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F2991A5C2
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 13:56:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6AD18289D16
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 11:55:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FCC74500C;
	Thu, 27 Jun 2024 11:55:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A8AB47A76
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 11:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719489354; cv=none; b=TUx3YmMoKkNLB3Cl3SFH57BH/92mCfwDJkVvfoGZpegUCa9/82Mg09sHSjCEsWBZoNS3jhL/MwFbJBTDIkIDtwNaqK3sbCkwFflzzYIL9DzINuIirlNwYWk8ehjnQe4i2mTUELxHwc8JbhujVIb+O9hmcaqrybi+mpamjzEriZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719489354; c=relaxed/simple;
	bh=61ANl1SQnblSbMfsQC7WZw2rzpbcbUSk90VzdG9OROk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=icFoWY2+hvst8D4Se5hIFvR16MB5xbnBax6NzJgUE0RhJolklVoOUh59e7eUPQh1XX+vCPBHSLwdD1rF0JbsPYaN5k7dsseoLIXfSOV9mmSvT4JPahmsf252/KDl2PROxLKoRgftmrKxePnPBBR9Sr/2tk/WuyBdpdwWYpCydFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=milkv.io; spf=none smtp.mailfrom=milkv.io; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=milkv.io
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=milkv.io
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45RBr0ra021179;
	Thu, 27 Jun 2024 20:53:04 +0900
From: FUKAUMI Naoki <naoki@milkv.io>
To: kernel@esmil.dk
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        FUKAUMI Naoki <naoki@milkv.io>
Subject: [PATCH v3 2/4] riscv: dts: starfive: enable heartbeat LED for Milk-V Mars
Date: Thu, 27 Jun 2024 20:52:34 +0900
Message-ID: <20240627115236.618-2-naoki@milkv.io>
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

Milk-V Mars has a green LED to show system load[1]. This patch enables
a green LED as a heartbeat LED.

Signed-off-by: FUKAUMI Naoki <naoki@milkv.io>

[1] https://github.com/milkv-mars/mars-buildroot-sdk/blob/dev/linux/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dtsi#L79

Changes in v3:
- add default-state = "on" to turn LED on at U-Boot (not enabled yet)
Changes in v2:
- reorder properties in led-0
---
 arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
index 5cb9e99e1dac..5cae7a5d2f86 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
+++ b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
@@ -4,11 +4,25 @@
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
+			default-state = "on";
+			function = LED_FUNCTION_HEARTBEAT;
+			linux,default-trigger = "heartbeat";
+		};
+	};
 };
 
 &gmac0 {
-- 
2.43.0


