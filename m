Return-Path: <devicetree+bounces-11665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 078817D650B
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:28:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 674BDB20D91
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:28:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C31CC1CA97;
	Wed, 25 Oct 2023 08:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JNhdSqTN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2991FCC
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:28:37 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96130111
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:28:34 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-507c91582fdso7967675e87.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698222513; x=1698827313; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x0UwU9wh1C79P1ek4ptmmCsl2nfl4HL7/EfLKynslao=;
        b=JNhdSqTNTcEFEoDRRBXYFVd6N4xXpVA9RrF0LU+GAAvPShyKqq6nyaHwwGD8dO3Vqt
         EopuguSxpQDWtRJ1ojmPpoXnr3F9CB/fwwTTCk7B+WJMX3XpNxtcJlrw+/lsN0rpAdLM
         nxpUiKz/DSfUxsqXpSAuw1NMGTrtfM18BzbvmOp7D3eNZlRmKqqdPG140Y00WE6k6IFp
         dOIUPCLD0Wd2Pct37Cms80p/qIHI85ktyTWXMTd/+sS/3T82MX5oPs/p5tYGvMebuQo1
         vnjNjzhLHct0ef0ud79boaBshZzLvNB6LYvc0WY7RIuoKwyg0aeXNe/0wnMxY/efojyh
         0dTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698222513; x=1698827313;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x0UwU9wh1C79P1ek4ptmmCsl2nfl4HL7/EfLKynslao=;
        b=FPF3O64bXyznjxMGDnsPXrPIgiMbvksvXc0Rfwn0aMB8z6u3KxsydPVWUI1fprDqjD
         jUuRGtbe3ZVcfPPKSvgQZ5eUAzqV6AZVqkzTRNR1XePGJNacV9v8OlFV6RcJK4SRIgyw
         lAZzEFtqUYzAFbCd4mJS+Zs6dEE1LHnMvErjZ3OYsJnAgArsvbQK5qxP/etgAG/P8Kd8
         EoM9Nkvh7uLhxITywkbVgfAwACoCQy3LTiUcnm1Xdg8eMgVC9RNomw2VMeE0ltYBaitb
         c7DMJv3jPYmJhAK2kvw/ucrSZ2LZYSWy27opVM5d+GU9wvCMkCZRz0V8tI0NTwigbPA6
         7YsA==
X-Gm-Message-State: AOJu0YyTTkNriINOGTZI393FZBJjTsIvGOf9iuqZ9PTDAuN3yhsYuI6g
	PDXEcIFn0jF+Qmq6Zqhqv3tkFzf4l4bGWjmpLH/S5UUj
X-Google-Smtp-Source: AGHT+IEk50K7fXMN2i5VZRyP0bNSSce/I9RNkOYZVuKWRapansHPv7prIsy9+bmM+zCige1KOleheA==
X-Received: by 2002:ac2:490c:0:b0:501:bd6f:7c1e with SMTP id n12-20020ac2490c000000b00501bd6f7c1emr9786306lfi.33.1698222512686;
        Wed, 25 Oct 2023 01:28:32 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id x22-20020a05600c189600b004083a105f27sm18433183wmp.26.2023.10.25.01.28.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 01:28:32 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 10:28:30 +0200
Subject: [PATCH v2] dt-bindings: mmc: sdhci-msm: document the SM8650 SDHCI
 Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-bindings-sdhci-v2-1-0406fca99033@linaro.org>
X-B4-Tracking: v=1; b=H4sIAK3ROGUC/43NTQ6CMBCG4auQrh3TH6DoynsYFrUMMIm2pINEQ
 7i7lXgAl++3+J5VMCZCFudiFQkXYoohhz4Uwo8uDAjU5RZaaqOkqmGOE3ngR1NXEp4TzwndA24
 UOgoDA3ejJzCutL20jbQORb6aEvb02plrm3sknmN67+qivusP0NV/wKJAAdZl6fuTsUary52CS
 /EY0yDabds+jGsiudkAAAA=
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1323;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=OL68rEELlTwP2Xhoqpzlb0uingRTSNFDobLzF4y6gWs=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlONGvqAaualQiupRqwlEsS+hNp5tmfJoGs7WMlq+p
 oqfSu0WJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjRrwAKCRB33NvayMhJ0XVmD/
 4wPZsxhc1QUlexNaOL93sO44DSFGKl1uMRVukzdlit5xFWeoDbc09SSoHQ0G7p0Wwm5TCkhmP08iTD
 bm+zKhEHREWnku717ChHSU3kGmGcqE22r6hzOvDTy1L1779pUsUAvybVLLTmswqAmiaKE5jbPQaT0s
 Ry2N72hP9L/MpO6e39ryijmL98ersm9+pAv+6eDl4DvbkQTPUpRumRyHV96By9xIrxie4wJ2o3FM1/
 z+7QIeVbD8S+Uo+Av3vp0yPscGFbyMzOnPvuWJGwRl5wlGKyUxSaJo4si54zD/I91ez0MVswFpnERf
 sPaPOFuluf1qlJx1NTp79NjTY4vyLkwYIn+YR1490rQ+O6CxVcgTrHddavPDKgeokvb8FuZbNOfCj2
 hxJ05dTWCgGdAxGvKBMd9glb25DZuxDYh42dQUsJI0hMAi06pjmaoSiNeSIfFcDvdJ8nsnTTQWjB1f
 KhLVATSR6cTBmp2Sj3Qj5lL3ugCOj79V9a+YJ3XdCrWLfyxnMH/ktiAHWaO22eJWmKmZh9z72HQczG
 ndDfPyv43pF7Q+tVKkAJUnPR20CeSUvlBuUFsW6CtSB6g7En0z4YK4yPXpLqeg3sIR9uNlLrqhLmAQ
 1ynNxeyart7BFkkAIjupQ7wNki+vWEMZ/akdgqGRDdmEIPLTlqHG2xpayIVg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the SDHCI Controller on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
---
Changes in v2:
- Fixed typo in subject
- Link to v1: https://lore.kernel.org/r/20231025-topic-sm8650-upstream-bindings-sdhci-v1-1-e644cf937321@linaro.org
---
 Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index 69a213965089..86fae733d9a0 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -58,6 +58,7 @@ properties:
               - qcom,sm8350-sdhci
               - qcom,sm8450-sdhci
               - qcom,sm8550-sdhci
+              - qcom,sm8650-sdhci
           - const: qcom,sdhci-msm-v5 # for sdcc version 5.0
 
   reg:

---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-bindings-sdhci-3a47f07807ae

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


