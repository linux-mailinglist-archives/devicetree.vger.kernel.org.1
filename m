Return-Path: <devicetree+bounces-6658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9080B7BC5A3
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 09:37:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B3CE21C20948
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 07:37:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E92A1170D;
	Sat,  7 Oct 2023 07:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1542BE54A
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 07:37:42 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 89B13B9;
	Sat,  7 Oct 2023 00:37:41 -0700 (PDT)
Received: from hillo.muru.com (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTP id 8FB07809E;
	Sat,  7 Oct 2023 07:37:40 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Cc: =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
	devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: omap4-embt2ws: Fix pinctrl single node name warning
Date: Sat,  7 Oct 2023 10:37:33 +0300
Message-ID: <20231007073733.45087-1-tony@atomide.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Looks like one pinctrl single binding warning sneaked in while we were
implementing the yaml binding. Let's fix the 'pinmux-wl12xx-gpio' does not
match any of the regexes warning by adding -pins suffix.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

---

Trivial patch to fix a warning, applying into omap-for-v6.7/dt

diff --git a/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts b/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
--- a/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
+++ b/arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts
@@ -441,7 +441,7 @@ OMAP4_IOPAD(0x176, PIN_INPUT_PULLUP | MUX_MODE2) /* sdmmc3_clk */
 		>;
 	};
 
-	wl12xx_gpio: pinmux-wl12xx-gpio {
+	wl12xx_gpio: pinmux-wl12xx-gpio-pins {
 		pinctrl-single,pins = <
 			OMAP4_IOPAD(0x1c8, PIN_OUTPUT | MUX_MODE3)  /* gpio_24 / WLAN_EN */
 		>;
-- 
2.42.0

