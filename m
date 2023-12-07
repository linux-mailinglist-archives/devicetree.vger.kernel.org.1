Return-Path: <devicetree+bounces-22756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F96808A68
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 15:24:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CC33281F71
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 14:24:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 389B841766;
	Thu,  7 Dec 2023 14:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wgATDF8V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF97219B2
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 06:24:01 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a1ec87a7631so69296266b.0
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 06:24:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701959040; x=1702563840; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=f5R9Aa9qvwLBkzJk+1JXYE0IjKovTx3obUbkAIs0Rg4=;
        b=wgATDF8VUbVTFH4N+5lA7KQNf2Alh2iCrnizLPqHghdinE2pUYqy9x5RXXRwLTt0vo
         eEAW1FREgrQe1zrMj6N9jJdtOXKo7acvQX58SzRsdiACfNDEHhjnrgyg3z66xo8LWCVD
         s9NJyZbYB2kQWt5GB9EvJPjWpKCaafJRRQe5YvLKvrlnqVBxp4NidQqK+DGmUROw0Xul
         h7Jq/ZBScgKgyViR/Qf7xDspQXlCqvsVMsywIzCeLUpxN7G191ducd0fUZD/Zrrq5IQS
         B3exz3boUcc1GvpikxaqtKo8IYG/Zk8vHcfVcvhxH6Yx591S/oKHH8f2ahd9V7vKeCcO
         fuMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701959040; x=1702563840;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f5R9Aa9qvwLBkzJk+1JXYE0IjKovTx3obUbkAIs0Rg4=;
        b=A2NIWWOsiAn1VsS6Amx6UIdULasO6sA7NNqNIU87pyYsqy0Ag5wKQFpO57CCcV6rH6
         hn3C/eS8Of81V8tdFwPim08ehW/z+AEVF957k3JoRiHZlUvTlMPh9Uw28Pxdduy4RBNd
         Ke2eNM6x2hVKhwd6sXzWfaJ1XpveS9WVJayrFxO5uOZPtWYgao/ujhsZ5L8nhdf2WpRP
         Wt78rjMVo7B/tQUUdbWt+l/izYRvopXhSXOWfkXcUzO22AxJxXXf+24V/A4Vj88433Zp
         Y7r/rWbA/YLiiZpXtywW4SB8YynxbaT1i+W2xzL9PsH+TUV7VluEUuEFJEd3fwffwpO3
         miFg==
X-Gm-Message-State: AOJu0Yz3DC/UwuHXNjJufzT0uQld6PKAAkepaXgi5T5tsuMlrdL5lKxb
	y+qM63ruBdoCsd721kv5JVoFNA==
X-Google-Smtp-Source: AGHT+IE/3SWDqV4xhpz7Rs+evs81SxbYlZyZ+DLKO6j3oA2qDINuWbsYe7F/SGOm+61IvfLyrv0rqg==
X-Received: by 2002:a17:906:a45a:b0:a0a:391d:2dad with SMTP id cb26-20020a170906a45a00b00a0a391d2dadmr1602565ejb.75.1701959040327;
        Thu, 07 Dec 2023 06:24:00 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id lo15-20020a170906fa0f00b009a19701e7b5sm889738ejb.96.2023.12.07.06.23.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 06:23:59 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Maxime Ripard <mripard@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] media: dt-bindings: ov8856: decouple lanes and link frequency from driver
Date: Thu,  7 Dec 2023 15:23:56 +0100
Message-Id: <20231207142356.100453-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The data lanes and link frequency were set to match exiting Linux driver
limitations, however bindings should be independent of chosen Linux
driver support.

Decouple these properties from the driver to match what is actually
supported by the hardware.

This also fixes DTS example:

  ov8856.example.dtb: camera@10: port:endpoint:link-frequencies:0: [360000000] is too short

Fixes: 066a94e28a23 ("media: dt-bindings: media: Use graph and video-interfaces schemas")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Rework approach: decouple bindings from driver instead of fixing
   DTS example (Sakari)
---
 .../devicetree/bindings/media/i2c/ov8856.yaml | 21 +++++++++++--------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/ov8856.yaml b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
index 57f5e48fd8e0..71102a71cf81 100644
--- a/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
@@ -67,19 +67,22 @@ properties:
 
         properties:
           data-lanes:
-            description: |-
-              The driver only supports four-lane operation.
-            items:
-              - const: 1
-              - const: 2
-              - const: 3
-              - const: 4
+            oneOf:
+              - items:
+                  - const: 1
+              - items:
+                  - const: 1
+                  - const: 2
+              - items:
+                  - const: 1
+                  - const: 2
+                  - const: 3
+                  - const: 4
 
           link-frequencies:
             description: Frequencies listed are driver, not h/w limitations.
-            maxItems: 2
             items:
-              enum: [ 360000000, 180000000 ]
+              enum: [ 1440000000, 720000000, 360000000, 180000000 ]
 
         required:
           - link-frequencies
-- 
2.34.1


