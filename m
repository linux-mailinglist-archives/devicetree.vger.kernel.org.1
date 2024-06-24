Return-Path: <devicetree+bounces-79253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1CF9147B4
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 12:42:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8AB5B1C20FEC
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 10:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 967F8136E2A;
	Mon, 24 Jun 2024 10:42:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28121369AF
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 10:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719225723; cv=none; b=qpqPDpqwFjlPIAxcSWzl3dFsQB2XDY4HVi1yXoASssOoXQm0DxxRKdKvW9nC4WJ1ME74zLp+jinXs7YWdfC5uS3nfQYDtDSctWlE3DKpPP+ockKlCuookNVa0UXsWP3rH0UosNM08g9tjhhmjpAOnnFZd+DgCVNXBPMy0m5K11U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719225723; c=relaxed/simple;
	bh=K5h1ll4g5EHbAF8MSV+3Z+Mts5ZdfjQbz+k9PT4nmK8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hln9oWc6sqUTMMI30CiAK/WfoidIs/FDhyDo9UTsTiFzU9+fYVFiJwjfuoAPL+fXJtVAgTeojLogwoyhGSbl5a3tezd4k/vsL7jBw7rjIdyivhewq8C2bQ33285eWEZUpmsk371i8qy5CJQqEl35e+/dIdZqrvtTP5nVwsRFgIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=milkv.io; spf=none smtp.mailfrom=milkv.io; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=milkv.io
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=milkv.io
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45OAdw5a009984;
	Mon, 24 Jun 2024 19:40:01 +0900
From: FUKAUMI Naoki <naoki@milkv.io>
To: kernel@esmil.dk
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        FUKAUMI Naoki <naoki@milkv.io>
Subject: [PATCH v2 4/4] riscv: dts: starfive: enable heartbeat LED for StarFive VisionFive 2
Date: Mon, 24 Jun 2024 19:39:25 +0900
Message-ID: <20240624103925.946-4-naoki@milkv.io>
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

StarFive VisionFive 2 has a green LED to show system load[1]. This
patch enables a green LED as a heartbeat LED.

Signed-off-by: FUKAUMI Naoki <naoki@milkv.io>

[1] https://github.com/starfive-tech/linux/blob/a61d1d826ca3060fd76ab31d37c691fc09b52fc0/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi#L79

Changes in v2:
- new
---
 .../dts/starfive/jh7110-starfive-visionfive-2.dtsi  | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
index 9d70f21c86fc..e5808268fe8c 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
@@ -5,12 +5,25 @@
  */
 
 /dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 #include "jh7110-common.dtsi"
 
 / {
 	aliases {
 		ethernet1 = &gmac1;
 	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-0 {
+			gpios = <&aongpio 3 GPIO_ACTIVE_HIGH>;
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_HEARTBEAT;
+			linux,default-trigger = "heartbeat";
+		};
+	};
 };
 
 &gmac1 {
-- 
2.43.0


