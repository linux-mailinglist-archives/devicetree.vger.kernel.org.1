Return-Path: <devicetree+bounces-130827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D10079F0FD3
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 15:56:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91761283C3B
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 14:56:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8618A1EB9ED;
	Fri, 13 Dec 2024 14:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c791ZK8h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B72E1E6DCF
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 14:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734101681; cv=none; b=uhW9p0qPzPDjFxcsHOo3wQHfRyZTWPaIrPdASO3KlIMl+BD8ve/Ai8dOa/DqH0fdA29Qee3z5y7nMxU2h3V0VfH7zC9zCzXFscnOraXr/okxIVDDQcbgYHCFEDUKDpBr6qq14Wr/HJlQJXOuh/T+t1R4gEknR3cjDRhvIQ1aLW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734101681; c=relaxed/simple;
	bh=h/s4mAiCTXhbsPlusZuECP9G7gYi4YvgdQ6LJx2dVHo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UJuXcJy47x1S9d6V5mVlqyrN13PERwNPcwNQs0uVbhzrQUAiJVsDnnaPRTJXCrHmTnwBUcyf9aDnO2wKgTSBVuzS+JeKkgrs/cKKKFAC+gxK3HPZugn0nNparcQNnHACbpMiXnlCpRif0xRLIfP4DQXCFwMyj4HyY3fI6SterHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c791ZK8h; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4361e82e3c3so2344665e9.0
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 06:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734101678; x=1734706478; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b6ihKS/2mFquhC3TD3U3NpZZkDrkFxp2g/7HMb+kbHg=;
        b=c791ZK8hFC+E7vIO1vS3zeDYxYHHpDBAjjPZQNMKVhJJjR48AfQdgUAF5hDbPGy2Ca
         ihaEJe6zhVG1kLUkErIgIWM1mzPI1HI3sHZDc3QAafP0lbaSViNlqviX7kPX/4geiEeU
         ElekFdnG+3X0pdgqTZVN1pittSyTbrhq/twGwrq+Bh4LTFN2jVU4VwlSZR2Z+ssWZztj
         izfVYZhYDmBNld6bwYA0jt6QBMZ5vdedUXqR3TPhac+hflKLqQP+niGicdcDNfBHpBnI
         XW+LakaESRFP8gt+IhMMtbtsS6HIanfr3QiOfvFLlemmxA2/M9lvAebm4/aNliUiQpQw
         vzMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734101678; x=1734706478;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b6ihKS/2mFquhC3TD3U3NpZZkDrkFxp2g/7HMb+kbHg=;
        b=FmuwlpweJcMxJLu+v2nqfBxHAfXNTTRwrBPKpbiyrJgkp8kfNJC8CwDkkkqZ+ufsqo
         IvzT9h5kQXRO7CQnqht9qZgAZGKA3wzsti6iXURRjC22criDaGtysFvFxc3GWRO5hHL4
         bfdg3jhDrMicQDl2I7vfbcpShLkDfGLkRRb6WwqXImX6CqJPICVQhiFZBtINZup5jP7z
         JilggPLzNJ2MtW3UbKLlSL45+citOz+Tc7/k8TymuSyqYcAWAIa/Egr8JWDYA8AlgdHn
         aWy3OAzRb1ADCAW7CDwJnSIh8Ql9z/zwnINRhFkDkijujULokrJ9/TlLswRBsReZs3Eu
         moNw==
X-Forwarded-Encrypted: i=1; AJvYcCW3XJkVgbzPqp8D5l+CuKlF2FlaYtQbppi2JDF3V++UAcVljqpMtC+sJIpsFmM+Qxm5gFZSAGy8Wk79@vger.kernel.org
X-Gm-Message-State: AOJu0YzEN2EM22uroMcWh9T7fhyoR9qKqQF0mII3iVA8QoxXHM0PYBHR
	Hq4gTFoLF7Xr5jVeUMz6TqNXSGV1ee7eoTJ/L3c1WYheCLBD9d9Uq60uJEbTIhA=
X-Gm-Gg: ASbGncuI+qDyiufZpaEpO8mlrp2YTonnKMXqNX9hFI3szNF5rrFptw5/VRurgLOkl1G
	Wy+eEkVqFI9uBgZ2cVOcMZNiy9tBNIs04D0DCXiCvb3JA9ic3C8y4c4JbWrjal5OJtubjCXOjC8
	V9P7E5vwileQ/cu1I+ky98ZXufxikAuShoWU8ifFBFaECOv+oaA2fIzaeSFIMb7kdgQ9DrpB7Pk
	oEHm/YQV9hAb+nz8qo6D5hNP4Sn5eif8gAXTw2qteq+zVHgxUlcVksYY1vSw2WcebR0kDT/
