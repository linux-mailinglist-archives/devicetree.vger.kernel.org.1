Return-Path: <devicetree+bounces-212911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06100B43FBA
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 16:55:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA28F5A6E01
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 14:55:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 528E53009C3;
	Thu,  4 Sep 2025 14:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lxf00XAy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571C62040B6
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 14:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756997719; cv=none; b=amf8pL3pTbIgFLgdFUXNLcoSdjoBD4CwCkZh+C6lZQbF8d1suUU3B7Bst4Ym1GW906omFsRX3di68PxqlKCucZRQB5v0zB7oofPJLV/0+dnjGRrh4YkhcdbM4iS0L9gicXh8N4lYJ0JJlQkSZBR4KoRkmm2/qBrGwNjYV/6FKdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756997719; c=relaxed/simple;
	bh=Vu50VlHWhfu3eDefeWuGH5QtkTImEmYPu7LJliPOI3U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u+9beokBhv9mkF56Mr/awMRt3+N6SjpS4483rdXByl7hRFVy4yhoQU0xoOyKgNjLGVgh4Dq/zx7ZjXDOkpBVoaWHM3renWWkLvI7Ceh6eMqjXTLnS8z9TkYCnBJjgUI84s51DLtTBAig3a3BEhbxwXXnezhrz4WffKrWnTNrPjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lxf00XAy; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-45a1b065d59so7682545e9.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 07:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756997714; x=1757602514; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OlzbqxHWks8OMO9kY1WhKs2DQhBZN9bk1DhejlkzldE=;
        b=lxf00XAydxGfWNl8D/4mSxyB8n64OsVedzdwNgjBDsNO8Rr/3ZFKdY17p1PGoZPnVC
         XdErfDpi/c/FXzIn2B1MfjBytn7rupAyj3idtanPlxnzOYqeCpOoSL9rfAnwdQZ6+AyQ
         y7Qc/dDeKT2Q6oMJf1bHXJ2P6X+5pcw29TLGtFziN++A/IhlpP2R/LxkoeTO9qczknTI
         1HG6T2nn7NDY5Rxl9LerMHxdoldKIwlonPpuXL4+e3qlnxYeWhjWKTaQLljAyIYF7IeN
         H2VI8rHDtv8I0cjfb0g50EEJOKkAA9FaLBc1UvsocB1pp+eTwkValJWGSvFMuyJf4jMC
         lG1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756997714; x=1757602514;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OlzbqxHWks8OMO9kY1WhKs2DQhBZN9bk1DhejlkzldE=;
        b=cZr8caxdQ051AR4xU7h7j4WOrBv7ZLxDccwG3iTUrhCIxHSQJdQuT7VCD9mM5ESpZu
         wbKVGbkkAKEh6SwFW510hBdoiqkL6dOl5qhOESXiHez34h6pUd7jE1M/dMUZz5KWFVuk
         iQNQigvHWEW/FTDYiiIpeOrUSnW7w7ntXdWps3DLA2ADMa/KsyqJ/oIdo2ZCy7HPOh+R
         SGCHIF35aAYyveYV7H73+4WyqCn+ZVjOqVJAlLPkQq5Cnee8J1uIXJi37slWCGR4hvW6
         hba9OMAK5vX9aZdwLSY7d4QL5CVhs94Da9wRNvtb22LTllfCkB5dZzjajuikcOAN0+/L
         VpjA==
X-Forwarded-Encrypted: i=1; AJvYcCX67ULC5EEFSeVhPpRYZyu/HwZK8uyEwG8sYVbt/UhLQJ7PYZCEFoBobk+vaTS2PD7kuKayXdrjhrbC@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0nfgGCr4m1ss5yMb4IeA4139RV2AdnCfzIZ8Od4X794atYHjh
	1Wz+XZMa6yB+AyDNjX48cnWLgaY9OLlsyNdzs6mgwgcEChbBqEqc58gyQkMdXASwyGU=
X-Gm-Gg: ASbGnctYTQZOtrIHPD5IJjwG3ouVNgMSBdwRa2YDIxjGBepr9RgU3yQuaYMWX7i0qb1
	GyiKijFruTJXcOqf9s3Y8y/Wqh0lK3VvHEroL4PiH2DSzDj+/c0AP937ZNlft3oD1xMSZXn2ske
	gwsg93U0Tvp0qM5GdMu8hBBalqORlbY52xYbUXopkpWVFIxv16w6dCCNkOhWlZfkbR0pTzW7tyJ
	o/XwJJX71NQsHM3QkLQPiDjXfKnt6egTREISgZ2LGUt6xPC3IiimDZxTdljygqs1UUNDzeFtUfc
	bszMfD/aw+Xw+lppz9l1YGUKzZTgx8xpAXoqtc4m3rMrIbmCcXzyX6yKQuqCj2CERfxSMYCoDt8
	B2DJ7Dqb9M2oCf6/e529WJ5UpOdP2jxCRwKwSN0IiFDpZsT7+f9Pv1jokPIQeCwQml/5bs4jT1B
	Aqx02n/gi+Cds/tAPHUoSRFdJAWFMPVQ==
