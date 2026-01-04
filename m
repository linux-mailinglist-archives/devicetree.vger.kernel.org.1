Return-Path: <devicetree+bounces-251309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 329FECF13DE
	for <lists+devicetree@lfdr.de>; Sun, 04 Jan 2026 20:15:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7EA8B3005FD9
	for <lists+devicetree@lfdr.de>; Sun,  4 Jan 2026 19:15:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C638E2E6CA6;
	Sun,  4 Jan 2026 19:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="QK2PW0Sf"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1818319A2A3;
	Sun,  4 Jan 2026 19:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767554112; cv=none; b=SI1FppigIMViq0X9KjEkGXIKL4znRPFFI2qemxWGZNL+jCkFs3QnmF+duBqYIN2duyGJioorejBPDfwqY27yC3D9OWJdSzE4AQHHdJ8fGOHkvfpwJhcqhJHnvvoSLfuun4BPRl9cwdrTN2QpIHvfpndisIzOp9UEuxIGB0v8ql0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767554112; c=relaxed/simple;
	bh=En3XVu6gdM49sFTNSWGCyipNBQVyg8ZT8P0Sqx0lpag=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Tmt34iIBbZgjjwOmWD1M9/rC+Epwht1pnFP2QKloNV1gN8i3F7QpOwOELh7Xpc8sOoGiDCCSPACPEl1kLmgjV0gTvKmpAxh5ZtJhluvdPxYs7u15l7NsyHoni+fGFO6TeAM+GtqgDYGsO8eeG/l3m4uo7qxFculpmzWlbVXDKzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=QK2PW0Sf; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=lUuUqLfpAlmABnYAK2UNaASJ2eI1qRm0coIFUL1U6Yk=; b=QK2PW0SfBWpNRaJHKZfD3qKV/k
	6L1Jvy0BUw9t4pOUmspyT8qOOPIhf20WFQ/Ot4uB8p/+jXC5Las7ORDD21xqk8v751O2NbHr/QBqW
	nz0w7OQlXjDqoM+ljNZpDcB+JVQalfq837xS1XDzso9G5emQUjOdKkVZqKIsbW8/mwuXVxsQbRw3s
	+V3Vu8gOviKW1i41w89gcR33PkG0sq5KLmx7MlVRpC9xV3ivYD///Yke55Pfdh0VLrgB7fLDPNyMD
	S4r/UPRezw3CiGmv9TME+hZa5Rvq5zZhIv1k6ytUXEqyI+Sh4LWTYn5IrhYFfT5a2VwfTSMYpEWtR
	aw6ibmmw==;
Received: from i53875ac4.versanet.de ([83.135.90.196] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vcTZB-0012Mf-5q; Sun, 04 Jan 2026 20:15:05 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	uwe@kleine-koenig.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] arm64: dts: rockchip: Move copy-key to TSx33 board files
Date: Sun,  4 Jan 2026 20:14:46 +0100
Message-ID: <20260104191448.2693309-4-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260104191448.2693309-1-heiko@sntech.de>
References: <20260104191448.2693309-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The copy-key is not present on all device variants, so move it to
the individual boards that have this key.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts233.dts  | 11 +++++++++++
 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts  | 11 +++++++++++
 arch/arm64/boot/dts/rockchip/rk3568-qnap-tsx33.dtsi | 10 ++--------
 3 files changed, 24 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts233.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts233.dts
index e76502180788..52b741376ef5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts233.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts233.dts
@@ -51,6 +51,17 @@ eeprom@56 {
 	};
 };
 
+&keys {
+		pinctrl-names = "default";
+		pinctrl-0 = <&copy_button_pin>, <&reset_button_pin>;
+
+		key-copy {
+			label = "copy";
+			gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_COPY>;
+		};
+};
+
 &leds {
 	led-1 {
 		color = <LED_COLOR_ID_GREEN>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
index 708e7f1f8d0d..7d2aedfe616d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -61,6 +61,17 @@ eeprom@56 {
 	};
 };
 
+&keys {
+		pinctrl-names = "default";
+		pinctrl-0 = <&copy_button_pin>, <&reset_button_pin>;
+
+		key-copy {
+			label = "copy";
+			gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_COPY>;
+		};
+};
+
 &leds {
 	led-1 {
 		color = <LED_COLOR_ID_GREEN>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-tsx33.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-qnap-tsx33.dtsi
index 482d8584ec88..cca7b7d0685f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-tsx33.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-tsx33.dtsi
@@ -12,17 +12,11 @@ chosen {
 		stdout-path = "serial2:115200n8";
 	};
 
-	keys {
+	keys: keys {
 		compatible = "gpio-keys";
-		pinctrl-0 = <&copy_button_pin>, <&reset_button_pin>;
+		pinctrl-0 = <&reset_button_pin>;
 		pinctrl-names = "default";
 
-		key-copy {
-			label = "copy";
-			gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_COPY>;
-		};
-
 		key-reset {
 			label = "reset";
 			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_LOW>;
-- 
2.47.2


