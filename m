Return-Path: <devicetree+bounces-174596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CEDA0AADB54
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 11:22:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 494B416E90E
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 09:21:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3237A23536B;
	Wed,  7 May 2025 09:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="neg6Ah1+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC761FF1D5
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 09:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746609567; cv=none; b=d8aTV0/d6Cmb0+7Wu0q8i3onAiP5L+/TNYdOLn+vACHb+9VLQJqrqzUdz2kuhnxvtHZh6Mh52NvSLbKmj/3Nvx0dVhYK8FNpBC1e7UqmornwZlVAK1AofOcmA9XQz+lMbJNvCi3mEVJ784/gQ6iXwA4T3liLhpfhdryaBjVhI+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746609567; c=relaxed/simple;
	bh=UxGCvkld7rOE9IR9At0Des8iISWDF25JcndyslWXFkw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=pqjMQs43IA2mMC0JCcvW98kviIqMS5vBF1hMtpbzxLV3XdPUChnwxrbJYHj+U1eI9uMn9R8pZZqKNS65vxRuCIp65tvfui5lcPwQmpglNynRwziOAD8HJlK55gejjYpq2jrx+FnlIPu2Ngr9LnvCaYbeJDyHfJLSVdUm1+fnbXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=neg6Ah1+; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-441d1ed827cso10446735e9.1
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 02:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746609563; x=1747214363; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3/En6vdzgdU/iKm8vh0HoRLUrBBmDBKnE2RqcAzid30=;
        b=neg6Ah1+6O0S5LW6cJDmkQ91dss5H+s5gdcR4t1uvQ3+Qs0XKZrUL8pmcFnR4tZ1jG
         b44gNC1W+v6M3ann5GHdMJCBcnrT9NAVdu4DyopKtS4KjBLwlKZDcio/3wr6P8PcapLB
         M4WLOuN1zGF/0bd9taJcA+f0LPHK0NcmtN5WQ7IkQI9cgMheA2+x5bVYgQS6pQgt0Se0
         JYTAehke8bsTd0gUNG/OdXOZLX3os5wzt6/n4mWyjwMwSwLES1Ju6Yi9fP3RAZLJNVY0
         Nu76F5i0BlG3yY2mkYjr0h1KrSdVeNqmVIWAO+YNr/pmbTYL011w/VBUSsXJQKNYTFfx
         AJ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746609563; x=1747214363;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3/En6vdzgdU/iKm8vh0HoRLUrBBmDBKnE2RqcAzid30=;
        b=oEZjOYKbcUNFS5X7r89Y6WXXzmjkFebD/IzJKcGc5KKyGlMX29I/MgOAeWn5L8XqMy
         HpoGwsoZo25RbjPaN6jNxK9VyvIwUzEeExk0kW4Y3rMk6EXwEqGTCQ5Vb8YnQQKFhYTr
         /r5/5gnrnkPfIE32krUml7V35OSZS+9mEt9qiBOdrpac1hMUNudMcEZmnY0ydtZJi8pS
         Ahxz3Y2+J+BZJv1AC+HPkxPMu03dTKsRjyY5Xd+d8Q1bUfCBhyMBT5iPDFYOwKWmFpcw
         PU+TH9TV/xwsNP3L6rc5DNEjECD2olYX3iz/qWQ13IFZPHnYsaP+s5MAD2NskyANhgoX
         WNQw==
X-Forwarded-Encrypted: i=1; AJvYcCWLdTqwCKSnwkxEtrdia7MDlnrJdropL8d1ZwmxdiiDcF4MnMCQdhPKSbfYAqPL617mUNdhvnr8nUSL@vger.kernel.org
X-Gm-Message-State: AOJu0Yxyexc3Ht59ODgHWVdCQm6ZNdQgAj/YwI3/NQBbrfZXP4Xc9gxI
	koJo5THh92zLKTwMNznm1xztTqMDssEUeNGz10G2ONY5g3rVsrONqaxIatC8fKU=
X-Gm-Gg: ASbGncs1zRHnr1Sv00CGtRbGDPi1b9zKp1+RN2PGZozxKgSjsiBoLK51pf7irzpgjVG
	5rdtUfK53RT3wNn9iyV+uHJv8e+xoGHyHWAWyPqlwtp4YuniON/mROnEcoGRzkN16wOjcqAiWbs
	qvic83Ifcw1dREQaIK+Zxn+cAzPV46vO5nikCQwmBWlneyy7mxC6lGBNLbsWhLVv+L9mDApH3Um
	q1/C5mKo6xCOFpC3iIBs9FHf6NNpCqf6L9+t24vKoFj78jWLwuecd4sNFjIbKSbxI6pVxlIkzCh
	C9FimQhJPSvQlzw/T/jyAvB/xui93DZuE1bXlHAyREf/ENWJZ/64kVsZ0c2kwBExnPX98LUf
