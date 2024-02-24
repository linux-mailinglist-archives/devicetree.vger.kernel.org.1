Return-Path: <devicetree+bounces-45510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D0C86241A
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 11:16:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 024C91C214B8
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 10:16:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CFEF3D3B1;
	Sat, 24 Feb 2024 10:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JAAQG0mE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C13A3BB46
	for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 10:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708769723; cv=none; b=C5zOkRAbNXVHnAIikAy6J42hgIAY2lteXOUAIBNGDK8x2OpbOr54+HeUrGKMxInaFK8PpfHW9MIWk+nik4UVXiV6svkt/Z6AT28xXOO+wFZSxKOEY7INWeAMKFVOXX1PO5kiwiniQ+G3Bja6qxfnxKTK+9XqplRVy9PLHzGIPEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708769723; c=relaxed/simple;
	bh=pl4d9K66V7Tf3bdnPvTpvzc+RCXRErt3N+sOJeBxwu4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T4M/s2PO/S3d0zAD6XKyXzEskDMrmPCBmfLmV+/502iW+hY7DD2Qd5ihiDWKZri6sqguw1n7Q6gTJBk1kyApFq1x5wK+z9HI1XRpCRgcUnhbggegLNh2CoyWk6+0tlROQZ30IFvk4H4M/svCr8GalpXe3IHkPtPHPOOAfG29Hv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JAAQG0mE; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a3e4765c86eso169160166b.0
        for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 02:15:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708769720; x=1709374520; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KXbAugNEprUKrZcZOHEuG4q3QGFsm893pRwYxVtSKSo=;
        b=JAAQG0mENF/noLeax8HH3y1Sw9zztSWVxVMiYbD5g4IZ+7J+X/naFTaO5chVeppQQs
         MORS/NMPn88J20o5e98pstaYfyArucYwUb3mSq6g0/WdbhkL55gQA2wVxCXy62zPV27r
         TeZvRSxX69t/Iophu5Y3Jyv9pOy82zkhJnswTVU3HG37k7SUevpihGfkmU1iokdy/IEu
         wysODA+Qd4odMLSeWnVevTsISrukPkqzF5FAsZhFJtgb50TJmoFoov/cAvjutv35TLDD
         73oGLN64XnisDQMZkAPwNSOmO6RRL8iETZ5brNwALldAxSGlN9Hy5lyDsl74vaurslOP
         v67w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708769720; x=1709374520;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KXbAugNEprUKrZcZOHEuG4q3QGFsm893pRwYxVtSKSo=;
        b=c0XSCyms6XHrKzw4IUjIuRmcSUW8b1vk07XoSCJ0ioHtlmWaeyWooR3sw2tHpM1+yI
         sRjG/kLyDeakp8aZaPxFwqELex1ZLau3KPxpo++8yc5f1ZgKZ1iG9ouphflmTdYGOSYc
         I8N5J4qx23hzmEgr241OOnhz7rmV5Ya+Ngw3RFKCU7hTo0c9YM5Pyi0DvTs10enhomCO
         p//IVvExWoYCcpPrZJKNCvb+CmTEknyj+N2Vlvgj12sZyDyMaNJ+DE2HX07ACpaYiey1
         j3KWeQn8Xik12ZKyi3wz9XhSs6lgQFo9P7m6ZqZYEbbjJjNZp0MrKFdGiOzYxvdUC70h
         qxjw==
X-Forwarded-Encrypted: i=1; AJvYcCUDzw6rHwzLrE37qS7uoZyXVJbA0ZPvKUHF15DN5/mMUazp2y5dT+6oO9MEKWFv0ULmhN/ZxeyWkUTXgWALlxZ4sKvor+FxBP3pig==
X-Gm-Message-State: AOJu0YwzdhyL6BNltiSC5GJUWvAcma3JoDIulNk1KxdlVd0StT9vhwF0
	9HFVYv25BTHir7w6joxd3I4aGDwSDHIHu0CO/F1OUdOlXtj1kMqJ0UycHhCgx5M=
