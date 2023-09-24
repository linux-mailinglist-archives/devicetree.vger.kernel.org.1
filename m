Return-Path: <devicetree+bounces-2868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BC87ACC92
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 00:27:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id DB59F1F2365F
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 22:27:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2385DFC0F;
	Sun, 24 Sep 2023 22:27:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48351FC0C
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 22:27:27 +0000 (UTC)
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 581C7EE;
	Sun, 24 Sep 2023 15:27:26 -0700 (PDT)
Received: from p200300ccff1ebc001a3da2fffebfd33a.dip0.t-ipconnect.de ([2003:cc:ff1e:bc00:1a3d:a2ff:febf:d33a] helo=aktux)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1qkXZQ-00494i-GT; Mon, 25 Sep 2023 00:27:20 +0200
Received: from andi by aktux with local (Exim 4.96)
	(envelope-from <andreas@kemnade.info>)
	id 1qkXZP-008YOu-2d;
	Mon, 25 Sep 2023 00:27:19 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: bcousson@baylibre.com,
	tony@atomide.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Andreas Kemnade <andreas@kemnade.info>
Subject: [PATCH] ARM: dts: omap: omap4-embt2ws: Let IMU driver handle Magnetometer internally
Date: Mon, 25 Sep 2023 00:27:18 +0200
Message-Id: <20230924222718.2038849-1-andreas@kemnade.info>
X-Mailer: git-send-email 2.39.2
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

Possibility to use the i2c gate is only for compatibility reasons,
so avoid messing around with additional i2c busses.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts b/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
index 0e6b050d588ac..dd5f5d66e16a3 100644
--- a/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
+++ b/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
@@ -327,15 +327,6 @@ mpu9150h: imu@68 {
 		pinctrl-0 = <&mpu9150h_pins>;
 		interrupt-parent = <&gpio2>;
 		interrupt = <19 IRQ_TYPE_LEVEL_HIGH>;
-
-		i2c-gate {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			magnetometer@c {
-				compatible = "asahi-kasei,ak8975";
-				reg = <0x0c>;
-			};
-		};
 	};
 };
 
-- 
2.39.2


