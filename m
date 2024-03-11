Return-Path: <devicetree+bounces-49745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03458877959
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 01:33:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1EFA82814F0
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 00:33:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA28423A6;
	Mon, 11 Mar 2024 00:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VE7eKqGh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF67764C
	for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 00:33:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710117212; cv=none; b=Sse5sj7VoPtuf/QwYfGAoo+KesLQjog/T0JUttY0vdJ6UCWqzBOLCRagKemNeTFFDb4/vvvjXKFTzLixMANBMa5zNBr4/9Z0NbQu4CODSlrn0uEv/feNa6RIVwYYgBqHGGMT8MFCe+l8gArwmE9elSOO3u16jkm+AcOhqdd7FK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710117212; c=relaxed/simple;
	bh=YyOrv76+mgxBw3I4eDVdszM5X+GcVNMI85NNIHTNUHs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ewODep5xbpJPhSXDK7/1bwy1wk8TmplH89cmL72TulaQE7oGQJkpYxfelyQILB75VGO6wfnRJ+7pfTAtncqJVBubybdv2kVIXLCRYTAxkI3kYXSTrkK0WGHSoV91ET/MAaVU3ZR53XV7OfOWgEsypXqm56LBeGQrO3CcBg2WoVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VE7eKqGh; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-41329a665d8so2933965e9.2
        for <devicetree@vger.kernel.org>; Sun, 10 Mar 2024 17:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710117208; x=1710722008; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eSwq3Es2w3od7CAorcPr9UQvzr6MAfnOPjW9TjTrcXU=;
        b=VE7eKqGhLKax4lZ/m0WJkaJzFV/QS2K6OkcnP4Xjll3SYPawkghsvBk7/47rJhpn93
         L3AyGXWv7/rU7kqtXCNsxu0NmLE8QR3GkyEiD0wUAxBibDH88SPrkRLLTVuUFZquD69S
         K7Mr1kUP6HOR72xYqAu5wuaiup9VXY+sIeJFG5Eo0MSFeEwCE473O4v29pNCwdhllKt/
         4kdC51LKFkgv3cL8QNGXFQ9cQ//Ub/VqBpnRPWWkbHIheNCfAjvOZJyH6MC83NawICUj
         gqeeD8Kzi0gwYYU07OHwfvyzQivUtPXS1v1yPw65kyEGK6RibGT5LVH+WTlVNsbDFOve
         UmWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710117208; x=1710722008;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eSwq3Es2w3od7CAorcPr9UQvzr6MAfnOPjW9TjTrcXU=;
        b=wEDAnym0il1usEedeaPceIWhoetEJfqKLeZ0Q3fZ0uk1m/byjb0oq+5ldQrGZybmzm
         KC1ocLOZQoaPMlYYtXzNWxeBed6oqpxNY/4fx3DWKfoj+FhsoUyDRwlzsMqGW+zdWHyZ
         9jKLLcB8ZBuZu1G38FMf34/HoYjOqKO6m+WEkE28HXzfom+BmYdBzcyxu0y785dohSuu
         ql257USGWiOLt69gxnD3S0xpgUgCU8nedo10paa8dgyW8mXJ1dXud8hReUK7pTyT2dXW
         ugkH1S0Rc+numUIwY4h5DjQY7ku+JetIdGEgmCPD/BXnrl5aDKhcqUmC2f4UZfCRydrU
         Vf8Q==
X-Forwarded-Encrypted: i=1; AJvYcCUAbxkYCmCOutrUVYNuCcmzJnOQXjKPPvClXeQp40Yj665Ttrxd4EIW6GE+gGKR6QyeylpXDHnS82WfQBU3ej+GbLAb85V0290wPw==
X-Gm-Message-State: AOJu0YwulNusDKqQABTErvWz99WTryu3e51bkJaXyj2L2jrSxmA4YhQZ
	BVn33prDIkDkl4IBQV7KiePEGhwRSPUMI/SEt6NtJbc9t+8Aj2vker2qT2Qzkhc=
X-Google-Smtp-Source: AGHT+IFvZL3gWGGpxsFPBDBOzfj6geyaM1RGcs7sJPsX7UfmaVPrECbVTS1OhKcFXzEET+4cNqIZdg==
X-Received: by 2002:a05:600c:45c6:b0:413:2c11:f795 with SMTP id s6-20020a05600c45c600b004132c11f795mr115920wmo.39.1710117208283;
        Sun, 10 Mar 2024 17:33:28 -0700 (PDT)
Received: from [127.0.0.1] ([176.61.106.68])
        by smtp.gmail.com with ESMTPSA id m38-20020a05600c3b2600b00412b6fbb9b5sm13881720wms.8.2024.03.10.17.33.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Mar 2024 17:33:27 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Mon, 11 Mar 2024 00:33:25 +0000
Subject: [PATCH 1/2] dt-bindings: clock: qcom: Fix x1e80100 camcc
 power-domain declaration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240311-linux-next-camcc-fixes-v1-1-d126ae0b9350@linaro.org>
References: <20240311-linux-next-camcc-fixes-v1-0-d126ae0b9350@linaro.org>
In-Reply-To: <20240311-linux-next-camcc-fixes-v1-0-d126ae0b9350@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.13-dev-26615

camcc on x1e80100 requires two power domains MXC and MMCX. Define those as
part of the schema.

Fixes: 76126a5129b5 ("clk: qcom: Add camcc clock driver for x1e80100")
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/clock/qcom,sm8450-camcc.yaml          | 37 ++++++++++++++++++----
 1 file changed, 31 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
index fa0e5b6b02b81..eae9b73ae1f16 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
@@ -19,9 +19,6 @@ description: |
     include/dt-bindings/clock/qcom,sc8280xp-camcc.h
     include/dt-bindings/clock/qcom,x1e80100-camcc.h
 
-allOf:
-  - $ref: qcom,gcc.yaml#
-
 properties:
   compatible:
     enum:
@@ -38,9 +35,8 @@ properties:
       - description: Sleep clock source
 
   power-domains:
-    maxItems: 1
-    description:
-      A phandle and PM domain specifier for the MMCX power domain.
+    minItems: 1
+    maxItems: 2
 
   required-opps:
     maxItems: 1
@@ -56,6 +52,35 @@ required:
   - power-domains
   - required-opps
 
+allOf:
+  - $ref: qcom,gcc.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc8280xp-camcc
+              - qcom,sm8450-camcc
+              - qcom,sm8550-camcc
+    then:
+      properties:
+        power-domains:
+          description:
+            A phandle and PM domain specifier for the MMCX power domain.
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,x1e80100-camcc
+    then:
+      properties:
+        power-domains:
+          items:
+            - description: A phandle and PM domain specifier for the MXC power domain.
+            - description: A phandle and PM domain specifier for the MMCX power domain.
+
 unevaluatedProperties: false
 
 examples:

-- 
2.43.1


