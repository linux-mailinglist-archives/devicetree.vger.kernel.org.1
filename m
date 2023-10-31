Return-Path: <devicetree+bounces-13105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3EC7DC881
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 09:38:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BA032B20A20
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 08:38:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BCA7883D;
	Tue, 31 Oct 2023 08:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="eA9m+CUv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0CA6D22
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 08:38:31 +0000 (UTC)
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8179C1
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 01:38:15 -0700 (PDT)
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-5b7f3f470a9so3606660a12.0
        for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 01:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1698741495; x=1699346295; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=28DXBAYX1XRtP2wWeR8rEQtVtlzWFlh45fzZ3wUwj5Y=;
        b=eA9m+CUvm1HqM496Wb7XJXTX8jdqPpS1zzBpe4cZteYx43SrFTfz/uM6oPLZ0u/a63
         9ATe395o4autr7RBpEsAXKaeSk6gYROtRg/gK1O5Ba7IvcXf1OiYkI9AQfV6zxGUA3MR
         E8GzsqXqumCveOn0ZtFo7ij4BmM9VTLpuHA7cqJN3NopCUDRvZENLz7v5EBgPFRFs/kh
         129PhNGECELk0BR3BmTcbTm6knTL94mig8IXUg9Zw99TmYLGvlq4yLgIa1SJjy1dMXaW
         swL0T/UM5gRN68WCr/LJXuzeSQRV6BDRGdyukNuFj3JsD9v39Cf2qUwQNStIUPnqRKSM
         T9jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698741495; x=1699346295;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=28DXBAYX1XRtP2wWeR8rEQtVtlzWFlh45fzZ3wUwj5Y=;
        b=AT7z4+tRTxneZ4Xmi7AkhZ8L00XfDw6DlMxk94cikn6h8FFPlCOB/3r95UYULXX/LU
         rfJYJEPVYHMIxA7q2lGYja0slwAaVqZK2z5/2yG3QNRKQ4/phz9ATGJIXVCpQ7UZbwYy
         5tqY3YXV8SReySKA6Cmegxj4iDC4wJRSz/GvZIUz4u2aNimstSGAPnY8bDmg4ebCyHVu
         Y81++uPKVbFWA7h8UXT+dToS4FZN9rdYv6hNT/xc/0a9NVpatCWAGlu3tdJRxUu4928v
         43pz1qII8lfCGIr0l5gAZ3hltixcKV+i/+Najygqh+mnWbe2vC4wgbnFhHJKjIG+o7T1
         CY9g==
X-Gm-Message-State: AOJu0YzmJTDkrSVtQsfzJc9V7pXHd6l3GBymLF6T5m8i8VjJ09O6zJzF
	1PRFYuIBaqs83jyah9xVV/HBfw==
X-Google-Smtp-Source: AGHT+IHxkBTG12jtDz6LskO7p7yf/0lY5uSyZBd4OmXP62L9S3rUvHiBXN4T9B04oSxoA88vrWaQJw==
X-Received: by 2002:a05:6a20:7f87:b0:15b:c800:48af with SMTP id d7-20020a056a207f8700b0015bc80048afmr12323973pzj.23.1698741495120;
        Tue, 31 Oct 2023 01:38:15 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:d7db:fc6b:2721:a9be? (2403-580d-82f4-0-d7db-fc6b-2721-a9be.ip6.aussiebb.net. [2403:580d:82f4:0:d7db:fc6b:2721:a9be])
        by smtp.gmail.com with ESMTPSA id u10-20020a17090282ca00b001c1f4edfb9csm792534plz.173.2023.10.31.01.38.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Oct 2023 01:38:14 -0700 (PDT)
Message-ID: <2974aa13-796c-49ef-bef7-fd7f3f9b7f49@tweaklogic.com>
Date: Tue, 31 Oct 2023 19:08:08 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] iio: light: Add support for APDS9306 Light Sensor
Content-Language: en-US
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
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <20231028162025.4259f1cc@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

> 
>> +static struct iio_event_spec apds9306_event_spec_als[] = {
>> +	{
>> +		.type = IIO_EV_TYPE_THRESH,
>> +		.dir = IIO_EV_DIR_RISING,
>> +		.mask_shared_by_all = BIT(IIO_EV_INFO_VALUE),
>> +	}, {
>> +		.type = IIO_EV_TYPE_THRESH,
>> +		.dir = IIO_EV_DIR_FALLING,
>> +		.mask_shared_by_all = BIT(IIO_EV_INFO_VALUE),
>> +	}, {
>> +		.type = IIO_EV_TYPE_THRESH,
>> +		.mask_shared_by_all = BIT(IIO_EV_INFO_PERIOD),
>> +	}, {
>> +		.type = IIO_EV_TYPE_THRESH_ADAPTIVE,
>> +		.mask_shared_by_all = BIT(IIO_EV_INFO_VALUE) |
>> +			BIT(IIO_EV_INFO_ENABLE),
>> +	}, {
>> +		.type = IIO_EV_TYPE_THRESH,
>> +		.mask_separate = BIT(IIO_EV_INFO_ENABLE),
> This matches an entry above for type. Don't have separate entries.
>> +	},
>> +};
>> +
>> +static struct iio_event_spec apds9306_event_spec_clear[] = {
>> +	{
>> +		.type = IIO_EV_TYPE_THRESH,
>> +		.mask_separate = BIT(IIO_EV_INFO_ENABLE),
>> +	},
>> +};
>> +
>> +#define APDS9306_CHANNEL(_type) \
>> +	.type = _type, \
>> +	.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_INT_TIME) | \
>> +		BIT(IIO_CHAN_INFO_SCALE) | BIT(IIO_CHAN_INFO_SAMP_FREQ), \
>> +	.info_mask_shared_by_all_available = BIT(IIO_CHAN_INFO_INT_TIME) | \
>> +		BIT(IIO_CHAN_INFO_SCALE) | BIT(IIO_CHAN_INFO_SAMP_FREQ), \
> 
> Scale on the intensity channel is interesting...  What are the units?
> There tend not to be any well defined units for intensity (as opposed
> to illuminance).  There may be gain on the signal, but it won't be in untils
> that map directly to a scale userspace should apply.  This is one of the
> rare reasons for using the HARDWARE_GAIN element of the ABI.
> 
> A tricky corner however as relationship between raw value and hardwaregain
> is not tightly defined (as it can be really weird!)
Hi Jonathan,

Thank you for taking time for reviewing and clearing all my tiny doubts and
queries especially for the dt and versioning part. Much appreciated.

In the above case, should I not expose scale for the "clear" channel? Rather,
how should I expose the "clear" channel to userspace?

Regards,
Subhajit Ghosh

> 
>> +
>> +static struct iio_chan_spec apds9306_channels_without_events[] = {
>> +	{
>> +		APDS9306_CHANNEL(IIO_LIGHT)
>> +		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
>> +	}, {
>> +		APDS9306_CHANNEL(IIO_INTENSITY)
>> +		.channel2 = IIO_MOD_LIGHT_CLEAR,
>> +		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
>> +		.modified = 1,
>> +	},
>> +};
> 



