Return-Path: <devicetree+bounces-7635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C827C4F82
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 12:02:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50F94282330
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 10:02:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D5331DA37;
	Wed, 11 Oct 2023 10:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DYOLI4pX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E16199D4
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 10:02:34 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E98369D
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 03:02:31 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-307d20548adso6036950f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 03:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697018550; x=1697623350; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tHhJzEAtVv4Lc1vGFKwITVWu0tLpIxpO6P/2yTlamv0=;
        b=DYOLI4pXf22Odd/+v/jgz5rSdsS9BKHowIfG0QJNCiglZ7AQI91vLO6kOf/rKj3Rp3
         3bn/fRy3Jui+I0ZitJ+4ZHN1es0YiczBJ9bWL6oTR5BtYs9VoGqZ6/xgTqOgZxq6VMze
         RRh7HxS6C0Rhj+7FV9j4C4tOKxGGuheova9LFBYdrF+BVj9/xQKAx3XwK7igwZKD5SX1
         eaGhskwDH1o1iIdW4gLrEaDYROBqE/r340k28ut/WQKqQoKtBNIl2XYLiJN/mqdWyxfO
         ihIHWqwWfr4lmbUKkVHN4T8/yMOJ70Tdb12lsOB0xjAtCVrGWJ3yf0BhaDkBaO1M/6Nm
         tGig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697018550; x=1697623350;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tHhJzEAtVv4Lc1vGFKwITVWu0tLpIxpO6P/2yTlamv0=;
        b=c9Vlky8md7xSVxLoKA3bJh7RP0Np7gdBGjIRPxyEyWGuIHTukgr+62TxXAmXRsTjq/
         frReVmjrC5VulsAH9MwqYUQ6K3QKdgmTj40l/OzBoiH5I88Qb3uwOOl7wqyZ8aMcBOX+
         GM7ePSZiFDvxIVbKi54xJhGoZIBoe6hTxyut29PwMSqPME4vGOVk9E7mapeXbqvMnjy7
         k5JBUHKzkQwEKNnO2/F46Y29VX3m2q38OFoQOZ1lhOvHoVy06KgQlzOAHYmy5nAqKfs0
         E/UWxnMgrJvROq3bgXICNnrs32F6IYyZAuVhFCfjmR+p7/BV3zNxDYfXHnqx+wwd2Pec
         iY3Q==
X-Gm-Message-State: AOJu0Yz69pZ4QKddrXCe0H44WoiNjQRRjppZbC17/xoZ/ay38SYrnh5u
	OXhFBH6puw8/Iwig7wD7gyleqw==
X-Google-Smtp-Source: AGHT+IEWvisQJ28qiHRpDtXBr5eoA9XOHrxe16BThaKf10gbO2cpksYM1NYCx55LVDHJakfQeixuIA==
X-Received: by 2002:a5d:56ca:0:b0:319:6e74:1637 with SMTP id m10-20020a5d56ca000000b003196e741637mr17326999wrw.27.1697018550317;
        Wed, 11 Oct 2023 03:02:30 -0700 (PDT)
Received: from [192.168.86.24] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id c17-20020a056000105100b003231ca246b6sm15055179wrx.95.2023.10.11.03.02.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 03:02:29 -0700 (PDT)
Message-ID: <04112100-026c-b010-6e8c-730049d43e47@linaro.org>
Date: Wed, 11 Oct 2023 11:02:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v12 5/7] nvmem: core: Rework layouts to become regular
 devices
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
 <20231005155907.2701706-6-miquel.raynal@bootlin.com>
 <dc96ddb1-502c-e643-7749-d057d1fc6490@linaro.org>
 <20231011093843.49831a75@xps-13>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20231011093843.49831a75@xps-13>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Miquel,

On 11/10/2023 08:38, Miquel Raynal wrote:
> Hi Srinivas,
> 
> srinivas.kandagatla@linaro.org wrote on Mon, 9 Oct 2023 10:44:45 +0100:
> 
>> On 05/10/2023 16:59, Miquel Raynal wrote:
>>> Current layout support was initially written without modules support in
>>> mind. When the requirement for module support rose, the existing base
>>> was improved to adopt modularization support, but kind of a design flaw
>>> was introduced. With the existing implementation, when a storage device
>>> registers into NVMEM, the core tries to hook a layout (if any) and
>>> populates its cells immediately. This means, if the hardware description
>>> expects a layout to be hooked up, but no driver was provided for that,
>>> the storage medium will fail to probe and try later from
>>> scratch. Technically, the layouts are more like a "plus" and, even we
>>
>> This is not true, As layouts are kind of resources for nvmem providers, Ideally the provider driver should defer if there is no matching layout available.
> 
> That is not possible as layouts are now devices, the device will be
> populated but you cannot know when it will be actually probed?
> 
>> Expressing this as a weak dependency is going to be an issue,
>>
>> 1. With creating the sysfs entries and user notifications
> 
> For me, this is not an issue. Greg?
> 
>> 2. nvmem consumers will be in a confused state with provider registered but without cells added yet.
> 
> Wow, I feel like we are moving backwards.
> 
> Consumers don't know about the nvmem devices, they just care about a
> cell. If the cell isn't there, the consumer decides what it wants
> to do with that.
> 
> We initially discussed that we would not EPROBE_DEFER if the layouts
> were not yet available because the NVMEM device may be created from a
> device that is the main storage and while you don't have your rootfs,

Does it not sound like we are not expressing the dependencies between 
nvmem provider and layout drivers correctly?


> you don't have access to your modules. And anyway it's probably a bad
> idea to allow endless probe deferrals on your main storage device.
> 
> If the cells are not available at that time, it's not a huge deal? The
> consumers will have to wait a bit more (or take any other action, this
> is device dependent).

In this case the nvmem consumers will get an -ENOENT error, which is 
very confusing TBH.


thanks,
Srini

> 
>> --srini
>>> consider that the hardware description shall be correct, we could still
>>> probe the storage device (especially if it contains the rootfs).
>>>
>>> One way to overcome this situation is to consider the layouts as
>>> devices, and leverage the existing notifier mechanism. When a new NVMEM
>>> device is registered, we can:
>>> - populate its nvmem-layout child, if any
>>> - try to modprobe the relevant driver, if relevant
>>> - try to hook the NVMEM device with a layout in the notifier
>>> And when a new layout is registered:
>>> - try to hook all the existing NVMEM devices which are not yet hooked to
>>>     a layout with the new layout
>>> This way, there is no strong order to enforce, any NVMEM device creation
>>> or NVMEM layout driver insertion will be observed as a new event which
>>> may lead to the creation of additional cells, without disturbing the
>>> probes with costly (and sometimes endless) deferrals.
>>>
>>> In order to achieve that goal we need:
>>> * To keep track of all nvmem devices
>>> * To create a new bus for the nvmem-layouts with minimal logic to match
>>>     nvmem-layout devices with nvmem-layout drivers.
>>> All this infrastructure code is created in the layouts.c file.
>>>
>>> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
>>> Tested-by: Rafał Miłecki <rafal@milecki.pl>
>>> ---
> 
> Thanks,
> Miquèl

