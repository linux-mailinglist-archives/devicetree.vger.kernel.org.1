Return-Path: <devicetree+bounces-12210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C847D8527
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 16:48:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 97CCFB20E1B
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 14:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7326E2EB17;
	Thu, 26 Oct 2023 14:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1642EB08
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:48:44 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 590FD1BD
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:48:43 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qw1es-0005Zs-2A; Thu, 26 Oct 2023 16:48:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qw1er-004Qq7-KK; Thu, 26 Oct 2023 16:48:25 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qw1er-00H3Y3-1o;
	Thu, 26 Oct 2023 16:48:25 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 4/5] regulator: dt-bindings: Add 'regulator-uv-less-critical-window-ms' property
Date: Thu, 26 Oct 2023 16:48:23 +0200
Message-Id: <20231026144824.4065145-5-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231026144824.4065145-1-o.rempel@pengutronix.de>
References: <20231026144824.4065145-1-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Introduces a new devicetree property to specifies the time window (in
milliseconds) following a critical under-voltage (UV) event during which
less critical actions can be safely carried out by the system.

Less Critical Actions:
- Logging the under-voltage event for later analysis.
- Saving less critical data that may be useful for diagnosing issues or
  for audit purposes.

More Critical Actions (post the less critical window):
- Initiating procedures to properly shutdown hardware to prevent damage.

The 'regulator-uv-less-critical-window-ms' property is crucial for
conveying board-specific hardware characteristics, not for enforcing a
certain policy. The time window represented by this property is derived
from the physical attributes of the hardware like the capacity of
on-board capacitors, the power consumption of the components, and the
time needed to safely shut down hardware to prevent damage. These
attributes can significantly vary between different boards, making it a
board-specific property rather than a policy directive.

By providing a precise representation of the time available for less
critical actions post an under-voltage event, this property enables the
kernel to make informed decisions on action prioritization, ensuring
that essential preventative measures are taken to avoid hardware damage
while also allowing for data capture and analysis.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 .../devicetree/bindings/regulator/regulator.yaml          | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/regulator.yaml b/Documentation/devicetree/bindings/regulator/regulator.yaml
index 5b8d55f7c43b..1ef380d1515e 100644
--- a/Documentation/devicetree/bindings/regulator/regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/regulator.yaml
@@ -186,6 +186,14 @@ properties:
       be enabled but limit setting can be omitted. Limit is given as microvolt
       offset from voltage set to regulator.
 
+  regulator-uv-less-critical-window-ms:
+    description: Specifies the time window (in milliseconds) following a
+      critical under-voltage event during which the system can continue to
+      operate safely while performing less critical operations. This property
+      provides a defined duration before a more severe reaction to the
+      under-voltage event is needed, allowing for certain non-urgent actions to
+      be carried out in preparation for potential power loss.
+
   regulator-temp-protection-kelvin:
     description: Set over temperature protection limit. This is a limit where
       hardware performs emergency shutdown. Zero can be passed to disable
-- 
2.39.2


