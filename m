Return-Path: <devicetree+bounces-115726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1CC9B081E
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:25:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8CC3A1C20AC4
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 15:25:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64D3620BB57;
	Fri, 25 Oct 2024 15:23:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i548sOPt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07560209F57
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 15:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729869788; cv=none; b=H9znN7+Ecs1MrAEyWDr6bk9uoVkgGm5ERVKRJxdW6GrDDNd6KvaqxO0lFHO5ZfAS6aZ4G7b1pH+B3iyK4I4QXuKEDG5aVwu/+KYH7OnILTB4wdOxIewGLLzJz0HJBDWQUk0wfAvuEgg8oT1M/O8TBUXmeA4Hdod0RTirNhC914Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729869788; c=relaxed/simple;
	bh=SxzqUFuvQeeNvZs+W4DmL3KehVYMr+8uYq67jXqmhRc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gPiNA5GU+En9drvo+H0y3WQcoShTl4CZM1vw3wSe6DaSoWv+bNkpXJrymYPWkfEc8rn5k2PMlxmGs5NemjLf2MheIlnD77rU4zslMOzQzOX4EQCJYW9yZePibCZCuwfpGIBt/3zXcYthnhEnFE+1aFiCLrKOqE+/8cHxPFUEUrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i548sOPt; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2fb50e84ec7so18679871fa.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 08:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729869784; x=1730474584; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xraHByh9dspvceMJIW6qTfmhWn4iusv9VtXdHEauAWY=;
        b=i548sOPty+ED2lHxL2Mx47cOplznimHShFditBjNBq7D7L+4u+MsPQkLnzD2HyVfHM
         WbyHmLdrnahtcaQgmd+JA1G8xtJ2lacTfJWe2EZSyfS0nGYlWIv/3vlMPBnexcJ/mwGX
         krtNS4grD/7v54/By+5I7igjtb7MdaSynOLvFrdCAoAW7nAn/ufWFELXcwtpAhdHKIuq
         bilCWhignq9XeFpVTPenKvUddb6LgGl9w27SeqE9SkPewAWCm9QGah5cGRkWw4J1Spjb
         cDOtTyBKa5Ya1PURbJnDq3oG17QfnVUh4+fQGM99kVcGW/q0nLzHn6rgnEciLb30+7S7
         a5tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729869784; x=1730474584;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xraHByh9dspvceMJIW6qTfmhWn4iusv9VtXdHEauAWY=;
        b=mWBBmUJtG4Ou2ER4E/7uig+vKHBn5XmEUpZpOh+NA9QGWc7Q2pAamYSsMizl4llOtu
         HI3G7lMzvHltER3YRvbch2Re3AzYfDaFuEC9uWJFP6BvtWMBoxciDjOL1zfbovJzvK6Q
         7lWnXLkeu2EmANi46+cMGHN3XFt/Ea8GziQ0sm4lrrCf3X954Vwnrp2SQXrLzCoccK3P
         GazvwfYoYKRaYZWZGusjDc1lc6Or8yFF+g6jKvxUiV4x34HpIhSVKOiV6OPuaYNR2j76
         rMuZ7Px4yLxp+jBBuHYXPvlQRGREUt0YcKkxymfcFvYkv0HZfAFl664bsBdyjj3Ie2gp
         Twhw==
X-Forwarded-Encrypted: i=1; AJvYcCX99BvSHHFwyyexRQF1pFl/OyQ/iI7CoQVUPjeTs4tvP/PFkRYpfG/045joGMo0SUfEjzVFHd2+udYg@vger.kernel.org
X-Gm-Message-State: AOJu0Yx42TP6VeCRg4j+/YdfU1hpV8LgkAqovlsKoOb67XEIuVMblBKu
	YdUgE8pzXZ6Kp64dIQiuDVlN82+TJhK9+pRESbR/jr500lxYHWc+nIHvhfV22N8dgSJdVPj/1Hc
	n
X-Google-Smtp-Source: AGHT+IEb1pxJSgJa/BMBWt6Q8iuYf1yKBSxbAEoTPBGEjk72wvX3EjPpWXo7aCdl6PvebHz/jeC/Og==
X-Received: by 2002:a2e:a9a4:0:b0:2fb:2b5d:215d with SMTP id 38308e7fff4ca-2fca81c1cc1mr41053291fa.7.1729869783557;
        Fri, 25 Oct 2024 08:23:03 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fcb46017bdsm2135721fa.104.2024.10.25.08.23.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 08:23:01 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 25 Oct 2024 18:22:53 +0300
