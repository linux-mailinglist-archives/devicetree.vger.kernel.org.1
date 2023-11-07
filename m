Return-Path: <devicetree+bounces-14279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CE87E363C
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 09:04:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F587280EDA
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 08:04:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C00F5D2E4;
	Tue,  7 Nov 2023 08:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aFf5aoZ5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3198D527
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 08:04:41 +0000 (UTC)
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2723114
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 00:04:40 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5437d60fb7aso8983970a12.3
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 00:04:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699344279; x=1699949079; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Bmn5eiaE58u9BZEkyunhEFzoCx9m/5MWM1mIBk7TdSg=;
        b=aFf5aoZ5pVH5l7u4+4mvFc8mBE17uup67AygY3iB+dwtYvNSUCxOiGcRhQ0jucdYoN
         9BDXrNWYfAc5QVeJt3q/BTyJsMtTZ841BxNt5rQfU1alj40G9DQV0MlOrGZgVRcFGFlV
         afqA1SSlS8oteBKtggi8KrdxKlnlf1HFANiuyLwTkkVgx/x3I98Px9r0Mz3SItAiXAG7
         lKeIpnjC8zTtU4se2z0/bmDpjKDRYplHN0IXGwumQVqZqo59tqSYJQjLaOxTdPatcGoA
         qwzCzYWne2E+bSAZP3YT6vsAc05otZybGNBsvzOxqINw3QVcdCMqHdjJz7TPA6WtaN03
         8MYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699344279; x=1699949079;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bmn5eiaE58u9BZEkyunhEFzoCx9m/5MWM1mIBk7TdSg=;
        b=W6giJz3Ca6PcnWV4mfl7aiGLLu2cwrFQFtFp4+mZc1KSl8gpBvA9ZMSYGKqsvqt0ZB
         4XcuToDQG37A0v4ZGfh9l1B6fDHMGpp2+fc+DeW3RItUBCJx+lWxR/++/UcM5y8NZ3cO
         QxXn50GK/KLo/MC20q1Ss/aqPXhRvguJrQZ9d7kNOLRhffviBYIfSm9agkeYOTKfN5jt
         UG0kWUGmmhruZJvqLy/xspiexd1JluiEj3pu0dm1JEWIuFMMD1uz0gktNmzthxH4xsfB
         cd700vFaCjs/unpjtnwxSCdJwRsP7DDeSVFFZJ1/MZHdE+G1Kj2LBzelyrVfc7KIdjDh
         pBvQ==
X-Gm-Message-State: AOJu0YxclhdmuIzNxd44AX8qfH+d6xwhXhn6/uAy614tY00aCkXwPaAO
	wxVlc896b6M88Azyw3u/S+Avgg==
X-Google-Smtp-Source: AGHT+IHNFiZZAS89De+r2+NiutX0cPO4+E7YrX4WohWqo/WH7cVUrGbpP8xLShQxZ+YINYWMxIJEPQ==
X-Received: by 2002:aa7:d755:0:b0:541:29c8:9575 with SMTP id a21-20020aa7d755000000b0054129c89575mr25058249eds.28.1699344279060;
        Tue, 07 Nov 2023 00:04:39 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id x16-20020aa7d6d0000000b00532eba07773sm5049106edr.25.2023.11.07.00.04.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 00:04:38 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: cache: qcom,llcc: correct QDU1000 reg entries
Date: Tue,  7 Nov 2023 09:04:36 +0100
Message-Id: <20231107080436.16747-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Qualcomm QDU1000 DTSI comes with one LLCC0 base address as pointed by
dtbs_check:

  qdu1000-idp.dtb: system-cache-controller@19200000: reg-names:2: 'llcc2_base' was expected

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Recent LLCC patches were not tested on QDU1000 thus the LLCC is there
broken.  This patch at least tries to bring some sense according to
DTSI, but I have no clue what is here correct: driver, DTS or bindings.
---
 Documentation/devicetree/bindings/cache/qcom,llcc.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/cache/qcom,llcc.yaml b/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
index 580f9a97ddf7..d610b0be262c 100644
--- a/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
+++ b/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
@@ -64,6 +64,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,qdu1000-llcc
               - qcom,sc7180-llcc
               - qcom,sm6350-llcc
     then:
@@ -101,7 +102,6 @@ allOf:
         compatible:
           contains:
             enum:
-              - qcom,qdu1000-llcc
               - qcom,sc8180x-llcc
               - qcom,sc8280xp-llcc
     then:
-- 
2.34.1


