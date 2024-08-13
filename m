Return-Path: <devicetree+bounces-93303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A83950699
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 15:35:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6762E288DBE
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 13:35:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76B7D19B5A3;
	Tue, 13 Aug 2024 13:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CCWP0/d6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7868919B589
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 13:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723556135; cv=none; b=VkHokrqbsdi+Hiwqai27TqzAv7J059XPtiJQ9KdNiseKdkk4Td89hiCXlQmKs+nps6S88sRToAdDPdcENgjr+p9RpdsNehk1H62b9XMwQGnJdP4g4zM7XwY1ms6pOej88KNg5OUT/ulRcqM3EdyfG8ghcLZ/EqburSt3VUvIoxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723556135; c=relaxed/simple;
	bh=tmEA6BGZEhw+jkzZkeJGlpSoSQeGrH11ZHPT3qbf5xg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SbfZM+vN6AvcYu/sCDxwZst+sapWOjyxVf9RHL42FSE9huwJe/+aN6SjeBL9ZgJCrKzC1lt3UPOt9D/nrSPp9n5RHYbxiCkjsOOsI4f0DsSphs5gWvRB7GejZ213Pf05mkqdH3dcV/eZcKUKqX6JR7lNstvkZLxj/NoEMH+2CYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CCWP0/d6; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2ef2c0f35f2so4740211fa.1
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 06:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723556131; x=1724160931; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SgQ8h6qCQC7QeIRihEXwHa34ERlAVFqv3T2g+xnQtck=;
        b=CCWP0/d6VHUtGriF/qENhmeUb91Em0RQ/NzA6nyqiNzOO0qyhqxrLWGDkurkGCy1Fe
         1uHYHKkQWQmbwbgH5MQw+muSs/swhMivxLrZquRqRDKkfBytXTa2JXvkC96WAuEJWakJ
         NoxWcyvrP4sRlCRGlQZJat61hFChHuS0UmT69earxrVNyTH5sCbywbJSACFOHPNS7y8D
         5VX78lAtj3fVLUpV+DhKU565tAspUj7lI254IOIY+KA2rE7Of/2qfLI8tF42m0swCwUM
         gAfA+QYLvIhjN+0lS3z7xFndGy+Tm5S+aObalrodjKiUxUS7ws9t+pJ4ALEcGN22xNdt
         kiHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723556131; x=1724160931;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SgQ8h6qCQC7QeIRihEXwHa34ERlAVFqv3T2g+xnQtck=;
        b=CTGLmThfH+OkhQTIRpRVg4Z9Jcy/OlcZFL02j20Xi5pb0S94sjO0Zy5AmO9B6dKzbl
         o/LAyU1Ff6OtjXcD2NhSJLJT3wI2b6upn6LLCpqCXH8/KWT+jPqiQ2riIvarbi4ZgoAf
         uOonH8EiA1e9f6QGGdhScA61nDnF5TWkkQ0api0LoMsgJmAmKfn2SeKLnDoxgFAY/lc0
         9kYu9NdFvCTIa64y7iOhBjQJgiZKUssVQPAQ6aBkIctpRaVaPJxs3O2LM3wEstDHRjfX
         hiyK+4ZBmvKaGjKPINkEBB0xagTeTUWaf5DZ8KTlGPckbNXSm4sCdHmsmrGmUGvUqTjk
         73GA==
X-Forwarded-Encrypted: i=1; AJvYcCWUIAhml8rksBGKueb8uQ7DHp4AyMnt1BbHfv+EjUo/5QkFO/SFRWELxSSAbjS/h4Vj/zkIn5HKQs0NeOCn5gf+m9pdyPzINsJkHg==
X-Gm-Message-State: AOJu0YyMs25aKu59iiDVr+PaUmXbChERwSv85P2ms13Nd7GmfTEdRjK4
	WpQO8vwVqFMbGHrVpCM/lvIyzhzvE/ed4OFu+8rOG8h7OkiDmioTQlPVEIPCVOY=
