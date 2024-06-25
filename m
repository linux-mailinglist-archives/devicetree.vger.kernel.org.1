Return-Path: <devicetree+bounces-79809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADC5916E53
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 18:44:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CBDF11C22832
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 16:44:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E43F017554C;
	Tue, 25 Jun 2024 16:44:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ns.iliad.fr (ns.iliad.fr [212.27.33.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84FF3174EDB
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 16:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.27.33.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719333854; cv=none; b=UrkcGuz8QDMniQ2XRYlyOh1NEbjHlidTOahVyVJd8BhN3xl3e1b0h13sN/k/GMLahmEhaw2eN9jAnZ/rJGlxRgH2aLhK/8AFYvmm3NWx0gf5es12xPY1jTCD7c/mVJ/xtHWOcvQ2r9tsdUOdSuzw4k+986e+kxVp4U4YqXCaisI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719333854; c=relaxed/simple;
	bh=WMz3MfWCDm6hMDbgN9SjKEIr03YaiVGpgqupSkNedyM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=H4f6sHgq9LH+mI8eNJUmGaT+Ii8C2GWM5phBOZn9O6S1H2FvQa2uFbfwlhVASzef9LoLCyb6D5cx0EpSUcKZOHl1tH8yF+cztEVe111HdZUshV5ly+ifdLyjdYmpXxtQ5iDr9bBlpqyfcgS/y9JpwY2JsflvlDCuabkxIQiVkJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=srs.iliad.fr; arc=none smtp.client-ip=212.27.33.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=srs.iliad.fr
Received: from ns.iliad.fr (localhost [127.0.0.1])
	by ns.iliad.fr (Postfix) with ESMTP id 2BE4720787;
	Tue, 25 Jun 2024 18:38:34 +0200 (CEST)
Received: from [127.0.1.1] (freebox.vlq16.iliad.fr [213.36.7.13])
	by ns.iliad.fr (Postfix) with ESMTP id 189F3201B1;
	Tue, 25 Jun 2024 18:38:34 +0200 (CEST)
From: Marc Gonzalez <mgonzalez@freebox.fr>
Date: Tue, 25 Jun 2024 18:38:12 +0200
Subject: [PATCH v2 1/2] dt-bindings: display: bridge: add TI TDP158
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240625-tdp158-v2-1-a3b344707fa7@freebox.fr>
References: <20240625-tdp158-v2-0-a3b344707fa7@freebox.fr>
In-Reply-To: <20240625-tdp158-v2-0-a3b344707fa7@freebox.fr>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Marc Gonzalez <mgonzalez@freebox.fr>
X-Mailer: b4 0.13.0

The TI TDP158 is an HDMI to TMDS Redriver.

Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 .../bindings/display/bridge/ti,tdp158.yaml         | 48 ++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
new file mode 100644
index 0000000000000..b687699e2ba80
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/ti,tdp158.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI TDP158 HDMI to TMDS Redriver
+
+maintainers:
+  - Arnaud Vrac <avrac@freebox.fr>
+
+properties:
+  compatible:
+    const: ti,tdp158
+
+  reg:
+    description: I2C address of the device
+
+  enable-gpios:
+    description: GPIO controlling bridge enable
+
+  vcc-supply:
+    description: Power supply 3.3V
+
+  vdd-supply:
+    description: Power supply 1.1V
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Bridge input
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Bridge output
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - ports
+
+additionalProperties: false

-- 
2.34.1


