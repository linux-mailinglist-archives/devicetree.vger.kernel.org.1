Return-Path: <devicetree+bounces-187551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 843CBAE0709
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 15:25:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5CADD3BF5CC
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 13:23:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2EC625A333;
	Thu, 19 Jun 2025 13:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="FF86Bo6q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3571625A2B5
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 13:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750339411; cv=none; b=MYRZ9rvtM0avJ3ayexradtx5aGfYy5gsqBhJ5adRgP7C/dL4lcqQM+7V5SzBym680UqMr4QXpbhFbAlzX69ZwncyZJR2WSF4UerSvJgftbtHTxM9G5NmStw7fr8iA1S7gTaILw91AdxnnFqfUi6a8lg63e3WrkrcE2VX+gzAkd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750339411; c=relaxed/simple;
	bh=s56PJFNbAR0+4oVC0BXCzijj2cnK6zrUkEsGzFgWjP8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hpGuIyxGRYgrP5JyeeZSZYymWTChUtPkj9i5Jd0EzzXUoyTDs2ETHeZUaGjYP+PwsejhGixqDdUXBqhQHy5LzugHqFSA3uKWnLHsS1OsN4aPKw4NI42K1DEGjJYj9LUy7tDFK51JGORWL0xS6r6JlWd+vGzfdahKbxzciWC7HLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=FF86Bo6q; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-40a8013d961so189113b6e.0
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 06:23:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750339408; x=1750944208; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/70FnD9tQ+fRiZyRY5r5SMsQadgm6QXv7BQ/o/RrZC4=;
        b=FF86Bo6qxRQ8Pl6dSeK5qzm53GQ6TBS9Se8r4YJzHuiO+JY9IoGYIGdPuQRJ8C6geE
         /AkDfJAh3EPzRMpJ5Gmf0SjFcVZLUKnIobFoG6UziErg1OWolNRoS6dlVQXp8EU0x3cZ
         ot/cthRbs8bEpqlqAPG86krgX8PwstOZMezw8KELEUk2EXX4xVaT3PqJv6u8w03LR6ja
         iMkD+QwIiQxnxZdVjrDDlHu1Hv3s2oHKIgR3Y+WHKmw/B7I4mbob9dLWfGmO7Xaaczxk
         98tJK7Eu0a735LnvvZYFtlkatiTinWQoTghCWVBjTWMPQssj9dMj0MG0Bx8XaBFUXtxt
         62jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750339408; x=1750944208;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/70FnD9tQ+fRiZyRY5r5SMsQadgm6QXv7BQ/o/RrZC4=;
        b=GUChVR/fbxwcAu+FhebwYK2vyUrh4JZ7p7/F/rVjjc3w9v3QPOnH2oI7OyI5bmMNbB
         MBCkgrDrBL/8wigfWB/h7iNBKaq+uk1XUgdYxb6LlswliCGLDE3rc0Sdi7EYefwGbdDH
         f8a/PUX5i7hY/R/rVusEYnaV6816EM43TSh1ym8IuoUC1+ui9eqhq5zxqzN81SqlToj+
         iQlovIusepa6sKZ/S8hwtNb5ru3OIzrt7OsRIIwOMkgjhUZ80b4rEV0XzsQ8Lb7wsiaQ
         bRszvgBtDNAtUCWKeth//4ZmwY/vS32C2UAJYyu4tpqw3RTa+9RGoUD6qeO+po1EZ5fv
         y8pg==
X-Forwarded-Encrypted: i=1; AJvYcCWC70t/+rdhFoe9TJWoyJChBpJ3o4XDHFKP0gkEDUrGaOUy8UIBNkgZDwV0la6UgFvEW2WLdbtlG4EW@vger.kernel.org
X-Gm-Message-State: AOJu0Ywz3ajyvUjGpI0McfXKnGvXc4mBOI1BB1VhFHHYQ7d7rCRfR2b0
	PQad1V06CIO64lXqed4y9GASJK/78NDg8BXhF4fzK/+ya2kSFcy6GluBnGzFoua13vM=
