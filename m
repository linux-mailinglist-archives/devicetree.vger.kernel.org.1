Return-Path: <devicetree+bounces-192237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CD6AF5D74
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 17:43:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 503F21883E81
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 15:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B33F3196C6;
	Wed,  2 Jul 2025 15:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="drIMRy14"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82F5E3196BE
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 15:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751470516; cv=none; b=bcVnrUfOqgc2Y1GHwYTQKYYcez3+c4jhVw/W8aTtt2/FzlznVxdqiGvyyuDk7rStweeZcyI2tXru9JduMjRL/u4BJgQm5PmYg5Hbj3JJr3pyvHwGgwa23QpK3trKYUkfWwpNsCirf4O3NIEmX2JPR+7KnkBOuxlnNFr3mpLkj3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751470516; c=relaxed/simple;
	bh=vZBo5y77HrfZLAHPXYjDTUFcXmXB+C/GAhGYxUKToUs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g55ZQlO0hjPd1dHUHS6JasnOn/9LV4D2imGEr0LlOSdQe09PrgteVDS6jtO3Va765crItfTTugoEdrGRuyPwc/uRl5YZ987P03o3GR2UdokHu5sihATsRs3GsxC8GBX14DJvH831yfdGNkHvHTQMSR3AOHrGWKuAG+jmajFSClU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=drIMRy14; arc=none smtp.client-ip=209.85.166.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-3e05bb6efe0so1216625ab.3
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 08:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1751470513; x=1752075313; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gFYak3rqG4/IzwuHtJ+AVvA3da7cWc6pCiZ9Z7+J3C0=;
        b=drIMRy14b8dhOEXRrRQsfjdn8Wny90I9bfGOaU+QttyWvSgBPA2+poodPm4uW0lTOp
         LdSAOvaKmD2+OgOmQYHjeG961ttPutEJ3s74dlqyMdwahGNEdoaRS0wrvmpY0LQFoDaq
         +UoydM5jZux9PhFo8H05+LtAl862mj+juX+TdEtJoSphp6Az2YM5FmyqJppbfUsosB+4
         5hY42BN7W55QQPRWEVAarYmptl8vx59CZZrU7ZbE1/kdSwkBtTFzO4uP83pV2FBi2kxf
         MTEETilYoUERGrTnGgV5Eow5javXxvv5LcZGx6/IS08LiF4G8/7XzjhYHB97ddD9JBcC
         i0Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751470513; x=1752075313;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gFYak3rqG4/IzwuHtJ+AVvA3da7cWc6pCiZ9Z7+J3C0=;
        b=k2dqlTewBRDvr31aQMqjWRqVMSLZGlViawRYoe3ta9JJ296mO/x0GZXt7eLcPrYPzf
         ahkQ8Dmm9vFt21TsAqTWIk2rNhLMtggz6GjcWKrl1vnTahYfZAp5vc8QXyCo00ZDBp7u
         wfEZiPE10WgnvQtpVEd5mnbJzilkT+FCUkE6IDwNa1qVnBfYxVaCLytgM+esadfj18DO
         +GihN+mlwaw9bTxat9/cYa10we9NKb2C/+bdLf6cB26IDXYPMjU66d4e9T6Dgn/DLGKH
         L/rj4o6sBndeNRPEDGtEr3EoaFPAqnOwPiGBpuGvPWUfa2SCIQrqK+Rqu0+hDIk03MKN
         0QZw==
X-Forwarded-Encrypted: i=1; AJvYcCWHeRLNIB9NmYRQExjSI7rSOpCq6F4xYktBdfEHbadxfPNsgfrw9qT4Vp5BanPICLv2HoS6KZ7E5xmB@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4OR5XnxKNV540rM76rgVxdsZOo7Er2NXUDqRSy8xyxJk835ki
	I54+loP9YPKG3jEhoDRXKNxLXmPdX2Si3rY+zQojRlyHEVn75gC7Hte+sJbHyAnsbjQ=
X-Gm-Gg: ASbGncvgnNm56trsth0plS2HT496+nsZyYKmo2SC/l4mm3tyahrzry3TmT7yqufVE7F
	2ebe55C2DIUFljAHOdzLcfJx5w8YPHnyDk/zQlXVvUZCswt3IFiTksQv0zM8cPGiCMCLW/dzHT/
	8+zYW+KzxTE7lvQEFy1Ngf5X3dCGpBqDuFyKd23G2jvQ5spoF5ftyRj7TgkztaLxKPfABmzXHwT
	x+qVmdIQx6PJHCJPX1uJkw5J7hH4EJPmYXe1fLMncuIRGcWrpgfWPRyQDmy7eKPBgIVacXaKU+h
	jEv0Y9hQlARZRMuzFxPb4EAO8Ed35bqspzxHyV2SUiKSVvL0k5XaNQ3bA4+RcRxnoAmu9vHZttM
	mf1J4VGH49ndvZDIAHthKvBgLMg==
X-Google-Smtp-Source: AGHT+IHJuXwDnuIr4bYWYjj6GSVyHqNZGbb2KEkdO8qfJX0ywzKr09z0X9AaMr3NQzkZvnOS8IhlQQ==
X-Received: by 2002:a05:6e02:17c6:b0:3dd:920f:d28e with SMTP id e9e14a558f8ab-3e0549d82c5mr32653675ab.13.1751470513525;
        Wed, 02 Jul 2025 08:35:13 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5039f2f95a1sm161358173.85.2025.07.02.08.35.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jul 2025 08:35:13 -0700 (PDT)
