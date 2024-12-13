Return-Path: <devicetree+bounces-130841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3129F1013
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 16:01:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 40DDB188BFC6
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 15:00:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D7721F4E5B;
	Fri, 13 Dec 2024 14:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bc9a/hKD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4031B1F4E35
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 14:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734101704; cv=none; b=XyQTLNfsFcMmS20lFaLvB3JyFnVTtkkFcvpt0NZ4J3RyEiP2HibX2e+N7RGSQ5Jm7yYOx8aR69KHYRK8mfingW7mq0dgyejhuuHLiGsqmQBFCY+5juRyLkHiqUmmXlix9NUPjfWH9zfVzyF4gmECg1oXywk9NKH+KcsqtJXu+pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734101704; c=relaxed/simple;
	bh=btFJAKLRpjAbwRO13C2RFWSubPCt1TUEVwik5JGJNfA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Wygjvkofep5O6tWmD8Cmv4wDamfCKfjnQvvy/v8he2ufhxZjdsGa97pBhiVef4TwPDB3BEAUgR32tCaTx4RtsocLxZsGJZvdtEQkYKtybHrqocyYlutsUgGLlEbN5SVipCqYx8YY2zHOOqwNdALz5QCABwT5IzLMEYg2THD7UC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bc9a/hKD; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-385dc85496dso113991f8f.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 06:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734101701; x=1734706501; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3joqArWq8Xo0bUXq2TH4e58G2D5QNG6LG17sSDpr+L4=;
        b=bc9a/hKDmzrY+IXueRDTfse1GtoDgm9OIJcp1MsndTzkL+j2nvaQ6v5ZW+S+dzX4gG
         xUN56/TGVLcfjZh0L2LgXfQ3dmJPbiDS//UCGfZ8rForxSipIClKY1tmsZ5X2GHKQokR
         /5+mYC7/DM/y7INGNWHtQX9oVvDoAlAuVm+AjjCaRgxCNbIJE8dxBYGwHB5fQiAJNoaH
         wvFd3gw4AKb4yKhy8VNjlzO3bQ9Q9zIq78kC6Jl0bznWrmhGXpN8w2ES2ZXGpLiiRBL2
         2sh/CylosFaxZMyo3XG0WrJ5xcW0uA2bb7c25RfVHWCHIGb+G2qS1PmQNJScybfmkqJd
         vLMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734101701; x=1734706501;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3joqArWq8Xo0bUXq2TH4e58G2D5QNG6LG17sSDpr+L4=;
        b=lShgluDhqNYXVy55hf9cjXNQCPRwMns2hWtZE5BaXl1sfeO0hiiaSC+yAJL4s92pI7
         KfpvEvQkMxu2x0Zxmr75aZ1mR3b017ikLh45Cs6N4qRdG9/gMCMi8oaqeI15ANXNzx1y
         V+kqFz+BmSqE/Aql7p8zpE/vHypfxXmrOSqs6rs3N+58ivjLc4DYzaMgV6YYV4l0bX/V
         aOSsjHu3+hJ/1K46wsS+6ZCr1v0PVJ+LQ/CMw95R831Mf1JOSvcUx0JmqEAnULPRZNDs
         jC7PBDBi6FoHpgy7Yug/7wXHKkuxdjhdIDF3EXXsK0i88F8stdGSLwL+gfrHmy+WP+ja
         odMw==
X-Forwarded-Encrypted: i=1; AJvYcCWeomXsKsThCtDozye6UKIGa07hr8eKDia+06Te4ePc8rknMktGjf7UYXidaMgWue6R0XevAf2lFnY4@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4GACPr5GvslkvdbTGhvN8snR2qjAIv5br7HqqCN004oJo/YTe
	jA6Cd4c9ez9v96G7rQNt3Pg7MmO/ZdI04bhubFYtSZaFG2yuw7mlyOBwcXSW1II=
X-Gm-Gg: ASbGnctXCOaZfi0vFjBb7VslbgxEEltfaBAWUOFNs8GIV+ofIq94aZrZ/WXoIOPaH72
	8kBVJE7MpAUiP1Kqf55H7VfB3YQQFKjcgM54Ga8B43Lv//diJQsrOqwd9ebGwKqOEeRSRwjP4X7
	IDjoTPPaa7KaDTdSzu3pMWI4FBwOJlz5JtVlWBDjBbUS9vWjEPwDUNTcHzUjYG9mkracigkEfnh
	psd42nShKRh5KI2sKXkaATfTBD06YytHLbS2GHYV7okye9I0RklDOLsKV0HEJxUXIKKxmsg
