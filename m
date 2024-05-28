Return-Path: <devicetree+bounces-70103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 980CF8D264F
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 22:46:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BC2871C25EF3
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 20:46:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50EB217B439;
	Tue, 28 May 2024 20:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z13M6yQI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD29C17921D
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 20:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716929099; cv=none; b=omYLOLb18ddKm6dx8Tg0SaqDdkhE0vVYnqRtiUwYQ9UXtV/Yiu10RwhISIsM3QUZCBkHw2qtURkNKJ2bHwoadpLK42h2JX3OYn1Dj6xHAKRb09QSRMnfo7bWaBsC1pSIoplf/EsVB/o1oW9vpBx72VeNPqCrBz1JUVxecOMbiF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716929099; c=relaxed/simple;
	bh=lzuWmQsRHevIFSOU8fqsv8TO85dYE8vzaNEi5gArVS8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nCg1d6PMJlVHEEr6H3RnPAVRDJupu71OSCUZ0sL3Jl4L49iBIyyvYb3sJiloHkx55RQSrpggxfE+rMbqOUnmlyXjXseDKx2gGO2YzJe8URzs2+XNtXdfdipJhMR3YQ7u7NWbh+jQDURDuKxhFSOSft21WfOTAmzK/lkQx6natqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z13M6yQI; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2e95abc7259so14588261fa.3
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 13:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716929095; x=1717533895; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sp42j2u8rigijiuxzVvZ7hagCwbbwAjC3ss3o2b1CDw=;
        b=Z13M6yQIhoACLtnb9zl3Gg4rbIgWGEipaUviUxuKTd4SPgsJubu++V4K9Z2lrotpOq
         QqYgEl5UDYqdvW9i2DteQ6RDKv51E+lSAImokqJP9DII1eDVza2GO8UJ3qbY4ibf/wSR
         kJJgcjLRyg7VIVoTlRG1RPiAZeAn/KvhBUXidZqkSqTajG2YOso/2Z5ddLDi6LVX1phG
         +NRMMzBfeclnOhsSGDjqNu75Tr9TxrBFnUY3nDHAXVwsy3oMqEYOabmrMCZQeL2rcXJH
         NxTfcZc+oisZOVGZtNaR1vivIiYYlQk8Ut+HhE5f5OgxWQ8ILnbzXpzhjts1luBP+lhl
         4uew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716929095; x=1717533895;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sp42j2u8rigijiuxzVvZ7hagCwbbwAjC3ss3o2b1CDw=;
        b=eQXNHWH03/BPKjFhHlXeuTNHJnJk6/Y7w5ea3v9ZwAh1D0DshnHoxLr8nonZ1PD/SC
         yaVt4smB7En7UTcYIJ5tnfuRVgKVe1HAJbYXRB5QfVnvbJ29whWwHTefgqdoAWyc0W1b
         oFDq0X9QiVRvbaMclm8w0gUyQ8BMKDwGpGbk7opJAREj/CUkjv3t7ndirJ/OB6QGNrr9
         wT7lXhUcqeD0lXoFJe9ewWinkiuQi8TpNVaUr4F4XG7H2lbY8EqrkoqQvwH9Y6fzAvnu
         zn8YSHI2GoocfBq/EjP1HYNK1jmTULxLgPtQtilOVeRL71jPqD8mY/hm2IBaugABaCSJ
         3z6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVKd2YQoE2N5u7htafWRDwoVvOxhWN2qODJSH7PQjA4P8z9giDxYeRgyrZwonmPEdlue8DsaAj0D4VRfkoeVJkP9agkKilzPHuGaw==
X-Gm-Message-State: AOJu0Yw8if+JbLvX0en0wphWkIs3wvR9VLGF31ra/1431YfDldtKCUVi
	MzuVtlIPZ5210TwWhZQmkKnQcMyPYKEg6UXp8uuZvkwZkHxA2R4ubBYKVjyXLb0=
