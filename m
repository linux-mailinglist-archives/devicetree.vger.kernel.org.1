Return-Path: <devicetree+bounces-39625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 006E984DC09
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 09:55:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6D321C21AC8
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 08:55:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE78D762D3;
	Thu,  8 Feb 2024 08:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fStBRUAU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B329E76055
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 08:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707382231; cv=none; b=R5+zuUa3r07fTT2I9oyBISbinuwDGEtcXptLedtrBDMqCHRplbzXoXuilN75uuYSSolXRX4jfy3mrWibhYmJFXS3I/jsEcTeZZdUVX4b5yspuyxg0+VtfTf7GspUK8UZqDmOG1mVww/NwEERHvcyS/b723ei/J0DUHqYDTxCZ7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707382231; c=relaxed/simple;
	bh=7KxOrUUBvAEjoKTyFqSQYB2xF4LcQA/Z3R8dDNkXfOY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wuym4O6mADYvabHGOR9i4GbkEUuRe0z8BKNr8U/K2PuP6j+zFN9hviXxlVHkgJrYiyj26VYZ/EC5yH8ZnaSV9G8QAcxJiAlMB15qT3/pi8bgjx6LVbim6jEKohOohgSEwEcQeEymHg9VSM6YVVKxOkzxCCC5yFcoum/wefshG4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fStBRUAU; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3392b12dd21so993389f8f.0
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 00:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707382226; x=1707987026; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pikC9lTYyRTcZJhF/gFBykzFAGJqBEU/AIAqr7uHosM=;
        b=fStBRUAU4WQNn/zPVKgwDLE9G65HYokBZj86mHSYDMfwSRl5/TKst1S1tkMHUJww4I
         ny5AVuWzOEn/6qKIbZxws40KXatTZidBeg1fmj3s413xNCnuH67qs3g4skipdmLVsq6l
         KQnNQWNaTS7Y9uc1tgCqYMfhUSTkl/jysWwGTQGnnNt3+fIOV+ouZQiWwfjs8GQ1lvOP
         u9R3P25Xbu1UUIViavaWTo6waiTUrX5af5cdRfxR3Wio1QqY8mTOykVUdEvDGot/9mnd
         JUPmdPxzDCyj5kP2uYhqmCdEZAAwZf6ju938ySSTjGgFsFrqmW1UYnqkvsaJoyXSXtXK
         QI6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707382226; x=1707987026;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pikC9lTYyRTcZJhF/gFBykzFAGJqBEU/AIAqr7uHosM=;
        b=AXzdOTs7zyc19bHn0AT60SeSnzZbHOEpJIqCJzOu9fsT7GSlomSQfPv2PCL3mfNfZ0
         Pti971LepbPgPO0dCB61ghKA3EMievhZ9EuRQssxYfOKW3ohgYLcfTc7Xk3uuexEXqJT
         kJnB54/Yv7kjCz++hRKSFMR1RYBkQ9TazAuROm+ZjbSBNDe3CHbS6Co24cGm0Utkj20F
         dlPBv0vFJ0qFcI7eHKQpXXDRmp4MQTBjALGXSdT5ujdH7q9P8fOJjWK07g514fWe+GjE
         kbNA2GXVFryUbRr7QwzgNNnqUMd3MumXFs+/qhbLCQwA215P7eJwrkXHh+AbQy1gdQAU
         QObQ==
X-Forwarded-Encrypted: i=1; AJvYcCWiEMCEjYdgRAX5V2HryhEoc0VBNrAK7MDnqL3Im3zUaMdlLK0iPQ2/3r7itDDm+lzraVz8OSw4B4oJjbaUsp1+YigrEMjBYyn4oQ==
X-Gm-Message-State: AOJu0YzreWOIBAPncZ2WpiyVMTGNIMlVAWx5+nnt49ktwURSK2ASw1uR
	NiEFG3SezuccX8Wyn3WnJ9miLtq+ia28WbnciQKNFz05LeW/vUNhbxcqF2RmbYY=
