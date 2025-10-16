Return-Path: <devicetree+bounces-227769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F136DBE4660
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 17:59:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 53540582DBB
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 15:59:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5141B36996A;
	Thu, 16 Oct 2025 15:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j3Bvuzdn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 950953570B1
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 15:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760630333; cv=none; b=aow33gu91/bzWRoczdnIblCL9sI0h0v4zLsU1xeuBX9uZeeb+9bOuL8K3QYKGJDDbBGkSBX4VNSEcBLn236lUPNLaLaJw/U7eTLpmQb2qHmwCZw9q2a6mbghGWrrfXhIW1VfDH/liSigNQ/9KM1eO9+MYpVvPi2pB7sP0n2G9jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760630333; c=relaxed/simple;
	bh=yje7DjsIFhOq220Z+6NhYIgkw1TYq5z3ouqumPOvySU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=B3T5+XbBJ5GNtcSM2Q2fSOdmMafT7Oc5U/tB9ZvkYHHgzFrXUg+vEf0rL8lWdXbFHtjYltlx+mD+i56kllmQdZOlZgt532fQJlM5iDwxtU4v7YJ2REJvZW7oMXz/UQKcJe20SuUMhwnAPH+yV6AJAl7ppznmMBtl2gJSvZ1Y0i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j3Bvuzdn; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b00a9989633so180434866b.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760630329; x=1761235129; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aAQW91aNDUliYu6xIPIKkGd7wbQwulcJzXF5XdkzCOM=;
        b=j3BvuzdnvqWPDd8yiA4m+Xl8pwsEGv7TBxTlF8kTdCz4eJ2JKAVlTP64L6Zpn5GVG3
         H1fCqEkntxCHhxifXISG3cOgr2g0MMARG7XB71EhAlyvWoy+vcJL8Y8qXYGs3tPciBt0
         YX4xu1aPailT2yBtOWvsedv+WtNkXuS0yDGUgk2EMVCUOMVG1qgf0zdvIsaVVGO2qJoH
         7lNOYNNkU4ArugsujC95C6R8fxUMWJKu/WXXQIYgs2ephTgYu6jpUGsUsiJyNG8TdoWs
         5jLW3L+zig18HP827ZUirg1aCtr8VEuGJ++oFKzuKQDK0/XQRXaa60eNkoZyCu0OLJ0A
         4GGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760630329; x=1761235129;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aAQW91aNDUliYu6xIPIKkGd7wbQwulcJzXF5XdkzCOM=;
        b=fFNmG+8KU7SJD/enfeFHEsM6NdKPcxcYR1hnXVKnOoYg1UptJXgfaKlRkI1d0cXDEX
         pmAsVgsyq2Cbqw7GcDSME6USDL7psbQGKfh3zDUR+ejGlwR3A+BjBTtd7DB1RlbHk5yU
         WUx8oWzV96NPw8NL9dCJw8nm1G3hxqGo8Ze0H2xHB+fiifkp1+dk+inrKqllY8MAJ3hm
         lXAQnWKU9p8SH5S7a3v/r3TfyXP7ijEsUIip9RsOGiFG74CQ5e2TDu5E2TrPAp6WRWTv
         O8R5yr9MLBoTypDC7LTS0lydwR3WQiEJh2iqJ32wl9mdqmyWXV4+CxqC17ssctTIIjU7
         D6Nw==
X-Forwarded-Encrypted: i=1; AJvYcCXrBaHUSZs/Jtztf578P2/MVJOhHEXPiu5/MJz4wi1+lBg0kga4UXQWIPOKMkh5f+9qe8nU4Ztb8lET@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9k2SF+l7h1o2NvO3zeXNH/EllL9I2di5Uiyhe57Ze85Apg41j
	r1mSNWAN1E8el0kQsz2766JtakzKLEmgDg3Gi6pluS6/mUR/iZk5OvMgB1p7ah0TLHw=
