Return-Path: <devicetree+bounces-11557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7602C7D62BB
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:30:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2FBE9281C99
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:30:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0713E1775E;
	Wed, 25 Oct 2023 07:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ry/rPElq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8466D2D60B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:30:33 +0000 (UTC)
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE931D48
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:30:29 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-32d9b507b00so3842316f8f.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219028; x=1698823828; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Hh/bTIvESOCXDl4r8DcX/YhcpEstvTtw+QuFAmjiom0=;
        b=Ry/rPElqeCBNReSIM4G6TSR0QQ9Tnbg/0OB9KYIxp9/LpWMu7dXalSn+D1zg4Qa8iR
         FuZIfdf18sSRanE8TQLqwPq1Fv0iTHvO9WjWrNMvTe/tEzYKB9TkY4e/3Q82ch9F5sFb
         aQc+NY/xRX1wO9whA0iccZZpV7CKuH1ZQHZMAxnpzMRqprzCVyW2R297aoB9Buddq34x
         AGkKC0CFAua/cmzqKHXHllPx3wf7gpfKqCn2sEDHf08CAR/+sGF1q6pLl+9fIU/uIsk8
         1ROG+Untl4v1YwbLEJmq5FNc/TEBNKPZzr/TOy6K4dycWNXjg9eW2B+Ab62I9ozM5Jlo
         ugNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219028; x=1698823828;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hh/bTIvESOCXDl4r8DcX/YhcpEstvTtw+QuFAmjiom0=;
        b=bbswpnWsHxOjqzlxRN1foL5T1H0dR+mTfmypM+Ng6u//63WHzLetmSpXM5rpxiipsu
         4u6iS4Pli0WTPyJIbKEB3AQYeM/OgFqfkW9QgNmQ0nKdKexl4lRyMnudtl0aZNrwpIBc
         8ZIvpbcinIOt/3SSQ1ySqFJNJ6a5GgwVd91O8mThHWBIiXA8eXuRuTed/MByGMXGScAU
         7R6j3FzvjpqMILNG+6tagXHzDsZIf0lI8aP2UEwx/NpoNclw14K1h5AjpX5ROdYEuKtG
         0dvLoSzM3QeoCa7D+4S6KH5NJlxDlr0mhpoYXr4IEj3crK1pRqPLRSbuTVCteOajnenj
         y0og==
X-Gm-Message-State: AOJu0YwZriCG+kOaz2Q/EKwiPx/XLzrhN1AAhzQGJaOHeObbd4202/Sn
	wHPJs3HAiZ95rREtEpI1l+gVuQ==
X-Google-Smtp-Source: AGHT+IEf/Q5gbbYcLBPf+kj9CZxV06kGgbpmFyWmQncUbX/jnj0FmtG2Y3qJR8QBWZhgSbYplvtRJA==
X-Received: by 2002:a5d:468e:0:b0:32d:87c8:b54e with SMTP id u14-20020a5d468e000000b0032d87c8b54emr10071232wrq.1.1698219028333;
        Wed, 25 Oct 2023 00:30:28 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id o7-20020a056000010700b003232d122dbfsm11394222wrx.66.2023.10.25.00.30.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:30:27 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:30:26 +0200
Subject: [PATCH] dt-bindings: thermal: qcom-tsens: document the SM8560
 Temperature Sensor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-bindings-tsens-v1-1-09fdd17b1116@linaro.org>
X-B4-Tracking: v=1; b=H4sIABHEOGUC/x3NPQ6DMAxA4asgz1jKX1PKVVAHCi71gInigCoh7
 t6o47e8d4JSZlLomxMyHay8SYVtG5g+oyyEPFeDM85bYyOWLfGEunbxZnBPWjKNK75YZpZFsSi
 JYqB76B7ex+AIaiplevP3vxme1/UD+vodinYAAAA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Amit Kucheria <amitk@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1219;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=erRAPQ5LajUF5L5ZNu5LBPh4slUjHNoEdaWVt9XE800=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMQSeAB0Aze+cZLUM1Bz3fYFR5/nQoHqRkIxoprN
 aKc/qmGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjEEgAKCRB33NvayMhJ0S+ID/
 9a+uPvy9LUxq6wYyYedX2X4VYe2haTW0IbJ3VduQ/2b1E6YQWb/Nz1LZUC0XRqZL+QP4NNqkQoRpHi
 1qdbYsuqk8iK8gjoV8vN2X/m+Bj0vk+yY1pOXo5Fp5+te2D1xkbcsIlsY0A50/b/O6NVWJtq+bwUwI
 kEdxSLQWwjCqLV6kbcW0ncAAoowlY3qWx5V048hndo21cZ5GK59h/cCNALO61GZRm94SXVSwjkZHdk
 Mtqq+f39eKYtM1VLWNJ+lpxpuv+CdrnrECPlKnujFZspNJ+Kqgez3XpUOllyPwF+G7M2Va2a19yoz5
 ijSah3aHmNW+nAkwoxv0AZfLxWjTG6W7BsAlxq9dMi5Zv43lpmMFkVxEaFO1s9un2SgkZNP6Tj13c6
 Vc6Y4IMbYDw9T7mqhySxomtMYmYHgnBPGaYaDUxj65zUSogeKQbim9GWRzkYaSotLAuSjql4Uq6d+s
 pGOC05v/hrGDUCbpymkBAILwvSkyvRXd3iShRJwAe45WCaVK1wjIYPRSW+NPxMQidi0bH6GxyvkROJ
 8AtrxV71e1eiLd/p7lY7NDo4HUbYTxQOtRIJeFqz5VQXRWRRQn43irqAaX+EjwsiU+3nMzftZ9fOsE
 DI0lbbdEo4sDima9sI1wZs2/3WKwSmExOmvAo2HOVIXyR8SYzIbw2J+f0Aqg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the Temperature Sensor (TSENS) on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
---
 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index 437b74732886..99d9c526c0b6 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -66,6 +66,7 @@ properties:
               - qcom,sm8350-tsens
               - qcom,sm8450-tsens
               - qcom,sm8550-tsens
+              - qcom,sm8650-tsens
           - const: qcom,tsens-v2
 
       - description: v2 of TSENS with combined interrupt

---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-bindings-tsens-4e748933642e

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


