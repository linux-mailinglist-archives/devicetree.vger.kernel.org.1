Return-Path: <devicetree+bounces-18066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 647B17F4FF5
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 19:52:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A5EE1C20AD1
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 18:52:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B202558AA9;
	Wed, 22 Nov 2023 18:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85064BD
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 10:52:49 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5sL0-0002NJ-KB; Wed, 22 Nov 2023 19:52:38 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5sKz-00As7O-8d; Wed, 22 Nov 2023 19:52:37 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5sKz-008Sz9-0M;
	Wed, 22 Nov 2023 19:52:37 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Rob Herring <robh@kernel.org>
Cc: kernel@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: stm32: don't mix SCMI and non-SCMI board compatibles
Date: Wed, 22 Nov 2023 19:52:33 +0100
Message-Id: <20231122185235.2017642-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

SCMI-enabled boards may restrict access to resources like clocks, resets
and regulators to the secure world.

A normal world bootloader or kernel compatible with the non-SCMI-enabled
board is thus not guaranteed to be able to deal with the SCMI variant.

It follows, that the SCMI-enabled board is not compatible with the
non-SCMI enabled board, so drop that compatible.

This change is motivated by the barebox' bootloader's use of bootloader
specification files[1][2]: barebox for non-SCMI DK2 will compare its
own top-level "stm32mp157c-dk2" compatible with all compatibles
listed in the device tree referenced by each bootloader spec file.
If the boot medium contains a configuration with
compatible = "st,stm32mp157c-dk2-scmi", "st,stm32mp157c-dk2", "st,stm32mp157";
it will match, because of the second compatible and boot a kernel with
SCMI enabled, although no SCMI may exist on the platform.

[1]: https://uapi-group.org/specifications/specs/boot_loader_specification/
[2]: https://www.barebox.org/doc/latest/user/booting-linux.html#boot-loader-specification

Fixes: 8e14ebb1f08f ("dt-bindings: arm: stm32: Add SCMI version of STM32 boards (DK1/DK2/ED1/EV1)")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../devicetree/bindings/arm/stm32/stm32.yaml     | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index df087c81c69e..bc2f43330ae4 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -82,29 +82,19 @@ properties:
               - shiratech,stm32mp157a-iot-box # IoT Box
               - shiratech,stm32mp157a-stinger96 # Stinger96
               - st,stm32mp157c-ed1
+              - st,stm32mp157c-ed1-scmi
               - st,stm32mp157a-dk1
+              - st,stm32mp157a-dk1-scmi
               - st,stm32mp157c-dk2
+              - st,stm32mp157c-dk2-scmi
           - const: st,stm32mp157
 
-      - items:
-          - const: st,stm32mp157a-dk1-scmi
-          - const: st,stm32mp157a-dk1
-          - const: st,stm32mp157
-      - items:
-          - const: st,stm32mp157c-dk2-scmi
-          - const: st,stm32mp157c-dk2
-          - const: st,stm32mp157
-      - items:
-          - const: st,stm32mp157c-ed1-scmi
-          - const: st,stm32mp157c-ed1
-          - const: st,stm32mp157
       - items:
           - const: st,stm32mp157c-ev1
           - const: st,stm32mp157c-ed1
           - const: st,stm32mp157
       - items:
           - const: st,stm32mp157c-ev1-scmi
-          - const: st,stm32mp157c-ev1
           - const: st,stm32mp157c-ed1
           - const: st,stm32mp157
 
-- 
2.39.2


