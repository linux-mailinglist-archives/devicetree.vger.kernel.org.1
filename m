Return-Path: <devicetree+bounces-10326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9BF7D0D4C
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 12:36:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8CBDB1C2106A
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 10:36:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2861610979;
	Fri, 20 Oct 2023 10:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="B3HpL9rw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E444717986
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 10:35:55 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B77CD65
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 03:35:52 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9ba081173a3so106893666b.1
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 03:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1697798151; x=1698402951; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zcOsTWZFgk36Pr6gD973XFfrWfkQhr13IcUUfM7456o=;
        b=B3HpL9rwjP58F9+ojrAYWhu0KKiuIa9tjlrJWOUopb8kGUUHqTYSXloUhow/KsMnL6
         vBnZioIZ5CeUdV+HtrBwgtgMvtj2gfesgi4u5ghTMW0wJttqsMem5C0FltBKhyehrYKD
         EVBN2rp7rrldWw2WWydUEidCZ0S0slEDHUO4SLB07VGmplKuWiLZIMQei+4K8Bf7rjqS
         Lgt8uVZlC2lklG9CwUycytTDOnLmO0rOsJgqbCL2mSIuoM9RZk8j3cWxwHtgEw179I3W
         GV241vorvwQb0LHP557m2eYz8Cfs0KGmVKuclyoUFI+GSHlGlRsPoyu45XVSaNRki4DF
         qvtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697798151; x=1698402951;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zcOsTWZFgk36Pr6gD973XFfrWfkQhr13IcUUfM7456o=;
        b=XPbteJg3zjI1YuXc/s0cMZepx0Y5xPQ/75zLQgBfwyB7Dqg5FoeiQVvqHcfsGGCF5+
         Cp3DA88KO19gP03r6BHTHkXSeziiBPTkSZgUIK8jTTEqVN1D+kl/iEk6FB/3R/WFihA0
         XOTH+aSTPKZD7Uxzmef/BeDQOlqOxwYfIJiOWZVxR98DEjZjQWqteiGUd59bbtbhZBt5
         iMOoamgW128u90K/UwYub03RL8goHvS+5QUU7aKnIyHJ3m+ylymFVvoK6ohzsgD5SYp4
         fJnb5+Hm00vgAVZc9RcdIIZiASPCYexpUETH2MkCb4W9tc9UOsHyivx8eqY9qEYiTI0K
         r57A==
X-Gm-Message-State: AOJu0Yz722sb2snPnKz46DkbFQpW13Xa68kpSlCLloCxgs1u4BnvazLs
	LbbFc2hQzMT16kqE784Unsao5A==
X-Google-Smtp-Source: AGHT+IFXFm/4t+e5StIvyM1NDl6E74qUulPaU1GTzNjJDDZnnlzXaNEbp6AQa7eU8JChbIQrHL2+tw==
X-Received: by 2002:a17:906:fe04:b0:9c3:cd12:1925 with SMTP id wy4-20020a170906fe0400b009c3cd121925mr966287ejb.58.1697798150757;
        Fri, 20 Oct 2023 03:35:50 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (k10064.upc-k.chello.nl. [62.108.10.64])
        by smtp.gmail.com with ESMTPSA id h7-20020a1709063c0700b0099c53c4407dsm1226701ejg.78.2023.10.20.03.35.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 03:35:50 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 20 Oct 2023 12:35:46 +0200
Subject: [PATCH v2 1/2] dt-bindings: usb: add NXP PTN36502 Type-C redriver
 bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231020-ptn36502-v2-1-b37a337d463e@fairphone.com>
References: <20231020-ptn36502-v2-0-b37a337d463e@fairphone.com>
In-Reply-To: <20231020-ptn36502-v2-0-b37a337d463e@fairphone.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3

Document bindings for this Type-C USB 3.1 Gen 1 and DisplayPort v1.2
combo redriver.

The PTN36502 can also run in GPIO mode where it is configured
differently, without any I2C connection, but this is not supported yet.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../devicetree/bindings/usb/nxp,ptn36502.yaml      | 94 ++++++++++++++++++++++
 1 file changed, 94 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/nxp,ptn36502.yaml b/Documentation/devicetree/bindings/usb/nxp,ptn36502.yaml
new file mode 100644
index 000000000000..eee548ac1abe
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/nxp,ptn36502.yaml
@@ -0,0 +1,94 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/nxp,ptn36502.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP PTN36502 Type-C USB 3.1 Gen 1 and DisplayPort v1.2 combo redriver
+
+maintainers:
+  - Luca Weiss <luca.weiss@fairphone.com>
+
+properties:
+  compatible:
+    enum:
+      - nxp,ptn36502
+
+  reg:
+    maxItems: 1
+
+  vdd18-supply:
+    description: Power supply for VDD18 pin
+
+  retimer-switch:
+    description: Flag the port as possible handle of SuperSpeed signals retiming
+    type: boolean
+
+  orientation-switch:
+    description: Flag the port as possible handler of orientation switching
+    type: boolean
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Super Speed (SS) Output endpoint to the Type-C connector
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Super Speed (SS) Input endpoint from the Super-Speed PHY
+
+      port@2:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Sideband Use (SBU) AUX lines endpoint to the Type-C connector for the purpose of
+          handling altmode muxing and orientation switching.
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        typec-mux@1a {
+            compatible = "nxp,ptn36502";
+            reg = <0x1a>;
+
+            vdd18-supply = <&usb_redrive_1v8>;
+
+            retimer-switch;
+            orientation-switch;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    usb_con_ss: endpoint {
+                        remote-endpoint = <&typec_con_ss>;
+                    };
+                };
+                port@1 {
+                    reg = <1>;
+                    phy_con_ss: endpoint {
+                        remote-endpoint = <&usb_phy_ss>;
+                    };
+                };
+                port@2 {
+                    reg = <2>;
+                    usb_con_sbu: endpoint {
+                        remote-endpoint = <&typec_dp_aux>;
+                    };
+                };
+            };
+        };
+    };
+...

-- 
2.42.0


