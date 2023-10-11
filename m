Return-Path: <devicetree+bounces-7634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8507C4F7F
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 12:02:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD8D02821DA
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 10:02:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E01B1DA29;
	Wed, 11 Oct 2023 10:02:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y3/Lqx+/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7DDE199D4
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 10:02:24 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F1249D
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 03:02:19 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2bfed7c4e6dso76826981fa.1
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 03:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697018538; x=1697623338; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PoFXPe82SDgUFLP763uNcxqB1hRoTnk4+q25EICvzUA=;
        b=y3/Lqx+/5QuoBwBPi9M1qQITtXueZl9zSoJGiHMvqCBYuRq9pUsTx8KlndvSugwGqN
         6jeQAV2c7fldXajN+DDot3eXPdHRD9Xe/Z4PlxrHJ8l5OrbcBlfIHRTbP1TOBoc56uF7
         jXQptHDNDyjxnVf7kFeMSckYqemcU645HJ6LjGby8Q8y4anhe1qkbb6YT9/zCGFJ1k5g
         4FoNS2ZRWzEEGxtOqg0leU85I//smoh2zH8nziozMiZNQqpFfoPkgkryFTi7iRWTCfOe
         Czd1reMBFIvQy6VS7H2cfLQQnRtl+8G1jUt2Gx1h7CZ6LjOKn86GNUJN6lIb6xmfz5eu
         q8tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697018538; x=1697623338;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PoFXPe82SDgUFLP763uNcxqB1hRoTnk4+q25EICvzUA=;
        b=Z7WOY7fLYU4Ab/T2H1CbSo6F/3jxNQLXswsP0U0YI6APZflvpjNzPpTxxkvcFKXxQI
         zpek8813Hh0zy7gtIpCrJ7AQhzoNxqBuTKgBsyZrHdzbjRbTNQpo6Y9vz46JMK5x/TnF
         WeuTiVJvLrsPZ+UC/1Rk74DWeTSwh4ZZ+w7Djn14hZdI6WDwhVcrxxL32gBuC+wei8Ra
         ndO08e3H1aPD8tWgCnkhDX4Z3vMwzLSXqGe1DbZsCyDidem5bhP15eabO4kkJfEH+AW2
         ZhHNfmlE7dk10m08+oftj07r/T4ZFaDDh18z+ECx2U8TPhdsNmAFVkbJ3AYvV0kLkTHr
         TexA==
X-Gm-Message-State: AOJu0YwmMZtEV1jwmRcifMQt+VohEdSji5922fgO58uaFr8d5IavLoJ3
	QUJ9+4a3ImUdECPpnABiHBdG6g==
X-Google-Smtp-Source: AGHT+IE7MJN8Pq2bpjx5BGftLvsUj1y4iToQjOcVt2MYumdBlmUvGifDI5NcJ5FPcgL8rQzcTQQKfg==
X-Received: by 2002:a05:6512:3b25:b0:503:3805:e902 with SMTP id f37-20020a0565123b2500b005033805e902mr23383406lfv.30.1697018537849;
        Wed, 11 Oct 2023 03:02:17 -0700 (PDT)
Received: from [192.168.86.24] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id z8-20020a05600c220800b003fee8793911sm16288290wml.44.2023.10.11.03.02.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 03:02:17 -0700 (PDT)
Message-ID: <8b8403ee-b610-312b-aa98-3e4fa65a3800@linaro.org>
Date: Wed, 11 Oct 2023 11:02:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v12 7/7] nvmem: core: Expose cells through sysfs
Content-Language: en-US
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Walle <michael@walle.cc>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Robert Marko <robert.marko@sartura.hr>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Luka Perkov <luka.perkov@sartura.hr>, Randy Dunlap <rdunlap@infradead.org>,
 Chen-Yu Tsai <wenst@chromium.org>, Daniel Golle <daniel@makrotopia.org>
References: <20231005155907.2701706-1-miquel.raynal@bootlin.com>
 <20231005155907.2701706-8-miquel.raynal@bootlin.com>
 <318fe799-f53e-64ed-b631-d099bb5202f4@linaro.org>
 <20231011091524.0c9ecc55@xps-13>
 <548849a8-9f11-5274-778e-f291267603bb@linaro.org>
 <20231011103306.08f1fbd4@xps-13>
 <fe4a2688-079c-a36d-0ea4-c244c6e1a0ad@linaro.org>
 <20231011105829.778bed58@xps-13>
 <490c6740-06cb-9ee6-ca8c-3ab404109344@linaro.org>
 <20231011114419.21821f4d@xps-13>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20231011114419.21821f4d@xps-13>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Miquel,

On 11/10/2023 10:44, Miquel Raynal wrote:
> Hi Srinivas,
> 
> srinivas.kandagatla@linaro.org wrote on Wed, 11 Oct 2023 10:26:43 +0100:
> 
>> On 11/10/2023 09:58, Miquel Raynal wrote:
>>> Hi Srinivas,
>>>
>>> srinivas.kandagatla@linaro.org wrote on Wed, 11 Oct 2023 09:45:11 +0100:
>>>    
>>>> On 11/10/2023 09:33, Miquel Raynal wrote:
>>>>> Hi Srinivas,
>>>>>
>>>>> srinivas.kandagatla@linaro.org wrote on Wed, 11 Oct 2023 09:27:20 +0100:
>>>>>     >>>> On 11/10/2023 08:15, Miquel Raynal wrote:
>>>>>>>>> +
>>>>>>>>> +	nvmem_cells_group.bin_attrs = cells_attrs;
>>>>>>>>> +
>>>>>>>>> +	ret = devm_device_add_groups(&nvmem->dev, nvmem_cells_groups);
>>>>>>>>> +	if (ret)
>>>>>>>>> +		goto unlock_mutex;
>>>>>>>> This is going to create groups after the nvmem device is added, isn't this going to be problem with user space notifications?
>>>>>>> Greg said it was not. I hope I understood correctly 😄
>>>>>>>
>>>>>>> And anyway, cells have never been available to userspace, so there is
>>>>>>> nothing userspace might expect yet?
>>>>>> I agree, but once we add sysfs uapi then this is going to change.
>>>>>
>>>>> Can you elaborate? I'm not sure I follow you here. Is there still a
>>>>> problem you fear or you think it's okay?
>>>>>     >> Now that we add cells to sysfs.
>>>> AFAIU, By the time the userspace sees the udev event from this device we might not have cells populated.
>>>
>>> Yes, but why would this be a problem?
>>>    
>> It will be problem if the userspace is using things like libudev to act on these events. There seems to be some caching of attributes in udev during event more info http://www.kroah.com/log/blog/2013/06/26/how-to-create-a-sysfs-file-correctly/
> 
> I am already using these attributes, right? The problem here is that we
> always attach cells sysfs attributes to the nvmem device, but in some
> cases (when using layout devices/drivers) the probe of these devices
> will happen after the main nvmem device has been announced to userspace
> and thus these attributes might not be populated yet (but Greg said it
> was "supported" and I assumed it was fine).
>  > So what is your idea here to overcome this?

Ideally we should have all the cells definitions ready by the time nvmem 
is registered.

--srini

> 
> Thanks,
> Miquèl

