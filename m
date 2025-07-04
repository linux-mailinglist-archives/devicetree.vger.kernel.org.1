Return-Path: <devicetree+bounces-193131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 761A8AF96F3
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 17:37:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88CF63B31F3
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 15:36:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70AC52D77FD;
	Fri,  4 Jul 2025 15:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hK2ZiIY6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE9B71C3C18
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 15:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751643421; cv=none; b=SUf71zBmKCPM8Cj+lUihqpw5qx1lkomgx5qSoOXehSL/d3hVKxWcJDUyFjB3dmgG1TDrS1OtjQPId5Z9V2DoUDuD4Ts+Yy65qzxB+TZ8YoJS99lIf98z6JYVOfwkVSnsmuU3sFljW2cVhOYLqwUR4Mj9Id6n3B/swtuJXVEn0qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751643421; c=relaxed/simple;
	bh=Nd2ieUJ4/LjUfPGJsbtgPp6Vi4m3tStbkjvl5grTX08=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jtLqh2m4tlBB0OIUxHbWSGxobNGELHOcabb2LJsSH4EEvNPw9fvwIdzR6LRjkj3p4yPaKzw9VVrn+pJcLNJoE+jVGbxdm5/Sag0H0LGEIzYiuzlgNmMg7B8OP0eRM9KhaCKuezJqOvofQXAvOxNTW0ExwH3wsDPDFkP6YyiLIbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hK2ZiIY6; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3a510432236so757381f8f.0
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 08:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751643417; x=1752248217; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZLiZwgpkLMualPzt87ntArI8waunCrBqnuH0mN0dSPE=;
        b=hK2ZiIY6Knsx9D8619FL2SHIy5Pf2DFkFggtLGWAtW6VJTwIAIyV8BtEsVuz3dDPUw
         +0DlCNkFgLi4cASKFkabVl0UULEKwFNAdA3mVge39BOee73aQw3PIHORFZx1mtN27FEW
         BJRBQ01bIIt34fYN5zvRxAFGnPaJRXpeRHviBgO+ofQsO2Y4o7iL9BsROWHsydmmVGi1
         ugXDqIamghDA5vbkDlyt++C5l+n+djR9lDZFs5DzsNXr1TYBD4w+ghXuaMnKHugHmENA
         QYqHxsiNcQWmXBOsl1lQm6Oof+WOdDQyIQG5u/gbE5w07yT9sPIFteOkOOf16RJzEvA7
         5seQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751643417; x=1752248217;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZLiZwgpkLMualPzt87ntArI8waunCrBqnuH0mN0dSPE=;
        b=Bm8EgL0TD69jwaTg/F/4H1M98Op4bQWQ4+V6NG5rsqVPsdb00lCaVL7sRhc2BuJUuA
         tFXzxPXHTZXzI04MEg51Jv+LOf9Wn5+kXFLjVjvga1Rk17DzyyoT3ci0G+jeU/Sc7jZg
         KSPqTd7hVkkrm5U28/pnmgeAzOClUNUu61ONwmmjkVNg4x/gVTJS+fkoqMv8OZhyrdie
         pQZ8q3jre4Su6ux+OU7834RK9tS72NCiIpXNvFPFLfU7OLRvK4/hHmvthSa/R/nXNeTv
         Rz1luSlN++GsMmdbCY5DrPEZvPSAI/IHkz5L4mynDJIJW3tlyXtUSmjvmEADsxY3pi52
         PKjw==
X-Forwarded-Encrypted: i=1; AJvYcCVd7vg+QEtYjC1jBZY0ROElMbvkvUB1GhSaPEcVnuTXFi1IUdPp+080cNi8iRzSysm18phEcVXwTupQ@vger.kernel.org
X-Gm-Message-State: AOJu0YywsvxfLwYnx2nPQfywnWFbgjCdYs4dr8K6cgThd8+Fo/3iiPUt
	arocXx18a2NWnpHesvlypbwt194Eo7cZTfaGtVX232iDEsvxW/10WkzWlCK7JCLpk30=
X-Gm-Gg: ASbGncu7IhEIKkoiI3VPGY70xFDRQW1a4onKgvOVE8DEf0XETBwmmVGRbobo2NJCrOz
	z375sC3dAC4lSIl4FLymALDQzGAY9HwtQTy2YlyPvXQgJVevlTrj0VZDPxyDljBc6zJDosxiPAl
	Y1Z6tqhD60x5bm3SpnnoyXmRwm3Tqm/fCsqdQY698hmZuuq5dhETJbHPRK2KASlHT0rovIrGCQl
	f2NnX2fieeff7BZ18eoul9Og/HN9eU41MpuNULf6SrxaRmFm70fYCg/kmPMGkFgTZxPVwOllwdx
	pzfsLag8wjF+6Yz4RwtOgmcD/QsBYKf7WQ0whwTCsncxLBKbpvovGeCKDigsAUT17gMHVEW5G1y
	TkcUqDWkw9pB1xOlQZKOPUbVdgRT/
X-Google-Smtp-Source: AGHT+IHqM7Iy80KErSccPJqKfwLxmIXwKCu2g56lGYo/d8Opt8xmrzRkqZI8qhJs2jylA3Gj/Xk/CQ==
X-Received: by 2002:a05:6000:2512:b0:3a4:db49:94aa with SMTP id ffacd0b85a97d-3b4970195e6mr2519830f8f.21.1751643417073;
        Fri, 04 Jul 2025 08:36:57 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b47030b501sm2788217f8f.14.2025.07.04.08.36.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jul 2025 08:36:56 -0700 (PDT)
Message-ID: <ad0d5ff2-f112-471e-89aa-65cd229c52ff@linaro.org>
Date: Fri, 4 Jul 2025 16:36:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] dt-bindings: clock: qcom,x1e80100-gcc: Add missing
 video resets
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
 Jagadeesh Kona <quic_jkona@quicinc.com>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
 Johan Hovold <johan@kernel.org>, Stefan Schmidt <stefan.schmidt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250701-x1e-videocc-v1-0-785d393be502@linaro.org>
 <20250701-x1e-videocc-v1-4-785d393be502@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250701-x1e-videocc-v1-4-785d393be502@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/07/2025 18:28, Stephan Gerhold wrote:
> Add the missing video resets that are needed for the iris video codec.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>   include/dt-bindings/clock/qcom,x1e80100-gcc.h | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/include/dt-bindings/clock/qcom,x1e80100-gcc.h b/include/dt-bindings/clock/qcom,x1e80100-gcc.h
> index 24ba9e2a5cf6c31e6e88c682e6bfcc60490d692d..710c340f24a57d799ac04650fbe9d4ea0f294bde 100644
> --- a/include/dt-bindings/clock/qcom,x1e80100-gcc.h
> +++ b/include/dt-bindings/clock/qcom,x1e80100-gcc.h
> @@ -482,4 +482,6 @@
>   #define GCC_USB_1_PHY_BCR					85
>   #define GCC_USB_2_PHY_BCR					86
>   #define GCC_VIDEO_BCR						87
> +#define GCC_VIDEO_AXI0_CLK_ARES					88
> +#define GCC_VIDEO_AXI1_CLK_ARES					89
>   #endif
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

