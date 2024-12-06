Return-Path: <devicetree+bounces-128018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DE59E7438
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 16:33:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D3D8281A27
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 15:33:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE68220E02C;
	Fri,  6 Dec 2024 15:33:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Fpqm0W2Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FE6920DD77
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 15:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733499182; cv=none; b=akxh+HH22aVTyqIESgR6Tg80wNftAZX8Ce7rQBzPGL/Z567AJfBcIiWMLN9SwKnoA74fmQHeNVs17XL1vVH78LGXCXAaBm/6d31GbL42ZxAqkR5jLW8tAdfGRLaGxPo84b/ofUpbSI1jfUQe34We4eGm6EjIixqccn4Ps0v/fjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733499182; c=relaxed/simple;
	bh=KA45zkpit3qGKHVRAr4ObQQvXw5Y72Dc1Boz1XrLlpY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RU2KC74VFurv8VCFPlVC7Fy8+4UW23Ej9ZzPHoG2BvjFx/GnB34o5Z75W4FPtpZ8fmGc6oZBGWSxvOvvya7/RXcntbuKmQjtchGGiEYExt4d7RKCDa4MJ/sCJVushdOv82fM5GwRqrX33YiH3S4FJvB4zVqLiNEZa6QFyNldahk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Fpqm0W2Z; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43499332f7aso2346635e9.1
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 07:33:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733499179; x=1734103979; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PN/rYIG89u/VOqGCMvyYyzlVNrhWZH5iavqrOX8rp4o=;
        b=Fpqm0W2ZfUjG9gCAkglOUFC8aJXVB/55D4W6RS79Cyzro4Bj3TABAi8VI7NCJvEU0F
         L3qxLpAj2A6cOWXVAaUoNcqPVjYAMDfxs9BnhEWACuuJKdiCMOxFoYti2eaHunSjDlnJ
         SvW1wLZDYOyuQs0/hB0JvQEyCraznuhqYsBndL5yPqGjTWRkbN8itsyLqagkGUfRcQFw
         5NxfYfTo5fit4T7wS7BT+6AT8R6JyqGXwwLefSDcGZQvitgUW/mXbZXVfzq1sZNAaIJI
         1yNorkOgLQZVk/oGfOxQnE2iQmLiLcMhOAyKHJOMzBOFj+EX7Q5meaWbFGOeKw6OrKCl
         JrEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733499179; x=1734103979;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PN/rYIG89u/VOqGCMvyYyzlVNrhWZH5iavqrOX8rp4o=;
        b=msyufVK3PD0S5TKH3zfj4KYozgxjSt3aOjcB/I0pBUZUTbWrqdFovTbc3lbatsBcvG
         uFgbBP9BX7/uYw4oMdNLwyCbWfbuwb/IKgzcEEkSaWCoiOEegA9NsK4vth9Vl9cWX4jT
         EUf3TUqE1U17vyN9NN51lnlSGRoL3rsDrCLulwXw9W5sb0uRe+XmpWCL1s0Iyr0VBSi0
         Kf/5sFMgK0hP6jD82VGo/wW/Ks212EpLWcbZ2TtwCy1wPWiXxVRd4sCQSIbANnK759Bc
         dFk2tc8Oww57Gyafh0IuZOb19nsdk5K07nsr4JaKd/79gWjxKPlRbJqeIAA4/FVzpHLg
         75og==
X-Forwarded-Encrypted: i=1; AJvYcCXRzujzvOvsMzxNg8xHMq3GyjxcMQY1mvmkUfb/azx4cghJKj0u4oODG4JM6iJmr1YJbsS+fP22UuWe@vger.kernel.org
X-Gm-Message-State: AOJu0YwrWH4fNSHnRK5L4ffkyeEgGDPfgNjCF3f/fYS0A34s3ZJa/Q0Y
	aDxO2s8hhnqs+E7YqF0iu3hf45NaRHAoZIr+GkBxSTgG0iItY7fWWS+1WFwzi1Y=
X-Gm-Gg: ASbGncv6f5iixfYbd8eS6A8ImlUWjfTmEpgFFjyjd8bhVElh5UEl8cfV/0FX7wcMdLj
	9PgcEoAqYBxoI7kg9fnAsNLeyO1PqzzkPJqR84gjxrJVyQKzpVVzPYZIxnTXKASC0S88+zC0dyD
	0m4S077zK1OSAbog3ngbJuWCQgJEgSRfLOaItcg2qMqeyPYEGayjl0m3fFOK9z28HzUddNYwl71
	QSR7QlarbB8KrNwF8NJWMzS3SQKiIaz5WPEhWKN6pJckjfVHl7LcohDBB4RxjtHPA==
