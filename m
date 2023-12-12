Return-Path: <devicetree+bounces-24139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 980AD80E291
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 04:18:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4125A1F21C60
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 03:18:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72C1363D5;
	Tue, 12 Dec 2023 03:18:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAD98DB;
	Mon, 11 Dec 2023 19:18:14 -0800 (PST)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 9835824E2AC;
	Tue, 12 Dec 2023 11:18:13 +0800 (CST)
Received: from EXMBX072.cuchost.com (172.16.6.82) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 12 Dec
 2023 11:18:13 +0800
Received: from localhost.localdomain (202.188.176.82) by EXMBX072.cuchost.com
 (172.16.6.82) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 12 Dec
 2023 11:18:09 +0800
From: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
To: Xingyu Wu <xingyu.wu@starfivetech.com>, Samin Guo
	<samin.guo@starfivetech.com>, Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>
CC: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>, Ley Foon Tan
	<leyfoon.tan@starfivetech.com>, <linux-watchdog@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 1/1] dt-bindings: watchdog: starfive,jh7100-wdt: Add compatible for JH8100
Date: Tue, 12 Dec 2023 11:17:31 +0800
Message-ID: <20231212031731.2498584-2-jisheng.teoh@starfivetech.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231212031731.2498584-1-jisheng.teoh@starfivetech.com>
References: <20231212031731.2498584-1-jisheng.teoh@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX072.cuchost.com
 (172.16.6.82)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

Add "starfive,jh8100-wdt" compatible string for StarFive's JH8100
watchdog.
Since JH8100 watchdog only has 1 reset signal, update binding
document to support one reset for "starfive,jh8100-wdt" compatible.

Signed-off-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
Signed-off-by: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
---
 .../devicetree/bindings/watchdog/starfive,jh7100-wdt.yaml       | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/watchdog/starfive,jh7100-w=
dt.yaml b/Documentation/devicetree/bindings/watchdog/starfive,jh7100-wdt.=
yaml
index 68f3f6fd08a6..02572b16ac08 100644
--- a/Documentation/devicetree/bindings/watchdog/starfive,jh7100-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/starfive,jh7100-wdt.yaml
@@ -27,6 +27,7 @@ properties:
     enum:
       - starfive,jh7100-wdt
       - starfive,jh7110-wdt
+      - starfive,jh8100-wdt
=20
   reg:
     maxItems: 1
@@ -45,6 +46,7 @@ properties:
       - const: core
=20
   resets:
+    minItems: 1
     items:
       - description: APB reset
       - description: Core reset
--=20
2.25.1