X-Google-Smtp-Source: AGHT+IHj3HYa9UZKWlgwQLfuwvk9a1tfVcPmaCGphLSE5gLy0Z1hxbPA5zkLXFvCMrMFBFVFqfYd3w==
X-Received: by 2002:a05:651c:1544:b0:2ef:23af:f1f2 with SMTP id 38308e7fff4ca-2f2bab2e3fcmr9660051fa.9.1723556131296;
        Tue, 13 Aug 2024 06:35:31 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f291ddb66fsm11577421fa.19.2024.08.13.06.35.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Aug 2024 06:35:30 -0700 (PDT)
Message-ID: <8b59983a-b5bf-4fdf-8f87-2c4c90785e30@linaro.org>
Date: Tue, 13 Aug 2024 16:35:24 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] media: i2c: og01a1b: Add management of optional
 sensor supply lines
Content-Language: en-US
To: Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20240813102035.1763559-1-vladimir.zapolskiy@linaro.org>
 <20240813102035.1763559-7-vladimir.zapolskiy@linaro.org>
 <172355359318.1687952.6620713968085551486@ping.linuxembedded.co.uk>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <172355359318.1687952.6620713968085551486@ping.linuxembedded.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Kieran,

On 8/13/24 15:53, Kieran Bingham wrote:
> Quoting Vladimir Zapolskiy (2024-08-13 11:20:35)
>> Omnivision OG01A1B camera sensor is supplied by tree power rails,
> 
> three?

that's it, thanks for catching the typo.

>> if supplies are present as device properties, include them into
>> sensor power up sequence.
>>
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> ---
>>   drivers/media/i2c/og01a1b.c | 86 ++++++++++++++++++++++++++++++++++++-
>>   1 file changed, 85 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/media/i2c/og01a1b.c b/drivers/media/i2c/og01a1b.c
>> index 90a68201f43f..0150fdd2f424 100644
>> --- a/drivers/media/i2c/og01a1b.c
>> +++ b/drivers/media/i2c/og01a1b.c
>> @@ -9,6 +9,7 @@
>>   #include <linux/i2c.h>
>>   #include <linux/module.h>
>>   #include <linux/pm_runtime.h>
>> +#include <linux/regulator/consumer.h>
>>   #include <media/v4l2-ctrls.h>
>>   #include <media/v4l2-device.h>
>>   #include <media/v4l2-fwnode.h>
>> @@ -422,6 +423,9 @@ static const struct og01a1b_mode supported_modes[] = {
>>   struct og01a1b {
>>          struct clk *xvclk;
>>          struct gpio_desc *reset_gpio;
>> +       struct regulator *avdd;
>> +       struct regulator *dovdd;
>> +       struct regulator *dvdd;
>>   
>>          struct v4l2_subdev sd;
>>          struct media_pad pad;
>> @@ -982,11 +986,46 @@ static int og01a1b_power_on(struct device *dev)
>>   {
>>          struct v4l2_subdev *sd = dev_get_drvdata(dev);
>>          struct og01a1b *og01a1b = to_og01a1b(sd);
>> +       int ret;
>> +
>> +       if (og01a1b->avdd) {
>> +               ret = regulator_enable(og01a1b->avdd);
>> +               if (ret)
>> +                       return ret;
>> +       }
>> +
>> +       if (og01a1b->dovdd) {
>> +               ret = regulator_enable(og01a1b->dovdd);
>> +               if (ret)
>> +                       goto avdd_disable;
>> +       }
>> +
>> +       if (og01a1b->dvdd) {
>> +               ret = regulator_enable(og01a1b->dvdd);
>> +               if (ret)
>> +                       goto dovdd_disable;
>> +       }
> 
> Perhaps regulator_bulk_enable()/regulator_bulk_disable() would be
> suitable here to reduce lots of repetitive code and error handling?

It won't be possible to support optional regulators with bulk operations,
thus likely it's not an option.

Note, that in ACPI case there are no regulators at all, at least this
should be functionally preserved in the driver.

It might be an option to define all supply regulators as strictly required
for the OF case, but since there is actually no need for it, I'm reluctant
to push the limits into the device tree node schema.

So, from my opinion the left option is the published one.

--
Best wishes,
Vladimir

