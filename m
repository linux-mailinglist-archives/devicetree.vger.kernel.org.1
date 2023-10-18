Return-Path: <devicetree+bounces-9776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2077CE688
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 20:30:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C11BF1C20B41
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 18:30:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0101741E24;
	Wed, 18 Oct 2023 18:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b="lTBO+sQH"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9743D41779
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 18:30:06 +0000 (UTC)
Received: from mx1.sberdevices.ru (mx2.sberdevices.ru [45.89.224.132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E32C109;
	Wed, 18 Oct 2023 11:30:04 -0700 (PDT)
Received: from p-infra-ksmg-sc-msk02 (localhost [127.0.0.1])
	by mx1.sberdevices.ru (Postfix) with ESMTP id E103712000F;
	Wed, 18 Oct 2023 21:30:02 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.sberdevices.ru E103712000F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=salutedevices.com;
	s=mail; t=1697653802;
	bh=x42CN6EoNoiGexl3epWnckksVwxtGVTszXAefmrZp6s=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:From;
	b=lTBO+sQHC28xKPWlMO/rAnocbp9WQkoxVN5L3RjphB9V8zKAxXIEQSWeJgXQg7rTu
	 csLWOz6NI8AzLbTrSxrt8gBYQJTCEMOwHRqohTt80LTimDee2F5JxCQf6VQP8IaM0c
	 FYM+Bu8X4W7u0L3cSrqNNZcLJPRcDAWn3rcJdyLwBTKDv590hkX08NgAHSXFuf7Rai
	 QBdJ7SvW/XcezHRowH0MuyWdg13nLx1dWFW1tAIHwKiCK+kMhfT6ygYJdR7sBo0xkB
	 iVKi8tFUHFgIzkNtF9RIyJXX16wJ9EU9qWQgT5DYfsH+xrCHLvpT8VaNXziLYzc2uP
	 4GgFf8nKzTQZQ==
Received: from p-i-exch-sc-m01.sberdevices.ru (p-i-exch-sc-m01.sberdevices.ru [172.16.192.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.sberdevices.ru (Postfix) with ESMTPS;
	Wed, 18 Oct 2023 21:30:00 +0300 (MSK)
Received: from localhost.localdomain (100.64.160.123) by
 p-i-exch-sc-m01.sberdevices.ru (172.16.192.107) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.37; Wed, 18 Oct 2023 21:29:56 +0300
From: Dmitry Rokosov <ddrokosov@salutedevices.com>
To: <lee@kernel.org>, <pavel@ucw.cz>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<andy.shevchenko@gmail.com>
CC: <kernel@sberdevices.ru>, <rockosov@gmail.com>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-leds@vger.kernel.org>, George Stark <gnstark@salutedevices.com>,
	Dmitry Rokosov <ddrokosov@salutedevices.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH v2 05/11] dt-bindings: leds: aw200xx: remove property "awinic,display-rows"
Date: Wed, 18 Oct 2023 21:29:37 +0300
Message-ID: <20231018182943.18700-6-ddrokosov@salutedevices.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20231018182943.18700-1-ddrokosov@salutedevices.com>
References: <20231018182943.18700-1-ddrokosov@salutedevices.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [100.64.160.123]
X-ClientProxiedBy: p-i-exch-sc-m02.sberdevices.ru (172.16.192.103) To
 p-i-exch-sc-m01.sberdevices.ru (172.16.192.107)
X-KSMG-Rule-ID: 10
X-KSMG-Message-Action: clean
X-KSMG-AntiSpam-Lua-Profiles: 180713 [Oct 18 2023]
X-KSMG-AntiSpam-Version: 6.0.0.2
X-KSMG-AntiSpam-Envelope-From: ddrokosov@salutedevices.com
X-KSMG-AntiSpam-Rate: 0
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Auth: dkim=none
X-KSMG-AntiSpam-Info: LuaCore: 541 541 6f62a06a82e8ec968d29b8e7c7bba6aeceb34f57, {Tracking_from_domain_doesnt_match_to}, 127.0.0.199:7.1.2;p-i-exch-sc-m01.sberdevices.ru:7.1.1,5.0.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;100.64.160.123:7.1.2;salutedevices.com:7.1.1, FromAlignment: s, ApMailHostAddress: 100.64.160.123
X-MS-Exchange-Organization-SCL: -1
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiPhishing: Clean
X-KSMG-LinksScanning: Clean
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 2.0.1.6960, bases: 2023/10/18 17:21:00 #22224798
X-KSMG-AntiVirus-Status: Clean, skipped
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: George Stark <gnstark@salutedevices.com>

Get rid of the property "awinic,display-rows" and calculate it
in the driver using led definition nodes.

Signed-off-by: George Stark <gnstark@salutedevices.com>
Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../bindings/leds/awinic,aw200xx.yaml         | 28 +++----------------
 1 file changed, 4 insertions(+), 24 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
index 255eb0563737..ee849ef3236a 100644
--- a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
+++ b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
@@ -36,11 +36,6 @@ properties:
   "#size-cells":
     const: 0
 
-  awinic,display-rows:
-    $ref: /schemas/types.yaml#/definitions/uint32
-    description:
-      Leds matrix size
-
   hwen-gpios:
     maxItems: 1
 
@@ -63,31 +58,17 @@ patternProperties:
           since the chip has a single global setting.
           The maximum output current of each LED is calculated by the
           following formula:
-            IMAXled = 160000 * (592 / 600.5) * (1 / display-rows)
+            IMAXled = 160000 * (592 / 600.5) * (1 / max-current-switch-number)
           And the minimum output current formula:
-            IMINled = 3300 * (592 / 600.5) * (1 / display-rows)
+            IMINled = 3300 * (592 / 600.5) * (1 / max-current-switch-number)
+          where max-current-switch-number is determinated by led configuration
+          and depends on how leds are physically connected to the led driver.
 
 required:
   - compatible
   - reg
   - "#address-cells"
   - "#size-cells"
-  - awinic,display-rows
-
-allOf:
-  - if:
-      properties:
-        compatible:
-          contains:
-            const: awinic,aw20036
-    then:
-      properties:
-        awinic,display-rows:
-          enum: [1, 2, 3]
-    else:
-      properties:
-        awinic,display-rows:
-          enum: [1, 2, 3, 4, 5, 6, 7]
 
 additionalProperties: false
 
@@ -105,7 +86,6 @@ examples:
             reg = <0x3a>;
             #address-cells = <1>;
             #size-cells = <0>;
-            awinic,display-rows = <3>;
             hwen-gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
 
             led@0 {
-- 
2.36.0


