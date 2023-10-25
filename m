Return-Path: <devicetree+bounces-11684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8247D6594
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:46:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AAD31B20CC5
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:46:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34B851CFAE;
	Wed, 25 Oct 2023 08:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAEAD2D63A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:46:27 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6ED23184
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:46:26 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qvZWq-0002CF-9l; Wed, 25 Oct 2023 10:46:16 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qvZWp-0048Wi-Dc; Wed, 25 Oct 2023 10:46:15 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qvZWp-00CyTG-19;
	Wed, 25 Oct 2023 10:46:15 +0200
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
Subject: [PATCH v3 6/7] regulator: dt-bindings: Add regulator-uv-survival-time-ms property
Date: Wed, 25 Oct 2023 10:46:13 +0200
Message-Id: <20231025084614.3092295-7-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231025084614.3092295-1-o.rempel@pengutronix.de>
References: <20231025084614.3092295-1-o.rempel@pengutronix.de>
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

Introduce a new Device Tree property 'regulator-uv-survival-time-ms' to
specify the survival time post a critical under-voltage event. This
property defines the time in milliseconds the system can operate before
the on-board capacitors fail, providing a window for necessary actions
or preparations to be taken before power loss, aligning with the
under-voltage event handling mechanism.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 Documentation/devicetree/bindings/regulator/regulator.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/regulator.yaml b/Documentation/devicetree/bindings/regulator/regulator.yaml
index 5b8d55f7c43b..85b8c51f8ede 100644
--- a/Documentation/devicetree/bindings/regulator/regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/regulator.yaml
@@ -186,6 +186,13 @@ properties:
       be enabled but limit setting can be omitted. Limit is given as microvolt
       offset from voltage set to regulator.
 
+  regulator-uv-survival-time-ms:
+    description: Specifies the time (in milliseconds) the system can continue
+      to operate after a critical under-voltage event has been triggered,
+      before the on-board capacitors fail. This time essentially represents the
+      duration the system has to take any necessary actions or preparations
+      before power loss.
+
   regulator-temp-protection-kelvin:
     description: Set over temperature protection limit. This is a limit where
       hardware performs emergency shutdown. Zero can be passed to disable
-- 
2.39.2