Message-ID: <0219b698-2f1b-4fcd-bce7-0ba6f6895b11@riscstar.com>
Date: Wed, 2 Jul 2025 10:35:11 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/8] mfd: simple-mfd-i2c: specify max_register
To: Lee Jones <lee@kernel.org>
Cc: lgirdwood@gmail.com, broonie@kernel.org, alexandre.belloni@bootlin.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, mat.jonczyk@o2.pl,
 dlan@gentoo.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, troymitchell988@gmail.com,
 guodong@riscstar.com, linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20250627142309.1444135-1-elder@riscstar.com>
 <20250627142309.1444135-3-elder@riscstar.com>
 <20250702152618.GU10134@google.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250702152618.GU10134@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/2/25 10:26 AM, Lee Jones wrote:
> On Fri, 27 Jun 2025, Alex Elder wrote:
> 
>> All devices supported by simple MFD use the same 8-bit register
>> 8-bit value regmap configuration.  There is an option available
>> for a device to specify a custome configuration, but no existing
>> device uses it.
>>
>> Lee Jones suggested modifying the simple MFD implementation to
>> remove the generality of the full regmap configuration and add a
>> max_register value to the simple_mfd_data structure.  This can
>> be used in the regmap configuration to limit the valid register
>> addresses if desired.  It's simpler, and covers all existing and
>> anticipated device types.
> 
> Woah, not like this.  I wanted to make the framework _more_ flexible.

OK, sorry I misunderstood.  I'll send another new version today
that does what you suggest.

Thanks a lot.

					-Alex

> Just this should do what you want:
> 
> diff --git a/drivers/mfd/simple-mfd-i2c.c b/drivers/mfd/simple-mfd-i2c.c
> index 22159913bea0..f43be10c0e60 100644
> --- a/drivers/mfd/simple-mfd-i2c.c
> +++ b/drivers/mfd/simple-mfd-i2c.c
> @@ -44,6 +44,9 @@ static int simple_mfd_i2c_probe(struct i2c_client *i2c)
>          else
>                  regmap_config = simple_mfd_data->regmap_config;
>   
> +       if (simple_mfd_data->max_register)
> +               regmap_config->max_register = simple_mfd_data->max_register;
> +
>          regmap = devm_regmap_init_i2c(i2c, regmap_config);
>          if (IS_ERR(regmap))
>                  return PTR_ERR(regmap);
> 
> Plus the one line change in drivers/mfd/simple-mfd-i2c.h.
> 
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> Suggested-by: Lee Jones <lee@kernel.org>
>> ---
>> v6: - New patch, changing the simple MFD functionality
>>
>>   drivers/mfd/simple-mfd-i2c.c | 18 ++++++------------
>>   drivers/mfd/simple-mfd-i2c.h |  2 +-
>>   2 files changed, 7 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/mfd/simple-mfd-i2c.c b/drivers/mfd/simple-mfd-i2c.c
>> index 22159913bea03..c1dc315d44dcf 100644
>> --- a/drivers/mfd/simple-mfd-i2c.c
>> +++ b/drivers/mfd/simple-mfd-i2c.c
>> @@ -24,27 +24,21 @@
>>   
>>   #include "simple-mfd-i2c.h"
>>   
>> -static const struct regmap_config regmap_config_8r_8v = {
>> -	.reg_bits = 8,
>> -	.val_bits = 8,
>> -};
>> -
>>   static int simple_mfd_i2c_probe(struct i2c_client *i2c)
>>   {
>>   	const struct simple_mfd_data *simple_mfd_data;
>> -	const struct regmap_config *regmap_config;
>> +	struct regmap_config regmap_config = { };
>>   	struct regmap *regmap;
>>   	int ret;
>>   
>>   	simple_mfd_data = device_get_match_data(&i2c->dev);
>>   
>> -	/* If no regmap_config is specified, use the default 8reg and 8val bits */
>> -	if (!simple_mfd_data || !simple_mfd_data->regmap_config)
>> -		regmap_config = &regmap_config_8r_8v;
>> -	else
>> -		regmap_config = simple_mfd_data->regmap_config;
>> +	regmap_config.reg_bits = 8;
>> +	regmap_config.val_bits = 8;
>> +	if (simple_mfd_data)
>> +		regmap_config.max_register = simple_mfd_data->max_register;
>>   
>> -	regmap = devm_regmap_init_i2c(i2c, regmap_config);
>> +	regmap = devm_regmap_init_i2c(i2c, &regmap_config);
>>   	if (IS_ERR(regmap))
>>   		return PTR_ERR(regmap);
>>   
>> diff --git a/drivers/mfd/simple-mfd-i2c.h b/drivers/mfd/simple-mfd-i2c.h
>> index 7cb2bdd347d97..4121fe1bc1d70 100644
>> --- a/drivers/mfd/simple-mfd-i2c.h
>> +++ b/drivers/mfd/simple-mfd-i2c.h
>> @@ -24,9 +24,9 @@
>>   #include <linux/regmap.h>
>>   
>>   struct simple_mfd_data {
>> -	const struct regmap_config *regmap_config;
>>   	const struct mfd_cell *mfd_cell;
>>   	size_t mfd_cell_size;
>> +	unsigned int max_register;
>>   };
>>   
>>   #endif /* __MFD_SIMPLE_MFD_I2C_H */
>> -- 
>> 2.45.2
>>
> 


