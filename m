Return-Path: <devicetree+bounces-14107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6A17E20BE
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 13:04:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF9821C209F6
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:04:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C5E51EB34;
	Mon,  6 Nov 2023 12:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="eKvnBqmR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F36A1C693
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 12:04:49 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26075D6B
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 04:04:48 -0800 (PST)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1cc2575dfc7so29876325ad.1
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 04:04:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1699272287; x=1699877087; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=46VzGlmeELEIxClyfdA2R2VNLyfPNxMQefKC5OLuDoE=;
        b=eKvnBqmR55R+XumMhCKheFarKvIURiFVUkB4N1p91yekdXmIPriBjirpyIYqM9yXoc
         zF6wTWgwMsUTNp6B9ei3iZFNqAPWdkxdJTKe4v0tMU0ykilOrwkzgEuDB0jpc7yyj5y3
         7Z4BrieAry2KLr76sPRG1mrbX8eiVakJPQMs16KCRQqYqTbi3vfr4UEjfgxFfe1YeslG
         zzcUJyl5K2b9zMauwZp0OK7LByPSYA7SM84RKO4JJvqzY4zjfeZMkwj9+JT9R8qdf0ab
         MzQB0Bh1p8draq6KbMLBgLsK5X61YkdrYjHvdggAWCGQ9upbXoACazI/wFbxn7ScU/rO
         zPig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699272287; x=1699877087;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=46VzGlmeELEIxClyfdA2R2VNLyfPNxMQefKC5OLuDoE=;
        b=qQG6yF4oJcVgAhwA/fkUTXvbe96wBLzpcVtiHZiYx10Sgxu82pF4hvcJa5f7Mpink9
         ESp4Wfv/guKjWmnxLXP6vFmjIopcu9y2OO/skoWgwsHFCiLz9yWd2ZRW7bwXMKKDCGno
         6+/pQSWZnlrGqLUE4BJjTqpxsObfQKcBWJVcTJicADO52X0bmHGbJ7NGNkvXCEhZnNms
         /ZKQHvEfSGQ+FSOeDqVY0CjpP5/5UparbTu4Es8ig58rNoioCNEAUDKI3CnzIU5RWW+X
         BChM+GFkMv+kThv6+ME1jDeH9n4KHIXpL8VYrKhmK+zTjcmPH+/qqGgKcEcNWk+qYpsP
         48Xw==
X-Gm-Message-State: AOJu0YxZRSHn4cuG+7qRIEV1PIzoyjleYx3EkLiB+xxvZeoVnFhJKH5W
	cGoBIGaTgrMIOtOGjJaN1djqhy38wrYlzIQXYho=
X-Google-Smtp-Source: AGHT+IG7DRfNwPDxgoh3F9fkUL2pkjnMpshM1CiC9s8usB7+1pi0S4JLvaytBvlGwNlOI6TWZp2ZGQ==
X-Received: by 2002:a17:902:d502:b0:1cc:6fdb:b640 with SMTP id b2-20020a170902d50200b001cc6fdbb640mr18684146plg.56.1699272287315;
        Mon, 06 Nov 2023 04:04:47 -0800 (PST)
Received: from ?IPV6:2403:580d:82f4:0:afde:b92c:1d26:d50c? (2403-580d-82f4-0-afde-b92c-1d26-d50c.ip6.aussiebb.net. [2403:580d:82f4:0:afde:b92c:1d26:d50c])
        by smtp.gmail.com with ESMTPSA id d5-20020a170902c18500b001cc2f9fd74csm5744964pld.189.2023.11.06.04.04.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Nov 2023 04:04:46 -0800 (PST)
Message-ID: <307f93f9-2a41-4704-ac4f-8d1e427e5060@tweaklogic.com>
Date: Mon, 6 Nov 2023 22:34:40 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] iio: light: Add support for APDS9306 Light Sensor
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Paul Gazzillo <paul@pgazz.com>, Matt Ranostay <matt@ranostay.sg>,
 Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231027074545.6055-1-subhajit.ghosh@tweaklogic.com>
 <20231027074545.6055-3-subhajit.ghosh@tweaklogic.com>
 <20231028162025.4259f1cc@jic23-huawei>
 <2974aa13-796c-49ef-bef7-fd7f3f9b7f49@tweaklogic.com>
 <20231106111355.2f8dfaa1@jic23-huawei>
