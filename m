Return-Path: <devicetree+bounces-35398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F1483D5CC
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 10:15:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD6EA1C2513B
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 09:15:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99A2B12E7D;
	Fri, 26 Jan 2024 08:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B873oe1t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 922CED272
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 08:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706257466; cv=none; b=MGH5GzI3MMXNghFBpceUFEY7efNoNHAglF46U1+1MjLI/FcnHMVY23ceUQ0KN+MpA7A7pPGlCBJtudnIjb5wYlrPVOwGU0qEgxKbRRuLsVtEVcsgFSH3KeQexRAmb3GOIPg2RDKW4aSzkOu6EXGOjmMh5CQDSPy665d3kmxns60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706257466; c=relaxed/simple;
	bh=PRiN7e2outscEnHnnIc+xjLsVlsduMoJoGpra6YYkPw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IwdB11Vk8s3qA4DKgoWInpBi2+qjSdyyNEV/QLYEUfE3wkr7SwEFMilbhOyjF4IYJV4KSRdy44ur0bsh2rjkJRS/fJ2j3i7B2z6ddXoRzm7SmwbO5OeKznvPehPZsBT3yLtQzANyPQh8ISgmWD31wcN3XSsRy1i7Ty3MLXwxBig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B873oe1t; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-40ea5653f6bso1583915e9.3
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 00:24:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706257463; x=1706862263; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=shyCezrNB7XdCB+Nwxl8E09WYma+GSqW2YNffaervI0=;
        b=B873oe1tzF/5GiyOO0gZ3paixuF7K0XQLCCt+ZasiNLGrsmrXm69tm8cXnds6cus08
         rdGu/R95pKsq6z0Jw5bnNL31qkvRLvtOqs3qOUtSecym1Wu2GQufl55U8zD7q8WK2Chh
         AghhZpL6lAUZvRj1HtN76d5zgZgo/lol8XVXgqAqsSrHb0tocwWti9wxtzQ0Uqh0n/ZJ
         kjztQl28Ph7/+HCr9lvg+kjofAlwiQj63z/KnXwel+6s3wO5oGbc4PgkNXwpfGTp4kVj
         0ZMzK63/5FQORlHGWZFbTGI6FT/WJ3d5clHTgkP3IFm2S3bQzQSz6ixEWhnUF10A3hMN
         Vgng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706257463; x=1706862263;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=shyCezrNB7XdCB+Nwxl8E09WYma+GSqW2YNffaervI0=;
        b=qvvR+UnIG7lij+9on1UvvYZ8onA8QPMdnGi0I+i99kNRTbqjDlcRMcl3YdaFDydswy
         aMv2qaohfWZxJ4UQhtWXwlvF646Eaby6vjZyHlsclR2ppOO4R0s5l7iiWeJEjRX9JqGY
         wPKo7RYa9/iCbuXMe/JRxbbP3m2Uiny2T7oNILXuh0teHlgsuCyscGEyIhiMqCRv2cXr
         kYvzJ5o+Jgaoyytk0NbIeXDK2W7XIFCHwaL3RIhDqorUpmRsd/u3iE23bGsMdfOCjLJ9
         2sbnFL4u0jKzxIDuYZhiZoKhP3veKWFrdfA6wLKKkbCAmAqa4XOeaoDaXaeftOoob26g
         V6nA==
X-Gm-Message-State: AOJu0YyWakzF+9P8U4QtYBAG1oI0I6/AvI2zu6qoziezwMFonqYUVCFH
	Vunc/vk8FF38TkGX3biRk0L7zll1FwR8nqZWhZoHtzKDvqbUGf1KcIC4k8hiW0Y=
X-Google-Smtp-Source: AGHT+IF8TECZcCCPFmI7NyjhLaU1SCuZ0j6JwuqK/IVgmHR7p9cOEyfu9nM+Qt9p7KtLUq18bPrGPA==
X-Received: by 2002:a05:600c:213:b0:40e:4d65:59c7 with SMTP id 19-20020a05600c021300b0040e4d6559c7mr587695wmi.244.1706257462826;
        Fri, 26 Jan 2024 00:24:22 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id fa26-20020a05600c519a00b0040e4746d80fsm1129109wmb.19.2024.01.26.00.24.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jan 2024 00:24:22 -0800 (PST)
Message-ID: <cad69841-9ca2-45af-9db2-4c4aced63d5e@linaro.org>
Date: Fri, 26 Jan 2024 08:24:19 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/28] spi: s3c64xx: remove unneeded (void *) casts in
 of_match_table
Content-Language: en-US
To: Sam Protsenko <semen.protsenko@linaro.org>
Cc: broonie@kernel.org, andi.shyti@kernel.org, arnd@arndb.de,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 alim.akhtar@samsung.com, linux-spi@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-arch@vger.kernel.org, andre.draszik@linaro.org,
 peter.griffin@linaro.org, kernel-team@android.com, willmcvicker@google.com
