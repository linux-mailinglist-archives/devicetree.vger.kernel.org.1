Return-Path: <devicetree+bounces-6033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4157B9BD4
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 10:37:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 88241281AF1
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 08:37:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 129324A33;
	Thu,  5 Oct 2023 08:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qNOw5QDq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF3B115C5
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 08:36:58 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00C089009
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 01:36:55 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-99bdeae1d0aso134856766b.1
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 01:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696495014; x=1697099814; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=b8UTzhAdpyBQxIe5FDho0E0NnDq18CgBro9Bv3TILXw=;
        b=qNOw5QDqz1U7dhoRI5x1OY260qBxXhNrZq/lh/fw/x31GjTF/jvl0uZW8yoZM3VP8p
         QwMsR7CIXTjRAsnLzkUraqwaiKKyiDBm8AiA7PRqmAhSbPGEYWuQ7hT2EPkhINP2GeFl
         tmZqon3Sxw+793p0kZk1YS4iKcO5dAWvVBkPo29NfWRjhpttlTj8jxJ7HcAc8KufHAFS
         ZZ6Rwf/7eww6mgQAHXXcdAZYQnd18Enz/+o5NF51s10SvPas17wd5TtLPWFXAKVNGPrJ
         SqpLGmlQbm3sIN52B44CJHbfURII70opAUYFme5nVej9+T1FKhx0bKzSYB0et52LkDvm
         JesQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696495014; x=1697099814;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b8UTzhAdpyBQxIe5FDho0E0NnDq18CgBro9Bv3TILXw=;
        b=lDpVbiojWfGSZiealpzKgJaFActep7bmU8IGAgYShbi0isLYqinHcYkX8MO9VBbWWW
         7D2z2aQDFePLCWIgME2MV450N5LN/W7fpnO8R+pZ6fd7caPXZL4weElcxRv7VeMxYlNo
         s1AC1Y0ol26465oZTykhhyWMK9wSB9cHIxdb+FiIwnkXtD4fZxKEm83sbA+LKS6W07vG
         Tzf5NAo1kr7+QWVoeSpZS29mRdtLmqQAKCKgZYi6MmjOAM/6eYVSbku9wsviGjFjORrU
         4bFyOuZgnUzP22uHCjki5i1chCVJeO9yjjTnrHcwA/bIBaO/xxvt4KbulVDWlNqF8dU5
         qaaw==
X-Gm-Message-State: AOJu0Yz50HtkClozBEUv1nX5ItAmhIHPZAi8MWsqZmEu67CG88HbNJ3y
	/Ml8NTsHlJAHJgZvVO6xkYUEDHApM5mwWl5bT0FPxQ==
X-Google-Smtp-Source: AGHT+IFj3x7hP+Xsklyuu9mY6jxW5m7RoNCenO2OgtzW5rQJ1pySLYfpomU4uGapvb3bWcxfehQX9A==
X-Received: by 2002:a17:906:2da:b0:9b2:ccd8:2d2b with SMTP id 26-20020a17090602da00b009b2ccd82d2bmr4134279ejk.77.1696495014255;
        Thu, 05 Oct 2023 01:36:54 -0700 (PDT)
Received: from krzk-bin.. (5-157-101-10.dyn.eolo.it. [5.157.101.10])
        by smtp.gmail.com with ESMTPSA id i8-20020a17090671c800b009a198078c53sm780677ejk.214.2023.10.05.01.36.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 01:36:53 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Cosmin Tanislav <cosmin.tanislav@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: iio: add missing reset-gpios constrain
Date: Thu,  5 Oct 2023 10:36:50 +0200
Message-Id: <20231005083650.92222-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The Documentation/devicetree/bindings/gpio/gpio-consumer-common.yaml
schema does not enforce number of reset GPIOs, thus each device binding
must do it.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/iio/addac/adi,ad74115.yaml | 3 ++-
 Documentation/devicetree/bindings/iio/dac/adi,ad5758.yaml    | 3 ++-
 Documentation/devicetree/bindings/iio/health/ti,afe4403.yaml | 3 ++-
 Documentation/devicetree/bindings/iio/health/ti,afe4404.yaml | 3 ++-
 4 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/addac/adi,ad74115.yaml b/Documentation/devicetree/bindings/iio/addac/adi,ad74115.yaml
index 2594fa192f93..2a04906531fb 100644
--- a/Documentation/devicetree/bindings/iio/addac/adi,ad74115.yaml
+++ b/Documentation/devicetree/bindings/iio/addac/adi,ad74115.yaml
@@ -32,7 +32,8 @@ properties:
 
   spi-cpol: true
 
-  reset-gpios: true
+  reset-gpios:
+    maxItems: 1
 
   interrupts:
     minItems: 1
diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5758.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ad5758.yaml
index 4e508bfcc9d8..5121685337b5 100644
--- a/Documentation/devicetree/bindings/iio/dac/adi,ad5758.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5758.yaml
@@ -78,7 +78,8 @@ properties:
           - const: -1000
           - const: 22000
 
-  reset-gpios: true
+  reset-gpios:
+    maxItems: 1
 
   adi,dc-dc-ilim-microamp:
     enum: [150000, 200000, 250000, 300000, 350000, 400000]
diff --git a/Documentation/devicetree/bindings/iio/health/ti,afe4403.yaml b/Documentation/devicetree/bindings/iio/health/ti,afe4403.yaml
index b9b5beac33b2..5b6cde86b5a5 100644
--- a/Documentation/devicetree/bindings/iio/health/ti,afe4403.yaml
+++ b/Documentation/devicetree/bindings/iio/health/ti,afe4403.yaml
@@ -23,7 +23,8 @@ properties:
     maxItems: 1
     description: Connected to ADC_RDY pin.
 
-  reset-gpios: true
+  reset-gpios:
+    maxItems: 1
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/iio/health/ti,afe4404.yaml b/Documentation/devicetree/bindings/iio/health/ti,afe4404.yaml
index 2958c4ca75b4..167d10bd60af 100644
--- a/Documentation/devicetree/bindings/iio/health/ti,afe4404.yaml
+++ b/Documentation/devicetree/bindings/iio/health/ti,afe4404.yaml
@@ -23,7 +23,8 @@ properties:
     maxItems: 1
     description: Connected to ADC_RDY pin.
 
-  reset-gpios: true
+  reset-gpios:
+    maxItems: 1
 
 additionalProperties: false
 
-- 
2.34.1


