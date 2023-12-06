Return-Path: <devicetree+bounces-22267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E38B4806F3A
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 12:54:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F3A01F21505
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 11:54:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CFBE3589C;
	Wed,  6 Dec 2023 11:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XPFHUqoy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EF1619B9
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 03:53:37 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-54cde11d0f4so4046853a12.2
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 03:53:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701863616; x=1702468416; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8nauikIQC7YgzkRjGeFoZ+8iTBhi7DuAheS3y1mR8dE=;
        b=XPFHUqoy2XB1pPsc6ZuGGtH9Hs55urMJufFfMZ+FmQlTKhG4ULAKEF0xQfT57J5y8Q
         D1CHnrlh1AvoXbxEFEypGLaTSHXrcegK6JSYmFa8RkAM7E4DxFMMoxG0iMYC1FF5qoEn
         6xMAnnkjMw9XtKMSrjZtaCeqQPev6dnjPqE9Buk5oVvUyJlUoyxkTmqf8jWvAoAc4+RV
         flnTYtcrdHMqlTrpAQVoWRjvsTs7iDNIqPBFYq3z2rlNFAZS+9lFq66y3BZFQFJJXwdZ
         zoWPCqeTzDdY1vxR3F2GkI6EEqUk9EmvaayXV9BaV88e/A6qYsIiVfsIL9zDkoaFWvP5
         TrWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701863616; x=1702468416;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8nauikIQC7YgzkRjGeFoZ+8iTBhi7DuAheS3y1mR8dE=;
        b=fUDbHP4zZE1ak7jyYZRbo8EhQZ0fXWzif14HvVB8uNjiMIqYL6p6MX6HPJ1tali/pw
         pFbxmPCwedBpCIyipbBgZXN1T6+GXeAYlO5Jejyy6ppl+MH/2LgR7Ma+TEHfv03oDDfK
         bP0Nwz/B78Padowd7OETCbcgHe/kuARgPbfYOYeBQwWwnk+ss7WOeP8myoNpHDnFMO+i
         HJyxUukPyLxC0IhFj7qRwREZARiEh3Am2V84ELXFi58U0CgE77Cmgnw6+9roxJEHZM1Y
         VPW6RVJYUMlX9SIlqy6j3kL0PjZcNZWoYCq2ct75YnDtICYA4Xov9HoYaivAo7P9SgFS
         0AwA==
X-Gm-Message-State: AOJu0YxAPkzJqsB1VoUp+726WjWW3x4lmxHrSFgupv88RK4N6sfnExns
	1ZKR2rybH+5DDQHqEtzVb4AVUQ==
X-Google-Smtp-Source: AGHT+IHa6v0yaCt0cJFUr8Ih/Usy4jigMYT+UvQ5JWdEbTwSd7YSYSp3IjXIZbVXCTVHM9tGyNWWLw==
X-Received: by 2002:a05:6402:291b:b0:54c:8104:cd20 with SMTP id ee27-20020a056402291b00b0054c8104cd20mr534682edb.19.1701863615861;
        Wed, 06 Dec 2023 03:53:35 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id i13-20020a056402054d00b0054c4fdb42e5sm2337326edx.74.2023.12.06.03.53.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 03:53:35 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
	Mike Leach <mike.leach@linaro.org>,
	James Clark <james.clark@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Mao Jinlong <quic_jinlmao@quicinc.com>,
	Hao Zhang <quic_hazha@quicinc.com>,
	Tao Zhang <quic_taozha@quicinc.com>,
	coresight@lists.linaro.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] dt-bindings: arm: coresight: restrict single port subnodes
Date: Wed,  6 Dec 2023 12:53:30 +0100
Message-Id: <20231206115332.22712-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"in-ports" and "out-ports" with single "port" subnode should use
"additionalProperties: false" to disallow any other properties mentioned
by graph schema which are not applicable for this case, e.g.
"address-cells".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/arm/arm,coresight-dummy-sink.yaml        | 1 +
 .../devicetree/bindings/arm/arm,coresight-dummy-source.yaml      | 1 +
 Documentation/devicetree/bindings/arm/qcom,coresight-tpda.yaml   | 1 +
 Documentation/devicetree/bindings/arm/qcom,coresight-tpdm.yaml   | 1 +
 4 files changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/arm,coresight-dummy-sink.yaml b/Documentation/devicetree/bindings/arm/arm,coresight-dummy-sink.yaml
index c960c8e0a9a5..61143907bcde 100644
--- a/Documentation/devicetree/bindings/arm/arm,coresight-dummy-sink.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,coresight-dummy-sink.yaml
@@ -41,6 +41,7 @@ properties:
 
   in-ports:
     $ref: /schemas/graph.yaml#/properties/ports
+    additionalProperties: false
 
     properties:
       port:
diff --git a/Documentation/devicetree/bindings/arm/arm,coresight-dummy-source.yaml b/Documentation/devicetree/bindings/arm/arm,coresight-dummy-source.yaml
index 6745b4cc8f1c..a71a05c58cc6 100644
--- a/Documentation/devicetree/bindings/arm/arm,coresight-dummy-source.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,coresight-dummy-source.yaml
@@ -40,6 +40,7 @@ properties:
 
   out-ports:
     $ref: /schemas/graph.yaml#/properties/ports
+    additionalProperties: false
 
     properties:
       port:
diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-tpda.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-tpda.yaml
index ea3c5db6b52d..e55f69c2ff38 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-tpda.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-tpda.yaml
@@ -76,6 +76,7 @@ properties:
     description: |
       Output connections from the TPDA to legacy CoreSight trace bus.
     $ref: /schemas/graph.yaml#/properties/ports
+    additionalProperties: false
 
     properties:
       port:
diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-tpdm.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-tpdm.yaml
index 61ddc3b5b247..6984003485e8 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-tpdm.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-tpdm.yaml
@@ -72,6 +72,7 @@ properties:
     description: |
       Output connections from the TPDM to coresight funnel/TPDA.
     $ref: /schemas/graph.yaml#/properties/ports
+    additionalProperties: false
 
     properties:
       port:
-- 
2.34.1


