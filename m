Return-Path: <devicetree+bounces-24710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 587B5810F86
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:13:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 922851C2090E
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 11:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB28323750;
	Wed, 13 Dec 2023 11:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jVbpzKJ2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FC9DA0;
	Wed, 13 Dec 2023 03:13:36 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40c39e936b4so43966955e9.1;
        Wed, 13 Dec 2023 03:13:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702466014; x=1703070814; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=pseVIGzd7eyiYVBzBkDesQe+yf2EQsf+aQtmWaQTTlc=;
        b=jVbpzKJ2HeirdAUssUGlLqzX6mnw7TBGNMdW65A/qccraMHGtg8xfKZUA/ALJpWd2i
         tNt4rxmaKQMxfEPZ7jvR84rNOWX82qR7d2acKn0AZKl4xIvu2PrlV/J1LxkO2+Ypxm3z
         F2shT2atyBl+HUkrGT25nf69bCNmosvSBK5S5EsKPvFD/zx2B8LEXDVTyyAfdu4xwm0G
         pRwU4hcBmiA7uHpAROohDwQxcGJaUvA4QjuUri94ZYHkgy/bF9cpJKAXuGvok6ZLwhS5
         h8bMZmzNIlsRI8HALDsCf9yuj73g6O5ez52Ne8Vg9ZHzRR3TLt7bPr1Z6tjb8+9N9sF1
         CyyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702466014; x=1703070814;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pseVIGzd7eyiYVBzBkDesQe+yf2EQsf+aQtmWaQTTlc=;
        b=DKLHOvE45QPCdtUKLwW5TLrVfZRoAXyZyJQyDaRcmZ6VYq4q4sQwNuMGAMVkSCsIfa
         ocRO1RaiH6wri0WDGIRZteeO4L+4mxZtGrpQ7pvAc0K651XZzpmFUq4sFPY4NgUrjE+e
         +NH5iWp03xiBdgXw96hDkrVOHqqMFd+mPpYFLFeE1c6dM+9C9bqIQ1asZfidWrFU7IhD
         NRDTj3aCon/gFCVdq9imzEHQx2pATKVWuyqt/AN9bkzp8pLwfL9a7SU3dSxMF7CXq50F
         jfUx2c+Vuj7tY7H0CicFuXYHh0XDF4RIUXWJ1nmkCWLY18cjN1yryalDWnParYK2mSg5
         EGfA==
X-Gm-Message-State: AOJu0YzQEajUjjQ78YljHd1PG+LZsoowFuW1/KVMiaxxD6TZLvsl3V0k
	elV62ygp5/otYPhb0zg0iNs=
X-Google-Smtp-Source: AGHT+IGBrr1sn7Nn9IZUticHEuMeE7EOrZvAcKt6aGuXAw9tCvZbxWx8/SBrAm7sDlVUNks2+mZtHQ==
X-Received: by 2002:a05:600c:21c7:b0:40c:251a:101a with SMTP id x7-20020a05600c21c700b0040c251a101amr2010600wmj.311.1702466014389;
        Wed, 13 Dec 2023 03:13:34 -0800 (PST)
Received: from localhost.localdomain (93-34-89-13.ip49.fastwebnet.it. [93.34.89.13])
        by smtp.googlemail.com with ESMTPSA id fc7-20020a05600c524700b0040c44cb251dsm12388301wmb.46.2023.12.13.03.13.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 03:13:34 -0800 (PST)
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
Subject: [net-next PATCH v3 1/4] dt-bindings: net: phy: Document new LEDs active-low property
Date: Wed, 13 Dec 2023 12:13:19 +0100
Message-Id: <20231213111322.6152-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document new LEDs active-low property to define if the LED require to be
set low to be turned on.

active-low can be defined in the leds node for PHY that apply the LED
polarity globally for each attached LED or in the specific led node for
PHY that supports setting the LED polarity per LED.

Declaring both way is not supported and will result in the schema
getting rejected.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
Changes v3:
- Out of RFC
Changes v2:
- Add this patch

 .../devicetree/bindings/net/ethernet-phy.yaml | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
index 8fb2a6ee7e5b..9cb3981fed2a 100644
--- a/Documentation/devicetree/bindings/net/ethernet-phy.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
@@ -213,6 +213,11 @@ properties:
       '#size-cells':
         const: 0
 
+      'active-low':
+        type: boolean
+        description:
+          This define whether all LEDs needs to be low to be turned on.
+
     patternProperties:
       '^led@[a-f0-9]+$':
         $ref: /schemas/leds/common.yaml#
@@ -225,11 +230,26 @@ properties:
               driver dependent and required for ports that define multiple
               LED for the same port.
 
+          'active-low':
+            type: boolean
+            description:
+              This define whether the LED needs to be low to be turned on.
+
         required:
           - reg
 
         unevaluatedProperties: false
 
+    allOf:
+      - if:
+          required:
+            - active-low
+        then:
+          patternProperties:
+            '^led@[a-f0-9]+$':
+              properties:
+                'active-low': false
+
     additionalProperties: false
 
 required:
-- 
2.40.1


