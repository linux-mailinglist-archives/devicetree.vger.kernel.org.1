Return-Path: <devicetree+bounces-24712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A10F3810F8E
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:13:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D3B291C209F1
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 11:13:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBDC3241E6;
	Wed, 13 Dec 2023 11:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NLwzBxxg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80F5FD0;
	Wed, 13 Dec 2023 03:13:38 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-336417c565eso231048f8f.3;
        Wed, 13 Dec 2023 03:13:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702466017; x=1703070817; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jbp9q33bbrLugJBFpEcvsBQj4/TK8c9t0fvxH3F0ISo=;
        b=NLwzBxxghCP0QnwwoHZrt6A3YdNgJANsI3JcQHae++tW606e8sTNll0yhuiwwU3zBI
         fLvjzWElTYdF2zfnHsLHN13GKi5HeB73w2nioOG3I3sSNOhD2VBF5SKYUzcj5IdZJ5kw
         JlqIqqxPazUSf/emfYrfk9HEKNliE+pV5vC/gGENWAWfybfh2MYT8q+LBJ/Ol6e/HCb1
         24ASg2yoBAhvnuFjubcKY4tEIulBBgvSMqLUZYo3r9NGVs5wA+AN1TvleLeG3mN6Gr4r
         04D3r4YiLTF1XludD/gBYBuPqGxwOvYbU3kGYBmSxceJPQ5fdfdBBzBVXErbwrDi+2rU
         s18Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702466017; x=1703070817;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jbp9q33bbrLugJBFpEcvsBQj4/TK8c9t0fvxH3F0ISo=;
        b=lEb7AmKU3AAVUY5W8b7gOTS4v8TaMvMC4172zgr0P0z28zcjioYOyqfL+svRXCeJYC
         UyXvhrCQsoYCDBJDN6kMLwyACNlls++6nu0dCYT8PAMoi500ht8sNIaYxDTK7FaEGMIN
         FP05Yg2T186auvSDosqFnXed6MQP8jojI8jNmnmg39qCatwWzprDmBuPF1/orId5jygk
         uPOi92GJUqyMobA0OlRPoFN2UQepybGe3jJl6H2f4zpEQoBO79HTmf7W6jDs608Jdm3F
         7sDmgfKgMiISp6qx+0BYcKJrD6Cl8dCPJ89G9eFN57xUyVv4kiJYq8w6to0ZPypQNLgm
         hjjQ==
X-Gm-Message-State: AOJu0Yx/x2AGaVTaJPQRTQdaRYIubsDTgyQqtFby7wNWhl610XQHk91t
	YxZcT9w+aOFdSDwG8ArLEjA=
X-Google-Smtp-Source: AGHT+IFWkPO9Nss0vhFpGA57iic9MYUJdCpaj7kHQAJBo0ABhra1nTjDGWoPQ09dOzJIFDE3iCFdWA==
X-Received: by 2002:a05:600c:511f:b0:40b:5e1a:db8b with SMTP id o31-20020a05600c511f00b0040b5e1adb8bmr2719903wms.44.1702466016445;
        Wed, 13 Dec 2023 03:13:36 -0800 (PST)
Received: from localhost.localdomain (93-34-89-13.ip49.fastwebnet.it. [93.34.89.13])
        by smtp.googlemail.com with ESMTPSA id fc7-20020a05600c524700b0040c44cb251dsm12388301wmb.46.2023.12.13.03.13.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 03:13:36 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [net-next PATCH v3 3/4] dt-bindings: net: Document QCA808x PHYs
Date: Wed, 13 Dec 2023 12:13:21 +0100
Message-Id: <20231213111322.6152-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231213111322.6152-1-ansuelsmth@gmail.com>
References: <20231213111322.6152-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Documentation for QCA808x PHYs for the additional LED configuration
for this PHY.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
For Rob, I used enum instead of const as I assume more PHY will
come in the future for the qca808x family. Currently only qca8081
has seen around.

Changes v3:
- Use compatible instead of select
- Out of RFC
Changes v2:
- Fix License warning from checkpatch
- Drop redundant Description phrase
- Improve commit tile
- Drop special property (generalized)

 .../devicetree/bindings/net/qca,qca808x.yaml  | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/qca,qca808x.yaml

diff --git a/Documentation/devicetree/bindings/net/qca,qca808x.yaml b/Documentation/devicetree/bindings/net/qca,qca808x.yaml
new file mode 100644
index 000000000000..e2552655902a
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/qca,qca808x.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/qca,qca808x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Atheros QCA808X PHY
+
+maintainers:
+  - Christian Marangi <ansuelsmth@gmail.com>
+
+description:
+  QCA808X PHYs can have up to 3 LEDs attached.
+  All 3 LEDs are disabled by default.
+  2 LEDs have dedicated pins with the 3rd LED having the
+  double function of Interrupt LEDs/GPIO or additional LED.
+
+  By default this special PIN is set to LED function.
+
+allOf:
+  - $ref: ethernet-phy.yaml#
+
+properties:
+  compatible:
+    enum:
+      - ethernet-phy-id004d.d101
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/leds/common.h>
+
+    mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ethernet-phy@0 {
+            compatible = "ethernet-phy-id004d.d101";
+            reg = <0>;
+
+            leds {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                led@0 {
+                    reg = <0>;
+                    color = <LED_COLOR_ID_GREEN>;
+                    function = LED_FUNCTION_WAN;
+                    default-state = "keep";
+                };
+            };
+        };
+    };
-- 
2.40.1