Content-Language: en-US
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <20231106111355.2f8dfaa1@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/11/23 21:43, Jonathan Cameron wrote:
> On Tue, 31 Oct 2023 19:08:08 +1030
> Subhajit Ghosh <subhajit.ghosh@tweaklogic.com> wrote:
> 
>>>    
>>>> +static struct iio_event_spec apds9306_event_spec_als[] = {
>>>> +	{
>>>> +		.type = IIO_EV_TYPE_THRESH,
>>>> +		.dir = IIO_EV_DIR_RISING,
>>>> +		.mask_shared_by_all = BIT(IIO_EV_INFO_VALUE),
>>>> +	}, {
>>>> +		.type = IIO_EV_TYPE_THRESH,
>>>> +		.dir = IIO_EV_DIR_FALLING,
>>>> +		.mask_shared_by_all = BIT(IIO_EV_INFO_VALUE),
>>>> +	}, {
>>>> +		.type = IIO_EV_TYPE_THRESH,
>>>> +		.mask_shared_by_all = BIT(IIO_EV_INFO_PERIOD),
>>>> +	}, {
>>>> +		.type = IIO_EV_TYPE_THRESH_ADAPTIVE,
>>>> +		.mask_shared_by_all = BIT(IIO_EV_INFO_VALUE) |
>>>> +			BIT(IIO_EV_INFO_ENABLE),
>>>> +	}, {
>>>> +		.type = IIO_EV_TYPE_THRESH,
>>>> +		.mask_separate = BIT(IIO_EV_INFO_ENABLE),
>>> This matches an entry above for type. Don't have separate entries.
>>>> +	},
>>>> +};
>>>> +
>>>> +static struct iio_event_spec apds9306_event_spec_clear[] = {
>>>> +	{
>>>> +		.type = IIO_EV_TYPE_THRESH,
>>>> +		.mask_separate = BIT(IIO_EV_INFO_ENABLE),
>>>> +	},
>>>> +};
>>>> +
>>>> +#define APDS9306_CHANNEL(_type) \
>>>> +	.type = _type, \
>>>> +	.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_INT_TIME) | \
>>>> +		BIT(IIO_CHAN_INFO_SCALE) | BIT(IIO_CHAN_INFO_SAMP_FREQ), \
>>>> +	.info_mask_shared_by_all_available = BIT(IIO_CHAN_INFO_INT_TIME) | \
>>>> +		BIT(IIO_CHAN_INFO_SCALE) | BIT(IIO_CHAN_INFO_SAMP_FREQ), \
>>>
>>> Scale on the intensity channel is interesting...  What are the units?
>>> There tend not to be any well defined units for intensity (as opposed
>>> to illuminance).  There may be gain on the signal, but it won't be in untils
>>> that map directly to a scale userspace should apply.  This is one of the
>>> rare reasons for using the HARDWARE_GAIN element of the ABI.
>>>
>>> A tricky corner however as relationship between raw value and hardwaregain
>>> is not tightly defined (as it can be really weird!)
>> Hi Jonathan,
>>
>> Thank you for taking time for reviewing and clearing all my tiny doubts and
>> queries especially for the dt and versioning part. Much appreciated.
>>
>> In the above case, should I not expose scale for the "clear" channel? Rather,
>> how should I expose the "clear" channel to userspace?
> What is the scale?  What units to you get after applying it?
The scale is in Lux. The output after applying is Lux.
> 
> I suspect it's not well defined.
> 
> Not sure what we've done in similar cases in the past.  Perhaps have
> a look at those.  There may be precedence for still using scale.
Sure, I'll look it up.
> 
> I'm about to jump on a long haul flight (delayed - sigh) so don't have
> time to look myself!
> 
No worries. I will update notes and application in next version.
Have a good trip to where ever you are going. Are you coming to Australia
by any chance?
Thanks for the reply.

Regards,
Subhajit Ghosh




