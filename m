Return-Path: <devicetree+bounces-75225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A227906058
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 03:19:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 119F228334A
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 01:19:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A5F3C144;
	Thu, 13 Jun 2024 01:19:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A492C2D6
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 01:19:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718241547; cv=none; b=VrSYaE7iSkDO4P7Q+V6NCq/WpFdceyEgcfnuV6Dg7ncogqW1z86tLZMbRSE2QtIggZ2oP3Sr7GLu0y5JrKT837bbiBYxLioSkAMvsF1vIf2uIVDVwmRMMJTZ5IyGDNS8n5KnQfexNIrvqkfaRMkOsXiZsGTGq31hseWTW7WE05Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718241547; c=relaxed/simple;
	bh=PyKh5Azjb04een3xfW4nVh7iS+KxYDbCnJdHQVIIrm0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iNa2xyqORuTzJQZPMhefLCxayzmEAUQsDp5246xOppADW8hUh6xBdMMmMRc0FJpgZ3F4Fi1vNGZSv747UfzHwvMXgq6t1s0CUlmrDWB6hdYITps+iiAZ7lSfzaNXXZGg83ckKP9XMxr4lL/E/nNotuqLBwNgTlH9PnICVxnjFvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=hdr-nlb4-0bbd2e21834cb637.elb.us-east-2.amazonaws.com; spf=none smtp.mailfrom=hdr-nlb4-0bbd2e21834cb637.elb.us-east-2.amazonaws.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=hdr-nlb4-0bbd2e21834cb637.elb.us-east-2.amazonaws.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=hdr-nlb4-0bbd2e21834cb637.elb.us-east-2.amazonaws.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45D0wZvq000731;
	Thu, 13 Jun 2024 09:58:36 +0900
From: FUKAUMI Naoki <naoki@hdr-nlb4-0bbd2e21834cb637.elb.us-east-2.amazonaws.com>
To: kernel@esmil.dk
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        FUKAUMI Naoki <naoki@hdr-nlb4-0bbd2e21834cb637.elb.us-east-2.amazonaws.com>
Subject: [PATCH 2/2] riscv: dts: starfive: enable heartbeat LED for Milk-V Mars
Date: Thu, 13 Jun 2024 09:58:16 +0900
Message-ID: <20240613005817.1485-2-naoki@milkv.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240613005817.1485-1-naoki@milkv.com>
References: <20240613005817.1485-1-naoki@milkv.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Milk-V Mars has a green LED to show system load. This patch enables
a green LED as a heartbeat LED.

Signed-off-by: FUKAUMI Naoki <naoki@milkv.com>
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


