Return-Path: <devicetree+bounces-175305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B996FAB07CE
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 04:17:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D93011BC08C5
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 02:17:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4D0D7E0E8;
	Fri,  9 May 2025 02:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="hR9lDDO7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D1638DE1
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 02:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746757059; cv=none; b=hc0K0LW68QSKdnKDYZ/VH+nXfpVXPkwdBip4OfwkxXO2hMSvErFr6OY85TtsulWPryZO+VBm+2HhnuQX4jcAWRVxTjmgIa8l4aerCYpXPYRAM3A6cKpKUAfOtwKjoSr3xiLu8Jr2BJUeH2RM3I6e8gx6k1dyjrPRAEhFi9ugLjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746757059; c=relaxed/simple;
	bh=qpBWzqwX7nlosrgQU26zA1xQBO/cCnyHtYyHlt0Dvlo=;
	h=From:To:Cc:Subject:Date:Message-Id; b=kNz1tkccwwWSBMpt+GMvIU7yqV+LDmkceqlRDyZQ5vfiHvPI5eniqUhrp0ccarOj41e/XEH862TGQCUxk7AfyXBQeAvgZle1i3XdJeMVENhWu9T0nb8cGJz9wMscHR53AhHleUuvPGx3nELmsC6PwayujHA/JmGBNhZay6iB0Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=hR9lDDO7; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7394945d37eso1478955b3a.3
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 19:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1746757057; x=1747361857; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=COuwbILi4TOhg1B2xAx95PCBRZphUGdmgoB7CQvJQtM=;
        b=hR9lDDO7bmCYS3Hrv1XHoxCRSlFWKFK9fDmuvFAv3noF22MlR5gPSZrtnofzck5iww
         6qap6czVqkEJaW5Ak41RdfDFG6qF/5gfu1FWMzcs3Vv3S/q1jXpc2NBxBOd7XIq++DKM
         2QGbdc9Sak0k5TjXb+jK92mZ1e7lvu8wazVZnMAG+jPXflhwR8tp2uVrSNsxcRnRnRGb
         TxUz9HHFDySq9LXQ4K1UyZc9+/jvjeBxjvQi6vGE8CbxOrEk5kKZ1h7T/lgvrKhEIH7s
         d329jaY8QY6BkN5LP4t7agU2QaXzhNozSQF2PKOfiX383AHcTgBR3dgZLxsnta/2bfuv
         Sx2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746757057; x=1747361857;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=COuwbILi4TOhg1B2xAx95PCBRZphUGdmgoB7CQvJQtM=;
        b=mZvsNzrph5TNwZcuuHxY/tDvXsqn63S2Kk0PeCX+z+G0yhl4Sw99U24rqYrtbEqgD2
         47NCfczbQ6KIRgFUb7mb9yxtMZQqbGDmyNC1jrpSrOqp0eRC517oCRS1Ebe2trCSq+4y
         twWPoSaq3rTjBEw22AWVaT/9SEfVI51ri1GlO71HyuAxA5Hb9thphQtn27b+NLdrZ2mM
         QieQa5nuQYGn9rjHoF6ZQaFniJHGlt+043RB3xo7euyI4AScTqTqE1I4a7f9pfu+nAvs
         /q9tx/DRHncvPieS6oq58dr81C3C45yq2Omq7sgMA8nDpJbWT4CzhU4HV0wBV4olC7fA
         dZEQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7mD/fgc/qCqS92CLfHldTvpb1Mr17OkmFkznsu+F9lOCBJInagxuXURauhYqXMubeDRPpJiQ8QJfL@vger.kernel.org
X-Gm-Message-State: AOJu0YwIT5ePPQjkORiHe8onpRneoORIze2b1mXw6hUxoEfNjB9YyrOb
	Wrh5gXQH4wbcdjXDfO5FbIbAedVjbCG7s8FKMgBON7Ox7un879iyIH1lI0eDdQI=
