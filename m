Return-Path: <devicetree+bounces-18966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA987F93DA
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 17:33:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0EC2B280F0C
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 16:33:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EEB51368;
	Sun, 26 Nov 2023 16:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="lSnz8z8x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57FDED7
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 08:33:46 -0800 (PST)
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 19C386044A;
	Sun, 26 Nov 2023 16:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1701016425;
	bh=71ibKMM9DOpdFN+a6X/3dcd9slUwLcDlPWzmSrWFgV0=;
	h=From:To:Cc:Subject:Date:From;
	b=lSnz8z8xKloMjctrV+6oAOGgUr4m6GCC2n2O9iAgoVuhbmkUd8ca/Cyykaykwjt1K
	 QwLD3o8y9ekMGVIzJah5C7ummdcMULRvG90ynyTeULkJBbwZxVwTPWJnaaFBiLJa+w
	 oQ03uc2ZH6G2QdSd+jZBZRUDSt+vaew/72iKJmj9+CUwaqMWU1IHcN8ZijoUgKENJd
	 pSXAHX91sTLUO/IkF5sgoQA19dlL1EaRJj3SwY6QKWb4zzAFC8MCbDkcR9VzcHeH7V
	 zqkNJkLMknptGhil1wYDPc5G9pjTHZ9HJsqBnosYuwskR45PifY6Wm9QVL6k6lNKXr
	 j3EVN2PnuWDjA==
From: Tony Lindgren <tony@atomide.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simha BN <simhavcs@gmail.com>
Cc: Carl Philipp Klemm <philipp@uvos.xyz>,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
	Merlijn Wajer <merlijn@wizzup.org>,
	Pavel Machek <pavel@ucw.cz>,
	Sebastian Reichel <sre@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/6] dt-bindings: tc358775: Add support for tc358765
Date: Sun, 26 Nov 2023 18:32:36 +0200
Message-ID: <20231126163247.10131-1-tony@atomide.com>
X-Mailer: git-send-email 2.42.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The tc358765 is similar to tc358775 except for the stdby-gpios.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 .../display/bridge/toshiba,tc358775.yaml        | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
--- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
@@ -10,7 +10,7 @@ maintainers:
   - Vinay Simha BN <simhavcs@gmail.com>
 
 description: |
-  This binding supports DSI to LVDS bridge TC358775
+  This binding supports DSI to LVDS bridges TC358765 and TC358775
 
   MIPI DSI-RX Data 4-lane, CLK 1-lane with data rates up to 800 Mbps/lane.
   Video frame size:
@@ -21,7 +21,9 @@ description: |
 
 properties:
   compatible:
-    const: toshiba,tc358775
+    enum:
+      - toshiba,tc358765
+      - toshiba,tc358775
 
   reg:
     maxItems: 1
@@ -70,12 +72,21 @@ required:
   - reg
   - vdd-supply
   - vddio-supply
-  - stby-gpios
   - reset-gpios
   - ports
 
 additionalProperties: false
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: toshiba,tc358775
+    then:
+      required:
+        - stby-gpios
+
 examples:
   - |
     #include <dt-bindings/gpio/gpio.h>
-- 
2.42.1

