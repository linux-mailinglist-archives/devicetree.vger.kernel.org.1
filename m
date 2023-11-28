Return-Path: <devicetree+bounces-19532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA6C7FB46D
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 09:38:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 89C142824B5
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 08:38:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D42E1FDA;
	Tue, 28 Nov 2023 08:38:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="knrtVQhj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D999F171D
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 00:38:03 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40b479ec4a3so12902175e9.2
        for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 00:38:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701160682; x=1701765482; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=crclIHZgLMbk6m6cpstTsXFLirHjxlOQ97dZu+AQEPg=;
        b=knrtVQhjUkrxhiRs60FoiDimLAc3GDYrLShURYB61xOmT0MFpzMJoYxqw1SgC4BXXJ
         2awm+lWiqIs44hBPjd7Bl05ENnVpkuyRWJC5OSHF6VmwFJNOU7ew1th0+/0JaSlvKcvi
         T/pnCm8D/N7KonZffUptWkNF/1beB7q2IJbjJvpD7JID2vuWu/7byD6A/2QRdA4BUcH7
         jwJVBfAuLBgX1vZ7Rmhw+TCCj8egMbVLb/c4C+PU0kUBNmS+2/Usmhf/lc1cqoqZYGty
         qSLJMCWtggl/uC74qVmrEH+bQJ6Siv/ifJIMxBGo8o+P0flaE0ZfLV8vwj7eeDskYyjS
         eIsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701160682; x=1701765482;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=crclIHZgLMbk6m6cpstTsXFLirHjxlOQ97dZu+AQEPg=;
        b=XqzRuyApPtMko7769JBTsiotUgwuRp8/KraSi9mpzoSOyo1doMDB1iK0WL1kzvNHN/
         /d4xr+wNB5ir1sgf7RhQXYJTsnIqqgRyVFQPk8FJElGuzl2biqpGJiK5vjNPJXJ+LHNd
         W88QzkOi/u869GqB9zeI/hRaUKZ8cch+NLQBd6JlpDMGDBCPtSc8t/M3ngvTQALP2zHz
         0v8w1aZwJBOm95/RZxU7diz75ShIpMLhf6wTMTk1N8Db7ITf8k5eyOUh3nVXwfkMW5G7
         iObJI6OQZqPrGklzyqC9csCQcDjjXPK+8MYeDYomX0G9vZUy1AwlpIvm9tE4+Z982gy8
         PJbA==
X-Gm-Message-State: AOJu0YyATwOo2wzWMNui9jipIYVRzznzx/oW3mFlDOO0rhpjd5OP42px
	JFBQeQ8mPWSDLzrMCQm7Qj+U+Q==
X-Google-Smtp-Source: AGHT+IGJhOJb3UCnHXw0kECBhzTOYoNKUyrbF2v0TFjW3e4PIQzArhIUJmoMawYTO9aIZqORwmHskw==
X-Received: by 2002:a05:600c:470f:b0:40b:37ef:3671 with SMTP id v15-20020a05600c470f00b0040b37ef3671mr11367081wmo.38.1701160682275;
        Tue, 28 Nov 2023 00:38:02 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id c4-20020a05600c0a4400b003fefaf299b6sm16718638wmq.38.2023.11.28.00.38.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 00:38:01 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 28 Nov 2023 09:37:59 +0100
Subject: [PATCH RESEND] dt-bindings: iommu: arm,smmu: document the SM8650
 System MMU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231128-topic-sm8650-upstream-bindings-smmu-v1-1-d330854170d4@linaro.org>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1415;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=88P3e6NmMBveIZbiqKlF5tiz9ASGje5GZTyQzmMCUXo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlZabpqbPdoPQ1taztccvMYrIrhnlTcN2ProIe2tPh
 XJSM8r+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZWWm6QAKCRB33NvayMhJ0ToJD/
 wIZQE+dwjvziSy/ZB2A2vdc+xTal7T4iFb4xeYUY5f3BR/HHGHUoJFnxhq5dH8ogXzTh7uLQ5bmL8j
 +PjJrEeQ+fye0WSqRKn06FI7bAR7/ugL5pyol+I1IfaAn0AdVc9oaLtUo0PkobawcvQCgpd6KP36du
 iTTNc/E+3PE6qDOOCXyNvmQnBtGa1+noRQpuivp9CO4znj0aOSZzc0bQtwN61HqK4DetMSTU9i7/Ca
 x4HQkJYx+6aprnnnpk3x5jKal2XbgeJ01HFhv6tz3jQgmmnlGQe5h6lV5KP1l7m5ni6eSPKJCbRhlE
 W/Kriv/+duBA/6EreApVb/z8o9r5dMWHWEjBWB7tVd0KLD3NvA8zySC0XYLBL97xwMqFFdbe3spNqo
 kZHRiVht1I0//eZJpI24Z3rvsTSq0+7nL7h+jCcvT639fmeT50T8DL904TxRb1oSyMDnh0zRE3Cf5l
 9seqw6+sBfWjzHNrTcF90F6BV4CFQyGJczF7/gNyKApz6oYo0dUbsbzcC2KXzR5zPgjW3IqeWsypyx
 3faV08W7hsEtn6rpSuVWDckfVDSUWwpOTPhNP9+5z0q7yxDTztM0YimB4ulxrgyH0XOpOynBUlez0Y
 +5SjIX6DiuozGGDcn3J2YxcS5kFKd0BBSk8NS/oazKcZ5b1x+ebs+LAJFb8g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the System MMU on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index aa9e1c0895a5..157de0d0a24d 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -56,6 +56,7 @@ properties:
               - qcom,sm8350-smmu-500
               - qcom,sm8450-smmu-500
               - qcom,sm8550-smmu-500
+              - qcom,sm8650-smmu-500
           - const: qcom,smmu-500
           - const: arm,mmu-500
 
@@ -475,6 +476,7 @@ allOf:
               - qcom,sm8350-smmu-500
               - qcom,sm8450-smmu-500
               - qcom,sm8550-smmu-500
+              - qcom,sm8650-smmu-500
     then:
       properties:
         clock-names: false

---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-bindings-smmu-7d52c88bc6ff

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


