Return-Path: <devicetree+bounces-67647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AAF8C9247
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 22:45:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A6A4281ECC
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 20:45:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBFE869DF7;
	Sat, 18 May 2024 20:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hYl0QXfO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A3001BC4B
	for <devicetree@vger.kernel.org>; Sat, 18 May 2024 20:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716065147; cv=none; b=Yk4cbBLgN9KXK86Ut0tdwE1DuTcnMj7NMhyRJ7l3MLCxqRfoolRzYXCUN1iN2GNE4IEvXgZN8KBOLrghPTVEqBphtZEKC2vd5i0nGlHcfItDUq9TBleC506/aH7uzCOQM+3UcbQCnH5M8Z5NzgEoHH+LFHnYAO4m08Zh5LlkLL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716065147; c=relaxed/simple;
	bh=7D3JfsQldje8y5kklOAr84GugFeAdgH8b9y1JL6TOCE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ay/aswv4Ryj7aePBW1gcaUN+lg+ym8Fc4+7srRLZX7gfJ5t5JpcJhNdua0Z5RIkH4NVa8Y0BJmvvizbvJWJcNE3s++lNl2r0Tr8WcVtL08Tjr19OWMkh5m0nomkC+WkTYXbM4NjBjrb+GwJRht356dKXyCJZ+1ppNe1Rc2bYv1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hYl0QXfO; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5766cd9ca1bso376035a12.0
        for <devicetree@vger.kernel.org>; Sat, 18 May 2024 13:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716065144; x=1716669944; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DUhuNF9gHTk1IAfIZXzg3k6X/meW7+BoTontLnhR/a4=;
        b=hYl0QXfOmxB/VxkGQxmhsT+vWA4P68fNqSR8pcrmqMHtSzf04OBOJ/R3MjCdizf5v6
         JYZJ6EQGUd2OwY627NQhMybALmsATeOAE+9JZOOVuUVY2pcCUnkO0aoHN8CSNNOFqaF3
         dX5bBfl6hIK5WpkDWcQQLzjc6LLFAAFSACGKKLdRhHsbCOI1xkMCOFCQh87gZQ8GvsAh
         DMyO+1o4kFczTrRJyjShYYMBoOUXkS5nBw+wSU5SaKCyg5PkCl4LDRwGK0Ax8y9bgU7T
         MoAE/i5U7e8Z8c57g5NnTutdzlqb5yYljMA0vYZqJq7cEH3shEnX2pLr/ZuNfeqdRrTi
         x4jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716065144; x=1716669944;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DUhuNF9gHTk1IAfIZXzg3k6X/meW7+BoTontLnhR/a4=;
        b=E+8kHXbs3k8zCfcx1DSKnI5cg4HBcD+GyD1sFRagUtxCxg/LbfhAWVqG8YGW0KEDXb
         KG2DExhmEHFLaodB5OBROFbplAiH4/Wt0tDtCSskuWexeLZNx16J+UbQ0BYtaqqA1+Qo
         ZuW4cuZRBvyyrfiOSbMx03T4zdIutsYbBd7eHqtIO2WfBOPpP9ZYuFt7mpT6H+9QF6hM
         O8+hyzUYKJDX98J6t+dTmoS1nAwagKTLyo0xHSs828ugWbwfzsLJCbU6VVlYLeoi8tur
         HUUOhFVazY+8BLNPV4b3sEU3s0spbEYzUl4zqc6aPKEewMUdP5C7rZ0WCXhz7LIJn4D/
         Sbcg==
X-Forwarded-Encrypted: i=1; AJvYcCXK2VvdXOnGTzMm0dqssGp/ZG1k+qFvdbmaDEYWFf9wpu6JMrNQqiY4/vZL7k+f8LuZOsb2OgeqE9EehujDqGF6E8tOdnsIU+wHjA==
X-Gm-Message-State: AOJu0YyKRqnKbA6c6WQYdOsH4gVYLyaZzjgJA8i7hjQVtO4DctcEONfe
	0p8LPiYrnybXGXXskAnKm0gIq02lfCr801Ko+jjfJDRSRhoC18ea+GsdMUvPB+k=
X-Google-Smtp-Source: AGHT+IFLoW6ZA9b1C63Bf8OHLm3WLy3NeBN1vX3eOc7oCC6JLBiBVaypz0Q6D7yjtaz1sIWPPtH/WA==
X-Received: by 2002:a17:906:1797:b0:a5a:8d07:6a00 with SMTP id a640c23a62f3a-a5a8d076e2cmr827982966b.64.1716065143946;
        Sat, 18 May 2024 13:45:43 -0700 (PDT)
Received: from krzk-bin.. ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a17892471sm1261716566b.84.2024.05.18.13.45.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 May 2024 13:45:43 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wei Xu <xuwei5@hisilicon.com>,
	Carvalho Chehab <mchehab+huawei@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH 1/2] dt-bindings: soc: hisilicon: document hi3660-usb3-otg-bc
Date: Sat, 18 May 2024 22:44:42 +0200
Message-ID: <20240518204443.122586-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add dedicated bindings for the Hisilicon Kirin 960 USB OTG Syscon,
to fully document the block and also fix dtbs_check warning:

  hi3660-hikey960.dtb: usb3_otg_bc@ff200000: compatible: ['syscon', 'simple-mfd'] is too short

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 .../hisilicon,hi3660-usb3-otg-bc.yaml         | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/hisilicon/hisilicon,hi3660-usb3-otg-bc.yaml

diff --git a/Documentation/devicetree/bindings/soc/hisilicon/hisilicon,hi3660-usb3-otg-bc.yaml b/Documentation/devicetree/bindings/soc/hisilicon/hisilicon,hi3660-usb3-otg-bc.yaml
new file mode 100644
index 000000000000..2e26637a4711
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/hisilicon/hisilicon,hi3660-usb3-otg-bc.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/hisilicon/hisilicon,hi3660-usb3-otg-bc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Hisilicon Kirin 960 USB OTG Syscon
+
+maintainers:
+  - Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
+
+properties:
+  compatible:
+    items:
+      - const: hisilicon,hi3660-usb3-otg-bc
+      - const: syscon
+      - const: simple-mfd
+
+  reg:
+    maxItems: 1
+
+  usb-phy:
+    $ref: /schemas/phy/hisilicon,hi3660-usb3.yaml
+    description: USB Phy node
+
+required:
+  - compatible
+  - reg
+  - usb-phy
+
+additionalProperties: false
+
+examples:
+  - |
+    syscon@ff200000 {
+        compatible = "hisilicon,hi3660-usb3-otg-bc", "syscon", "simple-mfd";
+        reg = <0xff200000 0x1000>;
+
+        usb-phy {
+            compatible = "hisilicon,hi3660-usb-phy";
+            #phy-cells = <0>;
+            hisilicon,pericrg-syscon = <&crg_ctrl>;
+            hisilicon,pctrl-syscon = <&pctrl>;
+            hisilicon,eye-diagram-param = <0x22466e4>;
+        };
+    };
-- 
2.43.0


