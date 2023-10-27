Return-Path: <devicetree+bounces-12406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A07FD7D95D4
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 12:59:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4138CB2134D
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 10:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 328401803D;
	Fri, 27 Oct 2023 10:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AABB317992
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 10:59:34 +0000 (UTC)
Received: from mail-sh.amlogic.com (unknown [58.32.228.44])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39091D6;
	Fri, 27 Oct 2023 03:59:33 -0700 (PDT)
Received: from rd02-sz.amlogic.software (10.28.11.83) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server id 15.1.2507.13; Fri, 27 Oct 2023
 18:44:25 +0800
From: Huqiang Qin <huqiang.qin@amlogic.com>
To: <wim@linux-watchdog.org>, <linux@roeck-us.net>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<neil.armstrong@linaro.org>, <khilman@baylibre.com>, <jbrunet@baylibre.com>,
	<martin.blumenstingl@googlemail.com>
CC: <linux-watchdog@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-amlogic@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Huqiang Qin <huqiang.qin@amlogic.com>
Subject: [PATCH V3 1/3] dt-bindings: watchdog: Add support for Amlogic C3 and S4 SoCs
Date: Fri, 27 Oct 2023 18:43:56 +0800
Message-ID: <20231027104358.342861-2-huqiang.qin@amlogic.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231027104358.342861-1-huqiang.qin@amlogic.com>
References: <20231027104358.342861-1-huqiang.qin@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.28.11.83]

Update dt-binding document for watchdog of Amlogic C3 and S4 SoCs.

Signed-off-by: Huqiang Qin <huqiang.qin@amlogic.com>
---
 .../bindings/watchdog/amlogic,meson-gxbb-wdt.yaml    | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/watchdog/amlogic,meson-gxbb-wdt.yaml b/Documentation/devicetree/bindings/watchdog/amlogic,meson-gxbb-wdt.yaml
index 443e2e7ab467..69845ec32e81 100644
--- a/Documentation/devicetree/bindings/watchdog/amlogic,meson-gxbb-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/amlogic,meson-gxbb-wdt.yaml
@@ -15,9 +15,15 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - amlogic,meson-gxbb-wdt
-      - amlogic,t7-wdt
+    oneOf:
+      - enum:
+          - amlogic,meson-gxbb-wdt
+          - amlogic,t7-wdt
+      - items:
+          - enum:
+              - amlogic,c3-wdt
+              - amlogic,s4-wdt
+          - const: amlogic,t7-wdt
 
   reg:
     maxItems: 1
-- 
2.42.0


