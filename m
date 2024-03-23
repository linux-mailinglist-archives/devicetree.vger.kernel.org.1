Return-Path: <devicetree+bounces-52595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6D288761C
	for <lists+devicetree@lfdr.de>; Sat, 23 Mar 2024 01:29:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4728284C4F
	for <lists+devicetree@lfdr.de>; Sat, 23 Mar 2024 00:29:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8D1210F9;
	Sat, 23 Mar 2024 00:29:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LbwIbGNJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68CB43201
	for <devicetree@vger.kernel.org>; Sat, 23 Mar 2024 00:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711153748; cv=none; b=Ky7VqNV7m3Bp8/huXW2kg60BeyCkUx/0CQkJJfnYoZBUNbusfAdK1FZ3oirXUybKNyMLBj9M0a9fmn34u1W/EtlmhgZPSI0gKe2Q9l5AYEUE+/f1+jF5ayayNocb44YeYs6JxjIz7HhcGEDL4aW+bJ6furuuW2oCwhT3QnQpx7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711153748; c=relaxed/simple;
	bh=cu2BNWH6WbgOzz3G19ecvxyJwG3OxcG4EYlK0MMkNkk=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=GiuMx9N8sS5M6q0n3hfOwez5F/xmBTi1v1lLse8lJuiOfnXAAlpTWWutmDB3FJ6tqJDC1+e702WdGe0e7mygKuoFcR8sB9zKTWilpVJYM/Xosa03Wz5EeBQQfXpMf1YR7pDnJKdoRikMI+ZFPjsdmUSuWjmI0ODjjqz/ah0n5ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LbwIbGNJ; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a4644bde1d4so368297466b.3
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 17:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711153744; x=1711758544; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pZHRO2qwwFdcHjxfusuWGefIdyNkghgxbZHMsP8YFAY=;
        b=LbwIbGNJWYjMDwJgWRKksv731Ki+VWEKBih6W145nIdPX9/iYzj6KRz9IWoeJqo2lJ
         80Xd7wCAz2pTW6w/7+uyfu/oUxIB3EcfUt+Ie49bXkdRb/ZHO4Z5QLhgLp+5wCXl8L7T
         Y2dME5jDf1H2Ks26yj1zBi5kI7AobYyFp2AHvypp6vCwLTqJi+crfx3HZDC+EfRqwWuz
         HEDfmRgJAn68OXS6x5nq+blucy/V43RS4Q77CKfuQ5mKJVolTGrZNA/8bFRWyO9Dmcp8
         aPZU290dsL9wYmDDJ2+TffCiwR9PqZ2ib6PIlOUXeiFOQJR/Lfp7bZBr9Q+zue0lIG8z
         3H1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711153744; x=1711758544;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pZHRO2qwwFdcHjxfusuWGefIdyNkghgxbZHMsP8YFAY=;
        b=qtytUtIlcW3kotUjn+MFVJuWZcxjV13dPlisZ838nywewvnle2s5xjxil1rg7qpH36
         LwfUG6tRHO4V4oN76Q4ksR2BU3kXD1GpgKsMYQjNAwuIUxLkw3ZbEOscjovUCdkjoYQN
         rY3yl7episkFbp/mCFxF36SHfPutfRZkg45HHi+kh/TGAZPDR4l9Gb/4yc7qoVzFfoFE
         v3dSLpRcgyzhWZiOJXWLAuIbLE+VV4uPVXiXIPUdZ+i7ql1TC9DossGroTwD30f0m8lF
         yu8MgtE3MAKennvqv2oWmIEopYMGNkWPAOjHLe46hYfQLWDax1FfmtCgTGN8Ox/SV0KN
         JwXg==
X-Forwarded-Encrypted: i=1; AJvYcCWK44FaUJRnMGh0zvp0XdD1r1gN0j79p0CIErteZsLm0/cheOksgqAPn8Kve6ZSYP442xRdB3PNd6ZjZgyMJ5pSEHdSUhb4BmCqrA==
X-Gm-Message-State: AOJu0YyGurZ9sI7UTK006tnKvfW3uXKpvCTdMTr1tTV6p9Yts66AjZQ1
	AR/Wfis5HZbWBDhETWW+44bsktXQ59bAuz6LtwzH7TWPVX56KqL4x9fh4eptHdcLz5NV2dYC5op
	CBI0=
X-Google-Smtp-Source: AGHT+IH80VKvG83Knpz7MvFUfHZwOkOG78oP7VguNp6EmF3SNCJdMugJ+coJOJkRZRWKNvRHv5kSkw==
X-Received: by 2002:a17:906:f8c7:b0:a47:669:e2e9 with SMTP id lh7-20020a170906f8c700b00a470669e2e9mr614073ejb.77.1711153743797;
        Fri, 22 Mar 2024 17:29:03 -0700 (PDT)
Received: from [192.168.92.47] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id e10-20020a170906504a00b00a4735e440e1sm351242ejk.97.2024.03.22.17.29.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Mar 2024 17:29:03 -0700 (PDT)
Message-ID: <4b37a6e5-f917-4ead-9678-554a0d8f4660@linaro.org>
Date: Sat, 23 Mar 2024 01:29:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] clk: qcom: add IPQ9574 interconnect clocks support
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, andersson@kernel.org,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, djakov@kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-pm@vger.kernel.org
References: <20240321043149.2739204-1-quic_varada@quicinc.com>
 <20240321043149.2739204-3-quic_varada@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240321043149.2739204-3-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21.03.2024 05:31, Varadarajan Narayanan wrote:
> Unlike MSM platforms that manage NoC related clocks and scaling
> from RPM, IPQ SoCs dont involve RPM in managing NoC related
> clocks and there is no NoC scaling.
> 
> However, there is a requirement to enable some NoC interface
> clocks for accessing the peripheral controllers present on
> these NoCs.
> 
> Hence adding a minimalistic interconnect driver that can enable
> the relevant clocks. This is similar to msm8996-cbf's usage of
> icc-clk framework.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

[...]

> @@ -9,9 +9,16 @@
>  #include <linux/of.h>
>  #include <linux/platform_device.h>
>  #include <linux/regmap.h>
> +#if IS_ENABLED(CONFIG_INTERCONNECT)

This is bad practice, especially given the reasoning for your changes.

It's best if you add a dependency on interconnect to this driver,
otherwise things will go into uncountable EPROBE_DEFERs if there are
nodes consuming icc handles, but the supplier never registers.

[...]

>  
>  static int gcc_ipq9574_probe(struct platform_device *pdev)

..and that approach could save the probe func from the absolute mess it
has become with this patch

Konrad

