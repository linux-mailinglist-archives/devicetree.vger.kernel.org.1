Return-Path: <devicetree+bounces-20404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FE97FF306
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 15:58:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2812BB20DC4
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 14:58:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFE5051C34;
	Thu, 30 Nov 2023 14:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R0U85/pe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC891D50
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 06:58:27 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a196f84d217so4644766b.3
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 06:58:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701356306; x=1701961106; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iJgElm+2FKgOiklOOlflaWJ/HuIwIWorSVJS04oX4jw=;
        b=R0U85/pecA9j/yCPCDmWFg3tN+okjwsQW1/PKjWB/mU7gYk33oN2vnNunD5oIcvcTs
         AMwPbS9Uz8zrE61ilPsR7ePJKxLDthFe1IHiSaAy5Qgx1k/nJLGDfQTWWQfU+BOkCg58
         ixWUDPLL2LY024BJrA1zhWkX4fAym01TBLX/cKsmqGUDbSUEGdP96ghkaPcH32AIMtXh
         D/6dlNBL4nn2NkcKCu3ek5wyCA/6MwZIV/taliob/5Qpnfrzse8sQOY/C3WkNYHCkbbl
         X4bY744CYpqo1xesBgoiUHN+oi9EkSTlPJgyfHPAah9LDCVM1OM9fTwVQbkw5ySPeBPt
         R4Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701356306; x=1701961106;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iJgElm+2FKgOiklOOlflaWJ/HuIwIWorSVJS04oX4jw=;
        b=aIK7AIqZzzcKFYGcoXWXSUF9c/8fVBnMa7/gY4R6rtbSLGnUd5QVYU4nbjKte+JzSw
         Fqy5N0Wsel4AuZhEsdEEIgp8j1H0NHtXyIS52dqrpWxTqAeNHE4Im8N2S6t+RrkaH6WB
         iQ4mUol7WXTmuCtoMyFZ+iHBKD0GH54JdKNl72Dbq5c/SgaFnc2BwtB8OKllxzEpEZeD
         bRN8v1Lf3c2pFjxnpiruzSECrSGhQo42sSpz6FNwDs08NRo4w6bu12lUF1LUPEYaf2FS
         2tFm+RLIVtOrAUt/qH63/dzDOA+huPHneIus0FWLaSxtuAwD6dDTp8VukJji7LMH72G9
         nQVw==
X-Gm-Message-State: AOJu0YyK7B3+HEF9Yknbxh1NM/wQWeTtM9dWY1GqWs30PEZgXu4mxA+U
	15K6KDIl29Xhz+3Maxi4O9CH4w==
X-Google-Smtp-Source: AGHT+IEdc5RzXaFURAU5ct3kKx68yGncfwaVGga3c8YgiCbhZDEGnA9sVFWsFTJbCANEViMYDg3Qog==
X-Received: by 2002:a17:906:eb01:b0:9ff:53b6:f951 with SMTP id mb1-20020a170906eb0100b009ff53b6f951mr14942949ejb.23.1701356306058;
        Thu, 30 Nov 2023 06:58:26 -0800 (PST)
Received: from [10.167.154.1] (178235187166.dynamic-4-waw-k-2-3-0.vectranet.pl. [178.235.187.166])
        by smtp.gmail.com with ESMTPSA id a5-20020a17090640c500b009e50ea0a05asm756753ejk.99.2023.11.30.06.58.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 06:58:25 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Thu, 30 Nov 2023 15:58:21 +0100
Subject: [PATCH 1/3] dt-bindings: soc: qcom: stats: Add QMP handle
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231130-topic-ddr_sleep_stats-v1-1-5981c2e764b6@linaro.org>
References: <20231130-topic-ddr_sleep_stats-v1-0-5981c2e764b6@linaro.org>
In-Reply-To: <20231130-topic-ddr_sleep_stats-v1-0-5981c2e764b6@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Maulik Shah <quic_mkshah@quicinc.com>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701356302; l=1104;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=L/mYPSgVkQwlDWwgGCvsNga37g+6iaiq7t+BzLPdK7I=;
 b=u8N2CiHIzoLaEuBNc2Ib2FMbPuylVaP8j1vXJq18nkVLtgx4wKQyBeLNjMjamEX2RVstAuZZS
 Vig5YSRSe0gBB29M/aSZzjgbcOI+1kcdqSPJggbLSturZQ9MPss/3Re
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

The stats can be expanded by poking the Always-On Subsystem through QMP.
Allow passing a QMP handle for configurations that support it.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/soc/qcom/qcom-stats.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom-stats.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom-stats.yaml
index 96a7f1822022..686a7ef2f48a 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom-stats.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom-stats.yaml
@@ -31,10 +31,24 @@ properties:
   reg:
     maxItems: 1
 
+  qcom,qmp:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Reference to the AOSS side-channel message RAM
+
 required:
   - compatible
   - reg
 
+allOf:
+  - if:
+      not:
+        properties:
+          compatible:
+            const: qcom,rpmh-stats
+    then:
+      properties:
+        qcom,qmp: false
+
 additionalProperties: false
 
 examples:

-- 
2.43.0


