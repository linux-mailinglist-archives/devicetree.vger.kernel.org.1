Return-Path: <devicetree+bounces-79255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6F09147B7
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 12:42:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F2222B23E3A
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 10:42:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22FE713775A;
	Mon, 24 Jun 2024 10:42:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91D051369A3
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 10:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719225732; cv=none; b=dQXxSVRfePzv/1hehQ4zW6ERddd+lrquOrqYqUKhyEVXgXCiFrZlWyW9kh+1gts3915lrlSX3ttQjpqYY3J0IhFmLabF3ki1UrEbJbZNZ5MeLS1DMjyuCxJUTH8wsvdbradUsjDIB/sT16ydVyTX5SI9UQ+xaVRIFjsjOJdSa2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719225732; c=relaxed/simple;
	bh=x6znbkpxOZGb7QE4+uHMmLy4rj+QyMLO0OUF3f74Zq0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ORT1ZpsTrU07IKX9Le6i/XBQxvSk+7qkVSu4UHnRb3s5BXj2HruDUm3KuIsQT9H2cA2ELlW1FOS1Fue2gmcY2Q8ic1Q9j3DAdGrpYfWddtnJ/ZvRpYQDU08j9BNMqtfRycje0f04ZZBZW1J101OiQkXgJFxs6l/4xlilGkeBiDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=milkv.io; spf=none smtp.mailfrom=milkv.io; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=milkv.io
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=milkv.io
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45OAdw5Z009984;
	Mon, 24 Jun 2024 19:40:01 +0900
From: FUKAUMI Naoki <naoki@milkv.io>
To: kernel@esmil.dk
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        FUKAUMI Naoki <naoki@milkv.io>
Subject: [PATCH v2 3/4] riscv: dts: starfive: enable heartbeat LED for Pine64 Star64
Date: Mon, 24 Jun 2024 19:39:24 +0900
Message-ID: <20240624103925.946-3-naoki@milkv.io>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240624103925.946-1-naoki@milkv.io>
References: <20240624103925.946-1-naoki@milkv.io>
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

Changes in v2:
- new
---
 .../boot/dts/starfive/jh7110-pine64-star64.dts      | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts b/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts
index 2d41f18e0359..6749e9b51593 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts
+++ b/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts
@@ -4,6 +4,8 @@
  */
 
 /dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 #include "jh7110-common.dtsi"
 
 / {
@@ -12,6 +14,17 @@ / {
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
+			function = LED_FUNCTION_HEARTBEAT;
+			linux,default-trigger = "heartbeat";
+		};
+	};
 };
 
 &gmac0 {
-- 
2.43.0


