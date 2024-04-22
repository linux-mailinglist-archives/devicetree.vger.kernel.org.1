Return-Path: <devicetree+bounces-61418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1008AC931
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 11:44:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 878BD283220
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 09:44:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 612AB84A49;
	Mon, 22 Apr 2024 09:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sXBhCYFn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD5226F067
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 09:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713779066; cv=none; b=Kzhy4X66LrLvLjA7yoHXN1+7tgBIYhQRyXpzcLaOOy3Uy6b5Oye3hz1ZlXCVxYO957gqU+FwtDRpypPZwNiDAq+SNGafxW23Jbbc/2PeCUqArOIkqnTfFTaIP6HcwhaCm5rouihc2NtVlTQ58G1gVF23ZKIeZhDglqGZKjGUCtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713779066; c=relaxed/simple;
	bh=fc72h3f1uuW1Y3i/oR5o+u9TvVvqU6JW02wnfcUEaYU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nqOEAsoydb1Jow5dnHIRwy/OeUvVwZyg7FE7yC23uylm8SF4YpqiqRze3fZ1M4Gdh3IYmTXy7RQmD8lDNRFGgk7sxpObhkPO1QosVWe2UywVKlIiY2o1WBcMWjFfE+X6uogo72DsnFNNtMzTqDHtBbNkNeDqYZhrrAPTLQSIk1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sXBhCYFn; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-41a5958d7c2so4811905e9.3
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 02:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713779063; x=1714383863; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p8Wu3wsA6l8PNq8s+rNlFLDmhVVJi5fhCRWYrZwDPqQ=;
        b=sXBhCYFnYkQ1VWLqP5DIbYhrW1DLagNYuwnz2gTuxEH46pCZOX6CNTsQ/je40Qdpn7
         oDVqVSuGxzolnf+TgB/j1JT0EJoheXMzKUts4UAWVHJSqGiu31hjRgqBDYlQ/BC6D44S
         VpLte7T49wp0guCZFWRnAE9cvw4sZYWghippvW3/Z0w1aHi4K9JhqCfyDAn33DkNsFQ6
         I93KaSYXj2++74An387NIFX6U2n/i7kyjq+gABhTzzLM9JkMTf284VYrwjs0jdrRHryf
         epxm3qoGK7dL+KCzXajHhbxg7NeJ7bRGusL0I7hdjusU7h1e1lmh1zPPweoaPgeQVvMC
         arHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713779063; x=1714383863;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p8Wu3wsA6l8PNq8s+rNlFLDmhVVJi5fhCRWYrZwDPqQ=;
        b=t8MqUvXgdUQWLcE80ZgXxH+B2kLdiviBRhlwbI7g19nEm2Awxy8MByYNjI/Dyr8keS
         yMj1n9WRSOxSCo+uf1ETeSI8FLQxo05VOpH8ZkGmVadA3OjQCUo9UtZsyuCLe5DLZP6S
         wzr2teO2EplsgyScRnCks78ujy1xk4iwWPmU1Dsz53P4QM8YShpHjeMeAV6SoovaCBy6
         /Bf9DWNAbSd1enkYNyUtnAMDyhAFOb1nG/8IHrBCoGRnnu/YMBTAs4b1/oeGZKqWZB9F
         ifbK4lCaapKIDqVHRptXs817x6/MBvV5yAxU9VAvksPFKkaCiDT4WeY59pE8lAmgfotb
         7nLw==
X-Forwarded-Encrypted: i=1; AJvYcCU9rTXw+6vHRP5wqq8RdMUeuCOBvc9UUmQBWO3kE7cpWsOLBhuRrtf6S4yGcxdRkQSwsuLyneo/nEse1YXdSpPyKoOWdul0I/U+XQ==
X-Gm-Message-State: AOJu0YxjC4LdSjyVBIMNXkdVSdpwY/yEe/JOCV8LOXI09wH7QI2KBHY3
	jZziUpwPsKDW643oVHFvOPg5p1Wg+X1Yw7ZhLKHGa1N13k4EqNmMsDrPxbEFj8Q=
X-Google-Smtp-Source: AGHT+IEU6I0opmVnr591cUgtsGJXlxHYTlf3UTRKYdnkAFPg93fgVxLtjz27g4+8aBrCRFbltjjSxw==
X-Received: by 2002:a05:600c:3b11:b0:418:17e9:c23f with SMTP id m17-20020a05600c3b1100b0041817e9c23fmr5820026wms.31.1713779063000;
        Mon, 22 Apr 2024 02:44:23 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id jg23-20020a05600ca01700b004189cf6bd6esm19393018wmb.22.2024.04.22.02.44.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Apr 2024 02:44:22 -0700 (PDT)
Message-ID: <e2cd6b13-62ca-415a-a015-0bf30e77535c@linaro.org>
Date: Mon, 22 Apr 2024 11:44:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] thermal: loongson2: Trivial code style adjustment
Content-Language: en-US
To: Binbin Zhou <zhoubinbin@loongson.cn>, Binbin Zhou
 <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Amit Kucheria <amitk@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Huacai Chen <chenhuacai@kernel.org>, loongson-kernel@lists.loongnix.cn,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 Yinbo Zhu <zhuyinbo@loongson.cn>, WANG Xuerui <git@xen0n.name>,
 loongarch@lists.linux.dev
References: <cover.1713509889.git.zhoubinbin@loongson.cn>
 <58c3a812746affb331147d0d9f2f5b8f62f120cf.1713509889.git.zhoubinbin@loongson.cn>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <58c3a812746affb331147d0d9f2f5b8f62f120cf.1713509889.git.zhoubinbin@loongson.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 20/04/2024 03:45, Binbin Zhou wrote:
> Here are some minor code style adjustment. Such as fix whitespace code
> style; align function call arguments to opening parenthesis, and add
> devm_thermal_add_hwmon_sysfs() return value checking.
> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> Acked-by: Huacai Chen <chenhuacai@loongson.cn>
> ---

[ ... ]

>   	}
>   
>   	ret = devm_request_threaded_irq(dev, irq, NULL, loongson2_thermal_irq_thread,
> -			IRQF_ONESHOT, "loongson2_thermal", tzd);
> +					IRQF_ONESHOT, "loongson2_thermal", tzd);
>   	if (ret < 0)
>   		return dev_err_probe(dev, ret, "failed to request alarm irq\n");
>   
> -	devm_thermal_add_hwmon_sysfs(dev, tzd);
> -
> -	return 0;
> +	return devm_thermal_add_hwmon_sysfs(dev, tzd);

You may not want to do this change. If the devm_thermal_add_hwmon_sysfs 
function fails, that does not jeopardize the initialization of this driver.


>   }
>   
>   static const struct loongson2_thermal_chip_data loongson2_thermal_ls2k1000_data = {
> @@ -167,4 +167,5 @@ static struct platform_driver loongson2_thermal_driver = {
>   module_platform_driver(loongson2_thermal_driver);
>   
>   MODULE_DESCRIPTION("Loongson2 thermal driver");
> +MODULE_AUTHOR("Loongson Technology Corporation Limited");
>   MODULE_LICENSE("GPL");

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