References: <20240125145007.748295-1-tudor.ambarus@linaro.org>
 <20240125145007.748295-8-tudor.ambarus@linaro.org>
 <CAPLW+4kGGtG2BxeN0wRXMD5M2TR+eMUHZpL2KDaEFubBCP7jdg@mail.gmail.com>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <CAPLW+4kGGtG2BxeN0wRXMD5M2TR+eMUHZpL2KDaEFubBCP7jdg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Thanks for the review feedback, Sam, great catches so far!

On 1/25/24 19:04, Sam Protsenko wrote:
> On Thu, Jan 25, 2024 at 8:50 AM Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>>
>> of_device_id::data is an opaque pointer. No explicit cast is needed.
>> Remove unneeded (void *) casts in of_match_table. While here align the
>> compatible and data members.
>>
>> Reviewed-by: Andi Shyti <andi.shyti@kernel.org>
>> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>> ---
>>  drivers/spi/spi-s3c64xx.c | 45 +++++++++++++++++++++++----------------
>>  1 file changed, 27 insertions(+), 18 deletions(-)
>>
>> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
>> index 230fda2b3417..137faf9f2697 100644
>> --- a/drivers/spi/spi-s3c64xx.c
>> +++ b/drivers/spi/spi-s3c64xx.c
>> @@ -1511,32 +1511,41 @@ static const struct platform_device_id s3c64xx_spi_driver_ids[] = {
>>  };
>>
>>  static const struct of_device_id s3c64xx_spi_dt_match[] = {
>> -       { .compatible = "samsung,s3c2443-spi",
>> -                       .data = (void *)&s3c2443_spi_port_config,
> 
> I support removing (void *) cast. But this new braces style:
> 
>       },
>       {

this style was there before my patch.
> 
> seems to bloat the code a bit. For my taste, having something like },
> { on the same line would be more compact, and more canonical so to

I don't lean towards neither of the styles, I'm ok with both

> speak. Or even preserving the existing style would be ok too, for that
> matter.
> 

seeing .compatible and .data unaligned hurt my eyes and I think that
aligning them while dropping the cast is fine. I don't really want to do
the style change unless you, Andi or Mark insist. Would you please come
with a patch on top if you really want them changed?

> Assuming the braces style is fixed, you can add:
> 
> Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
> 
>> +       {
>> +               .compatible = "samsung,s3c2443-spi",
>> +               .data = &s3c2443_spi_port_config,
>>         },
>> -       { .compatible = "samsung,s3c6410-spi",
>> -                       .data = (void *)&s3c6410_spi_port_config,
>> +       {
>> +               .compatible = "samsung,s3c6410-spi",
>> +               .data = &s3c6410_spi_port_config,
>>         },
>> -       { .compatible = "samsung,s5pv210-spi",
>> -                       .data = (void *)&s5pv210_spi_port_config,
>> +       {
>> +               .compatible = "samsung,s5pv210-spi",
>> +               .data = &s5pv210_spi_port_config,
>>         },
>> -       { .compatible = "samsung,exynos4210-spi",
>> -                       .data = (void *)&exynos4_spi_port_config,
>> +       {
>> +               .compatible = "samsung,exynos4210-spi",
>> +               .data = &exynos4_spi_port_config,
>>         },
>> -       { .compatible = "samsung,exynos7-spi",
>> -                       .data = (void *)&exynos7_spi_port_config,
>> +       {
>> +               .compatible = "samsung,exynos7-spi",
>> +               .data = &exynos7_spi_port_config,
>>         },
>> -       { .compatible = "samsung,exynos5433-spi",
>> -                       .data = (void *)&exynos5433_spi_port_config,
>> +       {
>> +               .compatible = "samsung,exynos5433-spi",
>> +               .data = &exynos5433_spi_port_config,
>>         },
>> -       { .compatible = "samsung,exynos850-spi",
>> -                       .data = (void *)&exynos850_spi_port_config,
>> +       {
>> +               .compatible = "samsung,exynos850-spi",
>> +               .data = &exynos850_spi_port_config,
>>         },
>> -       { .compatible = "samsung,exynosautov9-spi",
>> -                       .data = (void *)&exynosautov9_spi_port_config,
>> +       {
>> +               .compatible = "samsung,exynosautov9-spi",
>> +               .data = &exynosautov9_spi_port_config,
>>         },
>> -       { .compatible = "tesla,fsd-spi",
>> -                       .data = (void *)&fsd_spi_port_config,
>> +       {
>> +               .compatible = "tesla,fsd-spi",
>> +               .data = &fsd_spi_port_config,
>>         },
>>         { },
>>  };
>> --
>> 2.43.0.429.g432eaa2c6b-goog
>>