X-Google-Smtp-Source: AGHT+IH+kGB+BzPXsM3MGemhXXB3MJHPPe93VL6CRDE7bReLc3faoHtHV6yMiGYLraW547PgU7DiOA==
X-Received: by 2002:a17:906:3ac2:b0:a3f:98e4:7dc9 with SMTP id z2-20020a1709063ac200b00a3f98e47dc9mr1305769ejd.28.1708769720014;
        Sat, 24 Feb 2024 02:15:20 -0800 (PST)
Received: from [127.0.1.1] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id p10-20020a170906140a00b00a3fb4d11809sm446545ejc.204.2024.02.24.02.15.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Feb 2024 02:15:19 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sat, 24 Feb 2024 11:14:54 +0100
Subject: [PATCH v2 5/5] dt-bindings: hwmon: reference common hwmon schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240224-dt-bindings-hwmon-common-v2-5-b446eecf5480@linaro.org>
References: <20240224-dt-bindings-hwmon-common-v2-0-b446eecf5480@linaro.org>
In-Reply-To: <20240224-dt-bindings-hwmon-common-v2-0-b446eecf5480@linaro.org>
To: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Delphine CC Chiu <Delphine_CC_Chiu@Wiwynn.com>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Robert Marko <robert.marko@sartura.hr>, 
 Luka Perkov <luka.perkov@sartura.hr>, Zev Weiss <zev@bewilderbeest.net>, 
 Eric Tremblay <etremblay@distech-controls.com>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 linux-i2c@vger.kernel.org, Michael Hennerich <michael.hennerich@analog.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3852;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=pl4d9K66V7Tf3bdnPvTpvzc+RCXRErt3N+sOJeBxwu4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBl2cGoJL6c496xU7gDPRNsomhMCeQtSoy6uVanx
 Bdogu/jA+mJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZdnBqAAKCRDBN2bmhouD
 12WeD/4kJDkyUG3csaVQIZZbzWFny9m/QYNGh96LI5CR6lUmpbXqAfpn3NPtxtUtW4V7NRueuo+
 9hgYiPBPzSL9thNpNpuSCKB3xhmuS5x0iet8j4HDcKNM1duYScjP48DaQwgfFFEEhO7fZzfTrxS
 ebexnHIZFmwqnCeIlrSSZ3+TJ0luk3fHE50xdcsZgZQT0kDfI8BlBBdQWRsgvFZ7BLKdT3SVRxu
 GlIDKf+V/N5fh6cMEElceU+s+NuNFmI/XtqXeMrAHuTL80WqkuBkeDGIgAv3A1t2olerQv5/Pi7
 Hl5cqJWf42QVvEQ2yxqV6TCy/pPkjGxbEdxG7uuyz7IOrPpozBeZdZ+t++8g7KAqOgojE0do2Wp
 cydnwVkejcGGLD8G47sBiuhYcLy1hEDDlF0ZzSpaJzTDwdHAxNOcnNcbscpCKRU4LDzlS8qg3qV
 4rR36HwgIwv1Xu4UPcfE4HlapcP0dr19X+BQWaeT9bVrV/bfOHMHAULLQxjfjh8o+L8ay5QsvPr
 ZZtQfS/mL4flyPxTKBhInG7IRwYKgzjRzm22XpMFHAoQOE0+gQYpdfbpWtxriWgHxqeZe9ndiyZ
 pFxpaUBOSx8XAY1VNLYykYQS3/HQDw/DySMoNkEDjR74LOZBT1ih3o71UiLcFkpQCpjAc8tSBXD
 1RVxUQzAJRwuVxw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Reference common hwmon schema in the bindings which have and customize
