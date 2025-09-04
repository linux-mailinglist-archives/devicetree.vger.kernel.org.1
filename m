Return-Path: <devicetree+bounces-212909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0391B43FA6
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 16:52:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D4C0F7B0632
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 14:50:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4F88301467;
	Thu,  4 Sep 2025 14:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fM/TL1Cg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0E1253359
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 14:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756997532; cv=none; b=Vj0C5/3Xr8k0oAtmplKaN6QvmO8PfZyOSlu9oX9igIcpcG48uLbg1ZmPT/UL/Pei435YeZ81n0PIngUIGPe3JvXELMFIUsTf/KkJl89tSNwKoa75J7cpHoSdGtJyMIxq07rLzgwQDNMOm6e5QMLQQm+2ytRkjQN4q1g5LNDZOQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756997532; c=relaxed/simple;
	bh=Regk9837D3NO2JyFL4e0NWX9lDCfumsQhNU5GH68Kzc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Gp/Nm3YRmYcUzFEK+ft2iX6ZZyfNcGbXetEiZqMe1lf4KMosGsTXOPdKR+MTP/Apc381/R3jSY8V/ki/4Mi0SpkoTP/7zd3azUb+n8xGgBWYmR7wqRqp6KnCyLKcwEopj2RxfHOhIeNYD9/2DsknSeCvIRyuL3cXqiTWiCG64vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fM/TL1Cg; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-45dcfecdc0fso8489035e9.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 07:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756997528; x=1757602328; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e/ycGZnds+z/QHl/WDFajxaBGcjIl8uT9DspiT23BE4=;
        b=fM/TL1Cg3qcEeTClA3zrqQ9iBkqtIB+IZPoRRppM0R+QGNgz6hVfcSZ/5zua1t/Hql
         l4brfekWvXY04CAZvkcae6TNrFul7nXKu9R/ac8dD1ncHyKHi4LMeiI1yTZjccVRfqRC
         wSrsoHqv0dJLOl2e06wiRbNhXTgkCFNS2LuEFkzU8rlVOlH2G3sv7VcJ5dS9L5sVN7Py
         zrpOqPcrVPo+VWBd4sdEXsy+4nzBbltElhcnW2tKictvpt9nzi6ykmTLQvB2H9ZxaTzG
         IqeFe63/mkvCUqf7oFzFQ9UqEfN1JU6vZSo5Z3VENfYz8M2d2Ak5yq/fhZ6xCkDSig21
         I4jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756997528; x=1757602328;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e/ycGZnds+z/QHl/WDFajxaBGcjIl8uT9DspiT23BE4=;
        b=aR4KPe6Q3aP5YKLuiTbrrU+IUDgjP8OM1x/FxKMKjiePRkCJlKHmAWxRlIfCp0qjWK
         yP9OJxXvMeOlDUZLAU1yh9joXGYyeUi9iXOjqXt/7UoIQFMixbBjc73EqvN2VW8NTRis
         hHfKlMGqoU4tNWtwKmbgJyjQeqRnT8MDIP+4eunfX1BnGJ4eSm7n50Yn0XDrpOg2zbVW
         8y2lbseaH+k7VIxm8IccOnn6S3HuEdklsUd6GAiV+/2q/ykRQ4Iwd6gPeLzMrisY5gv/
         8JS1FsXsHnyH/uEcS4GCBt5ZSNTVU0ZyvYjS8lie5clAWW1wdAgrjiNmw7h6T74F3Fp3
         ARNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQcwv7+EB8DqrDmSSab69xeF7wjYExaRgPRTJT15Od4Kh+xHOl3NnJRlir8IZ5OBPgusWiegrpMeOO@vger.kernel.org
X-Gm-Message-State: AOJu0Yyi1Z61bAYaqocKcQqZiEvGIeEERklG8L5gCngdP9zz3W5CQbjq
	51D4r+ayjF5D11KyoscEa8Jy0WPzTYIF5dOH2TmFJ7XZ5op7fZFGY7cGCwHarw5Cx7A=
