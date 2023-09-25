Return-Path: <devicetree+bounces-3283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF367AE0C5
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 23:28:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id B331A1C20355
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 21:28:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC015241EF;
	Mon, 25 Sep 2023 21:28:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD37F224F0
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 21:28:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB0AEC433C7;
	Mon, 25 Sep 2023 21:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695677306;
	bh=k11FO+tobwQenACLbB1LItsIBnNjBvlbdtKW6gNnERY=;
	h=From:To:Cc:Subject:Date:From;
	b=rQZVyhr3IPEgAE4KzzEUwj0cAEByNb9PaIJzK7+u8ldY99AxBPw21hErFOB/JI/cX
	 yXuGvT4kODgmEiHkGUDE+kWO4J80HxMvQkldvUUNd2A9oQgC3y4VAsjQ2O41vI3RwH
	 9vS9eZsR2eA6LZmBhZLOHg7wQl5+7WKjxXmeTZWScBX9G+hGUFyOBp3g+YX3R4kgNy
	 aH6jOLodIHUmmCNGywN0e/QlkeFAO2+geFUpLToV9CdM7oiFP+Fyry9W7xtVMKtv4X
	 2FKgOm5UYKZhE8KxKxVvVd9RXjYMn0ooSkFnRZEJL/p+VSW3FdFBWQ2SjNMJgPMeEG
	 BT1XuAKOH/X9w==
Received: (nullmailer pid 1977290 invoked by uid 1000);
	Mon, 25 Sep 2023 21:28:21 -0000
From: Rob Herring <robh@kernel.org>
To: Michael Riesch <michael.riesch@wolfvision.net>, Mauro Carvalho Chehab <mchehab@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] media: dt-bindings: Add missing unevaluatedProperties on child node schemas
Date: Mon, 25 Sep 2023 16:27:58 -0500
Message-Id: <20230925212803.1976803-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Just as unevaluatedProperties or additionalProperties are required at
the top level of schemas, they should (and will) also be required for
child node schemas. That ensures only documented properties are
present for any node.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/media/i2c/sony,imx415.yaml    | 1 +
 .../devicetree/bindings/media/i2c/toshiba,tc358746.yaml         | 2 ++
 Documentation/devicetree/bindings/media/samsung,fimc.yaml       | 1 +
 3 files changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx415.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx415.yaml
index ffccf5f3c9e3..642f9b15d359 100644
--- a/Documentation/devicetree/bindings/media/i2c/sony,imx415.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx415.yaml
@@ -54,6 +54,7 @@ properties:
 
   port:
     $ref: /schemas/graph.yaml#/$defs/port-base
+    unevaluatedProperties: false
 
     properties:
       endpoint:
diff --git a/Documentation/devicetree/bindings/media/i2c/toshiba,tc358746.yaml b/Documentation/devicetree/bindings/media/i2c/toshiba,tc358746.yaml
index c5cab549ee8e..1c476b635b69 100644
--- a/Documentation/devicetree/bindings/media/i2c/toshiba,tc358746.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/toshiba,tc358746.yaml
@@ -69,6 +69,7 @@ properties:
     properties:
       port@0:
         $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
         description: Input port
 
         properties:
@@ -89,6 +90,7 @@ properties:
 
       port@1:
         $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
         description: Output port
 
         properties:
diff --git a/Documentation/devicetree/bindings/media/samsung,fimc.yaml b/Documentation/devicetree/bindings/media/samsung,fimc.yaml
index 79ff6d83a9fd..b3486c38a05b 100644
--- a/Documentation/devicetree/bindings/media/samsung,fimc.yaml
+++ b/Documentation/devicetree/bindings/media/samsung,fimc.yaml
@@ -57,6 +57,7 @@ properties:
     patternProperties:
       "^port@[01]$":
         $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
         description:
           Camera A and camera B inputs.
 
-- 
2.40.1


