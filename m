Return-Path: <devicetree+bounces-187552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC41AE0726
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 15:25:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A1CFB5A36EE
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 13:23:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46E7D25A35F;
	Thu, 19 Jun 2025 13:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="DqtdU1SR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59215259C9A
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 13:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750339437; cv=none; b=UZ8MhTMhdgy+E5TnGgcFffzfeKTes39K/fIDQPvhe5PGqCbA+B6WQD1O08ZkSsRATayuSaHTjgXPqAc2mYH7Jg8JDpngio/xYeLlOuMFSZ7+aX+Q1DeDDes3yLeFVLBeiKVZxR7yqpMieH6VIyJ6zrH05jvfA5GrmzDgYceY+2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750339437; c=relaxed/simple;
	bh=yRrInhMCgBKy4u70p2vAMUnikJnhAHKwHd4sMoJNiLQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JWOJ7fPlZd9Ii0iBrV4ESd2eKPLhu48FVsW4r/8Eqqo2Ee1xINITXM1cdwrN/qoUpp53VmKe8aZkerN3o54COTJJ+CevndGLa+Hz1oX9z83RrStWbLP6oLr/zA0/JFX0C+ztDSGazGmgNWSqKWDV/BF48Y9w3sD24Y+qWJtbHlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=DqtdU1SR; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-72c27166ab3so574328a34.1
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 06:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750339433; x=1750944233; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xMgLZ/LtsoXII7nkbaS4tPTkpnKfRrfyc3zePK7XFH4=;
        b=DqtdU1SRnX4SlBvbciLYA+LuMMlnu1sOZ9ayVpUL8Ed0uHFBv52hpEKqOF3HQhlI/8
         BKQpG73U8NYPFRmyUB87ExhjLgGVnLdlGNfO4fmrdoLksie+Vrwp9iTVlZZYj9S0Tb4f
         mUPk9dqXfxwHkh75OSDVV5m2CxUzUWksiq3p92p9TxnQNhDLktYe4u8O2TZHL4vyA3EF
         qayrrroZ9ieeQAngg61UvAFg1ZzbjtLgtKGw5G5y/8MaXtgFcpz9CqOW+eC9dY4p2U0O
         Jyg7YduYvBSnK994Ju3PuCJVpKCnAfjXlcDfwiwIzuiFVjWdDveJaJDpk+TSg3n90y6v
         o2dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750339433; x=1750944233;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xMgLZ/LtsoXII7nkbaS4tPTkpnKfRrfyc3zePK7XFH4=;
        b=F+vyeWluqy4snaWfWEfkn7jd7pmpjSs2Be4t5pLVp06NM5HkDYkH4w7HXWKyC/iuoi
         rzj9PT0TrHxFG8vzLoCXHRjyxTzqaGxj8O3H0IEjA3JyytAUenfru/jQLxxwClZMEjl+
         lZPHXTk/qN8t8WI+lFNJl6buaGG7OCugNRVP3PBVX5/e4wgdf88QLnwFK4gjZiH6HwOr
         9LHb6rAhmHqUWC9UXgJlcrJVib96oqQB0dpjeS7rfSmFVKdutUqVzR1lxInaMV+Ic+yu
         KUNiTql47hECyM3Xm0Lim/vtql1LOzX/cmpt+pmVlYebVnowT+SxasYvB2j+KMScwLRr
         OsJg==
X-Forwarded-Encrypted: i=1; AJvYcCVmd4V4ehuRBs8B7vPZm9lhe0thmHXB4t5ExTMk1wV0l19kXLA+BpltlOHvxK3oFDgODrOZ1RPZEFdm@vger.kernel.org
X-Gm-Message-State: AOJu0Yy47bjNSv3OtORPByVO/DRJtn4CYtQJ2gYWs26UOaqK4JWWsOvW
	cpRT1Cnf6OxgUJJd4Dr07LBJVCdJb+1rB8xCb8tGlM3ba6U3woHThV2UtZMKVC6YFNI=
X-Gm-Gg: ASbGncu/3njgahkZFpCvzpSfaqVV4AvOjKxYKIKxavoq0NT5Svzx1Aw2/UXEmhSCKTt
	RSoVKigX49xslWxyiA1ajGQuSuJU/1EUJo2YkMs/TcGim/BlXYAddobaAhZonL/kFfC5eA9Ha29
	6R4xYD1dfL5U/3dee8ATfmZUYO+DnRgNT1GKhNeC0JmbbaahKLxzbuvZXFmhSEcFk1KnpNaHa9v
	IOwiOB65YbhAk/EXUDrjCXzvZ2enVLhFNwQYw744Le5Z+sl8NjXqCmcsLhbDE6WDbsCzLROm1Jt
	MVDJsYv/+Gi6QU+n1XQTRYkBMbXEGrUGsxUwHgzxGRQxwsqNoTgVCbOovL/I3MXy+iv2Rg71ZIu
	mft2MUW1JjBaakZa7OFF/rDdeyA==
