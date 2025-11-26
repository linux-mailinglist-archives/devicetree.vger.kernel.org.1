Return-Path: <devicetree+bounces-242563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B960C8BEA3
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 21:50:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 42EA24E121D
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 20:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85CDB2F83AC;
	Wed, 26 Nov 2025 20:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="HGbDdCz7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB89F313557
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 20:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764190223; cv=none; b=VgOpvFTySOpVQaR8YjWfCo7iurT6dfEXz9+tg43QoGhKgvWcH9dXuP3IlhbA3dFQ74atq1wqLSOXqVYAUiRzPW2ft6IaAxQPoUQDlsNJRNkjGTFGl9iysA8T9589p14BjRVrAmB6UEfrQF1TtacnCPC7riBj3fSJ8qIb4oSKnu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764190223; c=relaxed/simple;
	bh=2hcVpa9scm0PygAHV2yhPwb8b1VqKc8achD9dLmNggM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EczXdHq0Rlkbc76CF8QOBzt7BDTsb9YfOBw95RIMie2PjlMKoJ/Dc1gx2RK8iDeZAcqUbYtmeCFAwLbVDGOFK/Fs92dKKH6fjKAaEDIqNsN+VeY1S5q1AobNinIID7eR5q7OVJYcakQuOa98f2y8rn1AREudiZQFn+8TnEJlO3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=HGbDdCz7; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-299d40b0845so2697915ad.3
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 12:50:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764190221; x=1764795021; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nAe7krNX/FWdcfazYkx0OEalo6w7fciX1p3CljsQHjE=;
        b=HGbDdCz7fMh9auA5giOKC+up0GbVoGyfdlmnW3fyA3Gxeb/N0VXaJ7h8z9oxYb4vjA
         g+p+ZRULTy1pYN7EVv5B4HrwMHmGfgjly+28BhEPlXXtD/KWdwSqMfXw9NDqftFHdE/T
         CXq15IsJHKr6bJHsZs8IrqaLSSTkzKPU2I82uX6u58ZouSHjfKSYxKn/4eti0kglBfqH
         6FT1XKbMuy2JP+yi2OjHZQnX1+RHfCIkvrp4b5z+VaJHg6EoexoTIpw0JsUIvp4E42Qi
         xpVhXmwS0s1ou8X0njK31DhtPHOxTRa4nDS1mJWmErhGiynAQh7U5JJC+nlAPID9A7qR
         FYOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764190221; x=1764795021;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nAe7krNX/FWdcfazYkx0OEalo6w7fciX1p3CljsQHjE=;
        b=GGUK4aOiR2ChJw1LR4qzFv+kRz8QRJe6jMDvCprxOx6trDmFcZIYTSWosZAvIq+q9i
         ONUt7MJ+w1qammFcqfaOjFFGK2fNSfr7L+ubFO3FWPUxAiP/5rPSzT3ph4ZPF4ITeaUH
         rLAvl/n42nAqJJAwg/dKND//G9UrPznKho8TiJiGWUatrg+LfhJpAKRmWF0/3ZngdyNN
         POzlDxHCHGgWVs/eg09Gtik9ORGuOJqHCFz7HWguhWUq1Q5E/LNVj9BDepWJaf/Yaezb
         TgtHbdET6B7fTgPPbozbslfRU29Q7i/qcSYTTF2g65sD3qlN4uAZ1IGBp4SLkEjCqPGs
         EpmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVk9cnOinwodfQqxoJm/gwFsdnBaLsvltcrFj41ZMaZHob+3QDulvhxTo2ayHi2yZW3Uz0v5GbhA7na@vger.kernel.org
X-Gm-Message-State: AOJu0YzF+vno0/AX2o++y6tb5bbJg+Px/K+dPYR26mrloe+YJSv8j6CK
	PvtUEokYfCvUNdVPJ3Xw1UChzvcUSA6eK9c1ZrF+GJKxR2+TWiRzgEsc3F2BLP0wSQ==
X-Gm-Gg: ASbGncsCKPU8kKN0EdILkEB0e+Yx5QLxvzcUYIxgnSoecMxVpl6PzdSBS1DDOb9jOuW
	QpEdRfOQWaGLLLcL9H1gxpLCBowLUG5WWsjkcFwgNbNT6U2Dgwcvn7yqk2azMLGX4+wlZhMIb77
	5ALEkxEAE+QpH+8rABJyOKza5FfIAWyRsEdc6/k0XAIQ/LK0vCoOy7v6WwLWYvWrvobA4l3CHnC
	ZBO58pDY3Dkwm7XXIUoDxJR3RbzkZx+XyUbq3e3oypK6ePFl9ojkyaShhjbuoEyn8a0et6L9pfc
	CbL5Kyo3B1YRbY5u9/LUKnC18Wfovi9ASMTuPg7S+dRR/uxR1tNZ2ye7uLl6TZnk6ql6skdSUHj
	weS45DK+fMrIFmCdfjLzCo1H4LGLoE7ZnhfXopMNI4l4O3WVIH5fuE+xuXCTucO05CqfRY7MaEf
	SnF3nN9z27ouT8brF47kdg7hPwbk8zDq4t2ByB5D2cpMb/YDYzM4oepKMD/C3pxQsUIuE5sV0uw
	zKH6sXynWPXab516KM4nZxW
