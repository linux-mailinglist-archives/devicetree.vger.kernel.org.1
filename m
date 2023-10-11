Return-Path: <devicetree+bounces-7622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1D07C4E90
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:26:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F7BE1C20991
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 09:26:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 905321A711;
	Wed, 11 Oct 2023 09:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vecbr0Wi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E0F65E
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 09:26:48 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D299D91
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 02:26:46 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-406618d080eso63194395e9.2
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 02:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697016405; x=1697621205; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3BUBCHAP73g+38QvM7dHiUG8I9QRyAUU3cBnzO6ITqY=;
        b=vecbr0WiqQjT5m1He5rozYK78PzNPPeH9wweaN/0aueVRFLQt8jQ7tYgiePtw18XT2
         UUFDDMTXdaOooReXkklZMF7NGpIn0mPJARYvX/bdwKXi+yD+1qdHpJ30kkE7DJpTfdKi
         qwMDXjy9yf03fbpiR7jNP89fqsqzt0nstEWhYoJPE48Y66RfqJ46Y0m4aT+rBD87Wp0n
         ECtO182xxMRDD/O8WSjzuL/aUdrQGCggToRQSccSNiGrgOwrDMX/C+Wy8RomyWptRNnM
         rg0ZRhhxIDkcXqcVxPQqKPLWWRsWDWYrtTcYoiVe2K1bY8a1a2ExU+TiGWKPuX9WVnR3
         BGdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697016405; x=1697621205;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3BUBCHAP73g+38QvM7dHiUG8I9QRyAUU3cBnzO6ITqY=;
        b=L3YEb0PknvmjePUI3QwXZbd2TVwqMsTP90xQb7r/MlTpBhkk0JTwdAfAG48/KAt96G
         a+uUD25h9aBBtXQGvI4vBiOxQmwQiOGwacXSlVrXhrxsWCw2ODxHd+NpdVKnDTqYaPl8
         cG/X/2/BDLU51AP8nTCNNT8Pb7tnosimH7PtRDY6WvvIwYRe0BAVh2BwCNRyv6aTjTSu
         0D6/zL0AnGd0nLGUFKPuxKbiBYY+J6N+s0Apevknt6cvQNiQcN3V3NOOFoBaEplv5Jru
         hn8GVTmfCnh1z4cLIVsArLsvrUbmuxZvUPouPwxJer/WQ8X/S8XRdlesf3cqfaf9p6/j
         gArQ==
X-Gm-Message-State: AOJu0YyRYbgHdCXKQSAf+pOGSBkDnz1OOUan/WrwvmmHEFjJpMEmQx9K
	rQZTqcCWfbeGHN3C4Ackf1oQqw==
X-Google-Smtp-Source: AGHT+IEmstm4YZMcFtZGfJcKYWGQ0iTcj4Ct9t9kUcPLrpuam0kNIWDwV4+jgBsuR8kgZEkR/FNqfQ==
X-Received: by 2002:a1c:4c01:0:b0:407:5185:1923 with SMTP id z1-20020a1c4c01000000b0040751851923mr5235189wmf.4.1697016405127;
        Wed, 11 Oct 2023 02:26:45 -0700 (PDT)
Received: from [192.168.86.24] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id bd5-20020a05600c1f0500b004030e8ff964sm18753144wmb.34.2023.10.11.02.26.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 02:26:43 -0700 (PDT)
Message-ID: <490c6740-06cb-9ee6-ca8c-3ab404109344@linaro.org>
Date: Wed, 11 Oct 2023 10:26:43 +0100
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
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20231011105829.778bed58@xps-13>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 11/10/2023 09:58, Miquel Raynal wrote:
> Hi Srinivas,
> 
> srinivas.kandagatla@linaro.org wrote on Wed, 11 Oct 2023 09:45:11 +0100:
> 
>> On 11/10/2023 09:33, Miquel Raynal wrote:
>>> Hi Srinivas,
>>>
>>> srinivas.kandagatla@linaro.org wrote on Wed, 11 Oct 2023 09:27:20 +0100:
>>>    
>>>> On 11/10/2023 08:15, Miquel Raynal wrote:
>>>>>>> +
>>>>>>> +	nvmem_cells_group.bin_attrs = cells_attrs;
>>>>>>> +
>>>>>>> +	ret = devm_device_add_groups(&nvmem->dev, nvmem_cells_groups);
>>>>>>> +	if (ret)
>>>>>>> +		goto unlock_mutex;
>>>>>> This is going to create groups after the nvmem device is added, isn't this going to be problem with user space notifications?
>>>>> Greg said it was not. I hope I understood correctly 😄
>>>>>
>>>>> And anyway, cells have never been available to userspace, so there is
>>>>> nothing userspace might expect yet?
>>>> I agree, but once we add sysfs uapi then this is going to change.
>>>
>>> Can you elaborate? I'm not sure I follow you here. Is there still a
>>> problem you fear or you think it's okay?
>>>    
>> Now that we add cells to sysfs.
>> AFAIU, By the time the userspace sees the udev event from this device we might not have cells populated.
> 
> Yes, but why would this be a problem?
> 
It will be problem if the userspace is using things like libudev to act 
on these events. There seems to be some caching of attributes in udev 
during event more info 
http://www.kroah.com/log/blog/2013/06/26/how-to-create-a-sysfs-file-correctly/


--srini

> Thanks,
> Miquèl

