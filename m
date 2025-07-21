Return-Path: <devicetree+bounces-198325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DC3B0C6A8
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 16:41:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A8831AA52B9
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 14:42:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E09D62C327E;
	Mon, 21 Jul 2025 14:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="fak1AUCF"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B421DA10B;
	Mon, 21 Jul 2025 14:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753108913; cv=none; b=sVkqHIWjrBYrLuy+05n4AF+lEYsCgLitvFoG2OW1TkopvRkuAvgOaGY7ewYR8LKoqAsKWsozbMmEqwARJn/eTvZldK8ZWC4iOtUbnorhpI2YJvpTckmYd11AfGkCeQTXqLF9t6l60/xceo2hXQ2+30m7p7iQxSJUk2X/qVNcQPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753108913; c=relaxed/simple;
	bh=aXsUXqQ1MvD5dKDFbnvThu1uEDZvSXtWOZMHmtHGPD0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OZy8Dhy0HNb0iioAsx6gs0mjOdvTXqKSapg5jlVIPgSyc1TezAjJeKlsuI/c6oCMIrhwNn1vsxpjunKDoEshANDlPA/15YfoyAoL1JRBd32MhTSHsVjIQANO1dJDU5nwbtkPiaSh6gRFYJdrsaxuobOZy9Cidh7DzK5bzuYRAO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=fak1AUCF; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 9B39622E6C;
	Mon, 21 Jul 2025 16:41:49 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xsYLcqef0-sT; Mon, 21 Jul 2025 16:41:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1753108908; bh=aXsUXqQ1MvD5dKDFbnvThu1uEDZvSXtWOZMHmtHGPD0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=fak1AUCF6+vdEKOXzI5EmIqekj94b7an1zVYysma7UfHDFh6xyietFO6oExTq8X+K
	 TF3HhZeL9F4Jg63IOuGW4rFAuyCEzdrWtDWeqWfwpErrZt4VPURVIEhG8zD6rZPztJ
	 07GSqmNt6aFWB7IOq/KK/P41PjDikzZnl3HQE2m0lx23QILSFrao2jhKKl3EJCZJ8H
	 +PXo/r04DdBCbezypzNHldn6mlayZ4YjXac8zC2e1rnhbg+f3b7WA9j/5U2843Dj73
	 +UYVGjFtEN1E9Bbs+/VrHYH2w4cvYRFCQHMJDjBeZQ0bRhLSY+Xg6tt+DbqE5gX5As
	 AQ0XJRiXs+WvQ==
From: Kaustabh Chakraborty <kauschluss@disroot.org>
Date: Mon, 21 Jul 2025 20:08:59 +0530
Subject: [PATCH v5 1/2] dt-bindings: display: panel: document Samsung
 AMS561RA01 panel with S6E8AA5X01 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250721-panel-samsung-s6e8aa5x01-v5-1-1a315aba530b@disroot.org>
References: <20250721-panel-samsung-s6e8aa5x01-v5-0-1a315aba530b@disroot.org>
In-Reply-To: <20250721-panel-samsung-s6e8aa5x01-v5-0-1a315aba530b@disroot.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Kaustabh Chakraborty <kauschluss@disroot.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753108898; l=2053;
 i=kauschluss@disroot.org; s=20250202; h=from:subject:message-id;
 bh=aXsUXqQ1MvD5dKDFbnvThu1uEDZvSXtWOZMHmtHGPD0=;
 b=QJZZbpfkQYaE9lGw4jalWlJqkKSTOn/N2/ZlZQnyJXW+XIrg3VwrA6hqVpdXuQZctR+tcGEd2
 Ugoajyx4OBCBP8qHnCI2Hcy51tqf3mrr9biZGJAyTLaSuV8id8EW4Z1
X-Developer-Key: i=kauschluss@disroot.org; a=ed25519;
 pk=h2xeR+V2I1+GrfDPAhZa3M+NWA0Cnbdkkq1bH3ct1hE=

Samsung AMS561RA01 is an AMOLED panel, using the Samsung S6E8AA5X01 MIPI
DSI panel controller. Document the compatible and devicetree properties
of this hardware. It has a reset GPIO and two voltage regulators.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
---
 .../panel/samsung,s6e8aa5x01-ams561ra01.yaml       | 55 ++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,s6e8aa5x01-ams561ra01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,s6e8aa5x01-ams561ra01.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..eccfc66d7fe24fbe86e3c25f35beb0855c4fcee6
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/samsung,s6e8aa5x01-ams561ra01.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/samsung,s6e8aa5x01-ams561ra01.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung AMS561RA01 panel with S6E8AA5X01 controller
+
+maintainers:
+  - Kaustabh Chakraborty <kauschluss@disroot.org>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: samsung,s6e8aa5x01-ams561ra01
+
+  reg:
+    maxItems: 1
+
+  vdd-supply:
+    description: core voltage supply
+
+  vci-supply:
+    description: voltage supply for analog circuits
+
+  reset-gpios: true
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "samsung,s6e8aa5x01-ams561ra01";
+            reg = <0>;
+
+            vdd-supply = <&panel_vdd_reg>;
+            vci-supply = <&panel_vci_reg>;
+
+            reset-gpios = <&gpd3 4 GPIO_ACTIVE_HIGH>;
+        };
+    };
+
+...

-- 
2.50.0


