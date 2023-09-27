Return-Path: <devicetree+bounces-3951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAAD7B0B17
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 19:33:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 8471C1C2083E
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:33:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30A8D4B22E;
	Wed, 27 Sep 2023 17:33:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A9430F91
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 17:33:03 +0000 (UTC)
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76A79E5;
	Wed, 27 Sep 2023 10:32:59 -0700 (PDT)
Received: from p200300ccff4287001a3da2fffebfd33a.dip0.t-ipconnect.de ([2003:cc:ff42:8700:1a3d:a2ff:febf:d33a] helo=aktux)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1qlYP2-004Ey1-FE; Wed, 27 Sep 2023 19:32:48 +0200
Received: from andi by aktux with local (Exim 4.96)
	(envelope-from <andreas@kemnade.info>)
	id 1qlYP1-0091bQ-2R;
	Wed, 27 Sep 2023 19:32:47 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: jic23@kernel.org,
	lars@metafoo.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	bcousson@baylibre.com,
	tony@atomide.com,
	andreas@kemnade.info,
	chenhuiz@axis.com,
	jean-baptiste.maneyrol@tdk.com,
	andy.shevchenko@gmail.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org
Subject: [PATCH v3 3/3] ARM: dts: omap: omap4-embt2ws: Add IMU at control unit
Date: Wed, 27 Sep 2023 19:32:45 +0200
Message-Id: <20230927173245.2151083-4-andreas@kemnade.info>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230927173245.2151083-1-andreas@kemnade.info>
References: <20230927173245.2151083-1-andreas@kemnade.info>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add also the level-shifter flag to avoid probe failure in magnetometer
probe.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 .../boot/dts/ti/omap/omap4-epson-embt2ws.dts    | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts b/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
index cd4f858d846ab..284a438fc5dcf 100644
--- a/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
+++ b/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
@@ -391,7 +391,16 @@ tlv320aic3x: codec@18 {
 		reset-gpios = <&gpio2 23 GPIO_ACTIVE_LOW>;
 	};
 
-	/* TODO: mpu9150 at control unit, seems to require quirks */
+	mpu9150: imu@68 {
+		compatible = "invensense,mpu9150";
+		reg = <0x68>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&mpu9150_pins>;
+		interrupt-parent = <&gpio2>;
+		interrupt = <7 IRQ_TYPE_LEVEL_HIGH>;
+		invensense,level-shifter;
+	};
 };
 
 &keypad {
@@ -530,6 +539,12 @@ OMAP4_IOPAD(0x0fc, PIN_INPUT | MUX_MODE0)       /* abe_mcbsp2_fsx */
 		>;
 	};
 
+	mpu9150_pins: pinmux-mpu9150-pins {
+		pinctrl-single,pins = <
+			OMAP4_IOPAD(0x5e, PIN_INPUT_PULLUP | MUX_MODE3)
+		>;
+	};
+
 	mpu9150h_pins: pinmux-mpu9150h-pins {
 		pinctrl-single,pins = <
 			OMAP4_IOPAD(0x76, PIN_INPUT_PULLUP | MUX_MODE3)
-- 
2.39.2


