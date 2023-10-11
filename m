Return-Path: <devicetree+bounces-7604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4014E7C4D7D
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 10:45:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EE8772820CC
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 08:45:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56579199C8;
	Wed, 11 Oct 2023 08:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nc2pKcn7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56481199AF
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 08:45:20 +0000 (UTC)
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4697619A
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 01:45:14 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-32d849cc152so399373f8f.1
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 01:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697013912; x=1697618712; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DaocntqyQzYgAwhSvsMlbrVo4KLCdhpxDy1Xa0mJIr4=;
        b=nc2pKcn73o23f5zwlyDYDl3dxK/VCguioFBtlV3g/TzlPpbPhJ7Hv+RQpwn8tkiwsX
         MSfJM9CY9cx3hedBpv7AAVNDtjg5c2EWcmpmlQiP5qvn1BGpDDb+nhhYMMvNoxk0+ChC
         0o3GLNGZSCgGi4YvSuGTDXQEKW8o/oxagrhLgo2z73ncnGHWA59OeeCwkpL6/r5cHvnL
         ersbjg49QS+YqpY0WYSsmGY3NeGEUXcRMyGzLJqHqrfxrZogrGZssZCFZJLOm6W2R109
         3V7krAyEpm58Q/kio8wncCwqbPZw4meH7OaH7iOx6Qu3v37qjK3fbgnpDj5OchTTBXJE
         PIbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697013912; x=1697618712;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DaocntqyQzYgAwhSvsMlbrVo4KLCdhpxDy1Xa0mJIr4=;
        b=qGLU14f/HlbhxC8lc47ziQh/5M3SKmqSKD2cTJrAFFI1KLwASuu43rk8yMzEByg5mQ
         /40tlvbu+Z/f75zXhzbAWEw2E8Q4Lz6GbRw3clfR1s1sgyNTIJb9R6Gisg7ggUXscYrf
         P0Vf0FdQHQAOqz01yM5M5JBds4JhXluxrVBUCebobnLzmj7GzR668UhhOKeZg7KjuMo1
         IizoWY5yDdmejNc8OYrTHJVSl0GvEXHxb8CvaQ9rcHAwo7MSU6ciGOqGv5rMm7RquHYI
         Ki7RgA9gxJWp6CoUBQhlPlx4kE5RQywOLPJKx9L7ZR2NBFVVDqdTonN+z79i3/VNOMjX
         X+Jg==
X-Gm-Message-State: AOJu0YznWSnyfG066Df+ZQq2ZvtsFcoiAeCRZh3hZVvPoE5iC/VkvL2j
	lB6slz/gFnUnhqUPUkS4x1eCuw==
X-Google-Smtp-Source: AGHT+IFYKGKvVU6TEAALTI3kDI+OtOGIFKfx+JvKnk0zLNM+JhrRVlD7N9TsVfs0DnACOvAEkE9xng==
X-Received: by 2002:a5d:4149:0:b0:31f:eb8d:481f with SMTP id c9-20020a5d4149000000b0031feb8d481fmr18350562wrq.29.1697013912550;
        Wed, 11 Oct 2023 01:45:12 -0700 (PDT)
Received: from [192.168.86.24] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id q15-20020adf9dcf000000b0032d2f09d991sm3820302wre.33.2023.10.11.01.45.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 01:45:12 -0700 (PDT)
Message-ID: <fe4a2688-079c-a36d-0ea4-c244c6e1a0ad@linaro.org>
Date: Wed, 11 Oct 2023 09:45:11 +0100
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
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20231011103306.08f1fbd4@xps-13>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 11/10/2023 09:33, Miquel Raynal wrote:
> Hi Srinivas,
> 
> srinivas.kandagatla@linaro.org wrote on Wed, 11 Oct 2023 09:27:20 +0100:
> 
>> On 11/10/2023 08:15, Miquel Raynal wrote:
>>>>> +
>>>>> +	nvmem_cells_group.bin_attrs = cells_attrs;
>>>>> +
>>>>> +	ret = devm_device_add_groups(&nvmem->dev, nvmem_cells_groups);
>>>>> +	if (ret)
>>>>> +		goto unlock_mutex;
>>>> This is going to create groups after the nvmem device is added, isn't this going to be problem with user space notifications?
>>> Greg said it was not. I hope I understood correctly 😄
>>>
>>> And anyway, cells have never been available to userspace, so there is
>>> nothing userspace might expect yet?
>> I agree, but once we add sysfs uapi then this is going to change.
> 
> Can you elaborate? I'm not sure I follow you here. Is there still a
> problem you fear or you think it's okay?
> 
Now that we add cells to sysfs.
AFAIU, By the time the userspace sees the udev event from this device we 
might not have cells populated.

--srini


> Thanks,
> Miquèl

