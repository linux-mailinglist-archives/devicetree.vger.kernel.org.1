Return-Path: <devicetree+bounces-6496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7517BB888
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 15:04:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7CCD61C209BE
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 13:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F3BC208C3;
	Fri,  6 Oct 2023 13:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2101D55B
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 13:04:52 +0000 (UTC)
Received: from mail11.truemail.it (mail11.truemail.it [IPv6:2001:4b7e:0:8::81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E53BCF;
	Fri,  6 Oct 2023 06:04:51 -0700 (PDT)
Received: from francesco-nb.corp.toradex.com (unknown [201.82.41.210])
	by mail11.truemail.it (Postfix) with ESMTPA id CC59C2115B;
	Fri,  6 Oct 2023 15:04:46 +0200 (CEST)
From: Francesco Dolcini <francesco@dolcini.it>
To: Sebastian Reichel <sre@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Stefan Eichenberger <stefan.eichenberger@toradex.com>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: [PATCH v2 3/4] dt-bindings: power: reset: gpio-poweroff: Add priority property
Date: Fri,  6 Oct 2023 10:04:27 -0300
Message-Id: <20231006130428.11259-4-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231006130428.11259-1-francesco@dolcini.it>
References: <20231006130428.11259-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Stefan Eichenberger <stefan.eichenberger@toradex.com>

Add the priority property to the gpio-poweroff bindings description.

Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
v1->v2:
 - Add $ref to restart-handler.yaml in gpio-poweroff.yaml
---
 .../devicetree/bindings/power/reset/gpio-poweroff.yaml      | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/reset/gpio-poweroff.yaml b/Documentation/devicetree/bindings/power/reset/gpio-poweroff.yaml
index b54ec003a1e0..a4b437fce37c 100644
--- a/Documentation/devicetree/bindings/power/reset/gpio-poweroff.yaml
+++ b/Documentation/devicetree/bindings/power/reset/gpio-poweroff.yaml
@@ -18,6 +18,9 @@ description: >
   Finally the operating system assumes the power off failed if
   the system is still running after waiting some time (timeout-ms).
 
+allOf:
+  - $ref: restart-handler.yaml#
+
 properties:
   compatible:
     const: gpio-poweroff
@@ -40,6 +43,9 @@ properties:
     default: 100
     description: Delay to wait after driving gpio inactive
 
+  priority:
+    default: 0
+
   timeout-ms:
     default: 3000
     description: Time to wait before assuming the power off sequence failed.
-- 
2.25.1


