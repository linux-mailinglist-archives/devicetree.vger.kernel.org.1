Return-Path: <devicetree+bounces-13449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0878A7DE259
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:25:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B22B21F21A0D
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 14:25:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1248D13AF5;
	Wed,  1 Nov 2023 14:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b="EF0M8E3c"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0607F14003
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 14:25:09 +0000 (UTC)
Received: from mx1.sberdevices.ru (mx2.sberdevices.ru [45.89.224.132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A1D211F;
	Wed,  1 Nov 2023 07:25:05 -0700 (PDT)
Received: from p-infra-ksmg-sc-msk02 (localhost [127.0.0.1])
	by mx1.sberdevices.ru (Postfix) with ESMTP id 1383B120032;
	Wed,  1 Nov 2023 17:25:04 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.sberdevices.ru 1383B120032
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=salutedevices.com;
	s=mail; t=1698848704;
	bh=UZDYWkxi8+nvXNyxR9IKdfr8PwqZ7IbcsARIkKGC5ys=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:From;
	b=EF0M8E3csQIaK7teJ8ijWDcGMAjHnra75G/muh9hXsLQ7OVaT22LwiB6rXGklNd0A
	 6vDqLiRFSEZY/GqZ90GnA/MeHT8ss9KXRZK7+RjCgTCcLxrIw/xe4jnwHmmyByaJC3
	 0v5v4EaUtCbxI7c3JjD8EGo6lc4dmqNxGNTp17TLvH9lDrZRZgHn7VZLyf+IAzBUv9
	 pv5cEUSX4Z3gFpjWePypuZBdzJQqwgeh9VOOC+pfaDibLp/KVekDaWZNIRIaTCHNDJ
	 puvInaFYGxv/6hXJTPoeyK32VPy7sjgWG3Uisnf5vuUzkUQOo3l6vLeUYL06Pu/PRX
	 SyZyGJ3LgttMw==
Received: from p-i-exch-sc-m01.sberdevices.ru (p-i-exch-sc-m01.sberdevices.ru [172.16.192.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.sberdevices.ru (Postfix) with ESMTPS;
	Wed,  1 Nov 2023 17:25:03 +0300 (MSK)
Received: from localhost.localdomain (100.64.160.123) by
 p-i-exch-sc-m01.sberdevices.ru (172.16.192.107) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.37; Wed, 1 Nov 2023 17:25:03 +0300
From: Dmitry Rokosov <ddrokosov@salutedevices.com>
To: <lee@kernel.org>, <pavel@ucw.cz>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<andy.shevchenko@gmail.com>
CC: <kernel@sberdevices.ru>, <rockosov@gmail.com>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-leds@vger.kernel.org>, Dmitry Rokosov <ddrokosov@salutedevices.com>
Subject: [PATCH v3 11/11] dt-bindings: leds: aw200xx: fix led pattern and add reg constraints
Date: Wed, 1 Nov 2023 17:24:45 +0300
Message-ID: <20231101142445.8753-12-ddrokosov@salutedevices.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20231101142445.8753-1-ddrokosov@salutedevices.com>
References: <20231101142445.8753-1-ddrokosov@salutedevices.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [100.64.160.123]
X-ClientProxiedBy: p-i-exch-sc-m01.sberdevices.ru (172.16.192.107) To
 p-i-exch-sc-m01.sberdevices.ru (172.16.192.107)
X-KSMG-Rule-ID: 10
X-KSMG-Message-Action: clean
X-KSMG-AntiSpam-Lua-Profiles: 181053 [Nov 01 2023]
X-KSMG-AntiSpam-Version: 6.0.0.2
X-KSMG-AntiSpam-Envelope-From: ddrokosov@salutedevices.com
X-KSMG-AntiSpam-Rate: 0
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Auth: dkim=none
X-KSMG-AntiSpam-Info: LuaCore: 543 543 1e3516af5cdd92079dfeb0e292c8747a62cb1ee4, {Tracking_from_domain_doesnt_match_to}, 100.64.160.123:7.1.2;p-i-exch-sc-m01.sberdevices.ru:5.0.1,7.1.1;salutedevices.com:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;127.0.0.199:7.1.2, FromAlignment: s, ApMailHostAddress: 100.64.160.123
X-MS-Exchange-Organization-SCL: -1
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiPhishing: Clean
X-KSMG-LinksScanning: Clean
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 2.0.1.6960, bases: 2023/11/01 13:00:00 #22378131
X-KSMG-AntiVirus-Status: Clean, skipped

AW200XX controllers have the capability to declare more than 0xf LEDs,
therefore, it is necessary to accept LED names using an appropriate
regex pattern.

The register offsets can be adjusted within the specified range, with
the maximum value corresponding to the highest number of LEDs that can
be connected to the controller.

Fixes: e338a05e76ca ("dt-bindings: leds: Add binding for AW200xx")
Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
---
 .../bindings/leds/awinic,aw200xx.yaml         | 64 +++++++++++++++++--
 1 file changed, 58 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
index 67c1d960db1d..ba4511664fb8 100644
--- a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
+++ b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
@@ -45,17 +45,12 @@ properties:
     maxItems: 1
 
 patternProperties:
-  "^led@[0-9a-f]$":
+  "^led@[0-9a-f]+$":
     type: object
     $ref: common.yaml#
     unevaluatedProperties: false
 
     properties:
-      reg:
-        description:
-          LED number
-        maxItems: 1
-
       led-max-microamp:
         default: 9780
         description: |
@@ -69,6 +64,63 @@ patternProperties:
           where max-current-switch-number is determinated by led configuration
           and depends on how leds are physically connected to the led driver.
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: awinic,aw20036
+    then:
+      patternProperties:
+        "^led@[0-9a-f]+$":
+          properties:
+            reg:
+              items:
+                minimum: 0
+                maximum: 36
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: awinic,aw20054
+    then:
+      patternProperties:
+        "^led@[0-9a-f]+$":
+          properties:
+            reg:
+              items:
+                minimum: 0
+                maximum: 54
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: awinic,aw20072
+    then:
+      patternProperties:
+        "^led@[0-9a-f]+$":
+          properties:
+            reg:
+              items:
+                minimum: 0
+                maximum: 72
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: awinic,aw20108
+    then:
+      patternProperties:
+        "^led@[0-9a-f]+$":
+          properties:
+            reg:
+              items:
+                minimum: 0
+                maximum: 108
+
 required:
   - compatible
   - reg
-- 
2.36.0


