Return-Path: <devicetree+bounces-11548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B307D628A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:27:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 686E3281BBE
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D21C7171B7;
	Wed, 25 Oct 2023 07:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oCOjftM9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C4A2D60B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:27:43 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3188BB
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:27:39 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-507c91582fdso7899385e87.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698218858; x=1698823658; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8AvfCjICBvqGXl1CJCJu3/DA9/DX1PEtzN6VBP43gSU=;
        b=oCOjftM9BpkeFU1tl2P05Zb2UegD4r6+E3OpDKbMxTU4U6T1r+20SDaK2rT/ujX5jM
         OV16YMVOLdbqiAbtUaGxt7zIXqkDPTaovRKZOYGVy6vDWJl5Lu8riCt1dOqJz7TjeGvX
         ZjP9cPGMMhUU2Y68NtPsG3SwkYnGyHdL3QHN0r6AxSuFvBMpnpJBMqE3tdImN/szerXV
         Wox+OJLPqs6zvIVV2mRi9o1rQWLLLPWJss66wEK/MphhX+ovMrB5/6Bm37AH5xnOvKLq
         5nvT8qPHCAtHqrRpN6w/OGluzwokSpwJ6XuisPTv6TJgl7GNgZt+dNwlbiXrtzwiHklb
         YI5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698218858; x=1698823658;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8AvfCjICBvqGXl1CJCJu3/DA9/DX1PEtzN6VBP43gSU=;
        b=i0FvpPA8BkTZLM8whmISaVlFH2bs+xqhIeLBL6ZuN1lxN0WNVIHSMCBaTdHAu/EpMl
         GXFvyNAPaO8m8Yp1aYSJ2njdsVrfIc7UgVNM3ig+xmqj3/Su3Cqa5i2AtGx6SqvxeczJ
         yPYnFVbocpt4zLtVrVOJcPFoXURak3J+fSGeQGuPSZDO/JJQXkUbB6Ua2yxb087dGWO+
         pLQ+n2aXhJvQdx1tBtYAWaWSIGeft3AzpBg13p8iI/pGXdGuR6fcp6vTAtk0SKFiDPXT
         CnyN6O+4TgajjrnqUrv08R9NV8RGRs99O4avCEzeV1b/RlhucP7hCZlWeL9T0028g9/E
         mLTQ==
X-Gm-Message-State: AOJu0YyNMxmUfZel9FnlR1JARSvXBtLrGIs0pYlgQZinGIyrQAN8Lj8b
	9vLWwCaF/nqamBn01SXAbqKj+g==
X-Google-Smtp-Source: AGHT+IFTTWZe9xgkUzYAAHAu1eGgPcFieZ/HoLmGBfhiwiQakLeiuEnEp4LDajlcYtaV26uVRQp2KQ==
X-Received: by 2002:a2e:b4ba:0:b0:2c5:b87:39bc with SMTP id q26-20020a2eb4ba000000b002c50b8739bcmr9689593ljm.1.1698218857832;
        Wed, 25 Oct 2023 00:27:37 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id fm12-20020a05600c0c0c00b004030e8ff964sm18759623wmb.34.2023.10.25.00.27.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:27:37 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:27:36 +0200
Subject: [PATCH] dt-bindings: qcom,pdc: document the SM8650 Power Domain
 Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-bindings-pdc-v1-1-42f62cc9858c@linaro.org>
X-B4-Tracking: v=1; b=H4sIAGfDOGUC/x3NMQ6DMAxA0asgz1iKA4lor4I6QGKoB0IU06oS4
 u5EHd/y/wnKRVjh2ZxQ+Csqe6qgtoHwntLKKLEarLEdGfJ47FkC6jZ4Z/CT9Sg8bThLipJWxRw
 DDt1Crp+9sw+CGsqFF/n9J+Prum5LJXbPdAAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1186;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=7yFCHMkxyK/fQuUFvR7qRoCu3GwPytc64QaiGrwMCII=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMNohLUy+rUQIgj3FuVa2ZPpbxO8YQjWVXU9jLFU
 nH1nn22JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjDaAAKCRB33NvayMhJ0XijEA
 ChTg2dyqVAO8WXJwOZhbD2Zdbg1PaGATTaquKnoUFvHqFDscacPyHD30HTfcL1utJMFuNVFpveNJPQ
 oIGyJra19uWfEiIxNIqAjzz8ng9nwgxxbL0W/IuTMmlvy7hkPXJlAo59vNKYbkENw9tgBdXVak8cCz
 Ck0/D+5Td6UFuICFDpXAYZuezuhQPCT/pM2SLpGgkQJWUNJBa630RrUPpf3GT4HKA918ZTl9QLGvTG
 YvF6mRb4rb+QwfEWqpFxiOUnSzR+MPv8ta5T1jH4ZFDsgLg7dxO2Q9tppeTXDgusMt2Er21svNfsPO
 D7JZ0PKOW0/3gUpYesGC3kUY/RQ4Y7z+M04H0YPe/e8r1ib7k4qPHlYGKoh2xPNldSKJ4EfsdTgVWP
 bLENfvFWm0un3+vilnV64xrU6gqJO6Yyne5CtQdPUj3J2wLkG3xprckDTjo4sw6YZJmrv/uJlWgb8b
 jtmq9G+uEvamV6R4u5xe54QX5UQrGJBEBWimmI8GTFiebvmhFJ8tOZsH2oyPzndGhRPzNIJx1MTf0d
 jaRoqJdCwiAPOnGNJpGlyh3Vm6Ob0FnrNPO7QpkmaXcR6lWk+9HKtD2OfiojRq+VKZFajtv0UbyPoY
 ptNIuZxwiOlxfeD6AgYBV54fneSAEwvwdgjl3lO+UjT2AxRI3Era5gpjd7WQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the Power Domain Controller on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
---
 Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
index 8473afffce63..c8a18bb25842 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
@@ -42,6 +42,7 @@ properties:
           - qcom,sm8350-pdc
           - qcom,sm8450-pdc
           - qcom,sm8550-pdc
+          - qcom,sm8650-pdc
       - const: qcom,pdc
 
   reg:

---
base-commit: 4830854409466173b786a2d738d78f701d880cc5
change-id: 20231016-topic-sm8650-upstream-bindings-pdc-83f154b65291

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


