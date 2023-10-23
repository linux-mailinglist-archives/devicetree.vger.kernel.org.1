Return-Path: <devicetree+bounces-10926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F7C7D387A
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 15:52:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0D849B20C80
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 13:52:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5213F1A297;
	Mon, 23 Oct 2023 13:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0756A23DE
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 13:52:28 +0000 (UTC)
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be [IPv6:2a02:1800:120:4::f00:13])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8E5610A
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 06:52:26 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:375d:2b56:c03f:d72d])
	by baptiste.telenet-ops.be with bizsmtp
	id 1RsQ2B0013CbNjd01RsQid; Mon, 23 Oct 2023 15:52:24 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1quvLt-007KH6-0r;
	Mon, 23 Oct 2023 15:52:23 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1quvLz-007oKt-TL;
	Mon, 23 Oct 2023 15:52:23 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 1/3] ARM: dts: renesas: rcar-gen2: Fix I2C bus demux node names
Date: Mon, 23 Oct 2023 15:52:15 +0200
Message-Id: <63e97cb50282b3255ba9654f539b9baa8c621b30.1698068647.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1698068646.git.geert+renesas@glider.be>
References: <cover.1698068646.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

make dtbs_check:

    $nodename:0: 'i2c-10' does not match '^(i2c-?)?mux'

Fix this by renaming all I2C bus demultiplexer node names to
"i2c-mux<N>".

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm/boot/dts/renesas/r8a7790-lager.dts   | 8 ++++----
 arch/arm/boot/dts/renesas/r8a7791-koelsch.dts | 6 +++---
 arch/arm/boot/dts/renesas/r8a7791-porter.dts  | 2 +-
 arch/arm/boot/dts/renesas/r8a7793-gose.dts    | 4 ++--
 arch/arm/boot/dts/renesas/r8a7794-alt.dts     | 4 ++--
 arch/arm/boot/dts/renesas/r8a7794-silk.dts    | 2 +-
 6 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boot/dts/renesas/r8a7790-lager.dts b/arch/arm/boot/dts/renesas/r8a7790-lager.dts
