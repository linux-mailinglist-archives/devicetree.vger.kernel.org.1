Return-Path: <devicetree+bounces-10556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0D37D1E7C
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 19:05:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 91998B20EC4
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 17:05:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B45FF4E2;
	Sat, 21 Oct 2023 17:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lZIxQYL1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF0C5667
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 17:05:03 +0000 (UTC)
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B65593
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 10:04:58 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c51f5a1ecdso33391971fa.0
        for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 10:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697907896; x=1698512696; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tg4luee61pXuzS4dMkxS68wnrt5RPD0pUcOefOjPqD4=;
        b=lZIxQYL1LHJs/RMSwUhIABrphKMegscdSmFHaMCoAsYJzsdtIVUl/x2fPA+yzSWh8n
         a9iM0koIpnAp+e6s+Z5AYL2joos/wUyl1xaTny/YLN5DAsPd44IlIpa78ANT7FoiAfQN
         Fgvl686eyT+LjbYc/jwoKBk6Lbdjy8sKIuAzLDTLcyPkWTv3GAPiIWrRDsypw7EzIq4k
         oLzE0RAGKJuR6lep+bd6apRu8CI++QOaw4AaF3o5dTmN3wxo1GGEMpJ4QG4tcVZqb5jT
         QZybYZgM5663Ibgvzewc+aWZXRrzU+ahyVfzEY1zeb+paENmdm7Oph5y2pqT2jJiboI2
         Ud0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697907896; x=1698512696;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tg4luee61pXuzS4dMkxS68wnrt5RPD0pUcOefOjPqD4=;
        b=hUd9IpwcKDgifd7PIavYXXzrz4YJtaSayj2IqpkDNAO7gTYoHSWFu9y17ELNXK4EZR
         Yjg6V/OcVJOMhAT7xW3CgfC521GLEN014gnDtLloqCN7iIpHpO8dZZD01ETCuWGP8SwS
         rayUknNeOkexAIu9CP7nz389o3RUuBlXiNF9/D2eJoeatlQGfap7XNupoGMZNX83TCvH
         qydgyCmF194O7yyc9cNpuR1UAEXq0NP8MdcqWO9gJCQadScLo0u8jFgFww5vRJKV5btv
         tAd6bbKgTYBBIfyxDzg6EwcP29d+W5hsVIaOU7fsUPk0D58b8KoUXSNvKLqghtXsavt7
         m6uw==
X-Gm-Message-State: AOJu0YxbEIc69+79K5uVtyJIkx5aW+J2njNHWZcdKCgwCsDDdFM/F92m
	/1foYD+RJeMbuFu/WlBk8HZaBw==
X-Google-Smtp-Source: AGHT+IHgb0LvlG1YXi/MM11Ad8QU0L/952pLT3/KLCvu3nTVbTbnlMPKmQdSgo0bqvEZkUHUVqMQaA==
X-Received: by 2002:a05:651c:1509:b0:2bf:f90c:4029 with SMTP id e9-20020a05651c150900b002bff90c4029mr1971419ljf.10.1697907896597;
        Sat, 21 Oct 2023 10:04:56 -0700 (PDT)
Received: from [192.168.1.116] (abyl4.neoplus.adsl.tpnet.pl. [83.9.31.4])
        by smtp.gmail.com with ESMTPSA id x22-20020a05651c105600b002b9e5fe86dasm875896ljm.81.2023.10.21.10.04.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Oct 2023 10:04:56 -0700 (PDT)
Message-ID: <b5033b2b-a39a-41d4-b47d-f120743a79bd@linaro.org>
Date: Sat, 21 Oct 2023 19:04:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/9] clk: qcom: apss-ipq6018: ipq5332: add safe source
 switch for a53pll
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 rafael@kernel.org, viresh.kumar@linaro.org, ilia.lin@kernel.org,
 sivaprak@codeaurora.org, quic_kathirav@quicinc.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-pm@vger.kernel.org
References: <cover.1697781921.git.quic_varada@quicinc.com>
 <49422d258d67d33a2547fbb7f4f6e72d489c2301.1697781921.git.quic_varada@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <49422d258d67d33a2547fbb7f4f6e72d489c2301.1697781921.git.quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/20/23 08:19, Varadarajan Narayanan wrote:
> Stromer Plus PLL found on IPQ53xx doesn't support dynamic
> frequency scaling. To achieve the same, we need to park the APPS
> PLL source to GPLL0, re configure the PLL and then switch the
> source to APSS_PLL_EARLY.
> 
> To support this, register a clock notifier to get the PRE_RATE
> and POST_RATE notification. Change the APSS PLL source to GPLL0
> when PRE_RATE notification is received, then configure the PLL
> and then change back the source to APSS_PLL_EARLY.
> 
> Additionally, not all SKUs of IPQ53xx support scaling. Hence,
> do the above to the SKUs that support scaling.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
This looks good, however I'm not sure if registering the callback
only on SoCs that are supposed to rate-change isn't
overly-defensive. That said, I'm not particularly against it.

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

