Return-Path: <devicetree+bounces-10363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E15C67D0E5B
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 13:26:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F1FE1C20F3C
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 11:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B525018E0F;
	Fri, 20 Oct 2023 11:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D5uDBi70"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F414D18E03
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 11:26:10 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E3B3D55
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 04:26:09 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9bdf5829000so110946566b.0
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 04:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697801167; x=1698405967; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7+pdWF5ZBrJN4gJNeSfap4LDzaE3Vb969jTJbV75JGQ=;
        b=D5uDBi705+WV0ZBE3pzJiJw+0+1v7UCT2ogGLLEY3SH7y8cflEFb5cj7UqNYHgT4mt
         EA6tF7VXAE6gxbzwQqc/x55atE+NK3L2ilkJzv3Wl3VJdJ4e2FZaVNNPrNoqZjHtoaxT
         +khJvz3Wp6ogtu+1oZCnbX17S2sfcCvdZ7bfIg670CAcnfXc+W7oRSaWgBskgsFpFNP3
         HSxTgbdH4144/vb0X/KXQ7pWAJNMclNeNy6znrEfT63rhZFr8fHGREfHtxlVGJAmkqUp
         A9FwVGZA+AatI7aKWoPYXr7e5pNXw6KBjvtrcI3bU/Q9Iat4NeTeGoP5MY7l4yuZ2yWz
         X8Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697801167; x=1698405967;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7+pdWF5ZBrJN4gJNeSfap4LDzaE3Vb969jTJbV75JGQ=;
        b=Xx/0qkQcMc2YMztxwGzktO9gV027grYQmaEtNyJBzyOFJWup3ONon2pij7/I9rvH4A
         AOR1RPb/MY8sKE3CFZai3Mf7ywyD+Go7djJN/+GAcC+VE3Xmt/Cn/D2XO4AO6KxQzh7K
         0G6r/t4nHO/A8fJ3Ix30qeJroDYlYa3H5GgSV5PFv2wnbIzaHB3D3nzdERnnkct4XlXf
         PxUzbNllV7Bld5Zi3rsTnACrH4dbzZcMWfw+/p5u050C7K1A5o37b//UkUlp1ZYapSAE
         YnkmwF3rf+Crhod8DRH3tujsVaQracoO2Os89TM3g2r0yIEVAu1enCvaKDJDljYSPiPv
         f9yQ==
X-Gm-Message-State: AOJu0Yx6NMXKzIarQZc5QO59GxMMqDfNp+7lNTWMhGPkxm28Xw7SBhCa
	3wG56Rz6ZKh86HesqsqRwPNQHFutktOSDnuhFyI=
X-Google-Smtp-Source: AGHT+IERwqN6OIhuu/vquIXMBOHY2zDwqnE0Z3zTaROGlVoZukwWcfeQiY58yusG5gVXjpKwaUBv+A==
X-Received: by 2002:a17:907:3fa2:b0:9b2:d554:da0e with SMTP id hr34-20020a1709073fa200b009b2d554da0emr1086494ejc.69.1697801167600;
        Fri, 20 Oct 2023 04:26:07 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id a6-20020a1709064a4600b009ae05f9eab3sm1302186ejv.65.2023.10.20.04.26.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Oct 2023 04:26:07 -0700 (PDT)
Message-ID: <bae6d751-1dbc-449d-b91f-aec0890caa7b@linaro.org>
Date: Fri, 20 Oct 2023 13:26:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] drivers: misc: adi-axi-tdd: Add TDD engine
Content-Language: en-US
To: "Balas, Eliza" <Eliza.Balas@analog.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Derek Kiernan <derek.kiernan@amd.com>,
 Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>
References: <20231019125646.14236-1-eliza.balas@analog.com>
 <20231019125646.14236-3-eliza.balas@analog.com>
 <2023101917-cork-numeric-dab8@gregkh>
 <BN7PR03MB4545E7EAB2D72B9098C30C6797DBA@BN7PR03MB4545.namprd03.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <BN7PR03MB4545E7EAB2D72B9098C30C6797DBA@BN7PR03MB4545.namprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20/10/2023 13:18, Balas, Eliza wrote:
>> -----Original Message-----
>> From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> Sent: Thursday, October 19, 2023 20:57
>> To: Balas, Eliza <Eliza.Balas@analog.com>
>> Cc: linux-kernel@vger.kernel.org; devicetree@vger.kernel.org; Rob Herring <robh+dt@kernel.org>; Krzysztof Kozlowski
>> <krzysztof.kozlowski+dt@linaro.org>; Conor Dooley <conor+dt@kernel.org>; Derek Kiernan <derek.kiernan@amd.com>; Dragan
>> Cvetic <dragan.cvetic@amd.com>; Arnd Bergmann <arnd@arndb.de>
>> Subject: Re: [PATCH v3 2/2] drivers: misc: adi-axi-tdd: Add TDD engine
>>
>> [External]
>>
>> On Thu, Oct 19, 2023 at 03:56:46PM +0300, Eliza Balas wrote:
>>> +config ADI_AXI_TDD
>>> +	tristate "Analog Devices TDD Engine support"
>>> +	depends on HAS_IOMEM
>>> +	select REGMAP_MMIO
>>> +	help
>>> +	  The ADI AXI TDD core is the reworked and generic TDD engine which
>>> +	  was developed for general use in Analog Devices HDL projects. Unlike
>>> +	  the previous TDD engine, this core can only be used standalone mode,
>>> +	  and is not embedded into other devices.
>>
>> What does "previous" mean here?  That's not relevant for a kernel help
>> text, is it?
>>
>> Also, what is the module name?  Why would someone enable this?  What
>> userspace tools use it?
>>
>>
>>> +
>>>  config DUMMY_IRQ
>>>  	tristate "Dummy IRQ handler"
>>>  	help
>>
>> Why put your entry in this specific location in the file?
>>
>>> +static int adi_axi_tdd_parse_ms(struct adi_axi_tdd_state *st,
>>> +				const char *buf,
>>> +				u64 *res)
>>> +{
>>> +	u64 clk_rate = READ_ONCE(st->clk.rate);
>>> +	char *orig_str, *modf_str, *int_part, frac_part[7];
>>> +	long ival, frac;
>>> +	int ret;
>>> +
>>> +	orig_str = kstrdup(buf, GFP_KERNEL);
>>> +	int_part = strsep(&orig_str, ".");
>>
>> Why are we parsing floating point in the kernel?  Please just keep the
>> api simple so that we don't have to try to do any type of parsing other
>> than turning a single text number into a value.
>>
> 
> The adi_axi_tdd_parse_ms function does almost the same thing as the 
> iio_str_to_fixpoint() function which already exists in kernel.
> It parses a fixed-point number from a string. 
> The __iio_str_to_fixpoint is used in a similar way, as I intend to use adi_axi_tdd_parse_ms.
> It writes to a channel the corresponding scale (micro,nano) for a value.
> 
> Since the device is not an iio device, using an iio function would be confusing.
> That is the reason for creating the adi_axi_tdd_parse_ms function, which is easier
> to understand since I don't have to make all the multiplications that are made 
> in the __iio_str_to_fixpoint function.

Why did you skip other comments?

Best regards,
Krzysztof


