Return-Path: <devicetree+bounces-13438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 057C17DE1EA
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:10:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 365FF1C20A91
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 14:10:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 185F6134BC;
	Wed,  1 Nov 2023 14:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F1120F6
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 14:10:35 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA201110;
	Wed,  1 Nov 2023 07:10:31 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-6ce2cc39d12so4239391a34.1;
        Wed, 01 Nov 2023 07:10:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698847831; x=1699452631;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hJIap+tCQCXrXsRRf3ecX3dDJMX+ntMEJi4qcuSxVfc=;
        b=gNhCOsPafqRfHVAmQ2clGAUZ7zHN/Sgq3VcHsAE6bp+AkZjdJy+0jV2WsYa3Gcjjwo
         ig6kXakYNuOc0kiD+Vo4daEKztfP5zKL4G+tf6hu3d5o+keFckLDeWX8a2eNJfdK1nbS
         NLLwcS1LmjuuAAIk5CM54V+mxUXf61/VWDWfAW/huZZOOI/0DWMM3wJfQ7jed0OeTpar
         47pU9eMz13/2BmvRVlm2xGIlQNcmdnbZy9cZ5Y3L64eRRl5kuWF7WUgTYOX1+1DX7WuG
         U8KnfZ+hFxajD7qgFvI+Lr5nKOlraNeFlnDwXAW3ftpaGa8BPFh+h61EDr+iz3o++bY2
         DPow==
X-Gm-Message-State: AOJu0YyzW50zTylgpmeMFGQeXoPAJcLVYl/azGi4og6/43iJUctMQuyC
	xHxeGDpmjgymdQo/lCfmAJqJL0nlRQ==
X-Google-Smtp-Source: AGHT+IH/87KuiC8dP6zyfc4p1YF9Mp+7bxURSq2rjTaXtjGK1fMj7tBOMpK/Hf6grESE8beZhbyRCQ==
X-Received: by 2002:a05:6830:1d83:b0:6d3:1dc1:6ecc with SMTP id y3-20020a0568301d8300b006d31dc16eccmr1417903oti.19.1698847830885;
        Wed, 01 Nov 2023 07:10:30 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id l6-20020a05683004a600b006ce292a8be4sm208006otd.10.2023.11.01.07.10.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 07:10:30 -0700 (PDT)
Received: (nullmailer pid 23329 invoked by uid 1000);
	Wed, 01 Nov 2023 14:10:29 -0000
From: Rob Herring <robh@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: [PATCH] ASoC: dt-bindings: Simplify port schema
Date: Wed,  1 Nov 2023 09:09:22 -0500
Message-ID: <20231101140923.16344-2-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The use of 'definitions' is not necessary and also problematic because the
dtschema tools don't process 'definitions' resulting in this spurious
warning:

Documentation/devicetree/bindings/sound/renesas,rsnd.example.dtb: sound@ec500000: port:endpoint: Unevaluated properties are not allowed ('phandle' was unexpected)
        from schema $id: http://devicetree.org/schemas/sound/renesas,rsnd.yaml#

Fix this by moving the port schema to #/properties/port and referencing
that directly from the 'ports' schema.

Really, a binding should just always use 'ports' if multiple ports are
possible. There's no benefit to supporting both forms. However, it appears
there are already lots of users of this one with a single 'port' node.

Signed-off-by: Rob Herring <robh@kernel.org>
---
Please apply for 6.7 to fix the warning.

 .../bindings/sound/renesas,rsnd.yaml          | 28 ++++++++-----------
 1 file changed, 12 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
index 13a5a0a10fe6..1174205286d4 100644
--- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
+++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
@@ -9,20 +9,6 @@ title: Renesas R-Car Sound Driver
 maintainers:
   - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
 
-definitions:
-  port-def:
-    $ref: audio-graph-port.yaml#/definitions/port-base
-    unevaluatedProperties: false
-    patternProperties:
-      "^endpoint(@[0-9a-f]+)?":
-        $ref: audio-graph-port.yaml#/definitions/endpoint-base
-        properties:
-          playback:
-            $ref: /schemas/types.yaml#/definitions/phandle-array
-          capture:
-            $ref: /schemas/types.yaml#/definitions/phandle-array
-        unevaluatedProperties: false
-
 properties:
 
   compatible:
@@ -125,7 +111,17 @@ properties:
 
   # ports is below
   port:
-    $ref: "#/definitions/port-def"
+    $ref: audio-graph-port.yaml#/definitions/port-base
+    unevaluatedProperties: false
+    patternProperties:
+      "^endpoint(@[0-9a-f]+)?":
+        $ref: audio-graph-port.yaml#/definitions/endpoint-base
+        properties:
+          playback:
+            $ref: /schemas/types.yaml#/definitions/phandle-array
+          capture:
+            $ref: /schemas/types.yaml#/definitions/phandle-array
+        unevaluatedProperties: false
 
   rcar_sound,dvc:
     description: DVC subnode.
@@ -269,7 +265,7 @@ patternProperties:
     unevaluatedProperties: false
     patternProperties:
       '^port(@[0-9a-f]+)?$':
-        $ref: "#/definitions/port-def"
+        $ref: "#/properties/port"
 
 required:
   - compatible
-- 
2.42.0


