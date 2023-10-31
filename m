Return-Path: <devicetree+bounces-13085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E2E7DC814
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 09:21:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B930281054
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 08:21:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14CD010966;
	Tue, 31 Oct 2023 08:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="FkY6IgbN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A962A44
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 08:21:12 +0000 (UTC)
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA6D9F1
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 01:21:06 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-6bd96cfb99cso4701174b3a.2
        for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 01:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1698740466; x=1699345266; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dodGbF59n5T1NWE+xJ3J7t+KFbgIak7MaAgmXTbF9ZQ=;
        b=FkY6IgbN41oHB70JJu48+ptlvZj4f0gQGP0lYGXBnM0tHoSQrc88CivX7dFqieG+Dc
         CZJmEvRcEd9FA5dRlI1MxRkH8ci5f832FyTyFkUK9OxARe31ml8s8oyZvMazAK/dotz0
         1sSoaJ51GRUf4BMk0EOGZfT0g5SJyAAUlvmszHBXCUwwccVcoOd1HwVRSTu4PyTpn516
         +mGJWVfkLgJNCIWQzHnu6fF024kNtQpnHJetbxG3zqyUKAJMZ3MJmy7pmDacakaTrqoW
         vpBC4BoaQipwrOYPwhBAu3SikwA/lj90uvAG+rI6vpc0NEf5K2dyjeB2W7JVvmo84c2m
         T/JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698740466; x=1699345266;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dodGbF59n5T1NWE+xJ3J7t+KFbgIak7MaAgmXTbF9ZQ=;
        b=P/fxZiRp+N1bSWpweNLElXk81Cp6Ce/pQQpkDHMyY+6jTm7QQRCM8ZNbarJlCXCHJv
         eeWV0dFqPZtz6RDI0+JSg4/zRgUBsIvbMzjHqcTSAvrFbzFKoK90HcB8ftraIdC6PT5u
         hxsWyQQN+eLU1M2SR36hpRoloXnaLVEkxjPmw1dHD7+qUJgy/qgCziEVw8ugAZi/tgEf
         y3YXsEJt7rmwl56bANCUOLVcm5FU4oBvVHbe5GATt3vt+gEOkfVInxR5U8z/WDK2PqN7
         pX1XvvG4OWrcX0bKJkFw/OcPtAsu7vk6CkQ2N6nt1do20s7DDqjX8Ok+RMcV/1WtWl/z
         OmMA==
X-Gm-Message-State: AOJu0Yy+SKgXDBYQIJXYq3H2eXJrmxCh7HAR5wOmN9eBV3ECK9qx5zb3
	hd9ijVOM3EDrAF+uXczlduWbdA==
X-Google-Smtp-Source: AGHT+IG4EJTi8VZP/WCOxkSmv/vX20W/yeyFebjc5Y1wyIOtfDVwbVozwbG+20UB1CLUyYHBcv0xJg==
X-Received: by 2002:a05:6a20:8e0b:b0:14c:a53c:498c with SMTP id y11-20020a056a208e0b00b0014ca53c498cmr12059510pzj.10.1698740466113;
        Tue, 31 Oct 2023 01:21:06 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:d7db:fc6b:2721:a9be? (2403-580d-82f4-0-d7db-fc6b-2721-a9be.ip6.aussiebb.net. [2403:580d:82f4:0:d7db:fc6b:2721:a9be])
        by smtp.gmail.com with ESMTPSA id ei56-20020a056a0080f800b00690c52267easm740206pfb.40.2023.10.31.01.21.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Oct 2023 01:21:05 -0700 (PDT)
