Return-Path: <devicetree+bounces-19945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3F17FD522
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 12:10:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FB6E1C2116B
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 11:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A31291C29B;
	Wed, 29 Nov 2023 11:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dGQrJDgp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0280744AC
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 03:10:46 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-50abbb23122so8637381e87.3
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 03:10:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701256245; x=1701861045; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5n2a/2E5KdJNNYUo3GWmeCj+sTZDQr2kUzeB2+OZTGU=;
        b=dGQrJDgpaL22J1na3wRLlX1pr8VzAIXggNbC9cJZCd9kzsqLUG8kCNwSPkCOItlVl9
         VySV9p76yHHZ2unRrq5zCZZOL6bckBu7ScruYpSC3wx1xKpcOtxdaJ7tpwOPa2IJvkF/
         quizStJCPUqy8n/Bhffvqks3jQBD6LUB0ZdJS8IOI7WSDGicG9K6ty/Tbb2c5NYqlcyX
         peIgBQ3wjel1QLpgB0UV4eo2HDVmprK13Aa7WP5iiJdBC/2xBmVHxXC/3R4FY2NmQg2z
         yRi7ahvs+rhHh+eXOmrmb2CCqtPeoKbEjV4OBC9Sje1RWO/C9wf3KbxQqPb1f4gRb/gA
         +zxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701256245; x=1701861045;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5n2a/2E5KdJNNYUo3GWmeCj+sTZDQr2kUzeB2+OZTGU=;
        b=B7+nw+SN+pnEpp7O48S2PZf3gLumJNlDgHV8qbcYWrh3Vafw7dFv+c+Yj33IdV5TZq
         7g6XB3FiZBj7XfaB+I5PwlI5Ifbpp7mWCOR30krsOtzBs/6HGq/2e1S4CUDfZBn8MgkR
         IGS6N/7gEYhYdbmVsErPIT1p5X6OGE0iWELz/6ip323ZGzkcPCHIXq+ctNlNUuI0ANn7
         1+XX925l8/Qv810REXmFauEfZPPAlxQN03DXn3AbPFiMrdb8AgARmQTG47IyYWHMpqHJ
         vg5gWASWn6IJdrP/MB+5XjG+jS2dCWxZD5cXnX0ZJfg7hOsMZuQaS4X+GJGXtlVeQlRM
         +jxg==
X-Gm-Message-State: AOJu0YzeQo/E7VGSeeIjDz+Pf3aqpJDUpaNMx0SG9x8sX1bzRsk2K9ti
	+IxlUUUqUK6AzPYkmAc1KeyhRA==
X-Google-Smtp-Source: AGHT+IFvq19Y8Thc5/IZy2Hl2YGExKF/UoiKpuXNEbxp8HskowSiNp0PsyIJIm+yqWMlWo/ngW8FKA==
X-Received: by 2002:a05:6512:2186:b0:508:268b:b087 with SMTP id b6-20020a056512218600b00508268bb087mr9510426lft.26.1701256245015;
        Wed, 29 Nov 2023 03:10:45 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id x13-20020a170906710d00b009b2ca104988sm7823719ejj.98.2023.11.29.03.10.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 03:10:44 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andreas Klinger <ak@it-klinger.de>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: iio: honeywell,mprls0025pa: drop ref from pressure properties
Date: Wed, 29 Nov 2023 12:10:41 +0100
Message-Id: <20231129111041.26782-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The dtschema treats now properties with '-pascal' suffix as standard one
and already defines $ref for them, thus the $ref should be dropped from
the bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

dtschema change was merged:
https://github.com/devicetree-org/dt-schema/commit/2a1708dcf4ff0b25c4ec46304d6d6cc655c3e635
but not yet released as new dtschema version.

This change should be applied once new dtschema version is released or
Rob says otherwise.
---
 .../devicetree/bindings/iio/pressure/honeywell,mprls0025pa.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/pressure/honeywell,mprls0025pa.yaml b/Documentation/devicetree/bindings/iio/pressure/honeywell,mprls0025pa.yaml
index b31f8120f14e..d9e903fbfd99 100644
--- a/Documentation/devicetree/bindings/iio/pressure/honeywell,mprls0025pa.yaml
+++ b/Documentation/devicetree/bindings/iio/pressure/honeywell,mprls0025pa.yaml
@@ -53,12 +53,10 @@ properties:
   honeywell,pmin-pascal:
     description:
       Minimum pressure value the sensor can measure in pascal.
-    $ref: /schemas/types.yaml#/definitions/uint32
 
   honeywell,pmax-pascal:
     description:
       Maximum pressure value the sensor can measure in pascal.
-    $ref: /schemas/types.yaml#/definitions/uint32
 
   honeywell,transfer-function:
     description: |
-- 
2.34.1


