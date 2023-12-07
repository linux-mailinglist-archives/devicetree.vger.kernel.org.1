Return-Path: <devicetree+bounces-22753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E85808A39
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 15:18:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AD748B20E3A
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 14:18:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17AF04185E;
	Thu,  7 Dec 2023 14:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="NZ8+Da5f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB0E62712
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 06:17:53 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a1c7d8f89a5so120559866b.2
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 06:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1701958657; x=1702563457; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lnfcl+xGcZaVaSiEbrLmOIuOeFLP66KSKvq8kyj8O1U=;
        b=NZ8+Da5fHKMFSu0LpyzL+R+w8s3rY83cQ4VDa9wQuQMpcetGK4oJdS8mzKWBJZVgjh
         C3LaBFFvYY2nyXueOmSQy8kcl9P68LK41z/7VemV1MowCS8UoOf3Yy/JSlJkHOMX1dWJ
         AdzDJf/OW8aCU5n2YFI1ClABXnS/Xseg85Ifc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701958657; x=1702563457;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lnfcl+xGcZaVaSiEbrLmOIuOeFLP66KSKvq8kyj8O1U=;
        b=Jr4ip2kdeTtcbfoXndG673Y7k+HLSm+CNchJLGMOQ0fthatdDociaoMnmJo0TSI1ji
         s6MGZ8kq0IYdAxBf/+I96j3a0xClnQ7LSs1NTpZUdAdEMvWgNwfuRlJGduPq1FpOCc7Q
         EslGBq0YlljMP3cRBkImiciMUm2AJwenB9orM8wVzqWwjvO4qWQWUX6MGTJxLss5gZFt
         LaWPsBggLg8VgVLSOPth4MlRHDVyRFm1GmQhS3hBne1GOZrz7CTC0GmTFLX1s7DG9V6f
         RucuFwQyX/SX7iECbB8m9MXWAdC+I8u+2gocBbj331HVVbVdQ4fUt2sCgzQtHQp/wuBR
         iLwA==
X-Gm-Message-State: AOJu0YzW0ZzTpuPm2tZOt7PicObDcN0G8AhQqGNmHJO4QtR81m+V5Ng1
	EuqLZiQxv6MxPJuw644EJq2Qlw==
X-Google-Smtp-Source: AGHT+IFtossF30BRk7kiXSxr96Y10pvhW8uv10PwvHYm08qEzDZZ582D1xtILrbPaDhUujjEIXgLmQ==
X-Received: by 2002:a17:906:ad0:b0:a1d:7e27:4d28 with SMTP id z16-20020a1709060ad000b00a1d7e274d28mr1399465ejf.146.1701958656739;
        Thu, 07 Dec 2023 06:17:36 -0800 (PST)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:9bf:959c:3c66:46c2])
        by smtp.gmail.com with ESMTPSA id f24-20020a170906c09800b00a1e814b7155sm885421ejz.62.2023.12.07.06.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 06:17:36 -0800 (PST)
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
Subject: [PATCH v5 07/10] dt-bindings: display: panel: Add Ilitek ili9805 panel controller
Date: Thu,  7 Dec 2023 15:16:36 +0100
Message-ID: <20231207141723.108004-8-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231207141723.108004-1-dario.binacchi@amarulasolutions.com>
References: <20231207141723.108004-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Michael Trimarchi <michael@amarulasolutions.com>

Add documentation for "ilitek,ili9805" panel.

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v5:
- Add 'Reviewed-by' tag of Krzysztof Kozlowski

Changes in v3:
- Drop power-supply

Changes in v2:
- Add $ref to panel-common.yaml
- Drop port, reset-gpios, and backlight
- Set port and backlight ad required
- Replace additionalProperties with unevaluatedProperties

 .../display/panel/ilitek,ili9805.yaml         | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9805.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9805.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9805.yaml
new file mode 100644
index 000000000000..f4f91f93f490
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9805.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/ilitek,ili9805.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Ilitek ILI9805 based MIPI-DSI panels
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
+          - giantplus,gpm1790a0
+          - tianma,tm041xdhg01
+      - const: ilitek,ili9805
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
+            compatible = "giantplus,gpm1790a0", "ilitek,ili9805";
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