X-Google-Smtp-Source: AGHT+IEHH5xBffxb0R3XLxp8uHLZIlorCruskW5FKPqhfNz2pI2ADxJQ0xN6n3MHd0G8eOyy3jg2Ag==
X-Received: by 2002:a05:600c:5122:b0:441:d437:e3b8 with SMTP id 5b1f17b1804b1-441d44ddc10mr17025915e9.23.1746609563158;
        Wed, 07 May 2025 02:19:23 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441d43d07fbsm24463255e9.10.2025.05.07.02.19.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 02:19:22 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 07 May 2025 11:19:21 +0200
Subject: [PATCH] dt-bindings: display: panel: convert truly,nt35597.txt to
 dt-schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250507-topic-misc-truly-nt35597-yaml-v1-1-bc719ad8dfff@linaro.org>
X-B4-Tracking: v=1; b=H4sIAJglG2gC/x3MQQqDMBAAwK/Inl1YrUHjV8RDmq52IYmSxFIR/
 97Q41zmgsRROMFYXRD5I0m2UNDUFdi3CSujvIqhpVaRoh7ztotFL8lijoc7MeSHUrrH03iHT9P
 RoDV3eiAoxx55ke//n+b7/gHJADmhbwAAAA==
X-Change-ID: 20250507-topic-misc-truly-nt35597-yaml-ba40899e4980
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5748;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=UxGCvkld7rOE9IR9At0Des8iISWDF25JcndyslWXFkw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoGyWalBNRg5DjLTUMvfOrTrrgSHDbOjl/SPvt94Up
 5X5d28KJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaBslmgAKCRB33NvayMhJ0SEVEA
 CmAuSohWsqyVwZz+jMNrcqMNMcvsGhU2XbuTz3wqk91ggEqetk2w/DzfMppOvXXoTqqPj9mz+uwjqh
 0uefR6SseOtSfdGZMUpo/nxswLi/tel6+2kJTCQMEiUkdMw6ttGIeb0gLrfGihldAu9WwZIGXDBMkX
 GcDFDqySHH0XRxGoLmSL/oiNSvNoz6BGMT9XmjUjpwmWXGrbhbnhUnFaMKVLhMj5FumDThXamSG6Ra
 rnVveiPbjOkiySbCNL2O7yhi0u+c/6HLdrIJoWwysLnYFxmXV/6WexP4z7+AEN1WrFsXD4Y2g8Sa7k
 rX5OHfRSCxpRl57iak9/PIJOETv0ELhJfXXKb4VBcu45R+YfNpsjz0OVadBzZcwR/jjbL/cOx2NBRQ
 80eZH2v0iPlzgGDTeBeCXd8dsbIXbIUAdqx02HCNG9JVR4tP1TI+SVf7fk2Q+rmosfrS9kIA1Zc5hJ
 aPfGfw0rgW+sA3EZGQBw32CLtcKHKsLBx2/8A1dBml2gU9snJtNLnp5Mqu3PNO7ak0KHS6MaLHajr4
 5n5V4aY97cSq3rV46MOL+QA4gS34phRIigZq/5aQss3CC7iLkStZp97Y9ruYpPUGn0qAjxZfViy9uL
 ZuKRk4oZwWjU4bVDoVl0r8nthJB4nuP04rlknR6+itQaI1WdmMl1rphaw2cw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Convert the Truly NT35597 2K display panel bindings to dt-schema.

