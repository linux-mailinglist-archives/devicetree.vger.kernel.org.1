Return-Path: <devicetree+bounces-213497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE0DB45899
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 15:18:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B1D701C884C5
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 13:19:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDD3E343D8D;
	Fri,  5 Sep 2025 13:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xxBeQ60l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AFE27AC5A
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 13:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757078323; cv=none; b=Bmp5qMvHOu8C635eUUT5/VGj12ZrDV7mGIsFQAAfIwK0tWDGAe7LWmB5LLBpXSaF/qgXPE9YjrMYiq0Q3d9CXukiIHmD3Ugt7Jrc04HYpiW8HbPU0HAiXk8EHJ0VGYGN35f5sxPIUkfEoyhvF+iq95Xg4nyIW0smXtfliWfJD/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757078323; c=relaxed/simple;
	bh=PIam7/m1K9PLm4L0jcQY+prj0AzYeP/tg8hGBiPIGRg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ieiaBIV9F0SVC8HMEKhsJmUz+fiAIg/7uwEOKuKpB2G6MYzNoIVLaVcUfhJ9xAW82hIGF/f/jIpBf6x4mYpXaJCh3Nd0mchrRMbxGaOhYUmSu1APMiz7YJFPrCLKr9JHPenGauwJdzlN9yqKJOaGEClmmNBLx3LNExape8/hmhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xxBeQ60l; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-321289dee84so273765fac.1
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 06:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757078320; x=1757683120; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O9TLIpS6DZeFRvn5V0GqnS35zXXGwC7qVEOe9mwxEto=;
        b=xxBeQ60lCSeI2HNOz6YxaTwWZlRmvmXvidMvvZ/FBt+ryvwxGxaWw+zfnVyBBdnK4o
         nFBdFTqzVAbCENK3jJvmuZv7DQyhMUh5o08SzUHPGotT4dEVp+aY0LtIW8kaILeh7O/2
         gWhTZoqq0Sfsyb1GolAjjpYIcrEd/tWHwCj6kWRkgDeQsfsX3FDCUF8LEplnEKCoWJ2u
         sfgPEAuTStMIPfjptT7Gz8uIrwVLDatkjhZU/4Tvo28fazqfEPaSLfnoUBX5r1mc1Icp
         FRkPruWLey4fgdQ23iMTWG5840m3qNOqB1BEUVKuXCesCP0f+9lZS5ThIb9rVLIdLQm+
         bOdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757078320; x=1757683120;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O9TLIpS6DZeFRvn5V0GqnS35zXXGwC7qVEOe9mwxEto=;
        b=kIeUC4wJAqEirqeeDk6s2PTvxKNEk9+vltVh7lGG88xa/DNFYMuWYGjJc9fadQzZNT
         I5itWJNQ8l/Avn+d/MiDJ4EOez+QtnO4V+TyU2XlDBUdN6QaNsPYr6lCjIK2FHlXgsVL
         cPQmguMK6VbhcoQvoKfHj6QPerT2Ba18UnX44JXpy6CXLeYLQLBtEp495QLM0XHzhfpr
         rurXAfCL8BD2aJd2Twi6UWdU9+T7IN7iJ6nd5M+SvWSpQ8mwS9W9+OJcD65Psi1N1j3/
         IIAZRVWNV2atadGUip5vi5eyvGrUnomqX6IChKv4r8U25CBX9dMoZFdlDjpA0hQlK7MI
         A99Q==
X-Forwarded-Encrypted: i=1; AJvYcCWLVfbF0phNF5s5IwOluwbUajohhqplQYAPDqZJJTbNgtEKFLuoNn5+eRho1gOriPBALTInzv1ypOgz@vger.kernel.org
X-Gm-Message-State: AOJu0YzSECELrhJiJhK+6LBOcwPQITrjY4SCcPOJ39HXLNzRT7McvD01
	H825aUUZmXoV0RBRZDYYl/zH6+5EJaONMRGx0NfTz+LZ+H2+i4o/3NgLmx5lemgupA0=
X-Gm-Gg: ASbGncufiLHyi3c9dxgofdvH2Ydsu0BmI86Bun9D1H2jRkFioKpVgkaCtFqsYPvm8S7
	Y7HQ+tY4IDQoQHxoWAcDXGfdDK46dMU9169zKkWAV8N2BcuDqqhX2+i98tC2QnefFzmHQxfpRuv
	ZZgEuJgElAYYKjpnkkEO7f+r8owh3hgFn2T6kwqmD/YE2Fb0mfgKTB17gGX5GrNKJb55RdhWKoe
	5ChxRZf+4ZXzwLozDu7aYMh4psHTKy0ilpBJ9B9wEvJ5HeHJ8NwAEQpsam/lh8SqVTgR295mAAv
	hiYRnYEIjXzblvAtGRreV4nIqn8OUtk5RIqoV7Pkc+EEM1uPGsqv8zCRMofhinGn1OotE9m65SS
	QxbwJ+9fiS4921oakaBAzxnySi4JavGbX4amEUihRdJ7G4YNsEc+dBD7/HsxYF53b7NkkrInb
