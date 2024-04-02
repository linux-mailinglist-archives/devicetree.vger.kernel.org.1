Return-Path: <devicetree+bounces-55647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E331B895D74
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 22:18:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D38CB1C2260C
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 20:18:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4421215D5B3;
	Tue,  2 Apr 2024 20:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RZ7xMLn2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF6C15D5A3
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 20:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712089126; cv=none; b=iVY+IfF5oCKaSpOR9uxMXWP4Jc4FZBlt2So3AkvKpH3yf3/6Lp9MacQEBIGi8AnIBekEuYE+76Il5BZdqisKdxbt1/xorReqBEBH2A6OLobbf30QTgJGg7lUBaIL4eiw43GG8EJCtZ2O3pRkiH3OfJRei7l5y0hmamBIr0q84P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712089126; c=relaxed/simple;
	bh=wKqYKxvqLG5MYhYsf7MAYFLQwDgz6g6NgBhv6+t6rFY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NqDArLOv6Mx8eVVEjWPGnZwq2ITuxiUJ9KqycvDvVwcgCe08sWvohY9s3mseELrF7UYHUOB0191rLGjfA+fmcm/zahIeqEP4pMH4cODwgLUmp/pvimpRILYuI7O6QyE6w2OmZblo85UwVW85mMY6HOCAvuWGpiH2h4HCKs2O7BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RZ7xMLn2; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-5cddfe0cb64so3199906a12.0
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 13:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712089124; x=1712693924; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EsmsWCpudMu0XR8qyIqwabTEv7Syx31G5/DUTuUGcAo=;
        b=RZ7xMLn2dh69beXJHv3++RIWE2LvNyuaILK+0lCKqHsFTQaRjsE2gjlbUhGP9gyPij
         3tceg8XF4qhagxFXKpi+hZn1tRW3bfiRFWfnweg4/UKrBMF8/utv2ubrkycsJmXXL5yV
         MW6LkqX7qHukiO+XWLa4siSKg+GvhENzIiPqNXTCV2VGIV4Xtg4Av1dg+iuTn8cRk2bs
         cNzv5LUkhs5SNhL0hrCZq3i/IYvOtqmC1a5b3VGij6YVgyBbczKAsxoRy0a/r9B7xEZP
         O//4pJlbA0bRFWT1AzusoqYifAaIKIcUe1qf0jBrfAuYBF6C9iRMbOzsKQpW6+g/Puo5
         pbGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712089124; x=1712693924;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EsmsWCpudMu0XR8qyIqwabTEv7Syx31G5/DUTuUGcAo=;
        b=aW++Tnv83IiOdNj4tgShM9i0d+eGHHXbrs2yY9b4BLPii5DNiYAozXJc8iTdqqFQhB
         0Orq7oJzM22GomFqaFK/7U+1mfZQC9L7y66Kc8tJpswAWMC+1KM8I+r+V4vuhEqRooHg
         lQu/ZCqjAYMiUwQQ0LFBejESyYycmkL2Eyvwu2j/QJC54upgBZchFv6E8A8dTUS2HOsx
         ZETfqeypbtbV0MN0tnvCtCZlmuAfrUIZSiYY2HQ9Vqi8Z5cEoBpDwqCm7wM/lmbDbqHe
         pJq47eOvocdoc6G6N/72iqh0eFqP9hSVZDIy2XQPLzdQ8AlXVGJV9fc16DdD5g+dOafS
         oO0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUr+2kjBKWlbXhQQiuBvFtZkKZJDYEM+3fgnJu+XqZp6/hriw7Hx3bsDI00jrJYiYY8I7aQYMDRICgOREgOulF7Q8s1bHjHerJ+ng==
X-Gm-Message-State: AOJu0YzSSpkZhU/7O/A0FurWTwCv6R5MJAVULpFbgsTC6QlHfxUmRruT
	2cwS1YA6ze3aa8gB/L0A7/C69pHWRUDnlnOPz483L0faBwT+8eRb
X-Google-Smtp-Source: AGHT+IHrmL/dMjmoCdtUz/IsY4IDnpanzN57kO2MX51Skp43s16wUBFoqKeZv4fNxpHPrNgxSHNH1w==
X-Received: by 2002:a17:90a:3047:b0:299:3035:aede with SMTP id q7-20020a17090a304700b002993035aedemr680359pjl.44.1712089123958;
        Tue, 02 Apr 2024 13:18:43 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id bt19-20020a17090af01300b002a2313f62dcsm262807pjb.0.2024.04.02.13.18.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Apr 2024 13:18:43 -0700 (PDT)
