Return-Path: <devicetree+bounces-175259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9189CAB046B
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 22:18:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ABBBE7A127C
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 20:16:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3FAD28B51F;
	Thu,  8 May 2025 20:18:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="blz6d0mC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1F0828A3E1
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 20:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746735481; cv=none; b=QvGJO1TqiG4Cy0jBmWx5WayKbN3PzRcyHBIMf8K/VZ2T7CItIqjoqM5fOFmWrY/GtWCoIlgmRnFp26rMNC/IzFg1og8QffIhRZMZztJx+aCLz3qc4s2wJwxdYeGK8L0hIKQwGG0l1fldtOijRYYRtOEzXiGyffOJUS5wAtHl7hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746735481; c=relaxed/simple;
	bh=kuj3J89E1w9k3j1xG7Kt4AOv+U92lZcafSs9ELxQOa4=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=Dp0ab36VxnXphuqh9AVjQ9ZRi3M/bq1ix2NxL6hL11+DcWHSdaIYkxL4JNHI6cnY33Z00XsWZBcl5llSvCUD0oT1toGX3i1Toz8Oldh8Nfl/k2nexhXKSTeBU01ithQej87+fEOdXI6+qji5YnfijhT0VuaEo5+cWRLCfkuS8c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=blz6d0mC; arc=none smtp.client-ip=209.85.166.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3d8e9f26b96so11267575ab.1
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 13:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1746735479; x=1747340279; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ETi+juIkyQnejMlNPha6WwCCX1oR6QtFi1j8HpYbzjk=;
        b=blz6d0mCsx4vDd7XCkIFMY5atLEQN2zAan4ffmw3L2FAbrAMZ79WwQInFsmmI++VY1
         ya8BZB2p9GQvwQRFfPUTGbD72vJySWnwlv8xg9R1A/sPY7QJwHhx73vY9JXA449tZkaA
         95m0vpJGzCPPaU+3jI0wTXvrOyz/F/UrHxB/IJIDfEJ0RLkJMeDgjX3jZtTApMn+lSor
         4l3H2BSrJ67FA33smt7kf1zlLDD+06IS/zN6xNI1bbrOJd80xYG94oFWZTXNqDJJyT5T
         476kaYtNlbXGDvXQf/XTb8fUYPE39Hu8f82kiwqmlOlqTeOi53HMVBjX5qFlZqYJJfV3
         3ZwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746735479; x=1747340279;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ETi+juIkyQnejMlNPha6WwCCX1oR6QtFi1j8HpYbzjk=;
        b=CdW8vuN3gmSeLK7bO1yFXqMHMYjg+nt1bVBg2SmsIPhDYHEVFxjJdmZkbnrnnT9Y5d
         1dxG2wSMcKmOTFmVUYOtztWd4+jQYOUME0wJpGRhwqSq/d3ZJWUQe+jia6n+wCIAYH/r
         QbLTT0sKEjBYFv8QrefvBqGm/bsp7was3qY04efwWhmrmd6tWRwvMLKlAXPD9RF1MH3J
         K2LFUnXW4lDY8tDmC3PtBci95jrGS4jNWTFGtCVtm0xfEkN/N5VIab8eabapcEL6fFwO
         axiQ2ok6Gu7DElB1yIV9ADqdTRvzUUR3FGkgpoKFMHZY7TPzyB9duWxUIRSZkG5GnW6J
         goAQ==
X-Forwarded-Encrypted: i=1; AJvYcCXePhVgd+HR1r1Vnd7CB0RIh8smy2tEwnL4IIqVB07//4j+agXKexvTt/gFfnjP0XggJIpGtUhPz5uV@vger.kernel.org
X-Gm-Message-State: AOJu0YxeGbHAMXsKJSplKKE/lEe6XbmSkcTnboBejamZo3I5pc836+q1
	fI6RL9+4GTMCbv7lNm07Lr2Es0SKrl0P5iDxK5lGBSPWzvem/HggXHOyRGJB7Ck=
X-Gm-Gg: ASbGncuZMaerNzj2H46shE5mJKDaoLJM4L9lTT287E9oujtkCAaRgyYNonMOMjNTe6J
	lf2KF32wWymQ3+jTKTzmljN2oHvwfIW3cpCm4QzQ3rFyeLvquCJ0hIL8pccoTDVxMMLXCHkK7m+
	agkjqhpOYaF1BLPjRgVHsJHdqCAQLu7ZjihQrXXiCQxSj27c1+zeQW1HqhjErYriOk1MktgCV2C
	6uY9W37s7vaYQxWSyTkTlLlGVFxOl14I7ykx9XZBGb3wVCVKkAUnFQc2gC1uaVX2w30yQf81zpb
	7ygSCsWX0DxGyGkl6dBHBu4huYO0xHuwtKb9+JiRWZrqMvI9//4wWptKP54tceA5wzZGo1bLnGf
	g6Qgx
X-Google-Smtp-Source: AGHT+IGJAd0oucTC9Dfp7hY2K4c9PGXfx+VquDL7ztVyi8dVyRm1MKOCjz+TCJ63cr0iCG2Azpd+Lg==
X-Received: by 2002:a05:6e02:1605:b0:3d0:239a:c46a with SMTP id e9e14a558f8ab-3da7e1e6ff5mr13544025ab.9.1746735478876;
        Thu, 08 May 2025 13:17:58 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3da7e0f9a5dsm1342015ab.15.2025.05.08.13.17.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 13:17:58 -0700 (PDT)