the "shunt-resistor-micro-ohms" property.  While this does not make the
binding smaller, it brings common definition of that property and also
allows generic "label" (parsed by Linux hwmon core code).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
- New patches
---
 Documentation/devicetree/bindings/hwmon/adi,adm1177.yaml      | 5 ++++-
 Documentation/devicetree/bindings/hwmon/adi,ltc2945.yaml      | 5 ++++-
 Documentation/devicetree/bindings/hwmon/lltc,ltc4151.yaml     | 5 ++++-
 Documentation/devicetree/bindings/hwmon/pmbus/ti,lm25066.yaml | 5 ++++-
 Documentation/devicetree/bindings/hwmon/ti,tmp513.yaml        | 5 ++++-
 Documentation/devicetree/bindings/hwmon/ti,tps23861.yaml      | 5 ++++-
 6 files changed, 24 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/hwmon/adi,adm1177.yaml b/Documentation/devicetree/bindings/hwmon/adi,adm1177.yaml
index 2e45364d0543..be7e9e91a3a8 100644
--- a/Documentation/devicetree/bindings/hwmon/adi,adm1177.yaml
+++ b/Documentation/devicetree/bindings/hwmon/adi,adm1177.yaml
@@ -46,7 +46,10 @@ required:
   - compatible
   - reg
 
-additionalProperties: false
+allOf:
+  - $ref: hwmon-common.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/hwmon/adi,ltc2945.yaml b/Documentation/devicetree/bindings/hwmon/adi,ltc2945.yaml
index 5cb66e97e816..6401b0a9aff4 100644
--- a/Documentation/devicetree/bindings/hwmon/adi,ltc2945.yaml
+++ b/Documentation/devicetree/bindings/hwmon/adi,ltc2945.yaml
@@ -31,7 +31,10 @@ required:
   - compatible
   - reg
 
-additionalProperties: false
+allOf:
+  - $ref: hwmon-common.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/hwmon/lltc,ltc4151.yaml b/Documentation/devicetree/bindings/hwmon/lltc,ltc4151.yaml
index e62aff670478..8f0095bb7f6e 100644
--- a/Documentation/devicetree/bindings/hwmon/lltc,ltc4151.yaml
+++ b/Documentation/devicetree/bindings/hwmon/lltc,ltc4151.yaml
@@ -25,7 +25,10 @@ required:
   - compatible
   - reg
 
-additionalProperties: false
+allOf:
+  - $ref: hwmon-common.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/ti,lm25066.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/ti,lm25066.yaml
index da8292bc32f5..09395283b0a3 100644
--- a/Documentation/devicetree/bindings/hwmon/pmbus/ti,lm25066.yaml
+++ b/Documentation/devicetree/bindings/hwmon/pmbus/ti,lm25066.yaml
@@ -38,7 +38,10 @@ required:
   - compatible
   - reg
 
-additionalProperties: false
+allOf:
+  - $ref: /schemas/hwmon/hwmon-common.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/hwmon/ti,tmp513.yaml b/Documentation/devicetree/bindings/hwmon/ti,tmp513.yaml
index cdd1489e0c54..227858e76058 100644
--- a/Documentation/devicetree/bindings/hwmon/ti,tmp513.yaml
+++ b/Documentation/devicetree/bindings/hwmon/ti,tmp513.yaml
@@ -72,7 +72,10 @@ required:
   - compatible
   - reg
 
-additionalProperties: false
+allOf:
+  - $ref: hwmon-common.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/hwmon/ti,tps23861.yaml b/Documentation/devicetree/bindings/hwmon/ti,tps23861.yaml
index ebc8d466c1aa..f58248c29e22 100644
--- a/Documentation/devicetree/bindings/hwmon/ti,tps23861.yaml
+++ b/Documentation/devicetree/bindings/hwmon/ti,tps23861.yaml
@@ -35,7 +35,10 @@ required:
   - compatible
   - reg
 
-additionalProperties: false
+allOf:
+  - $ref: hwmon-common.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.34.1


