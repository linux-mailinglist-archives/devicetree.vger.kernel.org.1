Return-Path: <devicetree+bounces-10927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E83F37D3879
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 15:52:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 246A41C20A08
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 13:52:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBDF01A586;
	Mon, 23 Oct 2023 13:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF581864E
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 13:52:28 +0000 (UTC)
Received: from michel.telenet-ops.be (michel.telenet-ops.be [IPv6:2a02:1800:110:4::f00:18])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C89BF101
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 06:52:26 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:375d:2b56:c03f:d72d])
	by michel.telenet-ops.be with bizsmtp
	id 1RsQ2B0053CbNjd06RsQQi; Mon, 23 Oct 2023 15:52:24 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1quvLt-007KHA-2F;
	Mon, 23 Oct 2023 15:52:24 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1quvLz-007oL1-Ux;
	Mon, 23 Oct 2023 15:52:23 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 3/3] arm64: dts: renesas: Add missing ADV751[13] power supply properties
Date: Mon, 23 Oct 2023 15:52:17 +0200
Message-Id: <4d58019b2f5f7ce026a5b671ac54aab79a58b278.1698068647.git.geert+renesas@glider.be>
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

    arch/arm64/boot/dts/renesas/r8a77990-ebisu.dtb: hdmi-encoder@39: 'avdd-supply' is a required property
	    from schema $id: http://devicetree.org/schemas/display/bridge/adi,adv7511.yaml#
    arch/arm64/boot/dts/renesas/r8a77990-ebisu.dtb: hdmi-encoder@39: 'dvdd-supply' is a required property
	    from schema $id: http://devicetree.org/schemas/display/bridge/adi,adv7511.yaml#
    arch/arm64/boot/dts/renesas/r8a77990-ebisu.dtb: hdmi-encoder@39: 'pvdd-supply' is a required property
	    from schema $id: http://devicetree.org/schemas/display/bridge/adi,adv7511.yaml#
    arch/arm64/boot/dts/renesas/r8a77990-ebisu.dtb: hdmi-encoder@39: 'dvdd-3v-supply' is a required property
	    from schema $id: http://devicetree.org/schemas/display/bridge/adi,adv7511.yaml#
    arch/arm64/boot/dts/renesas/r8a77990-ebisu.dtb: hdmi-encoder@39: 'bgvdd-supply' is a required property
	    from schema $id: http://devicetree.org/schemas/display/bridge/adi,adv7511.yaml#
    ...

Fix this by adding the missing power supply properties.
Add fixed regulators where needed.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm64/boot/dts/renesas/draak.dtsi         |  6 ++++++
 arch/arm64/boot/dts/renesas/ebisu.dtsi         |  6 ++++++
 arch/arm64/boot/dts/renesas/r8a77970-eagle.dts | 15 +++++++++++++++
 3 files changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/draak.dtsi b/arch/arm64/boot/dts/renesas/draak.dtsi
index 7af1bc4d36b4c2f1..8f659f747f02a7af 100644
--- a/arch/arm64/boot/dts/renesas/draak.dtsi
+++ b/arch/arm64/boot/dts/renesas/draak.dtsi
@@ -374,6 +374,12 @@ hdmi-encoder@39 {
 		interrupt-parent = <&gpio1>;
 		interrupts = <28 IRQ_TYPE_LEVEL_LOW>;
 
+		avdd-supply = <&reg_1p8v>;
+		dvdd-supply = <&reg_1p8v>;
+		pvdd-supply = <&reg_1p8v>;
+		dvdd-3v-supply = <&reg_3p3v>;
+		bgvdd-supply = <&reg_1p8v>;
+
 		adi,input-depth = <8>;
 		adi,input-colorspace = "rgb";
 		adi,input-clock = "1x";
diff --git a/arch/arm64/boot/dts/renesas/ebisu.dtsi b/arch/arm64/boot/dts/renesas/ebisu.dtsi
index a4ea04e6ab960293..7b0d9e3c323188d7 100644
--- a/arch/arm64/boot/dts/renesas/ebisu.dtsi
+++ b/arch/arm64/boot/dts/renesas/ebisu.dtsi
@@ -425,6 +425,12 @@ hdmi-encoder@39 {
 		interrupt-parent = <&gpio1>;
 		interrupts = <1 IRQ_TYPE_LEVEL_LOW>;
 
+		avdd-supply = <&reg_1p8v>;
+		dvdd-supply = <&reg_1p8v>;
+		pvdd-supply = <&reg_1p8v>;
+		dvdd-3v-supply = <&reg_3p3v>;
+		bgvdd-supply = <&reg_1p8v>;
+
 		adi,input-depth = <8>;
 		adi,input-colorspace = "rgb";
 		adi,input-clock = "1x";
diff --git a/arch/arm64/boot/dts/renesas/r8a77970-eagle.dts b/arch/arm64/boot/dts/renesas/r8a77970-eagle.dts
index a86e64b96adf4c01..8a03f21671bff6d6 100644
--- a/arch/arm64/boot/dts/renesas/r8a77970-eagle.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77970-eagle.dts
@@ -30,6 +30,15 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	d1p8: regulator-fixed {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-1.8V";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
 	d3p3: regulator-fixed {
 		compatible = "regulator-fixed";
 		regulator-name = "fixed-3.3V";
@@ -204,6 +213,12 @@ hdmi@39 {
 		interrupt-parent = <&gpio1>;
 		interrupts = <20 IRQ_TYPE_LEVEL_LOW>;
 
+		avdd-supply = <&d1p8>;
+		dvdd-supply = <&d1p8>;
+		pvdd-supply = <&d1p8>;
+		dvdd-3v-supply = <&d3p3>;
+		bgvdd-supply = <&d1p8>;
+
 		adi,input-depth = <8>;
 		adi,input-colorspace = "rgb";
 		adi,input-clock = "1x";
-- 
2.34.1