Message-ID: <8ccd2d84-4422-4bc0-83a7-13a8c103e5e9@tweaklogic.com>
Date: Tue, 31 Oct 2023 18:50:58 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] iio: light: Add support for APDS9306 Light Sensor
Content-Language: en-US
To: Matti Vaittinen <mazziesaccount@gmail.com>,
 Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Paul Gazzillo <paul@pgazz.com>, Matt Ranostay <matt@ranostay.sg>,
 Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231027074545.6055-1-subhajit.ghosh@tweaklogic.com>
 <20231027074545.6055-3-subhajit.ghosh@tweaklogic.com>
 <20231028162025.4259f1cc@jic23-huawei>
 <84d7c283-e8e5-4c98-835c-fe3f6ff94f4b@gmail.com>
 <6a697c62-6a7c-4b31-bc8e-10f40db0363d@gmail.com>
 <d528b45c-123d-4ef7-b110-7efbfef91bc5@gmail.com>
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <d528b45c-123d-4ef7-b110-7efbfef91bc5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 31/10/23 17:41, Matti Vaittinen wrote:
> On 10/30/23 12:21, Matti Vaittinen wrote:
>> Hi dee Ho peeps,
>>
>> On 10/29/23 17:51, Matti Vaittinen wrote:
>>> On 10/28/23 18:20, Jonathan Cameron wrote:
>>>> On Fri, 27 Oct 2023 18:15:45 +1030
>>>> Subhajit Ghosh <subhajit.ghosh@tweaklogic.com> wrote:
>>>>
>>>>> Driver support for Avago (Broadcom) APDS9306 Ambient Light Sensor with als
>>>>> and clear channels with i2c interface. Hardware interrupt configuration is
>>>>> optional. It is a low power device with 20 bit resolution and has
>>>>> configurable adaptive interrupt mode and interrupt persistence mode.
>>>>> The device also features inbuilt hardware gain, multiple integration time
>>>>> selection options and sampling frequency selection options.
> 
> ...
> 
>>>>> +static int apds9306_scale_set(struct apds9306_data *data, int val, int val2)
>>>>> +{
>>>>> +    int i, ret, time_sel, gain_sel;
>>>>> +
>>>>> +    /* Rounding up the last digit by one, otherwise matching table fails! */
>>>>
>>>> Interesting.  Sounds like a question for Matti?
>>>
>>> Sounds odd indeed. I assume this happens when scale setting is requested using one of the exact values advertised by the available scales from the GTS? This does not feel right and the +1 does not ring a bell to me. I need to investigate what's going on. It would help if you could provide the values used as val and val2 for the setting.
>>>
>>> This will take a while from me though - I'll try to get to this next week. Thanks for pointing out the anomaly!
>>>
>>
>> I think I have a rough understanding. I did a Kunit test which goes through all the available scales values from the gts->avail_all_scales_table and all integration times, and feeds them to the logic below. It seems the first culprit is hit by:
>> val = 0, val2 = 125025502.
>>
>> Problem is that the 125025502 is rounded. The exact linearized NANO scale resulting from time multiplier 128, gain multiplier 1 is 125025502.5 - which means we will see rounding.
>>
>>>>
>>>>> +    if (val2 % 10)
>>>>> +        val2 += 1;
>>
>> For a while I was unsure if this check works for all cases because I see linearized scales:
>> 250051005 - multipliers 1x, 64x
>> 83350335 - multipliers 3x, 64x and 6x, 32x
>> 27783445 - multipliers 9x, 64x.
>>
>> For those we will get + 1 added to val2 even though there is no rounding. It appears this is not a problem because the iio_gts_get_gain() (which is used to figure out the required total gain to get the desired scale) does not require the scale to be formed by exact multiples of gain.
> 
> ...
> 
>> I think it would be very nice if the gts-helpers could do the rounding when computing the available scales, but that'd require some thinking. Fixup patch is still very welcome ;)
> 
> I did some further experimenting. Basically, I did a "hack" which always rounds up the available-scales values if division results a remainder. This way the values advertised by the available_scales did find the matching table.
> 
> It is a tiny bit icky because for example the scale 6945861.25 becomes 6945862 in available-scales. Also, I assume that if we "hack" just the available-scales and don't fix the rest of the logic, setting 6945862 will read back as 6945861 (I haven't tested this though). Also, the 20837583.75 will be 20837583 in available-scales but 20837582 when read back, resulting small error. (I haven't tested this either but I assume the current GTS code is flooring the 20837583.75 to 20837583.
> 
> I am wondering if changing the iio_gts_get_gain() to do rounding instead of flooring and changing also the iio_gts_total_gain_to_scale() to something like:
> 
> int iio_gts_total_gain_to_scale(struct iio_gts *gts, int total_gain,
>                  int *scale_int, int *scale_nano)
> {
>      u64 tmp;
>      int rem;
> 
>      tmp = gts->max_scale;
> 
>      rem = do_div(tmp, total_gain);
>      if (total_gain > 1 && rem >= total_gain / 2)
>          tmp += 1ULL;
> 
>      return iio_gts_delinearize(tmp, NANO, scale_int, scale_nano);
> }
> 
> would do the trick. It's just that I'm a bit afraid of touching the iio_gts_get_gain() - by the very least I need to fire up the GTS tests which I implemented but are not in-tree due to the test-device dependency... :/
> 
> Any thoughts?
> 
Hi Matti,
Sorry, got busy with my full time job.
It's nice to see that you have found the issue without my test results:)

Please find below my tests -

root@stm32mp1:/sys/bus/iio/devices/iio:device1# cat scale_available
14.009712000 4.669904000 2.334952000 1.751214000 1.556634666 0.875607000 0.778317333 0.583738000 0.437803500 0.291869000 0.218901750 0.194579333 0.145934500 0.109450875 0.097289666 0.072967250 0.048644833 0.036483625
0.024322416 0.018241812 0.012161208 0.006080604
root@stm32mp1:/sys/bus/iio/devices/iio:device1# echo 0.875607000 > scale ## This works
root@stm32mp1:/sys/bus/iio/devices/iio:device1# echo 0.097289666 > scale ## This fails
root@stm32mp1:/sys/bus/iio/devices/iio:device1# echo 0.097289667 > scale ## However if I add 1, it works! I figured, its a rounding issue so used this trick: "if (val2 % 10) val2 += 1;"
I am sorry, I haven't gone through the full gts internals and only used your driver as a reference to understand it's implementation. I do not have any thoughts on top of my head now but let me go through the code.
   
Regards,
Subhajit Ghosh









