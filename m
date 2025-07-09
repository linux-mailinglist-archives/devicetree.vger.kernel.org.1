Return-Path: <devicetree+bounces-194569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A114AAFE817
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 13:47:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C9B041C469D1
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 11:47:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 841402D97AA;
	Wed,  9 Jul 2025 11:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="VBt9VV5B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87AE12D838B
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 11:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752061610; cv=none; b=scHak169sikocZxeCmDfCdHUW/ZEtzNufn3oBcsKuNYN1IVA6hVDma5mUJ1u2t6H0q1DyCbG97LkWY2Cxacs7PUg2wU4JN0ak4iOzdSIVnsWu/oaQThynTyvIXR2TxE+Xxhd/t723pviF103mooE8Y2caKUIl4PxKYLn68mvHcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752061610; c=relaxed/simple;
	bh=PvZsZ3xz+u5VNLl2F5wB5XkOzE0mkB7Ym735VGNcjBg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dk5lN82JrGA1lc6AQ37siNxbZVRybKlIV5BkXEMgYGPdsb7F0NPc0S8B3lFpLToVJwD4P28Mp8EAAx+6AL97LN1dwsu3J9f3RmTGndO7MkzOJprrxiskK+IurTc7P+75DlC/rJQmWaEdTYqFDctwj/Z00MnYzSNZpzEIjzCJk0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=VBt9VV5B; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ae0bde4d5c9so1122295366b.3
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 04:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752061607; x=1752666407; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EegHvYrrPCIQqgQ2t8JqZ4VMYnZfDGCQ8pNV8iQc7CU=;
        b=VBt9VV5BGjG2qdOtZZi+3n2SISEIPJcgZK2ad7HSrLHG5Ci9UrUZKnqAvEtE8cVxPP
         ioOxHwEmswnyGrTCwSd6mzPxR/fKNLnSvmIdWygdAAoY8r8N5w/lr+nBr0R8S4pDfcUm
         qR/JqiNftu24j76EjMgcegC+fpurN6T8/LWYDAxcmN/x9QmvrRmezMi3+M+a8XW8vKnj
         70MkceQMDFmgJglNViG8V5Z/VQkQE4PvS6OvLriE61c8uYcy6dgkBB6wrgahJbOp67XZ
         8WeJ6FpoL9rnoXGbNQgvM0QbZFr2YdO1z1yLyi2NyShmRS98WQ7kyD6671HGS/ZlKCBE
         68TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752061607; x=1752666407;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EegHvYrrPCIQqgQ2t8JqZ4VMYnZfDGCQ8pNV8iQc7CU=;
        b=cXox4oUwEWL5ZZAh2QwJMjH4JQMM92b38Hhl4TCZZffS4R5AEeVuhjBmluJDLgGpKp
         2UVCwuv/uTh2gjV7xu1NLzFdCEQfsmWdGABBSYvvbPFEJIAl1i7TFqjBLvSEKgWG/fjb
         21OKnj3QP6EXRIcVL0ee3ln1TBB3fmMjf8gIRppZcv4GWp9/oztxArbrOTP/vZoKQVsX
         K34Lghgf1CB3AfexKKFbSntvsmmohx2sKiE2BdVDSYFPzncNOqsEhwyR03Gna6be4/0G
         GwEriNde2aOV0s8yKS7AAvRh1OVsrmszcVFCXbCW7E4GThy0m6nlXhvjfymIQnlqQAgK
         NX3A==
X-Forwarded-Encrypted: i=1; AJvYcCUKItd1mDKUSWsuXXPfyu0cm3kQTwMxJnfa35DzmlvYDDmF4GAsENFmix8mXKikjkVMw34e5F1sVPc/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9pIL8E8AV3dnLKuMktPYiJXRXveAzIqxKLSEYOkfeefqgTjlN
	wpC35u53se2rghHwfskyV+wi9gRX5JNNeZYgc6oVQB+xPP8UTardNK5GU/mGKkKEFl8=
X-Gm-Gg: ASbGncv+eTQQV6ZsUc10IAEmykc0dM82172ZS4zyspaao9ZoBTWdeSLrMeOfGwGpt7d
	HdTrRBM0VrBO5F5QuuhgG95MPq6/p5JaIXXPcq7cCwzuV1khU2L/8/ci+YK18Frkg9m5wHhvTTz
	jjc6DGdLq4tGEnfFrYMTzLZD5RstfXhd3Q1kbQbRtZTAJSQaDSDJgXGn0dSoieaZhPBKKRTJDu4
	gbmN9hNia6wYfzmSb94b94/lMUIUgeYXWxyK/ywW/rID3yi3HEnZB8UQWE3Rpb6jnUPzU9pJGXC
	QslPSLwnoOlUnn2XblsMeR9JkOWHr1IpLjFESWzaxh1k8c9MMl9ZkZ0jAIlh1bIsMuWJQrQivPw
	wqwWYNfg9/+JHyAFWGSZwAi2pbf0nHPz9
X-Google-Smtp-Source: AGHT+IH8++sSptF4PFmgOO2SoVkqa8kWBrD2klC0z8ScVA3E4cagnkpuHMUm8tmFrS3e+H+BAb/SOw==
X-Received: by 2002:a17:907:9304:b0:ad4:f517:ca3 with SMTP id a640c23a62f3a-ae6cf68abd3mr244682766b.20.1752061606800;
        Wed, 09 Jul 2025 04:46:46 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f692e4ecsm1102995266b.55.2025.07.09.04.46.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 04:46:46 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 09 Jul 2025 13:46:33 +0200
Subject: [PATCH v2 2/5] dt-bindings: mfd: qcom-spmi-pmic: Document PM7550
 PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250709-sm7635-pmxr2230-v2-2-09777dab0a95@fairphone.com>
References: <20250709-sm7635-pmxr2230-v2-0-09777dab0a95@fairphone.com>
In-Reply-To: <20250709-sm7635-pmxr2230-v2-0-09777dab0a95@fairphone.com>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Fenglin Wu <quic_fenglinw@quicinc.com>, 
 Stephen Boyd <sboyd@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-leds@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-gpio@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752061604; l=805;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=PvZsZ3xz+u5VNLl2F5wB5XkOzE0mkB7Ym735VGNcjBg=;
 b=+Lg9tCTaCrXGzDssZR84RrQo5jkI/91wtmSjNyg3a8RuAWb1/jKnh/d5ruDCxQ1+jtnzmbuLO
 xjJddmrddxpCCKc9p8vN9KaA1+nGMo2J39cjNnhUTDGOED0PeVOsLG2
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the compatible string for the PM7550 PMIC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 078a6886f8b1e9ceb2187e988ce7c9514ff6dc2c..d0c54ed6df38db82e626ebc0687cd5d3887abc5b 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -43,6 +43,7 @@ properties:
           - qcom,pm7250b
           - qcom,pm7550ba
           - qcom,pm7325
+          - qcom,pm7550
           - qcom,pm8004
           - qcom,pm8005
           - qcom,pm8009

-- 
2.50.0


