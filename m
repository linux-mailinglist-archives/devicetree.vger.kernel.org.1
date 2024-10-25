Return-Path: <devicetree+bounces-115868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1929B0F6F
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 21:55:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E13591C213D0
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 19:55:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38B1C20F3E3;
	Fri, 25 Oct 2024 19:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="J4eROmSF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6C711FB89F
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 19:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729886120; cv=none; b=JfuyhfzbDxCJ+k8pPeV9kR4KLw3DRa4emm8ptJ5u0aXWR3GeSNHPoVlwUYPrBmXy62DBWNZFLp8CAdff6LB91FzYbjssL9nq7+umr/GYg04hGwq/8o6kQYEPErOTQBl6e7K6NYvelYlt7tQF+450/E4dgZ76/8jolbT8XduqRdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729886120; c=relaxed/simple;
	bh=3i7gQSjPTVExJi+8tdLy48McQB4g9avSQB0iN/wuWbE=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=cQc6D++y7z8NELv7EoMW5lpekIdlwfqX0julyCecU+j5jHkDRLBuzEteYOcRjO5LITpTJyIUwa3TaYVi50VgSQ9y9X9aoHPnYalbKJtLoEG/K8+koZRyrBJOSc6+GVwvQ4rZyUNbfglJjpSFhJC0ZjEa4N88+p2mpeH+gtkCebE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=J4eROmSF; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-28847f4207dso1177780fac.0
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 12:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729886117; x=1730490917; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XenFGeBbkfIEOtggTpW3cCFFoS+71BDD/eIdcva33jU=;
        b=J4eROmSFx56wUODeJhhRyAssBV4TVx0v0r/ZRbzVf8HIw0pdo70vSFo8FiHtnxH3SI
         /1MFd22KazK/CU4Vl0kwlxf5566iDOMew6/lsNsZCMKS+WX7nvr9Si0xR3ray/44JfYE
         g0ommjbxK6nyIdSL1f5wjB1fgus/GeWrgbnzo1n2C+iPUayQ+IlOIBvU33xuloWfgrSd
         lky9srSyq8ZqcloLXQ62nNY9GqGqURZE0eNKKEQY1F5XE3y7qTkItXcFwBV9G2dh4UlR
         UMdP+wfc/xgYjIoYx7SFuaDPqOMMZ8XXWNfUOn7GqrwqQ+73ih2R3YEnJdr1+HPw41Nh
         yOSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729886117; x=1730490917;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XenFGeBbkfIEOtggTpW3cCFFoS+71BDD/eIdcva33jU=;
        b=uq/WJhj2N169kemkI12+Ii1O8JYFeLQsOESg4iiCVpmhCNECNsdS/JMPLbdiAOi7Fc
         5lbS1txHaaU/bRU4i0NrgprnpMqua/jNv8PDaCy+IxfAIQUeFPv/DXPwnySoZN/oj3c/
         J3iP0fQmJ7DkPnS6IYVw0dRClxr6Lp0ica/sQ+Cd04J05uiN8VNr7UW0MG5bJOTVCxoY
         oHAjuje0Mndlu5BXUhhjMyJf6o5z4p2sVRkNBdsWZ93End7CgnLcK2Kr+j5mUZOyDu20
         mxVLHa0VmimTYE53W1IBmRgryuSJZuqNm9TTSfWDHS5ais44u5jpW+GHS50JA7ZJ+/86
         xDKg==
X-Forwarded-Encrypted: i=1; AJvYcCW2n9JMhuie+toLhiFvU+DvmAg3DLsZAvP2+0L+vyHjDFkkgpLYfo6ciEdt2fxvgHvkGQ8eohsxRKbH@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7kQfnlHVuZsrlv6A0mYHaFiA3cJXkPDwkOeyBQkr4G1o2zEho
	pFG07rXlxokrDIQzhrgKocShkwhNDEY3pBCVMo9grwkn5b5GyBcvDNbUHm8snD8=
