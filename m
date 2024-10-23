Return-Path: <devicetree+bounces-114742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B12349ACA70
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 14:45:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 723BC283234
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 12:45:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20BCC1AE877;
	Wed, 23 Oct 2024 12:45:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FD21A2643
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 12:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729687521; cv=none; b=qamMIfuS8U9jQTdmA5haSPysT/nhArCZ7yicrMydmAtBbx9Rdsmq1TLJYdSjuT+VgVFC9JltvNNxES2qOHs8Vk1ySL34fNXMxgYxzw5WBN5pVQKFs/A+aA0yOI4+a8lk/N/Cdw045iXe2V2ZuVFyWuPAFsEzwnw4UqnPTsdqDyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729687521; c=relaxed/simple;
	bh=D2gbk+TUjVX15n/XYTIrtbDnyuJsjTfr841RLKqyQwo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=S0LM+h0XMMx9lySyl5Ndb/LxdGSp0EGhE6CSBakZiUNgsIUFWWON1A5TjeUubpb4SHBkWa0qhsVihGPfJgyEpa/PVNFQyYSmmsyBoXsumqvKD9fDXhSxhDR+A1/SqFauEEoMYrzDWa9UVV3HOdjANZSycL6jxG4lXc8WfvwDZfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rcz@pengutronix.de>)
	id 1t3ajj-0000VZ-96; Wed, 23 Oct 2024 14:45:15 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rcz@pengutronix.de>)
	id 1t3ajh-0002Hw-2D;
	Wed, 23 Oct 2024 14:45:13 +0200
Received: from rcz by dude06.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rcz@pengutronix.de>)
	id 1t3ajh-004q6j-1y;
	Wed, 23 Oct 2024 14:45:13 +0200
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: kernel@pengutronix.de,
	Rouven Czerwinski <r.czerwinski@pengutronix.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 2/3] dt-bindings: display: panel: add YAML schema for LXD M9189A
Date: Wed, 23 Oct 2024 14:44:09 +0200
Message-Id: <20241023124411.1153552-2-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241023124411.1153552-1-r.czerwinski@pengutronix.de>
References: <20241023124411.1153552-1-r.czerwinski@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: rcz@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The LXD M9189A is a 1024x600 MIPI-DSI panel.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 .../bindings/display/panel/lxd,m9189a.yaml    | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/lxd,m9189a.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/lxd,m9189a.yaml b/Documentation/devicetree/bindings/display/panel/lxd,m9189a.yaml
new file mode 100644
index 0000000000000..49cee8865cae1
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/lxd,m9189a.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/lxd,m9189a.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: LXD M9189 DSI Display Panel
+
+maintainers:
+  - Rouven Czerwinski <r.czerwinski@pengutronix.de>
+
+properties:
+  compatible:
+    const: ronbo,rb070d30
+
+  reg:
+    maxItems: 1
+
+  standby-gpios:
+    description: GPIO used for the standby pin
+    maxItems: 1
+
+  reset-gpios:
+    description: GPIO used for the reset pin
+    maxItems: 1
+
+  vdd-supply:
+    description: Power regulator
+
+  backlight:
+    description: Backlight used by the panel
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+required:
+  - compatible
+  - reg
+  - standby-gpios
+  - reset-gpios
+  - vdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      panel@0 {
+        compatible = "lxd,m9189a";
+        reg = <0>;
+        backlight = <&backlight>;
+        reset-gpios = <&gpio3 25 GPIO_ACTIVE_LOW>;
+        standby-gpios = <&gpio5 22 GPIO_ACTIVE_LOW>;
+
+        port {
+          mipi_panel_in: endpoint {
+            remote-endpoint = <&mipi_dsi_out>;
+          };
+        };
+      };
+    };
-- 
2.39.5


