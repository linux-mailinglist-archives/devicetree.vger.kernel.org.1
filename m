Return-Path: <devicetree+bounces-164387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A00BA80D82
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 16:15:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F87D3BB6FA
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 14:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FCD01E493C;
	Tue,  8 Apr 2025 14:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="WzIr2Z1n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408271DD526
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 14:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744121179; cv=none; b=BN3V23hcFh6UqKcKoAtqX/gTLhwCX0BxDUDV6ahHNXaww7yNO+PoF5jBwMHPkznwjA4GB3RBjQ3Z+3b+Hw0dLsj1Mxr6iShWbAbsdn2wpM8EoWLLHoaCxycx7RnAb7iZEl9y2lj8UWnpGL0JX0V+j8fW9dVyus2KsMWLU2wIA6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744121179; c=relaxed/simple;
	bh=ccn+5EjBCBAZog8J2jgDf6TBp/pRYSIg1+WTilFcn2k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hVhBlHbFrwSRy8BfaeFuutcjrtg3P21Q0wkoUTNvRNBpJnq1x1WiQSk2LolX0Zbb1xSTYLyHVjNJeYjPGGoj7vL0+qmxFGGNWRpScj6nuGDUx7/lA91mCGPWqgZbFj14uYsIoLS+AhrOI9ekNg8WMyOEbpOlLprGCjjgqQOOENc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=WzIr2Z1n; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-72a4793d4e2so3468473a34.2
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 07:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744121176; x=1744725976; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=awTzyD3tiaTSsEy1mjlUb+KI9F9b893/y6sLaVTL5xk=;
        b=WzIr2Z1nBwKoKh/r7LY+Q/hSTefKxlioFRxZV/XWypSNArxrB0crm0XKcu/bdZHGpm
         Ieez9HIQAFzGx+R8YjEdYB790ZsUUGSUUdEqJJdbYRRuPAa5j1LfpkcJ9gXIBRLQ54TL
         6dEcZmxeM06H++O5CL8yPtfiAVIoOMxfm9TeNMyqZxSl9tMY9ojyk4SvIsdBrMRviUhg
         u/vXFlektxtCUVaNLAFxKDVeh7gHGgbcKUyuF3Ue9Ffc1C0u6JfoorvAFJCCOR3a9mnL
         1Lj40vK5VIUD/7e3Yuk5NmWD2A+jNr3RJZR38NymbvWY4XxUDjnKbqQse8gsXwLSuPhi
         o04g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744121176; x=1744725976;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=awTzyD3tiaTSsEy1mjlUb+KI9F9b893/y6sLaVTL5xk=;
        b=QgNA4/bVYrQWQQp95TAlPI/xlj2ecLFDQyy9f3Ds2Jhmk+T4zBx5pUnlEcp5YO0hLV
         3vuJcaFnc7wMz8T9HdSJU9lfph6bqKVt1stFdJ2u3H54UO0rXsoOMeUYNV0SXi6OnDq+
         PCKVa9WfgKS6p62oWs43zW2ZwjFQQZHDXPWXJ8UvHPMssrq1yA7jq/1MpbbYf+6C2ktD
         7I+7+L2iv9fYZlsnPwA1CAETDv+OZKio1K4hWDPfzbbWG9rANijApZSiHfhPHxC6iveu
         S5ghRE48yHePiErZxyJZPrkQGLZUIyQCKlQD7pyOY+Ch7HZ9Wu+cT2BmppodRsgLKTu1
         D1NQ==
X-Forwarded-Encrypted: i=1; AJvYcCVaj7yBF0fFKHPV8BXknbFRvQpEkiuVOGtD6v2gYGcEFLuIkGSSY25e64ltcvmEzsXOQmZDkY4RjULF@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx22H1TDl5Rklrxm4mp7J9LnzXc29L4TbTHSlot6paL/kAocWW
	/KrWBd5ye+uNS4YagHw92DQQgGLJYdv17dovkkaR3gCorkBa+gkqq3CpcEg40r9NRE3vZlgIF9e
	me0U=
