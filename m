Return-Path: <devicetree+bounces-25578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F387813B61
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 21:15:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3F98BB214F9
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 20:15:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FC4B6A03E;
	Thu, 14 Dec 2023 20:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=waldekranz-com.20230601.gappssmtp.com header.i=@waldekranz-com.20230601.gappssmtp.com header.b="w2uXRO/G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45626A329
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 20:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=waldekranz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=waldekranz.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-50bfd7be487so9716594e87.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 12:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1702584905; x=1703189705; darn=vger.kernel.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+yM7zmNbZ3NMKlj22szdncYUAuggJTnUNqcTouIT5Qs=;
        b=w2uXRO/GMU/UWDaWOkuboB9XzmsArwibi0TtG7kO2dtWI4wjIiaciE3XpgAwJQvnwy
         nMM9EN8dgrM2S6E41hkSpPYxr9jPbxtltK2wWZcS6gNzy6ipfXrMC9sUg6/hJox1STPg
         NV/VGcvVcDBnv7izABAQm+HJrptdCX0SpXu5igE52a9yRShlRoLMDs3bmVfkICwaGKvP
         yvMOaEB3Pz03U6MgKRIzNAEpTcRQz9XlnDFx0HNn/SgJBmVD+Lbzv+akS1CwrS/ptocc
         HBPX5LHhlWYAte3CQURtkOxzv0vIEosHLu3E3/zPsjjSkhtWLNZiJDpIs3BJii4ze4+q
         mzZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702584905; x=1703189705;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+yM7zmNbZ3NMKlj22szdncYUAuggJTnUNqcTouIT5Qs=;
        b=WbqvTmo0vLmklYASZmRQszf+/0y/jK0wp5bSfttksvcZl9VPKb9e82d5RtQRM0PZ8+
         2TEZqQHsUefzjcUrzFCmV6Oehhhf8jS9zsy29Vo5JAw4l9UGU8BNcw6O6tOtf1T8GGPN
         9kwXUHjhhPtU5rYVl8IEmDg8phaKt53P4r2xkZJyzqJkS6rvwIEMcPCpBMT8x5f3dSg4
         elLErgwstIPITbNk9HaeY2S3kHqPc2fZzAGVGlOQ9YXU0p+l7pHNSlh0pxbM1nksh6SA
         9YY1QjV7oUQPxObxsbIG9QDCBysYfBI4rMMKYf6uxmc0bVknjaZ+pJ5XooFaqYho3tkg
         3ujQ==
X-Gm-Message-State: AOJu0YxCTNNBSeo/WRWXyk3AtbM1tNejErVJSr0OD4ELCXEIvWHwNjld
	xl2cEAOo/cACpLhPrE8wt0o7wA==
X-Google-Smtp-Source: AGHT+IGlxWLTei4ZhkkCQO5kN+blstnu3fm/QzjY3Gm3mbAab7sIaqeIXNBqxpx6zULCUy0YYjdlPw==
X-Received: by 2002:a05:6512:31d2:b0:50e:154e:d7ad with SMTP id j18-20020a05651231d200b0050e154ed7admr1325381lfe.79.1702584905748;
        Thu, 14 Dec 2023 12:15:05 -0800 (PST)
Received: from wkz-x13.addiva.ad (h-158-174-187-194.NA.cust.bahnhof.se. [158.174.187.194])
        by smtp.gmail.com with ESMTPSA id dw11-20020a0565122c8b00b0050e140f84besm369519lfb.164.2023.12.14.12.15.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 12:15:04 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Cc: linux@armlinux.org.uk,
	kabel@kernel.org,
	andrew@lunn.ch,
	hkallweit1@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH net-next 4/4] dt-bindings: net: marvell10g: Document LED polarity
Date: Thu, 14 Dec 2023 21:14:42 +0100
Message-Id: <20231214201442.660447-5-tobias@waldekranz.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214201442.660447-1-tobias@waldekranz.com>
References: <20231214201442.660447-1-tobias@waldekranz.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Organization: Addiva Elektronik
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hardware supports multiple ways of driving attached LEDs, but this is
not configurable via any sample-at-reset pins - rather it must be set
via software.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 .../bindings/net/marvell,marvell10g.yaml      | 60 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/marvell,marvell10g.yaml

diff --git a/Documentation/devicetree/bindings/net/marvell,marvell10g.yaml b/Documentation/devicetree/bindings/net/marvell,marvell10g.yaml
new file mode 100644
index 000000000000..37ff7fdfdd3d
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/marvell,marvell10g.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/marvell,marvell10g.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Alaska X 10G Ethernet PHY
+
+maintainers:
+  - Tobias Waldekranz <tobias@waldekranz.com>
+
+description: |
+  Bindings for Marvell Alaska X 10G Ethernet PHYs
+
+allOf:
+  - $ref: ethernet-phy.yaml#
+
+properties:
+  leds:
+    type: object
+
+    properties:
+      '#address-cells':
+        const: 1
+
+      '#size-cells':
+        const: 0
+
+    patternProperties:
+      '^led@[a-f0-9]+$':
+        $ref: /schemas/leds/common.yaml#
+
+        properties:
+          marvell,polarity:
+            description: |
+              Electrical polarity and drive type for this LED. In the
+              active state, hardware may drive the pin either low or
+              high. In the inactive state, the pin can either be
+              driven to the opposite logic level, or be tristated.
+            $ref: /schemas/types.yaml#/definitions/string
+            enum:
+              - active-low
+              - active-high
+              - active-low-tristate
+              - active-high-tristate
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ethernet-phy@0 {
+            reg = <0>;
+
+            marvell,polarity = "active-low-tristate";
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index a151988646fe..2def66789f9d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12849,6 +12849,7 @@ M:	Russell King <linux@armlinux.org.uk>
 M:	Marek Behún <kabel@kernel.org>
 L:	netdev@vger.kernel.org
 S:	Maintained
+F:	Documentation/devicetree/bindings/net/marvell,marvell10g.yaml
 F:	drivers/net/phy/marvell10g.c
 
 MARVELL MVEBU THERMAL DRIVER
-- 
2.34.1


