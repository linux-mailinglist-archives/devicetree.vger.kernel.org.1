Return-Path: <devicetree+bounces-13448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 077247DE25B
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:25:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8CE1FB21108
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 14:25:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3140414006;
	Wed,  1 Nov 2023 14:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b="c7oHvFbG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18E613AF9
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 14:25:06 +0000 (UTC)
Received: from mx1.sberdevices.ru (mx2.sberdevices.ru [45.89.224.132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88B70115;
	Wed,  1 Nov 2023 07:25:00 -0700 (PDT)
Received: from p-infra-ksmg-sc-msk02 (localhost [127.0.0.1])
	by mx1.sberdevices.ru (Postfix) with ESMTP id 27870120035;
	Wed,  1 Nov 2023 17:24:59 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.sberdevices.ru 27870120035
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=salutedevices.com;
	s=mail; t=1698848699;
	bh=9aZqnQoakoRLfMLYgr2wRgT/Br89mjgKuUHrpHJK25M=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:From;
	b=c7oHvFbGNfSgx/hDHPCHD0cR5SCE6n+jVhVVuJo3FBTvkswsbdmYeyYwDt5ekDNFv
	 CbpWU6UNUb+MLcWDpp5W5q3tRn3s3BRyDop+dMdZB44XtYNSj4za1Fx3SC6lv0tTgz
	 jPlbHuoYzyo39POffvybzOS1ZHFAo1squzcjO2oGz/wJxrlNYDXl8uuzsFj/4/Wkwo
	 MqPn/hEd1aaQUWbDbBe90ztz6380iDPPueC3zNA74tD+odT/sKXpVOLY4vtr/1RYO1
	 evmIh2WrJXjNhfiwjYSnRWIqXQ9KCV0iBxphlCtcQBHDfvcKTY28fTd397F0VhMgpK
	 FJ49D6uGmyWmA==
Received: from p-i-exch-sc-m01.sberdevices.ru (p-i-exch-sc-m01.sberdevices.ru [172.16.192.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.sberdevices.ru (Postfix) with ESMTPS;
	Wed,  1 Nov 2023 17:24:58 +0300 (MSK)
Received: from localhost.localdomain (100.64.160.123) by
 p-i-exch-sc-m01.sberdevices.ru (172.16.192.107) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.37; Wed, 1 Nov 2023 17:24:58 +0300
From: Dmitry Rokosov <ddrokosov@salutedevices.com>
To: <lee@kernel.org>, <pavel@ucw.cz>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<andy.shevchenko@gmail.com>
CC: <kernel@sberdevices.ru>, <rockosov@gmail.com>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-leds@vger.kernel.org>, George Stark <gnstark@salutedevices.com>,
	Dmitry Rokosov <ddrokosov@salutedevices.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH v3 05/11] dt-bindings: leds: aw200xx: remove property "awinic,display-rows"
Date: Wed, 1 Nov 2023 17:24:39 +0300
Message-ID: <20231101142445.8753-6-ddrokosov@salutedevices.com>
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
index 3da3633a242c..a6dced59599d 100644
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
   enable-gpios:
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
             enable-gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
 
             led@0 {
-- 
2.36.0