X-Gm-Gg: ASbGncvmM1HYlo4elrF+HMSIphlx3YNaVd4t4RJl2FScs1d360Z8LgnTqd8n0g4/kzE
	CC8fFQTHueDh7N1o0T1z0x/GqEQqW3DS64nAp6+q6XJEe1iXnMp25BxPyDO7RoHZCXS3tT7Kwvf
	AMe/i9XremDmWM77uPHlKYoB6AFNHkdU0dYnm9B4SAJcYAII5nkPDLEK52j0uIfAfTuwx/PFxLF
	51dGwJRqTBjTsIxGOwTUgKZS4HRkucnVl0WWF7ottateOVfVwid6Og6TtVjj25YU3cjORaLYVMD
	04JZfrjZ+joAjbJx7zNBvrV/oXwAQEZYNLPS7ZhorKA6gOYXr/rSg7iFrMrLNHefFwzcOZ9/rt9
	m1HxN6GBtEUAAOqByTpkNzR8uDtSQSrkNpf8qeQsklwuYVSI2bxvzbyyDlLQFGx7YfAww+p0s0w
	4j9eUmQFD+kh+jkJckWIAAslanp43LEg==
X-Google-Smtp-Source: AGHT+IHTsoxoB4HNlhL82k9H9mr9S0iDNSTkAjB8ilh2KdQhFDsFlKoFFZI/S3sZrW3O7oQ+6PlwTA==
X-Received: by 2002:a05:600c:1c92:b0:45c:b540:763d with SMTP id 5b1f17b1804b1-45cb5407993mr60253385e9.33.1756997528266;
        Thu, 04 Sep 2025 07:52:08 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45dcfd000dasm19823545e9.5.2025.09.04.07.52.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 07:52:07 -0700 (PDT)
Message-ID: <8657e44a-9c3e-492d-8485-44ff92c3bd74@linaro.org>
Date: Thu, 4 Sep 2025 15:52:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] i2c: qcom-cci: Drop single-line wrappers
To: Konrad Dybcio <konradybcio@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250904-topic-cci_updates-v1-0-d38559692703@oss.qualcomm.com>
 <20250904-topic-cci_updates-v1-3-d38559692703@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250904-topic-cci_updates-v1-3-d38559692703@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/09/2025 15:31, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The CCI clock en/disable functions simply call bulk_ops, remove them.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>   drivers/i2c/busses/i2c-qcom-cci.c | 20 ++++++--------------
>   1 file changed, 6 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-qcom-cci.c b/drivers/i2c/busses/i2c-qcom-cci.c
> index a3afa11a71a10dbb720ee9acb566991fe55b98a0..74fedfdec3ae4e034ec4d946179e963c783b5923 100644
> --- a/drivers/i2c/busses/i2c-qcom-cci.c
> +++ b/drivers/i2c/busses/i2c-qcom-cci.c
> @@ -466,21 +466,12 @@ static const struct i2c_algorithm cci_algo = {
>   	.functionality = cci_func,
>   };
>   
> -static int cci_enable_clocks(struct cci *cci)
> -{
> -	return clk_bulk_prepare_enable(cci->nclocks, cci->clocks);
> -}
> -
> -static void cci_disable_clocks(struct cci *cci)
> -{
> -	clk_bulk_disable_unprepare(cci->nclocks, cci->clocks);
> -}
> -
>   static int __maybe_unused cci_suspend_runtime(struct device *dev)
>   {
>   	struct cci *cci = dev_get_drvdata(dev);
>   
> -	cci_disable_clocks(cci);
> +	clk_bulk_disable_unprepare(cci->nclocks, cci->clocks);
> +
>   	return 0;
>   }
>   
> @@ -489,11 +480,12 @@ static int __maybe_unused cci_resume_runtime(struct device *dev)
>   	struct cci *cci = dev_get_drvdata(dev);
>   	int ret;
>   
> -	ret = cci_enable_clocks(cci);
> +	ret = clk_bulk_prepare_enable(cci->nclocks, cci->clocks);
>   	if (ret)
>   		return ret;
>   
>   	cci_init(cci);
> +
>   	return 0;
>   }
>   
> @@ -592,7 +584,7 @@ static int cci_probe(struct platform_device *pdev)
>   		return dev_err_probe(dev, -EINVAL, "not enough clocks in DT\n");
>   	cci->nclocks = ret;
>   
> -	ret = cci_enable_clocks(cci);
> +	ret = clk_bulk_prepare_enable(cci->nclocks, cci->clocks);
>   	if (ret < 0)
>   		return ret;
>   
> @@ -651,7 +643,7 @@ static int cci_probe(struct platform_device *pdev)
>   error:
>   	disable_irq(cci->irq);
>   disable_clocks:
> -	cci_disable_clocks(cci);
> +	clk_bulk_disable_unprepare(cci->nclocks, cci->clocks);
>   
>   	return ret;
>   }
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