X-Google-Smtp-Source: AGHT+IGktHKSCT0/oB7TdaTtItEMuQ9ENjK+o1VpLL3HPmQ+jQAUEgWvpC4FVpOl83eBSFYkFkteUw==
X-Received: by 2002:a05:600c:190b:b0:434:f1d5:144a with SMTP id 5b1f17b1804b1-4362a996bb0mr9288285e9.0.1734101700656;
        Fri, 13 Dec 2024 06:55:00 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436256b42c8sm51547305e9.29.2024.12.13.06.54.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 06:55:00 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 13 Dec 2024 15:54:12 +0100
Subject: [PATCH v3 23/23] arm64: dts: qcom: sm6115: Fix ADSP memory base
 and length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-dts-qcom-cdsp-mpss-base-address-v3-23-2e0036fccd8d@linaro.org>
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
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1422;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=btFJAKLRpjAbwRO13C2RFWSubPCt1TUEVwik5JGJNfA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnXEqbINGZnMb1v1KDLbjoOCnX+GbVHVNXy5mA4
 WDf6tWsJfOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1xKmwAKCRDBN2bmhouD
 17PFD/4wDPVn9DwgACTp1CKbltZWBU2vDSSj4msZ9x6VJSIuK4O9FcxB/nwzVo2Ds4eej5EibWV
 6K1tmQh7CCeQfm27kvODPLfQYf2VXv2myyPHOszp/dOcJ4uOEkpJKSdtviHsrBgyFUHnnfNCS8X
 2tf6WsWhs4hASTsnNmKXwHKRA663W+7V2K6yK/fkKM7d5+qWz8ypLa7fwtH3zLesPu1u9OrmaYn
 n/2tzZqwogBs+ZOEnETbMtXwBC3jKmE1wGrrO1BSn4Ikdz4l1m8o/kOjO4rniLUb+Ait81kHaCJ
 US+LUhgLpTxVo58fL6b4PzvZ1gjwgqkr8NAjssBB4qx8Qhq3s5Z59UrtHLPGVgLK6XklyS0Oq82
 rENzyVOMyFdHh0EhMg2WyzD3vzLWpamOPBCuhK9HhpQ8gDvsV21UMYq4ijttDtsTJXnoTlHvFw8
 JHKRkbeizqDr9NjLhA1CFRCfiX0JmlNLp9f6Or6sgTMd3nIKpdXY8hv8f64NwYsePApXkRacaTD
 tJUMCUPcJ750CgDypxyjyLPa933SYUuU5rLWqNNT3/pk+Uf2ZH/tCXJzlL+ORTl5EzWKjREcMDA
 KgX2AY7YDuKeq1b5O+AOkTSeOelMlWBAfNIE+URqC8K2fomqBL0sNV7zoF4SmFtQxAu/EhtuMmQ
 TTKTRNdQUm8MKiw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The address space in ADSP PAS (Peripheral Authentication Service)
remoteproc node should point to the QDSP PUB address space
(QDSP6...SS_PUB): 0x0a40_0000 with length of 0x4040.

0x0ab0_0000, value used so far, is the SSC_QUPV3 block, so entierly
unrelated.

Correct the base address and length, which should have no functional
impact on Linux users, because PAS loader does not use this address
space at all.

Cc: stable@vger.kernel.org
Fixes: 96ce9227fdbc ("arm64: dts: qcom: sm6115: Add remoteproc nodes")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v3:
New patch
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 5af2c7a3f6ff67c216f1c817a3d5f54e10b65450..7016843c2ca560e93dcb7e3a6da7025cb001eef0 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -2670,9 +2670,9 @@ funnel_apss1_in: endpoint {
 			};
 		};
 
-		remoteproc_adsp: remoteproc@ab00000 {
+		remoteproc_adsp: remoteproc@a400000 {
 			compatible = "qcom,sm6115-adsp-pas";
-			reg = <0x0 0x0ab00000 0x0 0x100>;
+			reg = <0x0 0x0a400000 0x0 0x4040>;
 
 			interrupts-extended = <&intc GIC_SPI 282 IRQ_TYPE_EDGE_RISING>,
 					      <&adsp_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,

-- 
2.43.0


