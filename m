Return-Path: <devicetree+bounces-42041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5136E856349
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 13:35:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7BEE31C21804
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 12:35:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9107129A80;
	Thu, 15 Feb 2024 12:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="RffNoAU9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DDB1E500
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 12:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708000500; cv=none; b=nzoCFjv7j4dmn0ThQQjfgqgYOe/r8v6lf62RvhgGD0ZN57+loCZUc66u9DwmaVgulKGMleTfxjCiAngTLgzGCR4szIYOep/rDgWk4yK/m/3WpUe17t28V0Kicv7m3O8vyEk9A3KmvwwLj8sChpmnwVMMGFWeAmU3CHyXPGWHuCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708000500; c=relaxed/simple;
	bh=2YQlVtdBShuw6krXfWfGvayyaRZm4Qpf3bbRehj6cqI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YRKt7bW3ebP6J3lJQmZo7122G/bQ6/KLMZAAiL+w6o4nFYxMdMj+WqirrVkUDcNG5TJ6stf5xQvDFwYTVTHqJhxFFiMe+NuJOeXo9L+RkTA7LaKwwfzPwXd016IpGwuuLHfpkgwFpOeiGWqCSO6XCAasI+wuGtN9cSzJ9H+vn/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=RffNoAU9; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id D311C603EE;
	Thu, 15 Feb 2024 12:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1708000498;
	bh=2YQlVtdBShuw6krXfWfGvayyaRZm4Qpf3bbRehj6cqI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RffNoAU9/WKvAlvyGMHmGnSafH4cJfShFKD45j3QdIm5sscQuAvhBTYULdo0aAgoP
	 5Rvn+3g5ddqHXv/f7xIMTtqqz8TXo06vIHbzjj9yksrHMEwek5DcC1ysT/5JItXR3D
	 8HfmxszLAMIKTS9xuSoTOCXZ2s5YVRGNdk/bl50OVnssg1l3cOrZo0eYVveurzbuON
	 FiW7Sddj0tDrflnEPHLa2ciNvO+O19SzO0eL2Km6rfxUnJGF25gBrSZHimMhogt4gy
	 xP5kEczE8NwKrnfF60Bz+3UopskiCh/KaeiSgvX8oUibtvpq6wYeYSfl18suQpmPbJ
	 ftqxtpng28rZQ==
From: Tony Lindgren <tony@atomide.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simha BN <simhavcs@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Michael Walle <mwalle@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 02/10] dt-bindings: display: bridge: tc358775: Add data-lanes
Date: Thu, 15 Feb 2024 14:31:45 +0200
Message-ID: <20240215123222.42609-3-tony@atomide.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240215123222.42609-1-tony@atomide.com>
References: <20240215123222.42609-1-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The device uses a clock lane, and 1 to 4 DSI data lanes. Let's add the
data-lanes property starting at 1 similar to what the other bridge
bindings are doing.

Let's also drop the data-lanes properties in the example for the DSI host
controller to avoid confusion. The configuration of the DSI host depends
on the controller used and is unrelated to the bridge binding.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 .../display/bridge/toshiba,tc358775.yaml      | 22 ++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
--- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
@@ -46,11 +46,27 @@ properties:
 
     properties:
       port@0:
-        $ref: /schemas/graph.yaml#/properties/port
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
         description: |
           DSI Input. The remote endpoint phandle should be a
           reference to a valid mipi_dsi_host device node.
 
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                description: array of physical DSI data lane indexes.
+                minItems: 1
+                items:
+                  - const: 1
+                  - const: 2
+                  - const: 3
+                  - const: 4
+
       port@1:
         $ref: /schemas/graph.yaml#/properties/port
         description: |
@@ -107,6 +123,7 @@ examples:
                     reg = <0>;
                     d2l_in_test: endpoint {
                         remote-endpoint = <&dsi0_out>;
+                        data-lanes = <1 2 3 4>;
                     };
                 };
 
@@ -131,7 +148,6 @@ examples:
                 reg = <1>;
                 dsi0_out: endpoint {
                     remote-endpoint = <&d2l_in_test>;
-                    data-lanes = <0 1 2 3>;
                 };
              };
          };
@@ -166,6 +182,7 @@ examples:
                     reg = <0>;
                     d2l_in_dual: endpoint {
                         remote-endpoint = <&dsi0_out_dual>;
+                        data-lanes = <1 2 3 4>;
                     };
                 };
 
@@ -197,7 +214,6 @@ examples:
                 reg = <1>;
                 dsi0_out_dual: endpoint {
                     remote-endpoint = <&d2l_in_dual>;
-                    data-lanes = <0 1 2 3>;
                 };
              };
          };
-- 
2.43.1

