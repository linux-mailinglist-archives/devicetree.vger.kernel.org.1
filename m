Return-Path: <devicetree+bounces-12378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6037D925C
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 10:43:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 62E0B282337
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 08:43:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2260D1119D;
	Fri, 27 Oct 2023 08:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="JY8hi2tX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596B3FC02
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 08:43:08 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16AB9270B
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 01:43:07 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1ca816f868fso14546515ad.1
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 01:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1698396186; x=1699000986; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I8Z8Oh3gdRlB/N1ZloJxSC+0ZqQd6KqcjVdWkl49i+w=;
        b=JY8hi2tX2SGl4wfEcPkB1R/yzEsWKfsymHjfB8/jGEeKP8bThK5jAivQgXHNTN43+V
         /jNVVr92YnXqExx96OTF3ZwYr8svZZBilBl8JRtMUUxnj+ci/UlP4sxrcELAkcX9Tb2Z
         XeKR89JC660eF6No3e2Gv9EtwKkIfmmuTes4Ue2Q1KzBtYQ7PIFiJ3MavffVJ4gxiSZn
         5nsjzmmKdKG5LYmDS14ttmErXk/IU1HW9zGjLMrnKrJ6Q1MXW9l8pqntQYB+I9i8oW4R
         DggKMe3z82Cx/h+c2281GfooJNEsWVKPBjW50X2CfneuD45BWCqj173zVIO+gU9QyLgC
         kb7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698396186; x=1699000986;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I8Z8Oh3gdRlB/N1ZloJxSC+0ZqQd6KqcjVdWkl49i+w=;
        b=PIl6mivdHDBAWxOVYydEt2Prj9knQkcnWDcYzrL930UatyUiMsPeYCWWrqHBIuZGnn
         YhYOgeqI2nx3WMs1Em7M3B3RX7eXmY3LH3ueQRY9WhfaGXWXWDb/hnoU303v5pbPXSCw
         NvZkFjmb+yeKHwpKgX0AMDOmG6CSQDm6YcWGIBwO1Ahdj86jlFuEiO9d0tWE7xC0EpJL
         b1tC+v9u+1qLCJen1ziu7/Uj3K+2LfRbXrp7QgC5qmLpOcHKNf2+SdhI0XzIvvcKgMm3
         PTn9mySpt0bJwK37T83PHrB99LbZMWuXDb/StO5o1EmqLYFarrnREcks51bGBy+1iRna
         /c+A==
X-Gm-Message-State: AOJu0YzvFtn8fvdxAUbtrTEM68wRrTp6BnLE8OcK1yEF7xc9VTEcCm9d
	u0YpbAEIApNOTG4dj0YMB9cGtg==
X-Google-Smtp-Source: AGHT+IGL2gi63ZRFYsvlE9G8W39H3vCbkvv3yCAzfWzA4Y+L4r3Oa/kbKAd4dmnqQF71gOvraR80FQ==
X-Received: by 2002:a17:902:c40a:b0:1bc:5924:2da2 with SMTP id k10-20020a170902c40a00b001bc59242da2mr2391603plk.56.1698396186551;
        Fri, 27 Oct 2023 01:43:06 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:bfe6:93ca:47b7:e8ec? (2403-580d-82f4-0-bfe6-93ca-47b7-e8ec.ip6.aussiebb.net. [2403:580d:82f4:0:bfe6:93ca:47b7:e8ec])
        by smtp.gmail.com with ESMTPSA id o10-20020a170902d4ca00b001c736746d33sm1004158plg.217.2023.10.27.01.43.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Oct 2023 01:43:06 -0700 (PDT)
Message-ID: <9e55b561-a0ad-4503-9f20-b7c98507afa0@tweaklogic.com>
Date: Fri, 27 Oct 2023 19:12:59 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] iio: light: Add support for APDS9306 Light Sensor
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Paul Gazzillo <paul@pgazz.com>
Cc: Matt Ranostay <matt@ranostay.sg>,
 Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231027074545.6055-1-subhajit.ghosh@tweaklogic.com>
 <20231027074545.6055-3-subhajit.ghosh@tweaklogic.com>
 <d7ba077d-6bcd-4e04-b678-51e4bbc935ca@linaro.org>
Content-Language: en-US
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <d7ba077d-6bcd-4e04-b678-51e4bbc935ca@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/10/23 18:43, Krzysztof Kozlowski wrote:
> On 27/10/2023 09:45, Subhajit Ghosh wrote:
>> Driver support for Avago (Broadcom) APDS9306 Ambient Light Sensor with als
>> and clear channels with i2c interface. Hardware interrupt configuration is
>> optional. It is a low power device with 20 bit resolution and has
>> configurable adaptive interrupt mode and interrupt persistence mode.
>> The device also features inbuilt hardware gain, multiple integration time
>> selection options and sampling frequency selection options.
>>
>> v1 -> v2
>> - Renamed probe_new to probe
>> - Removed module id table
> 
> This is fourth version of this patchset, not second, so v4.
> 
> Best regards,
> Krzysztof
> 
Hi Krzysztof,

1. This patch set adds support for APDS9306 Light sensor,
2. In v0 of this patch series I was told to combine the avago,apds9300.yaml
    and avago,apds9960.yaml as they look similar, then add my apds9306
    support into it.
3. I assumed that the squashing operation of apds9300 and apds9960 schemas
    are a separate operation and submitted a separate patch to do that, please
    follow the link
    Link: https://lore.kernel.org/all/20231019-hurry-eagle-0ffa95b1a026@spud/
4. Conor reviewed the patch and said that it would be better that I handle all
    these operations in apds9306 driver (this) patch series rather than submitting
    a new patch.
    "Ahh apologies then. The best course of action would likely be to include
     the patch merging the two bindings in your series adding the third user."
5. As per this patch series -- RFC->v0->v1-v2

I have formatted the commit messages wrongly which might be the source of all the
confusion. I'll fix it. Please let me know the best course of action, I am not well
versed with this process. Thank you for reviewing.

Regards,
Subhajit Ghosh