X-Google-Smtp-Source: AGHT+IFjQZz19LkV6uSbQD7V0osJzTvl1J8TedsGIZ78YPP9aLGTQiFmGEhYv2+QMQ+JGAYgRK90Dg==
X-Received: by 2002:a17:902:d4ce:b0:295:596f:8507 with SMTP id d9443c01a7336-29baac9f621mr97893625ad.0.1764190220828;
        Wed, 26 Nov 2025 12:50:20 -0800 (PST)
Received: from ?IPV6:2a00:79e0:2e7c:8:c116:b1c9:632d:a902? ([2a00:79e0:2e7c:8:c116:b1c9:632d:a902])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b12f988sm203367425ad.27.2025.11.26.12.50.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Nov 2025 12:50:20 -0800 (PST)
Message-ID: <3c72e1f3-7873-4f13-a5cd-0aecc5163aab@google.com>
Date: Wed, 26 Nov 2025 12:50:19 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] dt-bindings: usb: maxim,max33359: Add supply property
 for VBUS in OTG mode
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?=
 <andre.draszik@linaro.org>, Lee Jones <lee@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, RD Babiera <rdbabiera@google.com>,
 Kyle Tso <kyletso@google.com>
References: <20251123-max77759-charger-v1-0-6b2e4b8f7f54@google.com>
 <20251123-max77759-charger-v1-3-6b2e4b8f7f54@google.com>
 <aSbP5OanDUGhEXXV@kuha>
Content-Language: en-US
From: Amit Sunil Dhamne <amitsd@google.com>
In-Reply-To: <aSbP5OanDUGhEXXV@kuha>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Heikki,

On 11/26/25 2:01 AM, Heikki Krogerus wrote:
> Sun, Nov 23, 2025 at 08:35:50AM +0000, Amit Sunil Dhamne via B4 Relay kirjoitti:
>> From: Amit Sunil Dhamne <amitsd@google.com>
>>
>> Add a regulator supply property for VBUS when usb is in OTG mode.
> What is "OTG mode"?
>
> OTG is usually used to refer to the USB in device role, even though the
> specification actually defines OTG device as a device capable of both
> host and device roles. So the term was confusing already before.
> Nevertheless, the emphasis is always on data-role, _not_ power-role.

Thanks for the insight!


>
> Here it seems MAX33359 uses the term OTG as a synonym for "source", so
> power-role?

Essentially. The datasheet refers to the mode where VBUS is sourced as 
OTG mode.


> Please don't use the term OTG unless you really have to - it's too
> confusing. I know the MAX33359 datasheet uses it, but what you really
> do here is regulate VBUS. So please:
>
>          s/otg-vbus/vbus/

I will drop OTG term at least in the USB world and restrict it to the 
charger driver.


BR,

Amit

>
> thanks,
>
>> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
>> Reviewed-by: Badhri Jagan Sridharan <badhri@google.com>
>> ---
>>   Documentation/devicetree/bindings/usb/maxim,max33359.yaml | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/usb/maxim,max33359.yaml b/Documentation/devicetree/bindings/usb/maxim,max33359.yaml
>> index 3de4dc40b791..a529f18c4918 100644
>> --- a/Documentation/devicetree/bindings/usb/maxim,max33359.yaml
>> +++ b/Documentation/devicetree/bindings/usb/maxim,max33359.yaml
>> @@ -32,6 +32,9 @@ properties:
>>       description:
>>         Properties for usb c connector.
>>   
>> +  otg-vbus-supply:
>> +    description: Regulator to control OTG VBUS supply.
>> +
>>   required:
>>     - compatible
>>     - reg
>> @@ -53,6 +56,7 @@ examples:
>>               reg = <0x25>;
>>               interrupt-parent = <&gpa8>;
>>               interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
>> +            otg-vbus-supply = <&otg_vbus_reg>;
>>   
>>               connector {
>>                   compatible = "usb-c-connector";
>>
>> -- 
>> 2.52.0.rc2.455.g230fcf2819-goog
>>

