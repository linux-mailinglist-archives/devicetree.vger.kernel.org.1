Return-Path: <devicetree+bounces-4399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 430F07B2600
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 21:41:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 63613B20A05
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 19:41:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCE9638FAF;
	Thu, 28 Sep 2023 19:41:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E4F110B
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 19:41:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DE9AC433C7;
	Thu, 28 Sep 2023 19:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695930095;
	bh=+f/LROZgFTPzcFy5/y8VtrXLG8LIcts2Ik8CzlQ3RsM=;
	h=From:To:Cc:Subject:Date:From;
	b=GS04NkNVwjZ5aAvctflC98Uo4+fIaRixp/S7KhAw1pj6pKgWEnR6iDPnRHcMrbxWk
	 GDRgbrpFlHSnG52T5EMZagd0oohD+/xcuCf4IvfL4xylZ6RTNK1drD97IFlFBhvAYe
	 rMlWf9Os5/p+g+hY6SnSR+EjfGnV8WR42DL5Bu6SarRJs1I73kT6nkyt2N6xugHotX
	 DZjlqz/z04UMNuNoCQsaclN3jzUEiyc2uE39Ahqx7ekUBFq46WzlKbD3tNmilxO26P
	 x6jbj8r7HxHo4ukR3juucsPsAq1CpDdnM/+vHzKqpvc1t4NAi6L8MkFv3DsG1aPtw7
	 SevonLnDNfLVg==
Received: (nullmailer pid 1147011 invoked by uid 1000);
	Thu, 28 Sep 2023 19:41:33 -0000
From: Rob Herring <robh@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ASoC: dt-bindings: Simplify referencing dai-params.yaml
Date: Thu, 28 Sep 2023 14:41:16 -0500
Message-Id: <20230928194126.1146622-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There's generally no need to use definitions to reference from
individual properties. All the property names are the same, and all the
defined properties are used by all the users.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../bindings/sound/audio-graph-port.yaml      | 20 ++++++-------------
 .../bindings/sound/audio-graph.yaml           |  9 +++------
 .../devicetree/bindings/sound/dai-params.yaml | 11 ++++------
 3 files changed, 13 insertions(+), 27 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
index fa9f9a853365..60b5e3fd1115 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
@@ -13,19 +13,17 @@ select: false
 
 definitions:
   port-base:
-    $ref: /schemas/graph.yaml#/$defs/port-base
+    allOf:
+      - $ref: /schemas/graph.yaml#/$defs/port-base
+      - $ref: /schemas/sound/dai-params.yaml#
     properties:
-      convert-rate:
-        $ref: /schemas/sound/dai-params.yaml#/$defs/dai-sample-rate
-      convert-channels:
-        $ref: /schemas/sound/dai-params.yaml#/$defs/dai-channels
-      convert-sample-format:
-        $ref: /schemas/sound/dai-params.yaml#/$defs/dai-sample-format
       mclk-fs:
         $ref: simple-card.yaml#/definitions/mclk-fs
 
   endpoint-base:
-    $ref: /schemas/graph.yaml#/$defs/endpoint-base
+    allOf:
+      - $ref: /schemas/graph.yaml#/$defs/endpoint-base
+      - $ref: /schemas/sound/dai-params.yaml#
     properties:
       mclk-fs:
         $ref: simple-card.yaml#/definitions/mclk-fs
@@ -68,12 +66,6 @@ definitions:
             - pdm
             - msb
             - lsb
-      convert-rate:
-        $ref: /schemas/sound/dai-params.yaml#/$defs/dai-sample-rate
-      convert-channels:
-        $ref: /schemas/sound/dai-params.yaml#/$defs/dai-channels
-      convert-sample-format:
-        $ref: /schemas/sound/dai-params.yaml#/$defs/dai-sample-format
 
       dai-tdm-slot-num:
         description: Number of slots in use.
diff --git a/Documentation/devicetree/bindings/sound/audio-graph.yaml b/Documentation/devicetree/bindings/sound/audio-graph.yaml
index ed31e04ff6a6..71f52f7e55f6 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph.yaml
@@ -9,6 +9,9 @@ title: Audio Graph
 maintainers:
   - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
 
+allOf:
+  - $ref: /schemas/sound/dai-params.yaml#
+
 properties:
   dais:
     $ref: /schemas/types.yaml#/definitions/phandle-array
@@ -30,12 +33,6 @@ properties:
       widget ("Microphone", "Line", "Headphone", "Speaker"), the
       second being the machine specific name for the widget.
     $ref: /schemas/types.yaml#/definitions/non-unique-string-array
-  convert-rate:
-    $ref: /schemas/sound/dai-params.yaml#/$defs/dai-sample-rate
-  convert-channels:
-    $ref: /schemas/sound/dai-params.yaml#/$defs/dai-channels
-  convert-sample-format:
-    $ref: /schemas/sound/dai-params.yaml#/$defs/dai-sample-format
 
   pa-gpios:
     maxItems: 1
diff --git a/Documentation/devicetree/bindings/sound/dai-params.yaml b/Documentation/devicetree/bindings/sound/dai-params.yaml
index f5fb71f9b603..cd8508175564 100644
--- a/Documentation/devicetree/bindings/sound/dai-params.yaml
+++ b/Documentation/devicetree/bindings/sound/dai-params.yaml
@@ -11,15 +11,14 @@ maintainers:
 
 select: false
 
-$defs:
-
-  dai-channels:
+properties:
+  convert-channels:
     description: Number of audio channels used by DAI
     $ref: /schemas/types.yaml#/definitions/uint32
     minimum: 1
     maximum: 32
 
-  dai-sample-format:
+  convert-sample-format:
     description: Audio sample format used by DAI
     $ref: /schemas/types.yaml#/definitions/string
     enum:
@@ -29,12 +28,10 @@ $defs:
       - s24_3le
       - s32_le
 
-  dai-sample-rate:
+  convert-rate:
     description: Audio sample rate used by DAI
     $ref: /schemas/types.yaml#/definitions/uint32
     minimum: 8000
     maximum: 192000
 
-properties: {}
-
 additionalProperties: true
-- 
2.40.1


