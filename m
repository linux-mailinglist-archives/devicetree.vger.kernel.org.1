Return-Path: <devicetree+bounces-9773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5C97CE67E
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 20:30:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7C4E91C20D6B
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 18:30:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB35A37CAF;
	Wed, 18 Oct 2023 18:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b="u6GaW7II"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2441A38BA9
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 18:30:03 +0000 (UTC)
Received: from mx1.sberdevices.ru (mx2.sberdevices.ru [45.89.224.132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D7B3114;
	Wed, 18 Oct 2023 11:30:01 -0700 (PDT)
Received: from p-infra-ksmg-sc-msk02 (localhost [127.0.0.1])
	by mx1.sberdevices.ru (Postfix) with ESMTP id E392112000D;
	Wed, 18 Oct 2023 21:29:59 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.sberdevices.ru E392112000D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=salutedevices.com;
	s=mail; t=1697653799;
	bh=Wv20QjlvBmCdA45mmQ3nJQkxxF8QBMnWZ6pL/sYhpt8=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:From;
	b=u6GaW7II7GVAZanCuEhShtwDrE64Ls1QsEe29dgltff7tUsFPjaAEdv3Lbbrt9t1f
	 c3rjbB8lQW/deTARbewY0oPoKQxLc/ThS9C0vX1WDKdP/ovKwNuKBMqmHSd9UWGr09
	 phyBr9PeASPKUhFAiOC4sQ4GB0c5uF0/aj9Pg0eBpx+XlvvytMTUplJLdqYoi8X5cx
	 GTMB763N5TfgW8OSCQWyt3M3WJkFGAa/T1aD3/bodWpjHkCBVbSmNalSUNbsFqqWgc
	 i3rU4t3+bO405Ce1kbAeUGDrKy9hWZFAI24OJLhi7i/+iQplmsAA3OTBs+5FKhrPPS
	 v+h8yR7FobDDQ==
Received: from p-i-exch-sc-m01.sberdevices.ru (p-i-exch-sc-m01.sberdevices.ru [172.16.192.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.sberdevices.ru (Postfix) with ESMTPS;
	Wed, 18 Oct 2023 21:29:59 +0300 (MSK)
Received: from localhost.localdomain (100.64.160.123) by
 p-i-exch-sc-m01.sberdevices.ru (172.16.192.107) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.37; Wed, 18 Oct 2023 21:29:54 +0300
From: Dmitry Rokosov <ddrokosov@salutedevices.com>
To: <lee@kernel.org>, <pavel@ucw.cz>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<andy.shevchenko@gmail.com>
CC: <kernel@sberdevices.ru>, <rockosov@gmail.com>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-leds@vger.kernel.org>, Dmitry Rokosov <ddrokosov@salutedevices.com>
Subject: [PATCH v2 03/11] dt-bindings: leds: aw200xx: introduce optional hwen-gpios property
Date: Wed, 18 Oct 2023 21:29:35 +0300
Message-ID: <20231018182943.18700-4-ddrokosov@salutedevices.com>
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

Property 'hwen-gpios' is optional, it can be used by the board
developer to connect AW200XX LED controller with appropriate poweron
GPIO pad.

Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
---
 Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
index feb5febaf361..255eb0563737 100644
--- a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
+++ b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
@@ -41,6 +41,9 @@ properties:
     description:
       Leds matrix size
 
+  hwen-gpios:
+    maxItems: 1
+
 patternProperties:
   "^led@[0-9a-f]$":
     type: object
@@ -90,6 +93,7 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/gpio/gpio.h>
     #include <dt-bindings/leds/common.h>
 
     i2c {
@@ -102,6 +106,7 @@ examples:
             #address-cells = <1>;
             #size-cells = <0>;
             awinic,display-rows = <3>;
+            hwen-gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
 
             led@0 {
                 reg = <0x0>;
-- 
2.36.0