X-Google-Smtp-Source: AGHT+IEixMJCnnfMVOoArT0KYVH589lpzYoFEz4huosDWAyl6UjmSw3YUn36sGdFNnJEB8MI8ecY0g==
X-Received: by 2002:a05:600c:4513:b0:456:1a69:94fa with SMTP id 5b1f17b1804b1-45b8554eb6amr152243325e9.13.1756997713622;
        Thu, 04 Sep 2025 07:55:13 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7e898b99sm287110985e9.19.2025.09.04.07.55.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 07:55:13 -0700 (PDT)
Message-ID: <b7d81122-6da4-405e-a370-c621131ff90a@linaro.org>
Date: Thu, 4 Sep 2025 15:55:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] i2c: qcom-cci: Add OPP table support and enforce
 FAST_PLUS requirements
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
 <20250904-topic-cci_updates-v1-4-d38559692703@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250904-topic-cci_updates-v1-4-d38559692703@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/09/2025 15:31, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The CCI clock has voltage requirements, which need to be described
> through an OPP table.
> 
> The 1 MHz FAST_PLUS mode requires the CCI core clock runs at 37,5 MHz
> (which is a value common across all SoCs), since it's not possible to
> reach the required timings with the default 19.2 MHz rate.
> 
> Address both issues by introducing an OPP table and using it to vote
> for the faster rate.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>   drivers/i2c/busses/i2c-qcom-cci.c | 33 +++++++++++++++++++++++++++++++++
>   1 file changed, 33 insertions(+)
> 
> diff --git a/drivers/i2c/busses/i2c-qcom-cci.c b/drivers/i2c/busses/i2c-qcom-cci.c
> index 74fedfdec3ae4e034ec4d946179e963c783b5923..d6192e2a5e3bc4d908cba594d1910a41f3a41e9c 100644
> --- a/drivers/i2c/busses/i2c-qcom-cci.c
> +++ b/drivers/i2c/busses/i2c-qcom-cci.c
> @@ -10,6 +10,7 @@
>   #include <linux/module.h>
>   #include <linux/of.h>
>   #include <linux/platform_device.h>
> +#include <linux/pm_opp.h>
>   #include <linux/pm_runtime.h>
>   
>   #define CCI_HW_VERSION				0x0
> @@ -121,6 +122,7 @@ struct cci_data {
>   	struct i2c_adapter_quirks quirks;
>   	u16 queue_size[NUM_QUEUES];
>   	struct hw_params params[3];
> +	bool fast_mode_plus_supported;

that is a very long name for a flag

>   };
>   
>   struct cci {
> @@ -466,9 +468,22 @@ static const struct i2c_algorithm cci_algo = {
>   	.functionality = cci_func,
>   };
>   
> +static unsigned long cci_desired_clk_rate(struct cci *cci)
> +{
> +	if (cci->data->fast_mode_plus_supported)
> +		return 37500000ULL;
> +
> +	return 19200000ULL;

what's 32 bits between friends ?

> +}
> +
>   static int __maybe_unused cci_suspend_runtime(struct device *dev)
>   {
>   	struct cci *cci = dev_get_drvdata(dev);
> +	int ret;
> +
> +	ret = dev_pm_opp_set_rate(dev, 0);
> +	if (ret)
> +		return ret;
>   
>   	clk_bulk_disable_unprepare(cci->nclocks, cci->clocks);
>   
> @@ -484,6 +499,10 @@ static int __maybe_unused cci_resume_runtime(struct device *dev)
>   	if (ret)
>   		return ret;
>   
> +	ret = dev_pm_opp_set_rate(dev, cci_desired_clk_rate(cci));
> +	if (ret)
> +		return ret;
> +
>   	cci_init(cci);
>   
>   	return 0;
> @@ -588,6 +607,19 @@ static int cci_probe(struct platform_device *pdev)
>   	if (ret < 0)
>   		return ret;
>   
> +	ret = devm_pm_opp_set_clkname(dev, "cci");
> +	if (ret)
> +		return ret;
> +
> +	/* OPP table is optional */
> +	ret = devm_pm_opp_of_add_table(dev);
> +	if (ret && ret != -ENODEV)
> +		return dev_err_probe(dev, ret, "invalid OPP table in device tree\n");
> +
> +	ret = dev_pm_opp_set_rate(dev, cci_desired_clk_rate(cci));
> +	if (ret)
> +		return ret;
> +
>   	/* Interrupt */
>   
>   	ret = platform_get_irq(pdev, 0);
> @@ -775,6 +807,7 @@ static const struct cci_data cci_v2_data = {
>   		.trdhld = 3,
>   		.tsp = 3
>   	},
> +	.fast_mode_plus_supported = true,
>   };
>   
>   static const struct of_device_id cci_dt_match[] = {
> 

LGTM

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