X-Google-Smtp-Source: AGHT+IE9TKL8HH0XWa/h7z+vf9W/ZqUGoCINkdKHLIc4p3GG/5UmQobzCpEnVP9QdTgmq3ZMaNEklQ==
X-Received: by 2002:a05:600c:3149:b0:42c:bfd6:9d2f with SMTP id 5b1f17b1804b1-4362aa26ce6mr9166245e9.1.1734101678020;
        Fri, 13 Dec 2024 06:54:38 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436256b42c8sm51547305e9.29.2024.12.13.06.54.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 06:54:37 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 13 Dec 2024 15:53:58 +0100
Subject: [PATCH v3 09/23] arm64: dts: qcom: sm8550: Fix MPSS memory length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-dts-qcom-cdsp-mpss-base-address-v3-9-2e0036fccd8d@linaro.org>
References: <20241213-dts-qcom-cdsp-mpss-base-address-v3-0-2e0036fccd8d@linaro.org>
In-Reply-To: <20241213-dts-qcom-cdsp-mpss-base-address-v3-0-2e0036fccd8d@linaro.org>
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
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1392;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=h/s4mAiCTXhbsPlusZuECP9G7gYi4YvgdQ6LJx2dVHo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnXEqP5eGQKHZFS3HQnUCvoA9drBZwlmh34TdPm
 p6k2hz5SoeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1xKjwAKCRDBN2bmhouD
 11XnD/4mISF65XlpIvVt/xq5gzB7Pcdem7XLaNDubItszURJJlLtXpPn80VFZHBIFMRO8Z3SyLc
 LA17QWKaJX1UbX2+bXChf9fzZJcejUDiM7qt0kyKYqlYxpJoJtFuBmNRw+9o4NzwNmqAnUAPNdt
 ca80SltgaEYMMz9j3FYDRSdTgqdRcXv/6ObUo5G+Qh7A4STg0243f6x3W300PxWz3FkR1mFgSG5
 HH8Yf/UbFPywlgBnX5QhsY+CzTZQplXN+a9pF2Nl8kDUTSAWRa7KUkz+qeREeevgYQN6FhGcRQT
 nlQIBJABomVvP0x6Kk1BdMwicJajANtnFkgXIq4ZDXc995g8uIIE7VNgZMdJqpXxRXFHplkTm7P
 SkwsO7yLojkNy2ms/V5va23lbp3+7BzD/0qzPN5siiJt9dTO/0yKriUwWCU5lKrWl/yhcbvvxFB
 AOqCYbZCzf4I70Y3tppJU3M/gSHxb8lidvf0kZrNVJvixVfSwOBIGPQ9jhP4o0vsl08Dmvb18AI
 rgkVR3nXmhFfeQYRZpLa4ivD3p5U9Os4nDLFdEFP0UwQX3KgHpQbfyDgTBTzc6eBKbt6dT8Mrvt
 vy7VH/BFITo26j14+QXHhP8TDqC3MVyz+BEgedR43ZZAMzwEEBELo+rsLzh154++KU20F39Jb1b
 UGWhO8/vwcE2qTg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The address space in MPSS/Modem PAS (Peripheral Authentication Service)
remoteproc node should point to the QDSP PUB address space
(QDSP6...SS_PUB) which has a length of 0x10000.  Value of 0x4040 was
copied from older DTS, but it grew since then.

This should have no functional impact on Linux users, because PAS loader
does not use this address space at all.

Fixes: d0c061e366ed ("arm64: dts: qcom: sm8550: add adsp, cdsp & mdss nodes")
Cc: stable@vger.kernel.org
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 541b88eb5f5300ef9e20220305ff638db9b2e46b..71ff15695d396a68720a785435e692d3bbb38888 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -2314,7 +2314,7 @@ ipa: ipa@3f40000 {
 
 		remoteproc_mpss: remoteproc@4080000 {
 			compatible = "qcom,sm8550-mpss-pas";
-			reg = <0x0 0x04080000 0x0 0x4040>;
+			reg = <0x0 0x04080000 0x0 0x10000>;
 
 			interrupts-extended = <&intc GIC_SPI 264 IRQ_TYPE_EDGE_RISING>,
 					      <&smp2p_modem_in 0 IRQ_TYPE_EDGE_RISING>,

-- 
2.43.0