X-Google-Smtp-Source: AGHT+IH0rAiQDuc+JJYJlgZJ4WCGzdhIzUjcy/6FpqTIFgZU4t/tYvGPZKr9jpyCjhy213noJWuJ3w==
X-Received: by 2002:a05:600c:3c90:b0:434:a30b:5433 with SMTP id 5b1f17b1804b1-434ddecf92fmr12859785e9.5.1733499179081;
        Fri, 06 Dec 2024 07:32:59 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434da113580sm61158035e9.29.2024.12.06.07.32.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 07:32:58 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 06 Dec 2024 16:32:29 +0100
Subject: [PATCH 05/19] arm64: dts: qcom: sm8450: Fix CDSP memory length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241206-dts-qcom-cdsp-mpss-base-address-v1-5-2f349e4d5a63@linaro.org>
References: <20241206-dts-qcom-cdsp-mpss-base-address-v1-0-2f349e4d5a63@linaro.org>
In-Reply-To: <20241206-dts-qcom-cdsp-mpss-base-address-v1-0-2f349e4d5a63@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1298;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=KA45zkpit3qGKHVRAr4ObQQvXw5Y72Dc1Boz1XrLlpY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnUxkRMNQsZlw3ffQDz2ZpD2ZiWTzC9nAn0m7OR
 s0YBSpIjBGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1MZEQAKCRDBN2bmhouD
 15IHD/93uUmsGU4l77MBaCs55zL20kuV0pLuGzi1gqDY985oa4BhGpWzQ1HzerXslIfxCEjbmql
 HhR9yetUit5pZCUwZt+9X6bgWkENQldy3fOhXYFbB5yj0A9WHNkt7B5mS27THnq3g0vnvAKCvWB
 f5dFP0zP8RvbRPNHyu9nKJbpBq9+369Hj4I/VJ2bZkvfo/+ZQxoZBzmqmX/5zqLsBnsUlP+/uNY
 ElZmG+6OzTrMb51yPcTkNRwk38yu3b95yx2Yth82ufqWgLpHu9Gf4XSL92bLGL9D0Osy7grsRqL
 HFyfaKUV8Ck1qoksGOVb7RvPOIpPR5ALzX/hVTWW1kCvHV40/tWK/7A0gisPFl3m6kklfLIALaN
 YayuvOzv7jlDU/M0aajvIJMuttpPJIX4SiHwhGaRGRSgNuaqJXXcITb4BBV1CqLAhenogzzAJqB
 M27GEIyola8EzKRYT0s63cL7j5L/ILEJ0MLqeSRnSVsqHF+Q3Q1u4RfkG2MM33+RIH0Cdj2/M65
 L7YJ9FPUsFBumH8KJtJBcQkPaR7pDFaTLqRm5kMujJhf6JEW5eFLU/Im/O2wq1JHU5EHjdTp12I
 to2nS+ysBzXJlCjlAhcEiT4MjdP/pzVs94U81uGhikLqOTRgyJaw8ZDOF9vUIfRo2Vjcd36fweN
 Tj45UbUy4cMNoqA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The address space in CDSP PAS (Peripheral Authentication Service)
remoteproc node should point to the QDSP PUB address space
(QDSP6...SS_PUB) which has a length of 0x10000.  Value of 0x1400000 was
copied from older DTS, but it does not look accurate at all.

This should have no functional impact on Linux users, because PAS loader
does not use this address space at all.

Fixes: 1172729576fb ("arm64: dts: qcom: sm8450: Add remoteproc enablers and instances")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index d028079c11bdc2dd2b254f7f7d85e315a86f79bc..7a3bf847b0b9eae2094b0a8f48f6900a31b28ae4 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -2800,7 +2800,7 @@ vamacro: codec@33f0000 {
 
 		remoteproc_cdsp: remoteproc@32300000 {
 			compatible = "qcom,sm8450-cdsp-pas";
-			reg = <0 0x32300000 0 0x1400000>;
+			reg = <0 0x32300000 0 0x10000>;
 
 			interrupts-extended = <&intc GIC_SPI 578 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_cdsp_in 0 IRQ_TYPE_EDGE_RISING>,

-- 
2.43.0


