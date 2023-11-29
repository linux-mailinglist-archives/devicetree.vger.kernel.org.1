Return-Path: <devicetree+bounces-20096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DA17FDC11
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 16:57:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 45774B212AA
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:57:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C77D339867;
	Wed, 29 Nov 2023 15:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LKSyjgsn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6ACD3D48
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 07:57:44 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50943ccbbaeso9648630e87.2
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 07:57:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701273463; x=1701878263; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vA0x6TLGrrwrneDYeNbPP8u/I8CMuud7wLf1wVHyc/E=;
        b=LKSyjgsnMToOAYXJMfSztu3tCnmFKdO/LZHIK5z3TkA/wGuARdjRNkzvxrq1jJI6oV
         D0xBFrPauxPKvbY9oR5TB5KoJFOfQL6QHEHeCSjemhqJ/0W5iYzQg+JIwoSraRGJvmhw
         Pkw74zi3rnfOQjqMnITIl41LQgzjcMgYEfjK5KBMhYGJjRkxBS7fe1qsj93zbrPmEH2Q
         rJtFQ9pJYbeyQBJZb/ssz4gwS7KBrRT8Wja/NM6veM5owUFcdWa0Enlq0UHMAxhqagQ4
         9s0Ls7NvBqiWFGzFbNrbJ+gdmRGg1aid2SA0hZgzrWVIUo0HATyF+PMXzN6Dg5RTUvjv
         nSyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701273463; x=1701878263;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vA0x6TLGrrwrneDYeNbPP8u/I8CMuud7wLf1wVHyc/E=;
        b=FfIR/Gpa8ztVDnWF0aWScc4VC/GQbb+jD7ru+lnr9vhgrXZ30HGIzdUFxDSRSRxaiI
         E7KT77iZJX4yql8hFyXKoghLkBO/hnam/5gAy/YvfJsSR2/eVHumuSlq5pbseGdfd3V2
         ZNxcetfG0oBVyTEMAMn8VlPD+NY90Wr8ct/FeGaBcEAe0eHXJr14R8sxPya8BrRmiat5
         086FOOW4Q0tJ5Ww3xYECpFBugCvwcTDOvKD/ctxobAcx10EEvNm5btOerB2XqdNI1nfa
         WFNuMgxeOlRrKaC2QMQmCJOAwsawHkFGtKnNxxOEclBj7VDQKlQ5OJ2nbvKarZR+hgNH
         60AQ==
X-Gm-Message-State: AOJu0YwG8ACFfZghxdv8T1rcpu5rAlEUu9TQT6pDB35c4DF2BA2IPmmY
	QmxZfZAfYhLqWsCH86a2hI81iA==
X-Google-Smtp-Source: AGHT+IF+Z+kwt6F2DX1OduNpIDwwv9Ayq2GX7aWrmMCjgCQFl2Myc5kLzUmIxfrRWVgaj7HNcVtCKQ==
X-Received: by 2002:a05:6512:108f:b0:507:97ca:ec60 with SMTP id j15-20020a056512108f00b0050797caec60mr15616839lfg.3.1701273462620;
        Wed, 29 Nov 2023 07:57:42 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id gy5-20020a0564025bc500b0054b686e5b3bsm3345130edb.68.2023.11.29.07.57.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 07:57:41 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH] dt-bindings: pinctrl: qcom,sm8550-lpass-lpi: add X1E80100 LPASS LPI
Date: Wed, 29 Nov 2023 16:57:38 +0100
Message-Id: <20231129155738.167030-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the Qualcomm X1E80100 SoC Low Power Audio SubSystem Low Power
Island (LPASS LPI) pin controller, compatible with earlier SM8550 model.

Cc: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/pinctrl/qcom,sm8550-lpass-lpi-pinctrl.yaml     | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm8550-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm8550-lpass-lpi-pinctrl.yaml
index ef9743246849..ad5e32130fd7 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm8550-lpass-lpi-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm8550-lpass-lpi-pinctrl.yaml
@@ -16,7 +16,11 @@ description:
 
 properties:
   compatible:
-    const: qcom,sm8550-lpass-lpi-pinctrl
+    oneOf:
+      - const: qcom,sm8550-lpass-lpi-pinctrl
+      - items:
+          - const: qcom,x1e80100-lpass-lpi-pinctrl
+          - const: qcom,sm8550-lpass-lpi-pinctrl
 
   reg:
     items:
-- 
2.34.1