X-Gm-Gg: ASbGncuoIpdT1kQxarsAhRqvcKiUwQ9isNCGOFqfBFmzoSRrt+tc5ZyOG8ONnGseWLf
	HrTjMpmzFSx9yJ7/8pRHApEAMVEjx2Aw5Z33i9eGdK7HiAXeQui5NKS95bWdsU05heMPo0Rdv3Z
	uuOmPlKuAd760Yp5enHUZuC1Kl5rTjTmTsEbSbfUf2fqU9haZvcoMQrdM+EhIfv98FjwwfVN29o
	B12b77cvi8kS7bOC9SHXLAtkMJteilTEoH0Awz2Pf3jM4BOvfiZHhiI7Z6N2rmjkshmpZ69L1CO
	YWxsgpWOTVNBEVeNuc5BcpaPozBhy+/DeimM32etjoceg58EkZZ4JB5RM+g167Y=
X-Google-Smtp-Source: AGHT+IHrxCZaQsfenVelF9R0H8Ri61vJWq7kBW24FBrc2xBa8NbB2J48U9ZpAcGWfdq7Mgah8BLxkQ==
X-Received: by 2002:a05:6a20:6a13:b0:1f5:8179:4f47 with SMTP id adf61e73a8af0-215abb3816dmr1810793637.20.1746757057126;
        Thu, 08 May 2025 19:17:37 -0700 (PDT)
Received: from hsinchu26.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74237a3dc09sm744688b3a.141.2025.05.08.19.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 19:17:36 -0700 (PDT)
From: Nick Hu <nick.hu@sifive.com>
To: Cyan Yang <cyan.yang@sifive.com>,
	Nick Hu <nick.hu@sifive.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH] dt-bindings: power: Add SiFive Domain Management controllers
Date: Fri,  9 May 2025 10:16:04 +0800
Message-Id: <20250509021605.26764-1-nick.hu@sifive.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

SiFive Domain Management controller includes the following components
- SiFive Tile Management Controller
- SiFive Cluster Management Controller
- SiFive Core Complex Management Controller

These controllers control the clock and power domain of the
corresponding domain.

Signed-off-by: Nick Hu <nick.hu@sifive.com>
Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
---
 .../devicetree/bindings/power/sifive,tmc.yaml | 89 +++++++++++++++++++
 1 file changed, 89 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/sifive,tmc.yaml

diff --git a/Documentation/devicetree/bindings/power/sifive,tmc.yaml b/Documentation/devicetree/bindings/power/sifive,tmc.yaml
new file mode 100644
index 000000000000..7ed4f290b94b
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/sifive,tmc.yaml
@@ -0,0 +1,89 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/sifive,tmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SiFive Domain Management Controller
+
+maintainers:
+  - Cyan Yang <cyan.yang@sifive.com>
+  - Nick Hu <nick.hu@sifive.com>
+  - Samuel Holland <samuel.holland@sifive.com>
+
+description: |
+  This is the device tree binding for the following SiFive Domain Management Controllers.
+  - Tile Management Controller
+      - TMC0
+      - TMC1
+      - TMC2
+      - TMC3
+  - Subsystem Management Controller
+      - SMC0
+      - SMC1
+      - SMC2
+      - SMC3
+  - Cluster Management Controller
+      - CMC2
+      - CMC3
+  SiFive Domain Management Controllers support the SiFive Quiet Interface
+  Protocol (SQIP) starting from the Version 1. The control method is
+  different from the Version 0, making them incompatible.
+
+allOf:
+  - $ref: power-domain.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - {}
+          - pattern: "^sifive,[ts]mc0$"
+      - items:
+          - {}
+          - pattern: "^sifive,[ts]mc3$"
+          - pattern: "^sifive,[ts]mc2$"
+          - pattern: "^sifive,[ts]mc1$"
+      - items:
+          - {}
+          - pattern: "^sifive,[ts]mc2$"
+          - pattern: "^sifive,[ts]mc1$"
+      - items:
+          - {}
+          - pattern: "^sifive,[ts]mc1$"
+      - items:
+          - {}
+          - const: sifive,cmc3
+          - const: sifive,cmc2
+      - items:
+          - {}
+          - const: sifive,cmc2
+
+  reg:
+    maxItems: 1
+
+  sifive,feature-level:
+    description: |
+      Supported power features. This property is absent if the full set of features
+      is supported
+    $ref: /schemas/types.yaml#/definitions/string
+    enum: ["nopg", "ceasepg", "runonlypg"]
+
+  "#power-domain-cells":
+    const: 0
+
+if:
+  not:
+    properties:
+      compatible:
+        contains:
+          pattern: "^sifive,[tsc]mc3$"
+then:
+  properties:
+    sifive,feature-level: false
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
-- 
2.17.1