index 39084c76b8355d46..2567f5d297227ca9 100644
--- a/arch/arm/boot/dts/renesas/r8a7790-lager.dts
+++ b/arch/arm/boot/dts/renesas/r8a7790-lager.dts
@@ -303,7 +303,7 @@ gpioi2c2: i2c-9 {
 	 *
 	 * IIC0/I2C0 does not appear to support fallback to GPIO.
 	 */
-	i2cexio0: i2c-10 {
+	i2cexio0: i2c-mux1 {
 		compatible = "i2c-demux-pinctrl";
 		i2c-parent = <&iic0>, <&i2c0>;
 		i2c-bus-name = "i2c-exio0";
@@ -316,7 +316,7 @@ i2cexio0: i2c-10 {
 	 * This is similar to the arangement described for i2cexio0 (above)
 	 * with a fallback to GPIO also provided.
 	 */
-	i2cexio1: i2c-11 {
+	i2cexio1: i2c-mux2 {
 		compatible = "i2c-demux-pinctrl";
 		i2c-parent = <&iic1>, <&i2c1>, <&gpioi2c1>;
 		i2c-bus-name = "i2c-exio1";
@@ -328,7 +328,7 @@ i2cexio1: i2c-11 {
 	 * IIC2 and I2C2 may be switched using pinmux.
 	 * A fallback to GPIO is also provided.
 	 */
-	i2chdmi: i2c-12 {
+	i2chdmi: i2c-mux3 {
 		compatible = "i2c-demux-pinctrl";
 		i2c-parent = <&iic2>, <&i2c2>, <&gpioi2c2>;
 		i2c-bus-name = "i2c-hdmi";
@@ -417,7 +417,7 @@ adv7612_out: endpoint {
 	 * IIC3 and I2C3 may be switched using pinmux.
 	 * IIC3/I2C3 does not appear to support fallback to GPIO.
 	 */
-	i2cpwr: i2c-13 {
+	i2cpwr: i2c-mux4 {
 		compatible = "i2c-demux-pinctrl";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_irq_pins>;
diff --git a/arch/arm/boot/dts/renesas/r8a7791-koelsch.dts b/arch/arm/boot/dts/renesas/r8a7791-koelsch.dts
index d53fbdeacd332f5f..857d44571f9b9507 100644
--- a/arch/arm/boot/dts/renesas/r8a7791-koelsch.dts
+++ b/arch/arm/boot/dts/renesas/r8a7791-koelsch.dts
@@ -337,7 +337,7 @@ gpioi2c4: i2c-11 {
 	 * I2C1 is routed to EXIO connector B, pins 64 (SCL) + 66 (SDA).
 	 * A fallback to GPIO is provided.
 	 */
-	i2cexio1: i2c-12 {
+	i2cexio1: i2c-mux1 {
 		compatible = "i2c-demux-pinctrl";
 		i2c-parent = <&i2c1>, <&gpioi2c1>;
 		i2c-bus-name = "i2c-exio1";
@@ -348,7 +348,7 @@ i2cexio1: i2c-12 {
 	/*
 	 * A fallback to GPIO is provided for I2C2.
 	 */
-	i2chdmi: i2c-13 {
+	i2chdmi: i2c-mux2 {
 		compatible = "i2c-demux-pinctrl";
 		i2c-parent = <&i2c2>, <&gpioi2c2>;
 		i2c-bus-name = "i2c-hdmi";
@@ -443,7 +443,7 @@ eeprom@50 {
 	 * I2C4 is routed to EXIO connector E, pins 37 (SCL) + 39 (SDA).
 	 * A fallback to GPIO is provided.
 	 */
-	i2cexio4: i2c-14 {
+	i2cexio4: i2c-mux3 {
 		compatible = "i2c-demux-pinctrl";
 		i2c-parent = <&i2c4>, <&gpioi2c4>;
 		i2c-bus-name = "i2c-exio4";
diff --git a/arch/arm/boot/dts/renesas/r8a7791-porter.dts b/arch/arm/boot/dts/renesas/r8a7791-porter.dts
index a3cb5fbfb282b929..950b7a22dee5743e 100644
--- a/arch/arm/boot/dts/renesas/r8a7791-porter.dts
+++ b/arch/arm/boot/dts/renesas/r8a7791-porter.dts
@@ -148,7 +148,7 @@ gpioi2c2: i2c-9 {
 	/*
 	 * A fallback to GPIO is provided for I2C2.
 	 */
-	i2chdmi: i2c-10 {
+	i2chdmi: i2c-mux1 {
 		compatible = "i2c-demux-pinctrl";
 		i2c-parent = <&i2c2>, <&gpioi2c2>;
 		i2c-bus-name = "i2c-hdmi";
diff --git a/arch/arm/boot/dts/renesas/r8a7793-gose.dts b/arch/arm/boot/dts/renesas/r8a7793-gose.dts
index 84794358157eac29..af7a8019b4b127f3 100644
--- a/arch/arm/boot/dts/renesas/r8a7793-gose.dts
+++ b/arch/arm/boot/dts/renesas/r8a7793-gose.dts
@@ -321,7 +321,7 @@ gpioi2c4: i2c-10 {
 	/*
 	 * A fallback to GPIO is provided for I2C2.
 	 */
-	i2chdmi: i2c-11 {
+	i2chdmi: i2c-mux1 {
 		compatible = "i2c-demux-pinctrl";
 		i2c-parent = <&i2c2>, <&gpioi2c2>;
 		i2c-bus-name = "i2c-hdmi";
@@ -427,7 +427,7 @@ eeprom@50 {
 	 * I2C4 is routed to EXIO connector E, pins 37 (SCL) + 39 (SDA).
 	 * A fallback to GPIO is provided.
 	 */
-	i2cexio4: i2c-12 {
+	i2cexio4: i2c-mux2 {
 		compatible = "i2c-demux-pinctrl";
 		i2c-parent = <&i2c4>, <&gpioi2c4>;
 		i2c-bus-name = "i2c-exio4";
diff --git a/arch/arm/boot/dts/renesas/r8a7794-alt.dts b/arch/arm/boot/dts/renesas/r8a7794-alt.dts
index 2d60bcc2f2e7878e..7fcb58cae4b481e0 100644
--- a/arch/arm/boot/dts/renesas/r8a7794-alt.dts
+++ b/arch/arm/boot/dts/renesas/r8a7794-alt.dts
@@ -192,7 +192,7 @@ gpioi2c4: i2c-10 {
 	/*
 	 * A fallback to GPIO is provided for I2C1.
 	 */
-	i2chdmi: i2c-11 {
+	i2chdmi: i2c-mux1 {
 		compatible = "i2c-demux-pinctrl";
 		i2c-parent = <&i2c1>, <&gpioi2c1>;
 		i2c-bus-name = "i2c-hdmi";
@@ -222,7 +222,7 @@ eeprom@50 {
 	 * I2C4 is routed to EXIO connector B, pins 73 (SCL) + 74 (SDA).
 	 * A fallback to GPIO is provided.
 	 */
-	i2cexio4: i2c-14 {
+	i2cexio4: i2c-mux2 {
 		compatible = "i2c-demux-pinctrl";
 		i2c-parent = <&i2c4>, <&gpioi2c4>;
 		i2c-bus-name = "i2c-exio4";
diff --git a/arch/arm/boot/dts/renesas/r8a7794-silk.dts b/arch/arm/boot/dts/renesas/r8a7794-silk.dts
index 3ba96e7c7a1dd85a..e1110f24f97bdf94 100644
--- a/arch/arm/boot/dts/renesas/r8a7794-silk.dts
+++ b/arch/arm/boot/dts/renesas/r8a7794-silk.dts
@@ -225,7 +225,7 @@ gpioi2c1: i2c-9 {
 	/*
 	 * A fallback to GPIO is provided for I2C1.
 	 */
-	i2chdmi: i2c-10 {
+	i2chdmi: i2c-mux1 {
 		compatible = "i2c-demux-pinctrl";
 		i2c-parent = <&i2c1>, <&gpioi2c1>;
 		i2c-bus-name = "i2c-hdmi";
-- 
2.34.1


