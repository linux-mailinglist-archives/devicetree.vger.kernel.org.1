Return-Path: <devicetree+bounces-152194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A90EA48483
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 17:16:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1992D18971F1
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 16:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC48626E645;
	Thu, 27 Feb 2025 16:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B+h+rKBr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11332271276
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 16:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740672282; cv=none; b=AOTFUp3V163xekf814xa25czdn+5Baka3dV59JoWvi1Hy5Bh0nITUt434pP+5LATzTqrfn/3FGtsT6cq4XIbadj6liVtTA2fQbsrVDRJXrhOxgjWlZ/90Gs8pkkaNyoVr6jIM9IvMuLLlx+eF5n6lTdAeSoToFlgFU28GRFOtwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740672282; c=relaxed/simple;
	bh=5crfA43Wc1eshy40EYAu5JOOOnUyb0U245+kFC1E5l0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tjpGgloA2XBP3B84TDvyGYsY6mOPRQr+ff6MliDfPOK1Kw+UkLJypeuWe80Cn8y2zDtYM5+0BEzdjRzgY3iRIxMj4UKgAuOGK+tLAanevazn28H5II5espod/FFCxKrKtTCW9ilIDW4PZnos6OQkAu3mlKizqrt+sI9bncl+yvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B+h+rKBr; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4398e3dfc66so10616185e9.0
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 08:04:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740672279; x=1741277079; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ooJ/hYw0wA6kIng2NE6ZvceF9VdgEvsQvsmSqmonZcA=;
        b=B+h+rKBrA7hobOUOJ0ntt8Fqh2BgwHB6fh2E7p2O+jVWXduirLW7R9q4gVUkP7mBD5
         eGNh2rKjfjVb335sjO+Gfjw5QLuCvqfR8Gzn1wa21VLgA7OnluuMPgxihp7iYF1+tiJl
         jvx9zHshm0D6IwM+T7MKZTQhI/Za2gOc4//kAF/hxNE8T0xupBJOBXFqDoIaAnB1Jc7M
         yg36I2B4UyKUM4v0s/4E0iIz4lZPrw6WWJlkO2n7u1cAwM+w6nwg63whdkQH3tVMMOol
         OoRhQNPtnJVa8XcoBgO85Xfpk+YUInPUtEUuxEkVRnQYr8zYm20cEd9N3aSy4AgFlww8
         lqaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740672279; x=1741277079;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ooJ/hYw0wA6kIng2NE6ZvceF9VdgEvsQvsmSqmonZcA=;
        b=KX7phWcnNa/fuYhNd6RXD8oEslmGP49H5pSa3ei7EBu1yknu7GGdAwZbUziGqRsNU/
         2iYG54XmHzYwi7Box81i7mgw5C3cU9Ek5SzFwKGAWuifFQ2SgYE0rAW0NJ4yi1ARD4gv
         W3egiZ8pMJJn3w/p4hw0kRgkEH4OxVAbh34GQG2+XCba7aOAMOkQHEgagU8iCySlKeTi
         18+tdIM3mg9OGT+VdTSbH7e9Zz6YUfkVae7iJ12+r2ijq6JxtQ5OxgADGqc6LV7ALw3I
         RH4b9ygT0UwI8qoEQ+qXjI7yUBxMzkWWGp5nLLs+HBiHncN61TlOxz6j13UJhQd2S38j
         p7ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVubQJzlDucc0AR21aldneIvcP76NmMtefaaaRqHQBO/q1YVCvGA6Se0TAxOzE0F8obAL+gu0RqPa0j@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp8bm9HXeS3bux4vIZok5La7PawQq5vB+OguFLbVC/sCIlstic
	T54BzO90nWJ7IMaCD8vl+anHp+zSnZV3hVFMkGs8Jpt7EAFFev8Zp92DYxAIUTM=
X-Gm-Gg: ASbGncvGjBeJc++uNM8vf8rMAlOUBzce5fw4G5VoXWSPsLup06r5kUCz2/ASUYOdgKy
	jessxAf9pswuBWSqihXI1lk4SK/NBSTshOPw9TsNvMd+vP+d5YwmWU/TFMgJ1MtN3OqZf3Dg8VQ
	cD9OpV73zv/uS4cXc7mdUrrgHVWnyJCbV4IHm/WOceLXcoNgsCyagLYZJSpT1Jr2Gsfv0JDa/lb
	B8vloACaibNkcUdCfk9pIJ5mOg08LovD4/5tiHBi90b34vXz1X6bpoxUCnTQMpxOayPUJ1NZvjf
	ol5LZm4fpNeOwdiW9IzvPUyRR9ET+lasWkNQPAXoocm2CJc=