X-Google-Smtp-Source: AGHT+IEHcepP++XXsJFsT6HJo/A2mdD2hdqYZFcSrdloQMOfjN23uCaWtgDx0Mjw71JXIvannexNxw==
X-Received: by 2002:a5d:5484:0:b0:33b:376d:6263 with SMTP id h4-20020a5d5484000000b0033b376d6263mr5002477wrv.60.1707382225841;
        Thu, 08 Feb 2024 00:50:25 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUrwIPz83ViuHoW82vh5yIhQExObDhsyeyAx5hNRHTcQ/eGZl3Za7FZwzs1G3j/fqnNMbKsm0l5EQsGJhlfr7xrBVL5GpS3E1za1aHOBte9ayZHrQrNkkBHcv2bidCaD4OLyp73i1fHMlZxATFEUW2zA0dWRWH0DBrmy3cuGEXg9iQqkaIv7aWAdddwVZMyTNvINe5dXQGH069s5j4eaZQdR8gr5wu+WvPuNYWyUDx1yKWaazyXTp8saZnZKiaIp0MKb6ufWsRwhM/nm/PDsEcqwwIqaD01YSPFqWPlS2LGV5RUtrahqOq2hId5r1qXNRLv2m5zInVLKlpB+XMBjbfnDVZ+PyfZWz/40YCctlKXBGI8jxmVX6mBb1AfWBWvdUjEONpJovR+ft2jIA9BOcvzlOXp5laaB8jMMi56SIesviGDjN5pwEWE3+LXPSk0CY1rqHTw4ClE5bLSEwOCEW26Jfo1o3w4N0ROnd5EgsHTijiOaAfILpuHQA==
Received: from [192.168.1.20] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id u11-20020a5d6dab000000b0033b495b1d10sm3183799wrs.8.2024.02.08.00.50.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Feb 2024 00:50:25 -0800 (PST)
Message-ID: <2c4e76f5-0a13-44b5-8ece-3deb957dd260@linaro.org>
Date: Thu, 8 Feb 2024 09:50:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: net: dp83826: support TX data voltage
 tuning
Content-Language: en-US
To: POPESCU Catalin <catalin.popescu@leica-geosystems.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>, "afd@ti.com" <afd@ti.com>,
 "andrew@lunn.ch" <andrew@lunn.ch>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 GEO-CHHER-bsp-development <bsp-development.geo@leica-geosystems.com>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>
References: <20240207175845.764775-1-catalin.popescu@leica-geosystems.com>
 <a4949983-f6ba-4d98-b180-755de6b11d0f@linaro.org>
 <83f00386-e741-4bde-bcfb-462fadde1519@leica-geosystems.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <83f00386-e741-4bde-bcfb-462fadde1519@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 08/02/2024 09:48, POPESCU Catalin wrote:
> On 08.02.24 08:35, Krzysztof Kozlowski wrote:
>> [You don't often get email from krzysztof.kozlowski@linaro.org. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
>>
>> This email is not from Hexagon’s Office 365 instance. Please be careful while clicking links, opening attachments, or replying to this email.
>>
>>
>> On 07/02/2024 18:58, Catalin Popescu wrote:
>>> Add properties ti,cfg-dac-minus-one-milli-percent and
>>> ti,cfg-dac-plus-one-milli-percent to support voltage tuning
>>> of logical levels -1/+1 of the MLT-3 encoded TX data.
>>>
>>> Signed-off-by: Catalin Popescu <catalin.popescu@leica-geosystems.com>
>>> ---
>>> Changes in v2:
>>>   - squash the 2 DT bindings patches in one single patch
>>>   - drop redundant "binding" from the DT bindings patch title
>>>   - rename DT properties and define them as percentage
>>>   - add default value for each new DT property
>>> ---
>>>   .../devicetree/bindings/net/ti,dp83822.yaml    | 18 ++++++++++++++++++
>>>   1 file changed, 18 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/net/ti,dp83822.yaml b/Documentation/devicetree/bindings/net/ti,dp83822.yaml
>>> index db74474207ed..6bbd465e51d6 100644
>>> --- a/Documentation/devicetree/bindings/net/ti,dp83822.yaml
>>> +++ b/Documentation/devicetree/bindings/net/ti,dp83822.yaml
>>> @@ -62,6 +62,24 @@ properties:
>>>          for the PHY.  The internal delay for the PHY is fixed to 3.5ns relative
>>>          to transmit data.
>>>
>>> +  ti,cfg-dac-minus-one-milli-percent:
>>> +    description: |
>>> +       DP83826 PHY only.
>>> +       Sets the voltage ratio (with respect to the nominal value)
>>> +       of the logical level -1 for the MLT-3 encoded TX data.
>>> +    enum: [50000, 56250, 62500, 68750, 75000, 81250, 87500, 93750, 100000,
>>> +           106250, 112500, 118750, 125000, 131250, 137500, 143750, 150000]
>> I see all values being multiple of basis points, so why not using -bp
>> suffix?
> 
> I can read :
> 
>    "-bp$":
>      $ref: types.yaml#/definitions/int32-array
>      description: basis points (1/100 of a percent)
> 
> In my case it's 1/1000 of a percent. As I'm not sure exactly what the 
> author meant by "basis points", would this apply to my patch as well?

So please show me the value which does not fit in -bp.

Best regards,
Krzysztof