Subject: [PATCH v2 1/2] dt-bindings: cache: qcom,llcc: document SAR2130P
 and SAR1130P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-sar2130p-llcc-v2-1-7455dc40e952@linaro.org>
References: <20241025-sar2130p-llcc-v2-0-7455dc40e952@linaro.org>
In-Reply-To: <20241025-sar2130p-llcc-v2-0-7455dc40e952@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Conor Dooley <conor@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2065;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=SxzqUFuvQeeNvZs+W4DmL3KehVYMr+8uYq67jXqmhRc=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnG7fOm1q1Vd3yFZMwizAnp7TyTaf/TKKfO/afv
 mFk1IgZOVCJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxu3zgAKCRAU23LtvoBl
 uDo0D/oDifmuBsFRQww+YaQ7ZgLbKcHlqRjgKtKI4EDT+wXWcDdZRxV+9Ft5yIBeT2y2FER+8tb
 shSdKLBrbncMHbd0ECReqKCnihRB8HIh1CDAHRzMJCgroCvwllflA8g97nzn4zKmWhfgGXjN78h
 U8Wk02VbzBJD+0BuvVIP9vrEYehOjv1bsVNn9TgsCznHn86GB0VjFgKEeZxOjRa9EQhFLsJjb/v
 WbTjAaoHj4DA+kH/FuB8vsLr4So0X+6GiFKKATHoFynzs+GHErJMRUrSS5xJjR7KtyRfq5RJCOX
 TzC82xEUofYI0+FrhZlYLG9AQA7I3d/pSN2UzwWiPQRekPU0QXIy8oaoylO5Y49D8HZtwH9qiNT
 KdUGcoa3mqo+h/JcIrO0NmnI/I49sohaKd1XJruDkxfjeuBYm/Zk4fQfNs9/ePgtHclwwo3OM0u
 NO9pHjMIxeh8sdW+7eje4oqBS3QzzRavb/KjKts8KzdpVlmtgzRF4Udjj71aIRoxhPfMdl0ciTu
 foStW8l7blYhDUehxJipeqbpjy+7nFCv48lxTAqcGnjPICUEhW9BBl/EwXQJVwO7mST4O2T+V8Q
 NAwazvgNmD+K8XS5Mq0Kplbz6eGYrVaXc5pFBsv171Kv15DEg7EWr56EpqqwK1Xodl8ExV5jgnk
 xPqlrIDL5sskbwg==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Describe the last level cache controller on the SAR2130P and SAR1130P
platforms. They have 2 banks and also a separate register set to control
scratchpad slice.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/cache/qcom,llcc.yaml       | 28 ++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/Documentation/devicetree/bindings/cache/qcom,llcc.yaml b/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
index 68ea5f70b75f031cd8b23cf48d566c3a760dab77..2edacf28944c78b53b51744d787f5d529ad83f3c 100644
--- a/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
+++ b/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
@@ -22,6 +22,8 @@ properties:
     enum:
       - qcom,qdu1000-llcc
       - qcom,sa8775p-llcc
+      - qcom,sar1130p-llcc
+      - qcom,sar2130p-llcc
       - qcom,sc7180-llcc
       - qcom,sc7280-llcc
       - qcom,sc8180x-llcc
@@ -62,6 +64,32 @@ required:
   - reg-names
 
 allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sar1130p-llcc
+              - qcom,sar2130p-llcc
+    then:
+      properties:
+        reg:
+          items:
+            - description: LLCC0 base register region
+            - description: LLCC1 base register region
+            - description: LLCC broadcast OR register region
+            - description: LLCC broadcast AND register region
+            - description: LLCC scratchpad broadcast OR register region
+            - description: LLCC scratchpad broadcast AND register region
+        reg-names:
+          items:
+            - const: llcc0_base
+            - const: llcc1_base
+            - const: llcc_broadcast_base
+            - const: llcc_broadcast_and_base
+            - const: llcc_scratchpad_broadcast_base
+            - const: llcc_scratchpad_broadcast_and_base
+
   - if:
       properties:
         compatible:

-- 
2.39.5