X-Google-Smtp-Source: AGHT+IEBl+YXrAx7Fjt8TZ4PB95TM0tvCHEv3iGvmCdxmV7t5b+SMDo5OvPmODXDlwoCVREfYK+Mtw==
X-Received: by 2002:a05:6870:1645:b0:278:2272:fc73 with SMTP id 586e51a60fabf-29051b1a3f1mr806157fac.8.1729886116876;
        Fri, 25 Oct 2024 12:55:16 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-290380f5fdesm458266fac.42.2024.10.25.12.55.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 12:55:15 -0700 (PDT)
Message-ID: <315f158e-0c3b-48e3-b288-27170f0659ed@baylibre.com>
Date: Fri, 25 Oct 2024 14:55:13 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/6] iio: adc: ad4851: add ad485x driver
From: David Lechner <dlechner@baylibre.com>
To: "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, "Sa, Nuno" <Nuno.Sa@analog.com>,
 "Bogdan, Dragos" <Dragos.Bogdan@analog.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>
References: <20241014094154.9439-1-antoniu.miclaus@analog.com>
 <20241014094154.9439-6-antoniu.miclaus@analog.com>
 <60452f83-28a1-4a80-8e90-1f1ed32a594e@baylibre.com>
 <CY4PR03MB33996900AAB90A050375CBB39B4F2@CY4PR03MB3399.namprd03.prod.outlook.com>
 <f3351a7f-318b-42d6-aa1a-e8279eb06b78@baylibre.com>
Content-Language: en-US
In-Reply-To: <f3351a7f-318b-42d6-aa1a-e8279eb06b78@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/25/24 9:29 AM, David Lechner wrote:
> On 10/25/24 6:35 AM, Miclaus, Antoniu wrote:
>>>
> ...
> 
>>>
>>> See the ad7380 driver as an example of how to impelemt this. [2]
>>>
>>> [2]: https://urldefense.com/v3/__https://lore.kernel.org/linux-
>>> iio/20240530-iio-add-support-for-multiple-scan-types-v3-5-
>>> cbc4acea2cfa@baylibre.com/__;!!A3Ni8CS0y2Y!4LS7UI11XqIHRgT3ckx76VYn
>>> CyeikpTumyjO0qDTn7eF7Fd-
>>> jFFL8yqpYcMAxP_u3VC09bfIAB7gW_rvGoM_sEA$
>>>
>>> Also, I would expect the .sign value to depend on how the
>>> input is being used. If it is differential or single-ended
>>> bipolar, then it is signed, but if it is signle-ended unipoloar
>>> then it is unsiged.
>>>
>>> Typically, this is coming from the devicetree because it
>>> depends on what is wired up to the input.
>>
>> This topic is mentioned in the cover letter, maybe not argued enough there.
>> Yes, the go-to approach is to specify the unipolar/bipolar configuration in the devicetree.
>> But this is a request from the actual users of the driver: to have the softspan fully
>> controlled from userspace. That's why the offset and scale implementations were added.
>> Both these attributes are influencing the softspan.
>>
>>>> +	},								\
>>>> +}
>>>
> 
> The cover letter did not get sent, so we did not see this.

So please resend it so we can get the full explanation.

> 
> Still, I have doubts about using the offset attribute for
> this since a 0 raw value is always 0V for both unipolar
> and bipolar cases. There is never an offset to apply to
> the raw value.
> 
> So I think we will need to find a different way to control
> this other than the offset attribute.

I thought about this some more and I have an idea to solve the
issue without using devicetree or the offset attribute.

But we should see what Jonathan thinks before implementing this
in case it isn't a good idea.

We can expose each voltage input to userspace as two different
channels, a single-ended channel and a differential channel.

For an 8 channel chip, we would have 16 IIO channels (in order
of scan_index):

in_voltage0_raw
in_voltage0-voltage8_raw
in_voltage1_raw
in_voltage1-voltage9_raw
...
in_voltage7_raw
in_voltage7-voltage15_raw

If you read the voltage using in_voltageX_raw, then the SoftSpan
for that channel gets set to the 0V to +V value based on
in_voltageX_scale. Likewise, if you read the in_voltageX-voltageY_raw
attribute, the SoftSpan gets set to -V to +V according to
in_voltageX-voltageY_scale.

For buffered reads, only one of each in_voltageX_raw/in_voltageX-voltageY_raw
pair can be enabled at the same time (because the chip is simultaneous
sampling).



