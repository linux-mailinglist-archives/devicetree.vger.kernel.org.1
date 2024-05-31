Return-Path: <devicetree+bounces-71248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EC78D62DF
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 15:22:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4ED731F2381F
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 13:22:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EA58158A17;
	Fri, 31 May 2024 13:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aX2aQ8Jd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDBA0158204
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 13:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717161729; cv=none; b=iAZjPkmuHxk75li8ewTvj18K9rAOwWyS1dAlcfr2knn3Rj0ag9RcwBJPosHFl+KpJ6H/f+GKIpikEcC6Uedxa3h2KnDb4n0rryZB51sQCvVZwcRXtSyR/PFbnxkIdkqP1UCYfRt0yay7CAaCquBLQdS8HblLZru8sIwIoCr7OdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717161729; c=relaxed/simple;
	bh=4dHB2dowiT08SV6IgdUjc53AlAF/i7AVqlLqibLtUa8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ShRz8UD1kux7fG3hjfKGeetEJBUjnORcTJG9nS8CRloMwSMIkIHPNfnS3D2xIalMX4xUKsfO2342KcHdjdcVeWS3N1GWhF2NNP5NXqcOmHW6mpCQT8q3QWsckJ6A++QBn84BsHBwJNrN0rLLf8av6n78+2BdbjSd67oXws2psAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aX2aQ8Jd; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-57a1fe63a98so1089498a12.1
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 06:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717161725; x=1717766525; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=5n6R8EWpr3FnxdLpXXtMb3F/ClJ+I9eAwAdha4U+a2k=;
        b=aX2aQ8JdlqiJd2zo9jC2GaOJTYeZHOgmSF4gadOCKfnsHv/URSEji1ncnzJUtonrD3
         J5q7yqdlhQevaN/SzDFcrGlP80JczFZ9tJ/UpBveVhmr6ao5OsWcFuG76WubM8ylwm0+
         HMlpdk35xfu35/AvWXpAi7U7Z01iKQVuTn3AP3VHt90P9w6vaARfKFXvnImwamdmmZFu
         Ja3OQJStP6im38/25xmMNhNj0c7+46Yn7S2EpldYTkpRgGzv6C9aqIaESvX1zrBNcUsw
         C4U6SCiJE7ut8InaQxcY2ElCO5WHSG4xNUI7FGJPAHBQEtKjO2Wee8pvsoJWFiXjKeZX
         i+6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717161725; x=1717766525;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5n6R8EWpr3FnxdLpXXtMb3F/ClJ+I9eAwAdha4U+a2k=;
        b=om/gDF6S1Ds7mqJgg7GqszHc1ha552GnZ7VDfDR43smwNKpjjwbHB8pBv62iinfHTl
         6MeukJMdqdl3MGcHxiYsl9xPsZqfcO/UEKgrXbW3R3VJRbpfkf76RGPparxabjpvs41b
         ujI7pLXRi2YJXxiOjStmmrANyQbWGsnt6cDoaUMXm2BLq7hq025UGKRBKaODiKS7CBDV
         JQtwL+J+LMA3tS3lGuBBwSbdJiPo3hpPuF9lMnkS5zSCBkbOAagu6aBpZXirBWkUrU4U
         jev0hBaKGm5neNI3FpQiqU1VdEHWg7NFmQUbqQyS6imDvl8p0QNIegApZnlc0qELiXME
         qmAg==
X-Forwarded-Encrypted: i=1; AJvYcCUgCP13Pk4VjPLO48b37vAGCLN/XXRSgjOkuJziOBwfdZj3349qG+ViC/WTjHC4QA7S8NKeKFlanTmi1h0MmXL80jJzTBSIefT3Tw==
X-Gm-Message-State: AOJu0Yw6FGcG9Epkwhmq4OVBHwBdeSbZfGsKNMce5Jez0Xya/YSZSzIS
	U50edVURX/VRk8ceWh33QqPsF37LSZ7OtASRpdNWEU3wpnAOY5aGMy4WsfKvLxk=
X-Google-Smtp-Source: AGHT+IGuQBIu0beKUp0DIAfM6UMiMTeXT65eB+2f22NRmeuVdDnGjQURLzk7WMAAhyJKajlbiDnheQ==
X-Received: by 2002:a17:907:1596:b0:a67:6d99:d6be with SMTP id a640c23a62f3a-a681fc5c781mr108251766b.15.1717161725098;
        Fri, 31 May 2024 06:22:05 -0700 (PDT)
Received: from [192.168.128.139] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a31c6d325sm1014416a12.65.2024.05.31.06.22.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 May 2024 06:22:04 -0700 (PDT)
Message-ID: <9163bc46-983f-4d5a-b009-c12ddd5a5c8a@linaro.org>
Date: Fri, 31 May 2024 15:22:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/13] clk: qcom: gcc-sa8775p: Update the GDSC wait_val
 fields and flags
To: Taniya Das <quic_tdas@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, quic_jkona@quicinc.com,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20240531090249.10293-1-quic_tdas@quicinc.com>
 <20240531090249.10293-3-quic_tdas@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240531090249.10293-3-quic_tdas@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 31.05.2024 11:02 AM, Taniya Das wrote:
> Update the GDSC wait_val fields as per the default hardware values as
> otherwise they would lead to GDSC FSM state to be stuck and causing
> failures to power on/off. Also add the GDSC flags as applicable and
> add support to control PCIE GDSC's using collapse vote registers.
> 
> Fixes: 08c51ceb12f7 ("clk: qcom: add the GCC driver for sa8775p")
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  drivers/clk/qcom/gcc-sa8775p.c | 40 ++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/drivers/clk/qcom/gcc-sa8775p.c b/drivers/clk/qcom/gcc-sa8775p.c
> index 7bb7aa3a7be5..71fa95f59a0a 100644
> --- a/drivers/clk/qcom/gcc-sa8775p.c
> +++ b/drivers/clk/qcom/gcc-sa8775p.c
> @@ -4203,74 +4203,114 @@ static struct clk_branch gcc_video_axi1_clk = {
>  
>  static struct gdsc pcie_0_gdsc = {
>  	.gdscr = 0xa9004,
> +	.collapse_ctrl = 0x4b104,
> +	.collapse_mask = BIT(0),
> +	.en_rest_wait_val = 0x2,
> +	.en_few_wait_val = 0x2,
> +	.clk_dis_wait_val = 0xf,
>  	.pd = {
>  		.name = "pcie_0_gdsc",
>  	},
>  	.pwrsts = PWRSTS_OFF_ON,
> +	.flags = VOTABLE | RETAIN_FF_ENABLE | POLL_CFG_GDSCR,

I have some old dt for this platform, and it doesn't mention the downstream
counterpart flag for it (qcom,support-cfg-gdscr), so please double-check
whether you really want to poll gdcsr + 0x4.

The magic values I trust you have better sources for, the collapse off/masks
look good.

Konrad

