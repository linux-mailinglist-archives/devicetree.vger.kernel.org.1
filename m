Return-Path: <devicetree+bounces-148997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BDBA3DEF7
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 16:43:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 72480173F21
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 15:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0257D1F8916;
	Thu, 20 Feb 2025 15:41:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g2cUMLWd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022CD1D5CD7
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 15:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740066099; cv=none; b=t7Qlp2sN6iUVYw2y4ZyUYPiqHsH3RNCYrB6+PNjcQ+V5S3UwoLi9W0bqdm1Yg19taB8/90owiB+tPtnfeSysnsZFRyYa5xr92Yd4Em3MVd6DpP9kMHlj0xn9sR2xtf9KM3wfsUI433R5id9H4/vqrcQB9h45X/+pN7VjO5r1e7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740066099; c=relaxed/simple;
	bh=g7tyuwR9gUJihZXDPyoe71VF4DyU1ICECDXXEFnbpOA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CW6Oifja87t/37TWETZrjKoCsVsjFDJo/ZoeTXZEr4dB05LL2tRzak7DGlN2mc5pyko3lHQTHaCDZFKX2UyYqWazop0jyS7Bmc9h81MBzD/NSps/xfisSbZIFWSrtHG0LhdjNrgQgMcoRjZXu09W9p9vx8a5PIeOWRY75CiOnPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g2cUMLWd; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5dfb26020dbso161597a12.3
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 07:41:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740066096; x=1740670896; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nEYeQ6GtRcKGrYsaEJZjfB2MCXvU3nNrB1n4nbL63sM=;
        b=g2cUMLWd4Y3PGRoCatNDfFZ4c0o9WNW5466k1P5MSqA5mvgrRPktrGEwAWc8lVQRrp
         Szk2TI2hRwPp5xGs4c6U3DXJU7Goh7SVUUz+PoxKa3eMbc1KB9H4vKXj94aVHBIXMAP/
         GftQ4Let+em4FB/C70VTNrGwfj3Yv8intocmthWrPhvtO6IwOpSWAqk06UdzOc2r3nqJ
         xUuaRZNjJDwi1+cevDubw0tSTC+6pOI8IyHMfxVWtlR8NRgjVTfjRigGMcd4i6WxVCzE
         7SexP5aFcPqZspPfhAwv4i3QPp4fxK6JhE2ap5F3ZSApP6IlvPXHeOrN5PGxGoKPejov
         +8cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740066096; x=1740670896;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nEYeQ6GtRcKGrYsaEJZjfB2MCXvU3nNrB1n4nbL63sM=;
        b=Lgwfg5s9Aw4I5vkPMHEOvXiYujWLc1J+90cdxoXAF72HJVN9UtciQlvo+GPIq3nEHV
         JNAkf3GEvVmgMFYJWk6GNDyp4/Wz81dpdppMfFXQ1u3f78gCuxa2zr6qOKj9hBosBsGo
         GqDSG2TRIx7pcKiiwXf4R1ijgYxJOf/unfcmHvlH/hrtSrmQLY5CMGJenjCcaG0KHMnu
         Of23a7vPwTliwT5Nal+7hJsnv/qZbqR3oqGXf0FgMNCsLfqyF3mR2dWueI1BQ7aVRJCc
         HVCAIZfjOhZ+TekZdg3/4+AY5QBup4HYz8c3JxhlWz6CnPXJgfFIFtcWB6GJl4KHmKjJ
         inkg==
X-Forwarded-Encrypted: i=1; AJvYcCVtEmiainPYP2MwjvdxhIJIaDYYXov+W4aTj1zV+87wrgNiu5VhMIZXjXK2dH5JxbouJji8KBca0skH@vger.kernel.org
X-Gm-Message-State: AOJu0YwI9n1Xa4spMAy6enOmSSwg/dPQLimZXBEGuz9SNeqGQRvUXnJC
	w8X+9qfI2gUUBs0lltrNL5apBxSGq9eFq04k37n5vtRUARM/R6QNFqt/Tew37+w=