Message-ID: <ec118fe2-00c3-47d0-957d-cbd7a8ecfbb1@riscstar.com>
Date: Thu, 8 May 2025 15:17:56 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/6] clk: spacemit: set up reset auxiliary devices
From: Alex Elder <elder@riscstar.com>
To: Haylen Chu <heylenay@4d2.org>, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, dlan@gentoo.org
Cc: inochiama@outlook.com, guodong@riscstar.com, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250506210638.2800228-1-elder@riscstar.com>
 <20250506210638.2800228-4-elder@riscstar.com> <aBw3KNwjMeCIfnNR@ketchup>
 <dcc42499-4c6b-450e-8449-414501d6ab62@riscstar.com>
Content-Language: en-US
In-Reply-To: <dcc42499-4c6b-450e-8449-414501d6ab62@riscstar.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 5/8/25 3:04 PM, Alex Elder wrote:
> On 5/7/25 11:46 PM, Haylen Chu wrote:
>> On Tue, May 06, 2025 at 04:06:34PM -0500, Alex Elder wrote:
>>> Add a new reset_name field to the spacemit_ccu_data structure.  If it is
>>> non-null, the CCU implements a reset controller, and the name will be
>>> used as the name for the auxiliary device that implements it.
>>>
>>> Define a new type to hold an auxiliary device as well as the regmap
>>> pointer that will be needed by CCU reset controllers.  Set up code to
>>> initialize and add an auxiliary device for any CCU that implements reset
>>> functionality.
>>>
>>> Make it optional for a CCU to implement a clock controller.  This
>>> doesn't apply to any of the existing CCUs but will for some new ones
>>> that will be added soon.
>>>
>>> Signed-off-by: Alex Elder <elder@riscstar.com>
>>> ---
>>>   drivers/clk/spacemit/ccu-k1.c | 85 +++++++++++++++++++++++++++++++----
>>>   include/soc/spacemit/ccu_k1.h | 12 +++++
>>>   2 files changed, 89 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ 
>>> ccu-k1.c
>>> index 9545cfe60b92b..6b1845e899e5f 100644
>>> --- a/drivers/clk/spacemit/ccu-k1.c
>>> +++ b/drivers/clk/spacemit/ccu-k1.c
>>
>> ...
>>
>>> +static void spacemit_cadev_release(struct device *dev)
>>> +{
>>> +    struct auxiliary_device *adev = to_auxiliary_dev(dev);
>>> +
>>> +    kfree(to_spacemit_ccu_adev(adev));
>>> +}
>>
>> spacemit_ccu_adev structures are allocated with devm_kzalloc() in
>> spacemit_ccu_reset_register(), which means its lifetime is bound to the
>> driver and it'll be automatically released after driver removal; won't
>> there be a possibility of double-free? I think the release callback
>> could be simply dropped.
> 
> You are correct.  And unfortunately I didn't include the fix
> for this in the patches I just posted, because somehow this
> message was not included with the group in my mail program.
> 
> I'm going to send v8 after I fix this and verify it again.

To be clear, the fix is to use kzalloc(), rather than calling
devm_kzalloc() with the parent device as first argument.

I'll also include <linux/slab.h> to avoid the warning
reported by the kernel test robot.

					-Alex

> 
>                      -Alex
> 
> 
>> ...
>>
>>> +static int spacemit_ccu_reset_register(struct device *dev,
>>> +                       struct regmap *regmap,
>>> +                       const char *reset_name)
>>> +{
>>> +    struct spacemit_ccu_adev *cadev;
>>> +    struct auxiliary_device *adev;
>>> +    static u32 next_id;
>>> +    int ret;
>>> +
>>> +    /* Nothing to do if the CCU does not implement a reset 
>>> controller */
>>> +    if (!reset_name)
>>> +        return 0;
>>> +
>>> +    cadev = devm_kzalloc(dev, sizeof(*cadev), GFP_KERNEL);
>>
>> Here spacemit_ccu_adev is allocated.
>>
>>> +    if (!cadev)
>>> +        return -ENOMEM;
>>> +    cadev->regmap = regmap;
>>> +
>>> +    adev = &cadev->adev;
>>> +    adev->name = reset_name;
>>> +    adev->dev.parent = dev;
>>> +    adev->dev.release = spacemit_cadev_release;
>>> +    adev->dev.of_node = dev->of_node;
>>> +    adev->id = next_id++;
>>> +
>>> +    ret = auxiliary_device_init(adev);
>>> +    if (ret)
>>> +        return ret;
>>> +
>>> +    ret = auxiliary_device_add(adev);
>>> +    if (ret) {
>>> +        auxiliary_device_uninit(adev);
>>> +        return ret;
>>> +    }
>>> +
>>> +    return devm_add_action_or_reset(dev, spacemit_adev_unregister, 
>>> adev);
>>> +}
>>> +
>>
>> Best regards,
>> Haylen Chu
> 


