Return-Path: <devicetree+bounces-19531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 914D27FB45F
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 09:37:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C33571C21075
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 08:37:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAB4615EA6;
	Tue, 28 Nov 2023 08:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y8msmTu/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56A40D53
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 00:37:20 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-50bb83d9e17so742318e87.0
        for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 00:37:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701160638; x=1701765438; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jGKLjx3luJGU+DnwzUn3Qi9imxdPkVHML+rqCOmAtck=;
        b=y8msmTu/0ijVSnrlmJDVYaHkGc+qOWK5/G4fc+LtaQ2v/Hv7wuWO+K8EHachk8s2+N
         /eAWN50FM/0xBECm5Tn11nLhXEKfwV3d0LkmLkynTwv4gaW/G5/TMk6jEkGALs1LYmmx
         VIbPSjGY8lCxJh4YO+Mw93Vt0ZcX8Zzl8vuprZdOgqIn8F0UiJtX8GWHM2bCpgjEAQLo
         2xcGOskquJyRAOgVAr4QvuvAb6S7r1nyXMjAC+MIiqB5Pxvr26pzAv4ObluSSLf/oOdZ
         y5r77Uj0zZH0fm1jWfAziytFhR4H43N9amS+fRfDrT8bOPNVS7hky1wkU62p4zbhQfJ5
         IEIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701160638; x=1701765438;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jGKLjx3luJGU+DnwzUn3Qi9imxdPkVHML+rqCOmAtck=;
        b=k9l3VolpK0lZSfKqySJn6z1G03ehT02LWQ/Xb/KqkJZUN+HZiB6c8mhclcuMsMaYfH
         vwa43xxuhNOGTJCXakdfOPOesCY04Dah8EoG326cVgPtxa9tfaxZS2b4ibvfH9YVnJOf
         yvuHsh6DMMCFUgKcl/Lom1yao5HpteRskL+I3NiZVS6BfO8tj3lJZyrlVctWt7dqjZYF
         Y1dG4wLAfitf4W6eR+CLggrAVKsWV3Q4BYkc/d1mw8n3yZB0oE+NF14ga7SCUjb/MtEL
         8Euy/aC2wqDYrDTtMHaJL9gIPRhLu4inA9Sd5Ah3pNKu/K69rJ/OBnXtmgan7dofBNWY
         LU5w==
X-Gm-Message-State: AOJu0Yxuw7Sg265ZL6bBtjtLmhrglJn1QduBLq39fEzWeSkwu0JTGdv7
	9FaPuZjrDRxF1pz1BTHytHOe1PoyKwQJKVwGRBQ09IvQ
X-Google-Smtp-Source: AGHT+IGV9g8Gt0GdX7z42ch7sDJF6Eu8IzKDEWg0GGo3YxYJjiALZKGhZW5/q4ocv0/V3tt/PsVvSQ==
X-Received: by 2002:a05:6512:4022:b0:509:4ae3:465b with SMTP id br34-20020a056512402200b005094ae3465bmr12923505lfb.8.1701160638511;
        Tue, 28 Nov 2023 00:37:18 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id o18-20020a05600c4fd200b0040b4b2a15ebsm1853454wmq.28.2023.11.28.00.37.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 00:37:18 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 28 Nov 2023 09:37:15 +0100
Subject: [PATCH RESEND v2] dt-bindings: thermal: qcom-tsens: document the
 SM8650 Temperature Sensor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231128-topic-sm8650-upstream-bindings-tsens-v2-1-8a21f61130a5@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1381;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=9N+6dBAkFtncfZi6ZHXGSHcpyq1NPV2HQpTLMM/rMdA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlZaa9KgSozkm2ZH1Xcfu/rkLseV0mf3PJhCPUInPW
 pXh1t4WJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZWWmvQAKCRB33NvayMhJ0f/GD/
 960lAxxbkUmvvPIT14Hh+ln9cs81E0R+EQ02UdLYQ+EGUeC/sLDsR18EHMxrHWDj3at63o9c4nVh9A
 /iqanWFHRlFcFrDTLxZpeqxaJCMAKGm6wqYrBl8Q9QEG8Yf+THxAldSWQZOKNDGdgqo1SKVWtUkaZm
 PcoQKZ7yYny0+2vNpwgX3ILw4f9UUGYjkDHCzrb4h9nrAnpPo+21skempCfvqTGA0UlIv34S61XrwJ
 xJUqNbz5LyIZL36Z9IqZP8wspF7isX6wl9lnojvoX/enIKPVBS7T19IrGOW8y0fQj3te0LVBCqqfsu
 vswBcJtKDhZFAqsY1pUdfbel5w4SSRgHkRatNlp+XrXbSHYCHeGVTNJKnoyGYOPHf6AL17p1mh484x
 0EDJhxe7BjslPA0/yf3Ho0miPbneu33Jbjc5fku7CBnYeHPghgxZN00biJRIFWV6vpo+uQLOk3gfoS
 t7FYCTPLLnwu60BO/ugC7ZYYO2rrMQhSy6ZVLoY7VcY7HCSdmAt4dg2IpRJZHKJuWUn145P/lvCdd5
 P1PdsTTuG2VZ2EnxCqjHaLioI2w5TqNbUqsJy5LaHjElHXlBJXokPCV3BHMVs1R2jTRV7OeBBFya/e
 SIJe+eoGV0OxIt2kux8bdoXtoAis0S11Fb/+A/bg7rlLJDAvOeSL4i32GXOA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the Temperature Sensor (TSENS) on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
---
Changes in v2:
- Fixed typo in subject
- Link to v1: https://lore.kernel.org/r/20231025-topic-sm8650-upstream-bindings-tsens-v1-1-09fdd17b1116@linaro.org
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


