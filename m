Return-Path: <devicetree+bounces-21773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F125080513F
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 11:54:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 251171C20934
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 10:54:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6282241F1;
	Tue,  5 Dec 2023 10:54:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="V834Ea7Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51073184
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 02:54:11 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a1b68ae4104so282626866b.3
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 02:54:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1701773650; x=1702378450; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9dqXlBbcQt0R29oSjxr4jyi0yptqDX27ArBU37Ndav8=;
        b=V834Ea7QEbLlDANziHtk630zx0eRLG0UP6thG/Ol60r+zCahKGto37Macv1nsiLTf3
         J05EagMkC6i+vXw/ZE6mdJo5ZjJtt5nmNUja7XBKyRIeU/0TebodD/gfLIBtSjoa6dqh
         6gbgcMrT0G7WjHdckuQhZ3FesCgf0WYkB1EbQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701773650; x=1702378450;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9dqXlBbcQt0R29oSjxr4jyi0yptqDX27ArBU37Ndav8=;
        b=anHtTiJlHw7woZZokFKThQCCFgZRT5AGnAloy4j5A9vtQz+iO1yxl5sYnI86NrpY2f
         nQYDxlW3ZdlX6s4KsM20w2dkCYd0OuZz72VjGECmHzA+aYxPxIhXhM4toglgS4xnfYW8
         lamS77G7dsUbdkTcDhPwfocWfWnwImK35kYfC7lY966P0eR/PLyYTOdDDrfs9+PIli+z
         rBn0zlS0QDUYFyNDL8yAlut4lPmXfPCyfOt/ij7/mCiq9TL2z1ttB9/ziuIyoVvi1oi1
         NhMN6p4xtzZKCqAgddZcmclkRz5CDXWQmPyv0Un1dVOxfNBmKSR6CJ8EsHWMS1V+riOx
         xQsg==
X-Gm-Message-State: AOJu0YyWXUGhf3R63EyIKeRSF+qvURVdaxYrsSuY0P7z55Ai2qDJJaOf
	4K3eNe4vfzy5pcoqqdpLBXmqiA==
X-Google-Smtp-Source: AGHT+IGOSYD/AClTyfZcyu80kE/QwnxMTd6gl521vDVTarXuD1raEagUY5DoiAfWBI4SWVeeRDqYmw==
X-Received: by 2002:a17:906:cc96:b0:a17:781f:20bf with SMTP id oq22-20020a170906cc9600b00a17781f20bfmr337719ejb.6.1701773649822;
        Tue, 05 Dec 2023 02:54:09 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-54-95-129.retail.telecomitalia.it. [82.54.95.129])
        by smtp.gmail.com with ESMTPSA id n23-20020a170906089700b0099297782aa9sm6413491eje.49.2023.12.05.02.54.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 02:54:09 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Amarula patchwork <linux-amarula@amarulasolutions.com>,
	michael@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v4 05/10] dt-bindings: display: panel: Add synaptics r63353 panel controller
Date: Tue,  5 Dec 2023 11:52:52 +0100
Message-ID: <20231205105341.4100896-6-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231205105341.4100896-1-dario.binacchi@amarulasolutions.com>
References: <20231205105341.4100896-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Michael Trimarchi <michael@amarulasolutions.com>

Add documentation for "synaptics,r63353" panel.

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

(no changes since v3)

Changes in v3:
- Add 'Reviewed-by' tag of Krzysztof Kozlowski.
- Replace "synaptics,r63353" compatible with "syna,r63353", as
  required by vendor-prefixes.yaml.

Changes in v2:
- Add $ref to panel-common.yaml
- Drop port, reset-gpios, and backlight
- Set port and backlight ad required
- Replace additionalProperties with unevaluatedProperties

 .../display/panel/synaptics,r63353.yaml       | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/synaptics,r63353.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/synaptics,r63353.yaml b/Documentation/devicetree/bindings/display/panel/synaptics,r63353.yaml
new file mode 100644
index 000000000000..e5617d125567
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/synaptics,r63353.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/synaptics,r63353.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Synaptics R63353 based MIPI-DSI panels
+
+maintainers:
+  - Michael Trimarchi <michael@amarulasolutions.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - sharp,ls068b3sx02
+      - const: syna,r63353
+
+  avdd-supply: true
+  dvdd-supply: true
+  reg: true
+
+required:
+  - compatible
+  - avdd-supply
+  - dvdd-supply
+  - reg
+  - reset-gpios
+  - port
+  - backlight
+
+unevaluatedProperties: false
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
+            compatible = "sharp,ls068b3sx02", "syna,r63353";
+            reg = <0>;
+            avdd-supply = <&avdd_display>;
+            dvdd-supply = <&dvdd_display>;
+            reset-gpios = <&r_pio 0 5 GPIO_ACTIVE_LOW>; /* PL05 */
+            backlight = <&backlight>;
+
+            port {
+                panel_in: endpoint {
+                    remote-endpoint = <&mipi_dsi_out>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.43.0