X-Google-Smtp-Source: AGHT+IHyoxG6K9p+b3Shk6yuqM1oSIsNJ35yj9FZbQDKHKWiZhaNJK5mV8FUrwQzu5hPKQ4b6+5Ivg==
X-Received: by 2002:a05:6870:cb99:b0:315:c171:a0ae with SMTP id 586e51a60fabf-31963194753mr10066349fac.20.1757078320292;
        Fri, 05 Sep 2025 06:18:40 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:52e:cda3:16cc:72bb? ([2600:8803:e7e4:1d00:52e:cda3:16cc:72bb])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-31d63f159fdsm2922413fac.14.2025.09.05.06.18.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Sep 2025 06:18:38 -0700 (PDT)
Message-ID: <d9aa680f-0664-4caf-b885-92c3fce6c7a4@baylibre.com>
Date: Fri, 5 Sep 2025 08:18:37 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] iio: adc: Support ROHM BD79112 ADC/GPIO
To: Matti Vaittinen <mazziesaccount@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij
 <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Javier Carrasco <javier.carrasco.cruz@gmail.com>,
 Tobias Sperling <tobias.sperling@softing.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Trevor Gamblin <tgamblin@baylibre.com>, Esteban Blanc <eblanc@baylibre.com>,
 Herve Codina <herve.codina@bootlin.com>,
 Ramona Alexandra Nechita <ramona.nechita@analog.com>,
 Eason Yang <j2anfernee@gmail.com>,
 Pop Ioan Daniel <pop.ioan-daniel@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
References: <cover.1756988028.git.mazziesaccount@gmail.com>
 <facc8b9255a754f767807b7e5c79c0eb20c680e4.1756988028.git.mazziesaccount@gmail.com>
 <aLmVzDB4bk-z5d16@smile.fi.intel.com>
 <796291b5-f61a-4d68-9cbb-ae099dbb93d8@gmail.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <796291b5-f61a-4d68-9cbb-ae099dbb93d8@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 9/5/25 12:41 AM, Matti Vaittinen wrote:
> Hi dee Ho Andy!
> 
> Thanks again. I really appreciate the effort you put in these reviews! :)
> 
> On 04/09/2025 16:36, Andy Shevchenko wrote:
>> On Thu, Sep 04, 2025 at 03:36:46PM +0300, Matti Vaittinen wrote:
>>> The ROHM BD79112 is an ADC/GPIO with 32 channels. The channel inputs can
>>> be used as ADC or GPIO. Using the GPIOs as IRQ sources isn't supported.
>>>
>>> The ADC is 12-bit, supporting input voltages up to 5.7V, and separate I/O
>>> voltage supply. Maximum SPI clock rate is 20 MHz (10 MHz with
>>> daisy-chain configuration) and maximum sampling rate is 1MSPS.
>>>
>>> The IC does also support CRC but it is not implemented in the driver.
>>
>> ...
>>
>>> +/*
>>> + * The data-sheet explains register I/O communication as follows:
>>> + *
>>> + * Read, two 16-bit sequences separated by CSB:
>>> + * MOSI:
>>> + * SCK:    | 1 | 2 | 3   | 4      | 5 .. 8 | 9 .. 16 |
>>> + * data:| 0 | 0 |IOSET| RW (1) | ADDR   | 8'b0    |
>>> + *
>>> + * MISO:
>>> + * SCK:    | 1 .. 8 | 9 .. 16 |
>>> + * data:| 8'b0   | data    |
>>> + *
>>> + * Note, CSB is shown to be released between writing the address (MOSI) and
>>> + * reading the register data (MISO).
>>> + *
>>> + * Write, single 16-bit sequence:
>>> + * MOSI:
>>> + * SCK:    | 1 | 2 | 3   | 4     | 5 .. 8 |
>>> + * data:| 0 | 0 |IOSET| RW(0) | ADDR   |
>>> + *
>>> + * MISO:
>>> + * SCK:    | 1 .. 8 |
>>> + * data:| data   |
>>> + */
>>
>> I don't know how to read this comment. In the monospace font the whole block
>> looks like a mess.
> 
> What do you mean by a mess? Don't you have the '|' -characters aligned? That's very odd because they are aligned for me. Or, is this otherwise unclear?

I find these diagrams very hard to read as well. I would just drop this part
and let people look it up in the datasheet. I don't think it adds anything
essential to understanding how the driver works.


