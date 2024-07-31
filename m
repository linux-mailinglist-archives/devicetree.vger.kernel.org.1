Return-Path: <devicetree+bounces-90035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4575D94393E
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 01:13:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C8C951F22B61
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 23:13:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91E4716DC2E;
	Wed, 31 Jul 2024 23:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jmjsm7LS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 928C916E868
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 23:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722467557; cv=none; b=UpeLTq4pI9hyGpEIjpevgDGnjwQMebe9C+w85zkQyaCgWgrwXOvqrwUoxqsr9YvxEM8OMYx01HgonfeUmab4TKAcT0fZnBIDs99xDLt8KCQMk/J9ESUkfiAEDVXos/1ZwCX6YUFvsl5MEfqj4sCpT1YE5MCpUk/EEoszBDk91vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722467557; c=relaxed/simple;
	bh=POSv4ihxBb0Obca530vynvy7d8gZlc4PFHsId7FQDZo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ADFlZCWpWrl5RH6pytwUZLg3lHy9y7uJ6LSd4XopfeUqk9YDodEb+fbo+i4sRRPUnEv2CLHCjfoVPpB75ocwLQnloR/DfhXu/R2japcsY+fGC7dEZcTkbb/W7k1yql6Jc/nfDvEEcoX7Nuv5TW1bCP2w657eojDBIc0UL6rI9us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jmjsm7LS; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ef2c2dfaf9so11613521fa.1
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 16:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722467554; x=1723072354; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hyHP6tHqa7ubkYpRyv3ZvH3jJj0lSTMgse6k+aChAtM=;
        b=jmjsm7LS2RGnqg87x+m9HouMJoJj+imjiNsSn0DQfL86aUt/l4/m2GppmN3/uGbM/G
         7sd0APpLM92ZM9/OcqpKnhUQzJ5bTv+ReL29ctoHFHRn6BxVCziIDsdGGuX0Q3ykVZKe
         /zaF7RfADNhEkbfh7EY1bk0nnt7wb0QEa/BgCFeU1Sunb+CrlpSOHJCMzqTCHaVr2Qww
         Y0YUV+RhfBlndyYAj0rShbfCD7B3kSv06n1ABeFsr7bogO4SRCOb4zpajFfluy/iF+e6
         gTpvblQ+OMVH+B04XtGuoRZV96l3MBX+4O3YHGA1LDpTQRdHOUSA56VyoBxcCGrra+CP
         iMCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722467554; x=1723072354;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hyHP6tHqa7ubkYpRyv3ZvH3jJj0lSTMgse6k+aChAtM=;
        b=Bla2V/pnCajqkZ0GL+6Auo1nJs2HF8ZOuf4UB80JyQyaCHfYbtvLnl5Y3N0MiJQ6X+
         NiB6NSOVXbo+jGgz0bsJAxB2IXzdTkPvV9ZHpX7UfS//OszukKoujiRxAveDfKPTxKeN
         lP0jRUq5TGqkLmYMb39jYVkrpajA1TCnCEcbboYnlyOLEpCnL1zYvPOfZBSlL6/fHt3h
         Tm3QoD1QYsM9Lime1JRoeIhvSd8dikB6VBzWdlayupfv2MUj3bhVkFyo7xo5HuaVWiJC
         Tg0PUYdHPXC6trqY+Fc9/6vMMf3NaJoa6+7HFyPS/91RWVPk2Jay497eXoVSanbBpL95
         i60w==
X-Forwarded-Encrypted: i=1; AJvYcCWxvgYzVXI87MNEnkFOCsT3YzfcDaMUvogRLA+jZXTZ0iknlfL1t/38jY5EQ7JrSMc6T4PUEoAca5T9@vger.kernel.org
X-Gm-Message-State: AOJu0YwFdqBSAIWMnBIhTIzJ+5QHAPAfpiPqHk0ag6Iu5oxhHN5hx1IR
	Nif62my3DDtffXM2VtK9wVCN+QsbRon4BNkmAMe+l6KkTmlAje/VJdsWN9EwRUQ=
X-Google-Smtp-Source: AGHT+IH84HGzXPBSEaAQTdQqM0Mt6cjjb+kg+ySp7HlVzAOaHTrPTsoT0ZoE+Fo8WL54KqX2ZmFmMQ==
X-Received: by 2002:a05:6512:3b1e:b0:52e:ccf5:7c3e with SMTP id 2adb3069b0e04-530b62151c0mr133165e87.7.1722467553510;
        Wed, 31 Jul 2024 16:12:33 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-530abeefd04sm671995e87.121.2024.07.31.16.12.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jul 2024 16:12:33 -0700 (PDT)
Message-ID: <07a64faf-f97e-4a9e-87a2-598ff73817f4@linaro.org>
Date: Thu, 1 Aug 2024 02:12:32 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/10] dt-bindings: clock: qcom,sm8450-dispcc: Add SM8475
 DISPCC bindings
Content-Language: en-US
To: Danila Tikhonov <danila@jiaxyga.com>, andersson@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
 vkoul@kernel.org, quic_jkona@quicinc.com, dmitry.baryshkov@linaro.org,
 konradybcio@kernel.org, quic_tdas@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux@mainlining.org
References: <20240731175919.20333-1-danila@jiaxyga.com>
 <20240731175919.20333-4-danila@jiaxyga.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20240731175919.20333-4-danila@jiaxyga.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Danila.

On 7/31/24 20:59, Danila Tikhonov wrote:
> Add SM8475 DISPCC bindings, which are simply a symlink to the SM8450
> bindings. Update the documentation with the new compatible.
> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>   .../devicetree/bindings/clock/qcom,sm8450-dispcc.yaml        | 5 ++++-
>   include/dt-bindings/clock/qcom,sm8475-dispcc.h               | 1 +
>   2 files changed, 5 insertions(+), 1 deletion(-)
>   create mode 120000 include/dt-bindings/clock/qcom,sm8475-dispcc.h
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-dispcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-dispcc.yaml
> index 4794c53793a8..76f5a8cc42cc 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,sm8450-dispcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-dispcc.yaml
> @@ -13,12 +13,15 @@ description: |
>     Qualcomm display clock control module provides the clocks, resets and power
>     domains on SM8450.
>   
> -  See also:: include/dt-bindings/clock/qcom,sm8450-dispcc.h
> +  See also::
> +    include/dt-bindings/clock/qcom,sm8450-dispcc.h
> +    include/dt-bindings/clock/qcom,sm8475-dispcc.h

Here a new header file is not needed.

>   properties:
>     compatible:
>       enum:
>         - qcom,sm8450-dispcc
> +      - qcom,sm8475-dispcc

This added line shall be kept though.

>     clocks:
>       minItems: 3
> diff --git a/include/dt-bindings/clock/qcom,sm8475-dispcc.h b/include/dt-bindings/clock/qcom,sm8475-dispcc.h
> new file mode 120000
> index 000000000000..21a9db2d0f09
> --- /dev/null
> +++ b/include/dt-bindings/clock/qcom,sm8475-dispcc.h
> @@ -0,0 +1 @@
> +qcom,sm8450-dispcc.h
> \ No newline at end of file

Please remove the symlink, it will not be used.

--
Best wishes,
Vladimir