X-Google-Smtp-Source: AGHT+IFv7xGd3UTr9p6P6RvePe4D/mQncFt71O03oqdU9wFu4hav14OEVRV5ZjR0JYA/8QQYzl/Uag==
X-Received: by 2002:a05:6830:8207:b0:736:8a4:6835 with SMTP id 46e09a7af769-73a36297f86mr11682241a34.2.1750339433423;
        Thu, 19 Jun 2025 06:23:53 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-73a6e73284fsm645977a34.64.2025.06.19.06.23.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jun 2025 06:23:53 -0700 (PDT)
Message-ID: <6504c609-f8b5-42e3-88ad-5cbee30a52ed@riscstar.com>
Date: Thu, 19 Jun 2025 08:23:51 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] regulator: spacemit: support SpacemiT P1 regulators
To: Vivian Wang <wangruikang@iscas.ac.cn>, lee@kernel.org,
 lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, dlan@gentoo.org
Cc: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 alex@ghiti.fr, troymitchell988@gmail.com, guodong@riscstar.com,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20250613210150.1468845-1-elder@riscstar.com>
 <20250613210150.1468845-4-elder@riscstar.com>
 <acac9522-fb19-4659-8e1a-544bf75f3864@iscas.ac.cn>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <acac9522-fb19-4659-8e1a-544bf75f3864@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/19/25 1:15 AM, Vivian Wang wrote:
> On 6/14/25 05:01, Alex Elder wrote:
>> <snip>
>>
>> diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
>> index 6d8988387da45..7bb7b8fad24f2 100644
>> --- a/drivers/regulator/Kconfig
>> +++ b/drivers/regulator/Kconfig
>> @@ -1384,6 +1384,15 @@ config REGULATOR_SLG51000
>>   	  The SLG51000 is seven compact and customizable low dropout
>>   	  regulators.
>>   
>> +config REGULATOR_SPACEMIT_P1
>> +	tristate "SpacemiT P1 regulators"
>> +	depends on ARCH_SPACEMIT || COMPILE_TEST
>> +	default ARCH_SPACEMIT
>> +	help
>> +	  Enable support for regulators implemented by the SpacemiT P1
>> +	  power controller.  The P1 implements 6 high-efficiency buck
>> +	  converters and 12 programmable LDO regulators.
> Needs module name in help text, as is the case with spacemit-pmic.

I will add this text.

>> +
>>   config REGULATOR_STM32_BOOSTER
>>   	tristate "STMicroelectronics STM32 BOOSTER"
>>   	depends on ARCH_STM32 || COMPILE_TEST
>>
>> <snip>
>>
>> +static struct platform_driver p1_regulator_driver = {
>> +	.probe = p1_regulator_probe,
>> +	.driver = {
>> +		.name = "spacemit-p1-regulator",
>> +	},
>> +};
>> +
>> +module_platform_driver(p1_regulator_driver);
>> +
>> +MODULE_DESCRIPTION("SpacemiT P1 regulator driver");
>> +MODULE_LICENSE("GPL");
> 
> If this driver is compiled as a module, it needs to be found by modalias
> so the driver auto-loads after spacemit-pmic registers the regulator
> device, so you need:
> 
> +MODULE_ALIAS("platform:spacemit-p1-regulator");
> 
> Also, consider extracting the name to a macro:
> 
> #define DRV_NAME "spacemit-p1-regulator"

I will implement both of these suggestions (and will do so in
the PMIC driver as well).

> Also, consider naming this consistently: "spacemit-p1", or
> "spacemit-p1-regulator"?

Let me see if I understand your comment, by explaining the
naming I used.

The PMIC driver could support a different PMIC.  Its OF
match table specifies a compatible string with matching
data, and the data describes attributes of the P1 PMIC.
So that driver uses MOD_NAME "spacemit-pmic".

This driver describes specifically the regulators found
in the P1 PMIC, so it uses "spacemit-p1-regulator" as
its MOD_NAME.

You might still be right; but does this change what you
are suggesting?

Thanks.

					-Alex

> 
> Regards,
> Vivian "dramforever" Wang
> 