X-Google-Smtp-Source: AGHT+IH8doeNIsGIgaprszLsrMy6PYYlH+q9gCqBBM6/GXlFjz+BmBNHDR2riaZQFUTqN2YaKlHIbw==
X-Received: by 2002:a05:600c:19d4:b0:439:34dd:c3cc with SMTP id 5b1f17b1804b1-43ab90169c6mr63727665e9.22.1740672272193;
        Thu, 27 Feb 2025 08:04:32 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43aba5393e5sm58811225e9.20.2025.02.27.08.04.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 08:04:31 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 27 Feb 2025 17:04:28 +0100
Subject: [PATCH v3 1/3] arm64: dts: qcom: sm8650: fix PMU interrupt flag
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250227-topic-sm8650-pmu-ppi-partition-v3-1-0f6feeefe50f@linaro.org>
References: <20250227-topic-sm8650-pmu-ppi-partition-v3-0-0f6feeefe50f@linaro.org>
In-Reply-To: <20250227-topic-sm8650-pmu-ppi-partition-v3-0-0f6feeefe50f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1373;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=5crfA43Wc1eshy40EYAu5JOOOnUyb0U245+kFC1E5l0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnwI0NL3w2Sov2sZjc6MlbPHSm2hC+bhw4CDpnoVdx
 9/maLN6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ8CNDQAKCRB33NvayMhJ0e8cEA
 CI0B3gu/m+jloy4MMcR/JYiGbo4z3fVTEh6VklmJUcGisIp2AURsAAGEdoIret1qw2wHQ8Mdw1zEpN
 esjnZhDvcY72cu2GpHM2iWJdLTIu7iqUZBlaDgqC4OvtA6KNUUJOZXkMbwek0/ZG36QTfqi+LKtZ4a
 0opiDY7wdToRZCjLLS9+x6bRbJCSb6bSuWPcV490jmnyIHr4/HG2mg0wAfWk0l5XRsYgfUhNkUXEc1
 qhDVDBof/aLu8LUcXlWOSBjYnD4XlmYeC1umSCxX/OCR6kH+0hId8YYpXSqPA61HHvM/MH2vUJXIyB
 DXRh7os6mcMlBM/I8iz0tKi3lNIUbSWl98DGb7Jc6ZkD7Llv4x8Mv1yWt7BxrgbG2OpJ0vRrqOPZDk
 IvlwrNjybmclhwXxQGYDkYDZLSJjbjxDscnDZl9GZL61qEF7KYtqVhZh8QB972WcGxpgIivnCwMi96
 ZlhaibpMy6ehEqlXsLWSYNBBOZDB0r7TDjao5ixIkXwcYDaxlvdQFcQWVvye0PDS397FXZH25joPv3
 FyE9UbpBoGIA+sxrYt4Wm21CIKg/xmDbQ/SccHq2mgfR36F8nEdzJR6f8jZTSznJnBxTpqP9GABzat
 9eiYNYG8ROeAD1GQemARnVLtOqGwA9EnqEKetlF3Vs76GWs2eKQwDX0UpazQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The ARM PMU interrupt is sometimes defined as IRQ_TYPE_LEVEL_LOW,
or IRQ_TYPE_LEVEL_HIGH, but downstream and recent platforms used the
IRQ_TYPE_LEVEL_HIGH flag so align the SM8650 definition to have a
functional PMU working.

Fixes: c8a346e408cb ("arm64: dts: qcom: Split PMU nodes for heterogeneous CPUs")
Fixes: d2350377997f ("arm64: dts: qcom: add initial SM8650 dtsi")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index de960bcaf3ccf6e2be47bf63a02effbfb75241bf..895f70cf6f57a84dda38604789d5ad6d80471944 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -1417,17 +1417,17 @@ opp-3302400000 {
 
 	pmu-a520 {
 		compatible = "arm,cortex-a520-pmu";
-		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
 	pmu-a720 {
 		compatible = "arm,cortex-a720-pmu";
-		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
 	pmu-x4 {
 		compatible = "arm,cortex-x4-pmu";
-		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
 	psci {

-- 
2.34.1


