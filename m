Return-Path: <devicetree+bounces-3093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B68527AD4D1
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 11:50:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 025B0B20A35
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 09:50:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7C3613FFA;
	Mon, 25 Sep 2023 09:50:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6B1134DC
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 09:50:52 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D26EFA3;
	Mon, 25 Sep 2023 02:50:49 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50336768615so10167778e87.0;
        Mon, 25 Sep 2023 02:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695635448; x=1696240248; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x6urbypd/JPj46RxbzcfUv0+mt9BQ2YKzGt/PpzONi8=;
        b=jHbI78Rp6GrxoPtCUs4tEpYmBlMoWwpV8SckR15v6G8uuWCZPAHSoJgU4y+rfEo7Lw
         qDXv5BE9oAF2How93CdrvkWMSdNw5aSGPltIQ3/qCJ/3Mm5PYC1QBWG2XYJauipJFr1h
         6HTwRHII0Vw5T6jPG1R09x9/D+/9tkOQ2ogs5vzZRga100ULlVS7c0ru1mYKJMg32KDu
         QvGM1sx59vvGJN6R1Y0jHQiDZ7X7MlHjTdpvJfPGNjKd0tc+xpVi5DqpxOXer1TUPIiS
         fmWuE4rI579V5W2b4Wz0fD5yUcjiQh05icyvyHgFHQAF31lDZ0kabLufP1GwYWeQyyTh
         Ydtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695635448; x=1696240248;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x6urbypd/JPj46RxbzcfUv0+mt9BQ2YKzGt/PpzONi8=;
        b=q5MG/4hGxhcv49q+zxZJHvZ3yD75kJMgZn5Swcf282yWlI9L0fRDbFVHgskb/AOZP0
         CALrrcHxrkUk4GZOSWGZYW7TD/dh4CBh/Dn1oIXObnJuPtWgcmm0Vw+4ersg9FIYjiTV
         oxJsLkgy652I3gTQ6GY7nDkgK6mmwOxqnB6QLdB8ZAAukVUfpkwL7aY8cEmoRdQ0hI20
         35bx+Qxr2yZrPMc9Rv0SYqvQGviz302HDUa0kyxxFDLkuf49ZRU57QK5ZDSd/SaLZ7Lg
         qljIjS0ZskgfBGHRZCxvYNYI2eh1uamdtRmEPumz45jy6FJTOEjHbq38F/xUWBrArKek
         UPPg==
X-Gm-Message-State: AOJu0YyjlJczCtIHIBBSW7HCx63CV8SoUrLl8/ZD0CrMh2G7fT/7OI2r
	GnLS8VLDEk/8P1c8LQk+EKiHp2TEu8I=
X-Google-Smtp-Source: AGHT+IEP6nxaunpg0g+mD90TO5ii10hJtP90BGL7zBBliiNiblrIJj0VXzliZgFqUZ3ztpeBlMj6ww==
X-Received: by 2002:a05:6512:3d08:b0:504:2970:da62 with SMTP id d8-20020a0565123d0800b005042970da62mr6205435lfv.64.1695635447853;
        Mon, 25 Sep 2023 02:50:47 -0700 (PDT)
Received: from ?IPV6:2001:14ba:16f8:1500::1? (dc78bmyyyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:16f8:1500::1])
        by smtp.gmail.com with ESMTPSA id h8-20020ac25968000000b0050089b26ea1sm1744070lfp.276.2023.09.25.02.50.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Sep 2023 02:50:47 -0700 (PDT)
Message-ID: <9c0938d7-7c35-4d46-ec69-4171e0cf14ae@gmail.com>
Date: Mon, 25 Sep 2023 12:50:46 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 2/6] iio: improve doc for available_scan_mask
Content-Language: en-US, en-GB
To: Jonathan Cameron <jic23@kernel.org>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Angel Iglesias <ang.iglesiasg@gmail.com>, Andreas Klinger
 <ak@it-klinger.de>, Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Benjamin Bara <bbara93@gmail.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <cover.1695380366.git.mazziesaccount@gmail.com>
 <74b66a5b9eee2fb7046f254928391e3da61aa3b2.1695380366.git.mazziesaccount@gmail.com>
 <20230924165908.5a332fac@jic23-huawei>
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <20230924165908.5a332fac@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 9/24/23 18:59, Jonathan Cameron wrote:
> On Fri, 22 Sep 2023 14:16:57 +0300
> Matti Vaittinen <mazziesaccount@gmail.com> wrote:
> 
>> The available_scan_mask is an array of bitmaps representing the channels
>> which can be simultaneously enabled by the driver. In many cases the
>> hardware can offer more channels than what the user is interested in
>> obtaining. In such cases it may be preferred that only subset of
>> channels are enabled, and driver reads only a subset of the channels from
>> the hardware.
>>
>> Some devices can't support all channel combinations. For example the
>> BM1390 pressure sensor must always read the pressure data in order to
>> acknowledge the watermark IRQ, while reading temperature can be omitted.
>> So, the available scan mask would be 'pressure and temperature' and
>> 'pressure only'.
>>
>> When IIO seatchs for the scan mask it asks the driver to use, it will
> 
> Spell check description.  searches

Oh, right. Thanks!

> 
>> pick the first suitable one from the 'available_scan_mask' array. Hence,
>> ordering the masks in the array makes difference. We should 'prefer'
>> reading just the pressure from the hardware (as it is cheaper operation
>> than reading both pressure and temperature) over reading both pressure
>> and temperature. Hence, we should set the 'only pressure' as first scan
>> mask in available_scan_mask array. If we set the 'pressure and
>> temperature' as first in array, then the 'only temperature' will never
>> get used as 'pressure and temperature' can always serve the user's
>> needs.
>>
>> Add (minimal) kerneldoc to the 'available_scan_mask' to hint the user
>> that ordering of masks matters.
>>
>> Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
>> ---
>>   include/linux/iio/iio.h | 4 +++-
>>   1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/include/linux/iio/iio.h b/include/linux/iio/iio.h
>> index 202e55b0a28b..7bfa1b9bc8a2 100644
>> --- a/include/linux/iio/iio.h
>> +++ b/include/linux/iio/iio.h
>> @@ -556,7 +556,9 @@ struct iio_buffer_setup_ops {
>>    *			and owner
>>    * @buffer:		[DRIVER] any buffer present
>>    * @scan_bytes:		[INTERN] num bytes captured to be fed to buffer demux
>> - * @available_scan_masks: [DRIVER] optional array of allowed bitmasks
>> + * @available_scan_masks: [DRIVER] optional array of allowed bitmasks. Sort the
>> + *			   array in order of preference, the most preferred
>> + *			   masks first.
> 
> LGTM

I'll try to spell check the commit message and then I treat this as an 
ack. Please, let me know if it's not Ok.

>>    * @masklength:		[INTERN] the length of the mask established from
>>    *			channels
>>    * @active_scan_mask:	[INTERN] union of all scan masks requested by buffers
> 

-- 
Matti Vaittinen
Linux kernel developer at ROHM Semiconductors
Oulu Finland

~~ When things go utterly wrong vim users can always type :help! ~~