X-Gm-Gg: ASbGncv3J5NSDYbPZi8AgwKFJ/eDLCKeAf2+x70HJNh/bEhYE4jZR+vnhGpjDKFrzZq
	VoeWyfAE9P5MCPxXW/TOn2AxT2oPkemGP9ymLL0Khdok+wzyku6VYIgxKYfC3or/x+L9DwS3PlW
	O2PCr1ru358BehgU1+AMXAHllNjMV3mOfmJzi0nUL2c89ulvNdyY4/FV8P6yZPWKYHDBbZhkfXi
	y7xBVjwqdSkxF3kLxYn7LukotibY6yQ8dKT6pzO814ebHbRa02LqMIYhTjjI4yxSQMu62bcI8Jo
	71ENCi98ON90tO9HLPnldzv0JmmlCFl2/0D6YNKq+s5lSZ8epIIlU42ok8ZiS/8zNjXRT6A1Rqr
	ENV5o1iXRRaUr6+8AMP7Nw8KScA==
X-Google-Smtp-Source: AGHT+IGVYUqAL7UYn2pwdI0pVBJFm39ZocyoGLl1F6P4Vm48on+LUD6YmdbeE2h0MWfBSEJb6OB1Ew==
X-Received: by 2002:a05:6808:152a:b0:3f9:8b5b:294c with SMTP id 5614622812f47-40a7c23cff7mr13295372b6e.31.1750339408304;
        Thu, 19 Jun 2025 06:23:28 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a741b8837sm2759463b6e.46.2025.06.19.06.23.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jun 2025 06:23:27 -0700 (PDT)
Message-ID: <3d8b4025-4e82-4245-8923-b55954894137@riscstar.com>
Date: Thu, 19 Jun 2025 08:23:26 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] mfd: spacemit: add support for SpacemiT PMICs
To: Vivian Wang <wangruikang@iscas.ac.cn>, lee@kernel.org,
 lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, dlan@gentoo.org
Cc: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 alex@ghiti.fr, troymitchell988@gmail.com, guodong@riscstar.com,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20250613210150.1468845-1-elder@riscstar.com>
 <20250613210150.1468845-3-elder@riscstar.com>
 <4036e3c2-8324-4eeb-9aa8-df1fbe9c7943@iscas.ac.cn>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <4036e3c2-8324-4eeb-9aa8-df1fbe9c7943@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/19/25 12:46 AM, Vivian Wang wrote:
> On 6/14/25 05:01, Alex Elder wrote:
>> <snip>
>>
>> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
>> index 6fb3768e3d71c..c59ae6cc2dd8d 100644
>> --- a/drivers/mfd/Kconfig
>> +++ b/drivers/mfd/Kconfig
>> @@ -1182,6 +1182,17 @@ config MFD_QCOM_RPM
>>   	  Say M here if you want to include support for the Qualcomm RPM as a
>>   	  module. This will build a module called "qcom_rpm".
>>   
>> +config MFD_SPACEMIT_PMIC
>> +	tristate "SpacemiT PMIC"
>> +	depends on ARCH_SPACEMIT || COMPILE_TEST
>> +	depends on I2C && OF
>> +	select MFD_CORE
>> +	select REGMAP_I2C
>> +	default ARCH_SPACEMIT
>> +	help
>> +	  This option enables support for SpacemiT I2C based PMICs.  At
>> +	  this time only the P1 PMIC (used with the K1 SoC) is supported.
>> +
> 
> Module name?
> 
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called spacemit-pmic.

I will add a comment like this to the help text.

> 
>>   config MFD_SPMI_PMIC
>>   	tristate "Qualcomm SPMI PMICs"
>>   	depends on ARCH_QCOM || COMPILE_TEST
>>
>> <snip>
>>
>> +static struct i2c_driver spacemit_pmic_i2c_driver = {
>> +	.driver = {
>> +		.name = "spacemit-pmic",
>> +		.of_match_table = spacemit_pmic_match,
>> +	},
>> +	.probe    = spacemit_pmic_probe,
>> +};
>> +
>> +static int __init spacemit_pmic_init(void)
>> +{
>> +	return i2c_add_driver(&spacemit_pmic_i2c_driver);
>> +}
>> +
>> +static void __exit spacemit_pmic_exit(void)
>> +{
>> +	i2c_del_driver(&spacemit_pmic_i2c_driver);
>> +}
>> +
>> +module_init(spacemit_pmic_init);
>> +module_exit(spacemit_pmic_exit);
>> +
> 
> module_i2c_driver

You're right.  Thanks for the review.  I also added
MODULE_ALIAS() for this driver, and defined MOD_NAME.

					-Alex
> 
> Regards,
> Vivian "dramforever" Wang
> 
>> +MODULE_LICENSE("GPL");
>> +MODULE_DESCRIPTION("SpacemiT multi-function PMIC driver");
> 


