Return-Path: <devicetree+bounces-37811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5055B8464AA
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 00:55:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0561F1F2542D
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 23:55:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33B1E481C0;
	Thu,  1 Feb 2024 23:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mseXrBv8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14106481A0
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 23:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706831719; cv=none; b=E+OqehAv/SSrEfVsrsWTnR6rrAneCnyMY77DLgrYXZUHQ7YDE2tmHoaa+XLH4SE2tropRNTZ5FXpHL1afvSocBYs9fb1o60mhuZReXaUPi2UTaqMGjPwlbwmdKxt2MX8dUj8IUy2KQDGFMwyFzSguuvXsnQqn/LMYq0kWjb42Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706831719; c=relaxed/simple;
	bh=7RB+X+PzwtH9xsIJiepgWHEH2rs2EFwpFn874vQXUvg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KQS09WG6k0khhyssNGMfNLPxgDFwEDjah3DnXrxlfZMtYGLFG14NVtLROaqMWd4ntq75lFMSczA5rOa7kJk9u3u/4MtvRKsJ8DD+MqEvn1EK6UlOrytn2ksAiN650P2uJKcALsEWhy5TZcSo6K6B+d24rD1lTvwdha84Fem4PFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mseXrBv8; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-511344235c6so473880e87.0
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 15:55:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706831716; x=1707436516; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6euDXtRDjIlB/hLLxOU0ar0i2e7HX+SIXH1eBN9gqG0=;
        b=mseXrBv81kH0qWjPDEC+gljxoDdnpL91LBvVcbsrtHLo2rklQeBzu9MsVupjVUhYab
         I09sTMQI6qUrR+OUDwojwM9fnza7fcUkk0ZcE3NoNepK2mHAc+/8Ug3CS7uU6Gnlrnuj
         fUDppqou7/KFuoxAihiJ9VIaIeP0LuDWPvMvhqC+xGLbcGkcV+uso1rPMb0kcPO4HyJz
         XbG6YNVw4XxFi3MLa+aVik6LPR8EQ1lXslHhyUacNASvylseC3TaJT9u3JM5HBOGgChf
         zfx8urWduymSmY+MSkylvERvxVjN/PUx+MIFZWKLKemEBvqJ5N1xN/SkOLsn9jNV9SwP
         AF8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706831716; x=1707436516;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6euDXtRDjIlB/hLLxOU0ar0i2e7HX+SIXH1eBN9gqG0=;
        b=PlOmN4XhdNJar20WJYksGfPwVVkspFHyF77G1VUl4dZeGpmU0DWLL7LG1kHAMUoRyt
         f1WrPwkRBDXKDn2HGeGasBeX39nbvL7tKxM9t7W2Ivln8wyhaGLYc9ESpEzLiSnSqgcE
         oV+ZZBc4YZM7tWdZysi9Wq59AVi/qI9nNpN+2fMnJSDSUUR22Q466mOmb26HL9jPkuM5
         egm4FHJkofj1EDc9VK6N3ejSU7FguEHQL+vBW6LAoDb94IS2NB2jenC/ZLFV5p/VMNKG
         +Q32W0PFrI4r4E6RGxkxOMuphvGu2QVmkAxa1vVOlHYFXezJ6jSYq3fHbxyFjcDyqJlO
         dteg==
X-Gm-Message-State: AOJu0YxFf8/jFCv07n3EqQgiTEmdm5QKni1vYf+CQw0e8Yl+gZaFVer1
	EtjVC+QngZXmiXjb+eA1dWyuygHEp86aB5X7cRrv1Aos5p2V6UNqr93sFbCiuco=
X-Google-Smtp-Source: AGHT+IGfsPkKSY5gPzNTlixt3iPzEH0baMdxb2X+hUD3y6L4Z2AknoGBrV91rM7kJI2JNyyeeWtFCQ==
X-Received: by 2002:a05:6512:2023:b0:510:2582:5590 with SMTP id s3-20020a056512202300b0051025825590mr258739lfs.12.1706831716073;
        Thu, 01 Feb 2024 15:55:16 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVNGMK21xEM6nxcZSYfgpmhqaKhHiEO/kWOueTyvnnrMBY5HQzsyYdThEnKAQk7qLIJh+DmBv2iCp+6nVDB0HyzkC+N8GYkyjdRHzf1NFA7DQvm13Y7VAsbN6ZaeI2t1iBpDSOIUgTTFhKxTU7VdutYQ5DdCIPc7lx2LxPFIKgBGZF4ODTms6sCA4wiBoB0+UReKDacsC4gxa3pSJpCdhAQoohzUFgA1fA38T0OOafCbxKRofzuHVqKzziCbAl+xzxBbcu7KpynklfiSEWXgHMORqDEE0wPE+Whviick3WDScDDJ5DYuo1UVJQBfOQOdQ2mehQjBAA+sjRjMKyjVpazT+K0PV5gwVKaR49g30jqJaJQJbkOOHo6InnqMbZANuiTEoHe8mp1lZmNhCHYnxLt2CJaQTmJGyovOOxuDnasU1Y4LCPk97NzuUcdkYf2P2bl/RHqj9Bs/HJijBc2Q/U2N9nbNQY=
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u13-20020ac24c2d000000b0050eacc0c80bsm106754lfq.131.2024.02.01.15.55.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 15:55:15 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 02 Feb 2024 01:55:08 +0200
Subject: [PATCH v2 1/4] dt-bindings: regulator: qcom,usb-vbus-regulator:
 add support for PM4125
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240202-pm4125-typec-v2-1-12771d85700d@linaro.org>
References: <20240202-pm4125-typec-v2-0-12771d85700d@linaro.org>
In-Reply-To: <20240202-pm4125-typec-v2-0-12771d85700d@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1030;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=7RB+X+PzwtH9xsIJiepgWHEH2rs2EFwpFn874vQXUvg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlvC9hUCiLZ576752NvtRY8hcpYA/VuPTLiP43T
 iCVU7OK53qJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZbwvYQAKCRCLPIo+Aiko
 1bYqB/4wGsjOX0Yl1wLMHxYsK0f79Rq4Pa2q8wEiaGDyBp4bzEQZxJ+o/JOyBl0fro0QdoyNzlR
 rNGnRS5dvwWsQv46flpyAs1I2Hhni2Cq4WYe0azJnoZK1zChL+SJdgPpUdJHd03xkRr0wzUqwGy
 gepkypj6krvkIhFgxE1+o6YGNgQfJEv+C1KYUaKNlQXKNrIEUwPI5mGFSYpSUB7v5/IYLCVzvi3
 RL4lhHz8m9qIFPSIBVGNYXfvL7gYRpwaM9NGeDM4cmNVLiVlrsatX36hD7qV6pmMr4Y2tPMFQQo
 dmFuhm/+7xjwMkTS/80NzFI440PjLXiLUerdGdZy1zCijW8B
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The VBUS register block on the PM4125 PMIC shares the design with the
PM8150B one. Define corresponding compatible string, having the
qcom,pm8150b-vbus-reg as a fallback.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
index 66dcd5ce03e6..3cd489326267 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
@@ -24,6 +24,7 @@ properties:
           - qcom,pm8150b-vbus-reg
       - items:
           - enum:
+              - qcom,pm4125-vbus-reg
               - qcom,pmi632-vbus-reg
           - const: qcom,pm8150b-vbus-reg
 

-- 
2.39.2


