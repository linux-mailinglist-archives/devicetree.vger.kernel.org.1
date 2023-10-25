Return-Path: <devicetree+bounces-11742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABEC7D67D0
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:04:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5400628134E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:04:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC44F2377F;
	Wed, 25 Oct 2023 10:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3C212B80
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:04:29 +0000 (UTC)
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0079811F
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 03:04:26 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:7faa:e55:54a:cff])
	by xavier.telenet-ops.be with bizsmtp
	id 2A4Q2B00K5Uc89d01A4QUT; Wed, 25 Oct 2023 12:04:25 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qvakL-007TAQ-UC;
	Wed, 25 Oct 2023 12:04:24 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qvakS-00Bw98-Qg;
	Wed, 25 Oct 2023 12:04:24 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] ARM: dts: renesas: marzen: Rename keyboard nodes
Date: Wed, 25 Oct 2023 12:04:23 +0200
Message-Id: <eec1ccfb75c6215428609fdcaf3a37c75fe1fc87.1698228163.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

make dtbs_check:

    arch/arm/boot/dts/renesas/r8a7779-marzen.dtb: /: keyboard-gpio: {'compatible': ['gpio-keys-polled'], 'poll-interval': [[50]], 'pinctrl-0': [[29]], 'pinctrl-names': ['default'], 'key-3': {'gpios': [[28, 19, 1]], 'linux,code': [[4]], 'label': ['SW1-3'], 'debounce-interval': [[20]]}, 'key-4': {'gpios': [[28, 20, 1]], 'linux,code': [[5]], 'label': ['SW1-4'], 'debounce-interval': [[20]]}} is not of type 'array'
	    from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
    arch/arm/boot/dts/renesas/r8a7779-marzen.dtb: pinctrl@fffc0000: keyboard-gpio: {'pins': ['GP_0_19', 'GP_0_20'], 'bias-pull-up': True, 'phandle': [[29]]} is not of type 'array'
	    from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#

Node names ending in "-gpio" confuse the checker.
Fix this by renaming the keyboards to "keypad-0" and "keypad-1", as they
are not full keyboards.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
To be queued in renesas-devel for v6.8.

 arch/arm/boot/dts/renesas/r8a7779-marzen.dts | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/renesas/r8a7779-marzen.dts b/arch/arm/boot/dts/renesas/r8a7779-marzen.dts
index dfc6d63a21cd5474..c5c0bc70491ee903 100644
--- a/arch/arm/boot/dts/renesas/r8a7779-marzen.dts
+++ b/arch/arm/boot/dts/renesas/r8a7779-marzen.dts
@@ -52,10 +52,10 @@ vccq_sdhi0: regulator-vccq-sdhi0 {
 		states = <3300000 1>, <1800000 0>;
 	};
 
-	keyboard-irq {
+	keypad-0 {
 		compatible = "gpio-keys";
 
-		pinctrl-0 = <&keyboard_irq_pins>;
+		pinctrl-0 = <&keypad0_pins>;
 		pinctrl-names = "default";
 
 		interrupt-parent = <&gpio0>;
@@ -76,11 +76,11 @@ key-2 {
 		};
 	};
 
-	keyboard-gpio {
+	keypad-1 {
 		compatible = "gpio-keys-polled";
 		poll-interval = <50>;
 
-		pinctrl-0 = <&keyboard_gpio_pins>;
+		pinctrl-0 = <&keypad1_pins>;
 		pinctrl-names = "default";
 
 		key-3 {
@@ -207,7 +207,7 @@ endpoint {
 };
 
 &gpio0 {
-	keyboard-irq-hog {
+	keypad0-hog {
 		gpio-hog;
 		gpios = <17 GPIO_ACTIVE_LOW>, <18 GPIO_ACTIVE_LOW>;
 		input;
@@ -342,11 +342,11 @@ hspi0_pins: hspi0 {
 		function = "hspi0";
 	};
 
-	keyboard_irq_pins: keyboard-irq {
+	keypad0_pins: keypad-0 {
 		pins = "GP_0_17", "GP_0_18";
 		bias-pull-up;
 	};
-	keyboard_gpio_pins: keyboard-gpio {
+	keypad1_pins: keypad-1 {
 		pins = "GP_0_19", "GP_0_20";
 		bias-pull-up;
 	};
-- 
2.34.1