Message-ID: <8a64376d-f624-44c8-91bb-f6a95dc1c945@gmail.com>
Date: Tue, 2 Apr 2024 13:18:35 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] dt-bindings: arm: bcm:
 raspberrypi,bcm2835-firmware: Drive-by fixes
Content-Language: en-US
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Stefan Wahren <wahrenst@gmx.net>
Cc: "Ivan T. Ivanov" <iivanov@suse.de>, Peter Robinson
 <pbrobinson@gmail.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Naushir Patuck <naush@raspberrypi.com>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Conor Dooley <conor+dt@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Nicolas Saenz Julienne <nsaenz@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Rob Herring <robh@kernel.org>, Scott Branden <sbranden@broadcom.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, u-boot@lists.denx.de
References: <20240326195807.15163-1-laurent.pinchart@ideasonboard.com>
 <b044eec1-ae64-4de7-9ab0-e3fe756131ef@gmx.net>
 <20240327233700.GA21080@pendragon.ideasonboard.com>
 <bcf8093ab0ea6f3738bf4a4623de700a@suse.de>
 <2e15ab46-f29c-44ac-8a2a-8baa140ee1a3@gmx.net>
 <20240402200855.GA32172@pendragon.ideasonboard.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20240402200855.GA32172@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/2/24 13:08, Laurent Pinchart wrote:
> Hello,
> 
> On Tue, Apr 02, 2024 at 09:52:06PM +0200, Stefan Wahren wrote:
>> Am 02.04.24 um 10:58 schrieb Ivan T. Ivanov:
>>> On 2024-03-28 01:37, Laurent Pinchart wrote:
>>>> On Wed, Mar 27, 2024 at 07:49:38AM +0100, Stefan Wahren wrote:
>>>>> Hi,
>>>>>
>>>>> [add Peter and Ivan]
>>>>>
>>>>> Am 26.03.24 um 20:58 schrieb Laurent Pinchart:
>>>>>> Hello,
>>>>>>
>>>>>> This small series includes a few drive-by fixes for DT validation
>>>>>> errors.
>>>>>>
>>>>>> The first patch has been posted previously in v1 ([1], and now addresses
>>>>>> a small review comment. I think it's good to go.
>>>>>>
>>>>>> The next two patches address the same issue as "[PATCH 1/2] dt-bindings:
>>>>>> arm: bcm: raspberrypi,bcm2835-firmware: Add missing properties" ([2]),
>>>>>> but this time with a (hopefully) correct approach. Patch 2/3 starts by
>>>>>> fixing the raspberrypi-bcm2835-firmware driver, removing the need for DT
>>>>>> properties that are specified in bcm2835-rpi.dtsi but not documented in
>>>>>> the corresponding bindings. Patch 3/3 can then drop those properties,
>>>>>> getting rid of the warnings.
>>>>>
>>>>> since this series drops properties from the device tree, does anyone
>>>>> have the chance to test it with a recent U-Boot?
>>>>
>>>> I don't have U-Boot running with my RPi, so I would appreciate if
>>>> someone could help :-)
>>>
>>> Sorry for taking me so long to verify this.
>>>
>>> I think on RPi U-Boot side we are fine. API used when accessing Mbox
>>> device do not follow DM model and do not use DMA, but just access
>>> device directly using this nice macros phys_to_bus/bus_to_phys.
>>>
>>> I build new DTB files with this patch included and U-Boot build
>>> from the latest sources. No obvious issues on RPi3 and RPi4.
>>> Devices boot fine.
> 
> Thank you for testing Ivan.
> 
>> Thanks you, Laurent and Ivan
>>
>> Reviewed-by: Stefan Wahren <wahrenst@gmx.net>
> 
> Stefan, I'm quite unfamiliar with the Raspberry Pi upstreaming process
> (despite having sent patches for ages :-)), do I understand correctly
> that this patch will go through your tree, or do I need to work with
> someone else to get it merged upstream ?

I will be taking those via the Broadcom SoC tree.
-- 
Florian