The vdispp-supply & vdispn-supply are not marked as required since
in practice they are not defined in sdm845-mtp.dts which is the
only used of these bindings.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../display/panel/truly,nt35597-2K-display.yaml    | 97 ++++++++++++++++++++++
 .../devicetree/bindings/display/truly,nt35597.txt  | 59 -------------
 2 files changed, 97 insertions(+), 59 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/truly,nt35597-2K-display.yaml b/Documentation/devicetree/bindings/display/panel/truly,nt35597-2K-display.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..36be09c900f2fc4696b47d08e2052b13ba07f77e
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/truly,nt35597-2K-display.yaml
@@ -0,0 +1,97 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/truly,nt35597-2K-display.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Truly NT35597 DSI 2K display
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+
+description: |
+  Truly NT35597 DSI 2K display is used on the Qualcomm SDM845 MTP board.
+
+allOf:
+  - $ref: panel-common-dual.yaml#
+
+properties:
+  compatible:
+    const: truly,nt35597-2K-display
+
+  reg:
+    maxItems: 1
+
+  vdda-supply:
+    description: regulator that provides the supply voltage Power IC supply
+
+  vdispp-supply:
+    description: regulator that provides the supply voltage for positive LCD bias
+
+  vdispn-supply:
+    description: regulator that provides the supply voltage for negative LCD bias
+
+  reset-gpios: true
+
+  mode-gpios:
+    description:
+      Gpio for choosing the mode of the display for single DSI or Dual DSI.
+      This should be low for dual DSI and high for single DSI mode.
+
+  ports:
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - vdda-supply
+  - reset-gpios
+  - mode-gpios
+  - ports
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
+            compatible = "truly,nt35597-2K-display";
+            reg = <0>;
+
+            vdda-supply = <&pm8998_l14>;
+            vdispp-supply = <&lab_regulator>;
+            vdispn-supply = <&ibb_regulator>;
+
+            reset-gpios = <&tlmm 6 GPIO_ACTIVE_LOW>;
+            mode-gpios = <&tlmm 52 GPIO_ACTIVE_HIGH>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    panel0_in: endpoint {
+                        remote-endpoint = <&dsi0_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+
+                    panel1_in: endpoint {
+                        remote-endpoint = <&dsi1_out>;
+                    };
+                };
+            };
+        };
+    };
+...
diff --git a/Documentation/devicetree/bindings/display/truly,nt35597.txt b/Documentation/devicetree/bindings/display/truly,nt35597.txt
deleted file mode 100644
index f39c77ee36ea57ce6f3f9bdc00506b8ac7c918bd..0000000000000000000000000000000000000000
--- a/Documentation/devicetree/bindings/display/truly,nt35597.txt
+++ /dev/null
@@ -1,59 +0,0 @@
-Truly model NT35597 DSI display driver
-
-The Truly NT35597 is a generic display driver, currently only configured
-for use in the 2K display on the Qualcomm SDM845 MTP board.
-
-Required properties:
-- compatible: should be "truly,nt35597-2K-display"
-- vdda-supply: phandle of the regulator that provides the supply voltage
-  Power IC supply
-- vdispp-supply: phandle of the regulator that provides the supply voltage
-  for positive LCD bias
-- vdispn-supply: phandle of the regulator that provides the supply voltage
-  for negative LCD bias
-- reset-gpios: phandle of gpio for reset line
-  This should be 8mA, gpio can be configured using mux, pinctrl, pinctrl-names
-  (active low)
-- mode-gpios: phandle of the gpio for choosing the mode of the display
-  for single DSI or Dual DSI
-  This should be low for dual DSI and high for single DSI mode
-- ports: This device has two video ports driven by two DSIs. Their connections
-  are modeled using the OF graph bindings specified in
-  Documentation/devicetree/bindings/graph.txt.
-  - port@0: DSI input port driven by master DSI
-  - port@1: DSI input port driven by secondary DSI
-
-Example:
-
-	dsi@ae94000 {
-		panel@0 {
-			compatible = "truly,nt35597-2K-display";
-			reg = <0>;
-			vdda-supply = <&pm8998_l14>;
-			vdispp-supply = <&lab_regulator>;
-			vdispn-supply = <&ibb_regulator>;
-			pinctrl-names = "default", "suspend";
-			pinctrl-0 = <&dpu_dsi_active>;
-			pinctrl-1 = <&dpu_dsi_suspend>;
-
-			reset-gpios = <&tlmm 6 GPIO_ACTIVE_LOW>;
-			mode-gpios = <&tlmm 52 GPIO_ACTIVE_HIGH>;
-			ports {
-				#address-cells = <1>;
-				#size-cells = <0>;
-				port@0 {
-					reg = <0>;
-					panel0_in: endpoint {
-						remote-endpoint = <&dsi0_out>;
-					};
-				};
-
-				port@1 {
-					reg = <1>;
-					panel1_in: endpoint {
-						remote-endpoint = <&dsi1_out>;
-					};
-				};
-			};
-		};
-	};

---
base-commit: 08710e696081d58163c8078e0e096be6d35c5fad
change-id: 20250507-topic-misc-truly-nt35597-yaml-ba40899e4980

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


