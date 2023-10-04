Return-Path: <devicetree+bounces-5694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD1E7B7851
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 09:03:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 037151F21D9B
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 07:03:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2B3863DC;
	Wed,  4 Oct 2023 07:03:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C5163C0
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 07:03:25 +0000 (UTC)
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF417AF;
	Wed,  4 Oct 2023 00:03:23 -0700 (PDT)
Received: from p200300ccff1732001a3da2fffebfd33a.dip0.t-ipconnect.de ([2003:cc:ff17:3200:1a3d:a2ff:febf:d33a] helo=aktux)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1qnvuf-004VBJ-Ti; Wed, 04 Oct 2023 09:03:17 +0200
Received: from andi by aktux with local (Exim 4.96)
	(envelope-from <andreas@kemnade.info>)
	id 1qnvuf-00A6cw-0c;
	Wed, 04 Oct 2023 09:03:17 +0200
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
Subject: [PATCH v2] ARM: dts: omap4-embt2ws: Add Bluetooth
Date: Wed,  4 Oct 2023 09:03:09 +0200
Message-Id: <20231004070309.2408745-1-andreas@kemnade.info>
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

Since the required clock is now available, add bluetooth.

Note: Firmware (bts file) from device vendor reroutes tx for some time
during initialisation and later put it back, producing timeouts in
bluetooth initialisation but ignoring that command leads to proper
initialisation.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
Depends on: https://lore.kernel.org/linux-omap/20230916100515.1650336-6-andreas@kemnade.info/T/#u

Changes in V2:
- more standard node name, removing unneeded label

 arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts b/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
index 46a80eacf771..6a790124bcf5 100644
--- a/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
+++ b/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
@@ -447,10 +447,12 @@ &uart2 {
 	interrupts-extended = <&wakeupgen GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH
 			       &omap4_pmx_core OMAP4_UART2_RX>;
 
-	/*
-	 * BT + GPS in WL1283 in WG7500 requiring CLK32KAUDIO of pmic
-	 * which does not have a driver
-	 */
+	bluetooth-gnss {
+		compatible = "ti,wl1283-st";
+		enable-gpios = <&gpio1 25 GPIO_ACTIVE_HIGH>;	/* GPIO_25 */
+		clocks = <&twl 1>;
+		clock-names = "ext_clock";
+	};
 };
 
 &uart3 {
-- 
2.39.2