X-Gm-Gg: ASbGncvZbjvaR2s1Cc0nXYXoiVaRcmb8jEFhfXXLSRWoF8q0KCczZuhJG8BcXzJXiRV
	p8vBSanQkQKkVEU9zwVG5rE2c5jXSb0nQQbcCf1yeafcm9OgCFQwoI/KMrhUhb7kw7U4VZAK0i/
	gHN97Ra3m9ma8dcPrmhL4s9d8eBVlZATTossRz9IAZN1yFLKuv8BYi+jtXesGU45tQxRh4SF5hM
	g3CH6iIqKywBVPucKJyZeqtBMDtwqC/y92bKMQZ5NnOi+NPoBq5ecXSIsNRewln2xMSuvNalmoF
	8hzbk/CVTOj+aP9zS7bJitYyCLibD5KdRuolmcn6e2vfgbVRJTppgkQXA5DfQPwdbuzcaAcMXPB
	dkAA8Xw==
X-Google-Smtp-Source: AGHT+IGI8akES2tMKtN9OgqCGGv0YCjv3fajcZabsYwfuE6WQ9bdTeDcItimlghdyvozI9ofTv1KRw==
X-Received: by 2002:a05:6830:7305:b0:72b:7d60:fda6 with SMTP id 46e09a7af769-72e365c2c3dmr11493160a34.0.1744121176268;
        Tue, 08 Apr 2025 07:06:16 -0700 (PDT)
Received: from [192.168.0.113] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72e65272502sm457114a34.65.2025.04.08.07.06.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Apr 2025 07:06:15 -0700 (PDT)
Message-ID: <a66220e9-f690-4f95-9a14-d2b663d63490@baylibre.com>
Date: Tue, 8 Apr 2025 09:06:14 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] iio: dac: ad3530r: Add driver for AD3530R and
 AD3531R
To: "Paller, Kim Seer" <KimSeer.Paller@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 "Hennerich, Michael" <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20250403-togreg-v3-0-d4b06a4af5a9@analog.com>
 <20250403-togreg-v3-3-d4b06a4af5a9@analog.com>
 <fd2116bd-b0e2-4db4-97ff-1a1e88545413@baylibre.com>
 <PH0PR03MB714159E822B96E7A788A5CD4F9AA2@PH0PR03MB7141.namprd03.prod.outlook.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <PH0PR03MB714159E822B96E7A788A5CD4F9AA2@PH0PR03MB7141.namprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/7/25 3:01 AM, Paller, Kim Seer wrote:
>>> +	for (i = 0; i < chip_info->num_channels; i++)
>>> +		st->chan[i].powerdown_mode =
>> AD3530R_32KOHM_POWERDOWN_MODE;
>>> +
>>> +	st->ldac_gpio = devm_gpiod_get_optional(dev, "ldac",
>> GPIOD_OUT_HIGH);
>>> +	if (IS_ERR(st->ldac_gpio))
>>> +		return dev_err_probe(dev, PTR_ERR(st->ldac_gpio),
>>> +				     "Failed to get ldac GPIO\n");
>>> +
>>> +	if (device_property_present(dev, "adi,double-output-range")) {
>>
>> This is not documented in the DT bindings.
>>
>> This could instead be implemented by making the out_voltage_scale attribute
>> writeable.
>>
>> If we really do need it in the devicetree because we want to protect against
>> someone accidentally setting it too high, then the property should be the actual
>> multipler value with an enum specifier of 1, 2 and a default of 1 rather than a
>> flag (e.g. adi,output-multipler).
> 
> Thank you for the feedback. This should be adi,range-double, which is already
> documented in the DT bindings and is also used as a boolean type in other drivers.
> I just forgot to update it here. This is a one-bit configuration that doubles the
> output range (multiplier of 2).  Should I proceed with the suggested approach?
> 

I see adi,range-double in
Documentation/devicetree/bindings/iio/adc/adi,ad7923.yaml

We would need to add the same in the new .yaml file added in this
series along with a justification in the commit message of why this
needs to be set in the devicetree rather than at runtime.

Ideally, we would ask the applications engineer for this chip to
find out how real users would want to use this feature to make sure
setting it in the devicetree aligns with that and is not too
restrictive.

