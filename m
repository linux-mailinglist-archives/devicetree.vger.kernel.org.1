Return-Path: <devicetree+bounces-4277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C14D7B1CA0
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 14:37:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 8AD811C209F4
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 12:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 504932E638;
	Thu, 28 Sep 2023 12:37:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A618BFF
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 12:37:36 +0000 (UTC)
X-Greylist: delayed 284 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 28 Sep 2023 05:37:35 PDT
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AA84191;
	Thu, 28 Sep 2023 05:37:35 -0700 (PDT)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 5A9F1211DA;
	Thu, 28 Sep 2023 14:37:33 +0200 (CEST)
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
Subject: [PATCH v1 3/4] dt-bindings: power: reset: gpio-poweroff: Add priority property
Date: Thu, 28 Sep 2023 14:37:27 +0200
Message-Id: <20230928123728.21901-3-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230928123728.21901-1-francesco@dolcini.it>
References: <20230928123204.20345-1-francesco@dolcini.it>
 <20230928123728.21901-1-francesco@dolcini.it>
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
 .../devicetree/bindings/power/reset/gpio-poweroff.yaml        | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/reset/gpio-poweroff.yaml b/Documentation/devicetree/bindings/power/reset/gpio-poweroff.yaml
index b54ec003a1e0..c6404841bcd7 100644
--- a/Documentation/devicetree/bindings/power/reset/gpio-poweroff.yaml
+++ b/Documentation/devicetree/bindings/power/reset/gpio-poweroff.yaml
@@ -40,6 +40,10 @@ properties:
     default: 100
     description: Delay to wait after driving gpio inactive
 
+  priority:
+    default: 0
+    description: Priority of the power off handler
+
   timeout-ms:
     default: 3000
     description: Time to wait before assuming the power off sequence failed.
-- 
2.25.1