X-Gm-Gg: ASbGncvkjfKSnVfUGuultin4u166PGc0MdWlVyPIxx5DqyI7i4YYvPuaJt6ZpYBcVOS
	W5/BJ+jA2bnaFyHhDBiQy+gwCf8lD5RJegEZNY71sJ8rAVeODCUf6kh7Xl0ajcIpxb0VvJgZAVx
	+c3zx6VmRGKEiuqodryt++NsZ8frixcgyW87kIzyO7SNh0rJUZSEBtLWedcdgaQ/26wdVf3jEjC
	c4QXrauEmeP8XSq9aB1GejPbZPrOF+DqXnKreJ+POn7fRBmUMqHvHiceyv9hXYU+lTaxOwDQPUp
	QYX0pjUSKJWwisfoXwar/AOKDmwuHM4w80kwspjSOVxOHbDTMbJ6PnEEprF6FxPr
X-Google-Smtp-Source: AGHT+IExwKWWZGa3QQuOIsvL9AuraePZZp67jekYfmLrqefoxYMI+vPNlwgRQmppVbQJY0ggaquYhQ==
X-Received: by 2002:a05:6402:5246:b0:5d0:d183:cc11 with SMTP id 4fb4d7f45d1cf-5e035ff8110mr7633794a12.2.1740066096180;
        Thu, 20 Feb 2025 07:41:36 -0800 (PST)
Received: from krzk-bin.. (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece287c7fsm12097608a12.70.2025.02.20.07.41.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 07:41:35 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [RESEND PATCH 1/2] dt-bindings: remoteproc: Add SM8750 MPSS and CDSP
Date: Thu, 20 Feb 2025 16:41:31 +0100
Message-ID: <20250220154132.199358-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add remote processor PAS loaders for SM8750 MPSS (modem) and CDSP
processors.  Both are compatible with earlier SM8650 with minor
differences:
1. SM8750 CDSP has one more sixth shutdown interrupt.
2. SM8750 MPSS lacks fifth memory region for Qlink Logging, according to
   downstream sources.  There might be other differences, because the
   modem currently crashes after starting.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Resend after some time.
---
 .../bindings/remoteproc/qcom,sm8550-pas.yaml  | 46 +++++++++++++++++--
 1 file changed, 42 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index a24cbb61bda7..2dd479cf4821 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -24,11 +24,15 @@ properties:
           - qcom,sm8650-adsp-pas
           - qcom,sm8650-cdsp-pas
           - qcom,sm8650-mpss-pas
+          - qcom,sm8750-mpss-pas
           - qcom,x1e80100-adsp-pas
           - qcom,x1e80100-cdsp-pas
       - items:
           - const: qcom,sm8750-adsp-pas
           - const: qcom,sm8550-adsp-pas
+      - items:
+          - const: qcom,sm8750-cdsp-pas
+          - const: qcom,sm8650-cdsp-pas
 
   reg:
     maxItems: 1
@@ -114,6 +118,23 @@ allOf:
         memory-region:
           minItems: 3
           maxItems: 3
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8750-cdsp-pas
+    then:
+      properties:
+        interrupts:
+          maxItems: 6
+        interrupt-names:
+          maxItems: 6
+        memory-region:
+          minItems: 3
+          maxItems: 3
+
   - if:
       properties:
         compatible:
@@ -144,6 +165,21 @@ allOf:
           minItems: 5
           maxItems: 5
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sm8750-mpss-pas
+    then:
+      properties:
+        interrupts:
+          minItems: 6
+        interrupt-names:
+          minItems: 6
+        memory-region:
+          minItems: 4
+          maxItems: 4
+
   - if:
       properties:
         compatible:
@@ -171,6 +207,7 @@ allOf:
             - qcom,sdx75-mpss-pas
             - qcom,sm8550-mpss-pas
             - qcom,sm8650-mpss-pas
+            - qcom,sm8750-mpss-pas
     then:
       properties:
         power-domains:
@@ -184,10 +221,11 @@ allOf:
   - if:
       properties:
         compatible:
-          enum:
-            - qcom,sm8550-cdsp-pas
-            - qcom,sm8650-cdsp-pas
-            - qcom,x1e80100-cdsp-pas
+          contains:
+            enum:
+              - qcom,sm8550-cdsp-pas
+              - qcom,sm8650-cdsp-pas
+              - qcom,x1e80100-cdsp-pas
     then:
       properties:
         power-domains:
-- 
2.43.0