X-Google-Smtp-Source: AGHT+IHlUaKp23HRlL/0b+TfL36sV1jVJhvc91UZnAl9jya40ztx/tB33R+O1pqXuGa0SeJRYVTtxA==
X-Received: by 2002:a2e:9f44:0:b0:2da:50f8:dfab with SMTP id 38308e7fff4ca-2e95b0944e5mr81361441fa.7.1716929094984;
        Tue, 28 May 2024 13:44:54 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bdcd21esm22759431fa.100.2024.05.28.13.44.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 13:44:54 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 28 May 2024 23:44:46 +0300
Subject: [PATCH v4 1/6] dt-bindings: platform: Add Lenovo Yoga C630 EC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240528-yoga-ec-driver-v4-1-4fa8dfaae7b6@linaro.org>
References: <20240528-yoga-ec-driver-v4-0-4fa8dfaae7b6@linaro.org>
In-Reply-To: <20240528-yoga-ec-driver-v4-0-4fa8dfaae7b6@linaro.org>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Hans de Goede <hdegoede@redhat.com>, 
 =?utf-8?q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Nikita Travkin <nikita@trvn.ru>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2676;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=C9Lg3cE1aC1zyYeo+0Q2DO6EQOTcK4wvIXQyDKOKakY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmVkJElqBixkmpvSAfBNjNdtvgliOtM/Mav1FOs
 GdtJ1vODM+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlZCRAAKCRCLPIo+Aiko
 1RysCACm8cBuuDtICfshTIEFPNnFOXEcmNqzkQg7Rb7QnNUPfk9cFtUoFrrYAkMCk9Lq5HnEG4v
 w6ZM/UZ7+X4LC3/I7N++lGmyY2DfeRNmO4uW1JB09u/cSvHy7/w9RPQLarDzHcq6g/7ZKFqOIaj
 TtGvLRuoXsasa5aHUJ4N8tvvdevZ6Ecyy2XyZxgKElCpcR+K8p+MGCroh/VRcYT9sk2WoQibOcU
 JmWRhXe/aFies6ODhL1FbdgSe0jkNypoW475f2eF2/WrBEVM+peMPckUXnx5zBSLhCBFWIx6LPu
 02aXuiyj2ECyMiOlhhrlfXzXyXqK9I+aoccpM637uI116AT5
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

From: Bjorn Andersson <andersson@kernel.org>

Add binding for the Embedded Controller found in the Qualcomm
Snapdragon-based Lenovo Yoga C630.

Signed-off-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/platform/lenovo,yoga-c630-ec.yaml     | 83 ++++++++++++++++++++++
 1 file changed, 83 insertions(+)

diff --git a/Documentation/devicetree/bindings/platform/lenovo,yoga-c630-ec.yaml b/Documentation/devicetree/bindings/platform/lenovo,yoga-c630-ec.yaml
new file mode 100644
index 000000000000..3180ce1a22d4
--- /dev/null
+++ b/Documentation/devicetree/bindings/platform/lenovo,yoga-c630-ec.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/platform/lenovo,yoga-c630-ec.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Lenovo Yoga C630 Embedded Controller.
+
+maintainers:
+  - Bjorn Andersson <andersson@kernel.org>
+
+description:
+  The Qualcomm Snapdragon-based Lenovo Yoga C630 has an Embedded Controller
+  (EC) which handles things such as battery and USB Type-C. This binding
+  describes the interface, on an I2C bus, to this EC.
+
+properties:
+  compatible:
+    const: lenovo,yoga-c630-ec
+
+  reg:
+    const: 0x70
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  interrupts:
+    maxItems: 1
+
+patternProperties:
+  '^connector@[01]$':
+    $ref: /schemas/connector/usb-connector.yaml#
+
+    properties:
+      reg:
+        maxItems: 1
+
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |+
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c1 {
+        clock-frequency = <400000>;
+
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        embedded-controller@70 {
+            compatible = "lenovo,yoga-c630-ec";
+            reg = <0x70>;
+
+            interrupts-extended = <&tlmm 20 IRQ_TYPE_LEVEL_HIGH>;
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            connector@0 {
+                compatible = "usb-c-connector";
+                reg = <0>;
+                power-role = "source";
+                data-role = "host";
+            };
+
+            connector@1 {
+                compatible = "usb-c-connector";
+                reg = <1>;
+                power-role = "source";
+                data-role = "host";
+            };
+        };
+    };
+...

-- 
2.39.2