X-Gm-Gg: ASbGncsLSu/Y+oPSMbBTlItaXrSJ+6hJiTY2Ijtv3OCt2F4IdsWmxuZ3Z28Da7VDadP
	kyAmKmnm8goFpzvrz9bUkzw8NDdETqjJ45/P5r4K0c4PpzT9ylRGDv5DtSTXS8J4F6kHHByIzkI
	mo/YcQhMsdgNbkcln+Kf+AgV+oNytW70+y3iCVSDeOr6Ghujv+p0DVwq73ECKd3hBERoRnnx7u4
	ZEUAJjEmzNv8t+E7uFzQpvPrlPSC4VjptmGc+HPPx8/6lHzu9oWvv3/TENAX2GYEJEETyaZ1hBx
	hFMw81JzI2bLtVYzblWyxw728VmGsPsPQvU3AK9B7YGDQEQUJtJJsc5eKCHfYRyvjgmt5Cy9lqZ
	T+1TaN4VzyMabREEgKUnmB/p3HXl3yzQOgDebuX35JZFxHk+KZVLf4JGpDJDB1nrDv/3wQ8zokd
	vobkoN3SJTpTR67JqmZRmvAfWzySufY2ZyNWullUc5ZeizapiDz16xpxJqeVlV4IxJpJihU0g=
X-Google-Smtp-Source: AGHT+IFwFoVlzrd3EzfRgwjFNULDxybArmFxvRw3PQFLU4BEOlEa5CBeY9fanhhp1MvTHV/cP8fhDg==
X-Received: by 2002:a17:907:3992:b0:b40:c49b:709 with SMTP id a640c23a62f3a-b605249d84dmr571454166b.8.1760630324759;
        Thu, 16 Oct 2025 08:58:44 -0700 (PDT)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5ccccb4811sm549021666b.56.2025.10.16.08.58.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 08:58:44 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 16 Oct 2025 16:58:36 +0100
Subject: [PATCH v3 03/10] dt-bindings: soc: samsung: gs101-pmu: allow power
 domains as children
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251016-gs101-pd-v3-3-7b30797396e7@linaro.org>
References: <20251016-gs101-pd-v3-0-7b30797396e7@linaro.org>
In-Reply-To: <20251016-gs101-pd-v3-0-7b30797396e7@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

The power domains are a property of / implemented in the PMU. As such,
they should be modelled as child nodes of the PMU.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
Note: Ideally, the newly added properties (ranges, etc.) should only be
'required' if "^power-domain@[0-9a-f]+$" exists as a patternProperty,
as they're needed only in that case. As-is, this patch now causes
warnings for existing DTs as they don't specify the new properties (and
they shouldn't need to). Only if DTs are updated to include
power-domains, such an update should also add the new properties.

I've not been able to come up with the correct schema syntax to achieve
that. dependencies, dependentRequired, and dependentSchemas don't seem
to support patterns. Similarly,
  - if:
      required:
        - ...
    then:
      required:
        - ...

doesn't allow patterns in the 'if' block (or I didn't get the syntax
right).

Rob said in
https://lore.kernel.org/all/20251010141357.GA219719-robh@kernel.org/
that this is a known limitation in json-schema.
---
 .../bindings/soc/google/google,gs101-pmu.yaml      | 40 ++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml b/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml
index f7119e7a39a3fe0a0a23d1faa251d356f83ba501..a24390f6d2a54afe1aa84935e03f719a62f4fc8e 100644
--- a/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml
@@ -26,6 +26,14 @@ properties:
   reg:
     maxItems: 1
 
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 1
+
+  ranges: true
+
   reboot-mode:
     $ref: /schemas/power/reset/syscon-reboot-mode.yaml
     type: object
@@ -49,9 +57,23 @@ properties:
     description:
       Phandle to PMU interrupt generation interface.
 
+patternProperties:
+  "^power-domain@[0-9a-f]+$":
+    type: object
+    description: Child node describing one power domain within the PMU
+
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: google,gs101-pd
+
 required:
   - compatible
   - reg
+  - '#address-cells'
+  - '#size-cells'
+  - ranges
   - google,pmu-intr-gen-syscon
 
 additionalProperties: false
@@ -61,6 +83,24 @@ examples:
     system-controller@17460000 {
         compatible = "google,gs101-pmu", "syscon";
         reg = <0x17460000 0x10000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges;
 
         google,pmu-intr-gen-syscon = <&pmu_intr_gen>;
+
+        pd_g3d: power-domain@1e00 {
+            compatible = "google,gs101-pd";
+            reg = <0x1e00 0x80>;
+            #power-domain-cells = <0>;
+            label = "g3d";
+        };
+
+        power-domain@2000 {
+            compatible = "google,gs101-pd";
+            reg = <0x2000 0x80>;
+            #power-domain-cells = <0>;
+            power-domains = <&pd_g3d>;
+            label = "embedded_g3d";
+        };
     };

-- 
2.51.0.788.g6d19910ace-goog


