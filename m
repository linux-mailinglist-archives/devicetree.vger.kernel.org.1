Return-Path: <devicetree+bounces-206262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 265EFB2BE0D
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 11:52:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1426C16C276
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 09:51:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B822F31AF21;
	Tue, 19 Aug 2025 09:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DwNAeMsk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8933238C0F
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755597068; cv=none; b=aOmAVfo+wHv2cuqOolzhxnWxiR7z6xvbmY96abG1Yj1E+Cbd9v98bsYFgbRrvcqDhD0D6U3ZyEPn1B8JZ236WsmsYPVFSCzjPT3jcwvt0sNog/PQnv9XPuVceGM1i0+pKQyAhZ6aNu//B3nmQdmNonpgvbszhBOMxw8MaOKOQCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755597068; c=relaxed/simple;
	bh=UHFObRlIIZeDanFV92i7VHnr2QcfoemI+cerUuacbO0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HRrFZM/c1u4DxDTE0JpSCNAadQf9jrhMQtSNsiRkg2xwUK65zRGl1ztZ/Qz9SjfgzmmsehVxmXbvi0fpK3Ya4vTel4hfKhNLVEHt6tvWkQzSsGWfhH0NakrqASZNTIVyJoN5FJdM+KdlCwSKlQXQwggDH1PE39bSSlBnr5A8dR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DwNAeMsk; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3b9e418ba08so2808449f8f.3
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 02:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755597065; x=1756201865; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dEbA4I5qSZY6spIoEFlqu08c9+21gKrj1SN48109zCo=;
        b=DwNAeMskkxMeEysXR8Iccf3MvoDutV+GHAeVS3Hod9O1MzONK3i36CEwKPbd1mcm+y
         Pqa3TXukmDwnYUpuPr61tO+AGR8fAaDoIBPVlUj4Xe5os/Bj1C9AfleqWM/MoGA4Ar0B
         /HyoXfL7DjUw9iPKHbKBJAY1cQCRXU9QMf0FC6fdovqRZ9IuEDpJjO46OE80DUEKO3W2
         6adQ5pr5lvO9/lUB4KIeS7cKPkOUxiEe04bkNpBY/Ejxwavyh0rMbs6Uv30Tii98tLHJ
         ypesFowlUKcAiPoGIUaMfWmHM9l6Mk91C7Ul7GTr66F3uQmr4qYg4sj8JVqMZGt44PVj
         8yyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755597065; x=1756201865;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dEbA4I5qSZY6spIoEFlqu08c9+21gKrj1SN48109zCo=;
        b=ohS3nRXgh8gjYjGI4irD05vQltlgH5EgwaKZzNWkOSDtcuOd++XfyiDr5XnBiUoV+W
         Q0z81c+a0FxFY3VLRTxQx6dRDVlWUI3qRQ6y1/8WjPNsight5+f4ZM6d7EX7NU+xbL4y
         Tf+fKQnxEVLAhKi7hgNnDjOf/STcI/9QtdnjKdMQzCmie+AxDXVbdnfLMn+9HnqpEpPQ
         KhzWEg/udUHC8nFSS8oQqpj52EsRCNWg1TOok4yN3sBRLTEpUCPy047AXasJ8D+0BjXY
         nGeP++f9QlEL2948UKYwaQ66ai6CMVe19kI/F+IKW6mEC2gPDpN41SYj7iBsTPFCmH3H
         uMzA==
X-Forwarded-Encrypted: i=1; AJvYcCUhNVPRo6FbDNqqw2DmajTBzC8HmMPZwsxa8SD6SFvC0GMR6ivbZNolMAPD85OyrQAYnI+0kcIJ0oud@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn9arMIUo22MfSZnIy6mhFmAcX3eYrQ8FVIhag5gts9O/08kMh
	uU1I60kvwP8B5sRMnhyjWPKNBTGcqrHzuhKo9iP3M5/de8nVEbNYA2t8coxaiKXcUHI=
X-Gm-Gg: ASbGncsOTpp9I9bPfg2BlSP0El2zEgep1helFhovPXU8mvYa8Q4v7UultbmYqjYHnDq
	vlBLqB7kXRk2RXjstRhPcBIzgW/J2dd5vDp2h0k4+/r/Wyl9eAgwLWNW3D3CGE+T6XblaARxCgB
	JXe43lamd+v1DalPfv6OKPas9imAVhv1tDesNYt7exRbhbSCjGUj29kO2zUS6PGdMSJZsuU0f4r
	pP0YXZjaHQ1CansafyOv/lmcfenVPRGdTxLlJg8lVAwY7g4Bh399BCRFpHOiBNMYrJl8JPkmoHO
	C5cLJHdrlul9+JtYqsxlgOYepSMqRmD1ZXGHn/rQdOfxEDXfcYYReAGnmYkyqWAuMe4wIGtHbOs
	BZiTAj0lxTMX+mbSSHCo0zv/F4nQ=
X-Google-Smtp-Source: AGHT+IEhCbEtO72B94zboRfNoT34vBXWkQcIIE5hKfiRYQPXuGCMsQYLXo/jdD8ygHW2tXsu4oCNdQ==
X-Received: by 2002:a05:6000:1a85:b0:3b9:148b:e78 with SMTP id ffacd0b85a97d-3c0ecc324b5mr1596498f8f.53.1755597065105;
        Tue, 19 Aug 2025 02:51:05 -0700 (PDT)
Received: from [192.168.1.3] ([185.48.76.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c07487a009sm3017107f8f.11.2025.08.19.02.51.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Aug 2025 02:51:04 -0700 (PDT)
Message-ID: <91b3e06d-501a-48db-b626-5f056287a451@linaro.org>
Date: Tue, 19 Aug 2025 10:51:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/13] dt-bindings: lpspi: Document nxp,lpspi-pincfg
 property
To: Frank Li <Frank.li@nxp.com>
Cc: Larisa Grigore <larisa.grigore@nxp.com>, Mark Brown <broonie@kernel.org>,
 Clark Wang <xiaoning.wang@nxp.com>, Fugang Duan <B38611@freescale.com>,
 Gao Pan <pandy.gao@nxp.com>, Fugang Duan <fugang.duan@nxp.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Larisa Grigore <larisa.grigore@oss.nxp.com>,
 Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>,
 Ciprianmarian Costea <ciprianmarian.costea@nxp.com>, s32@nxp.com,
 linux-spi@vger.kernel.org, imx@lists.linux.dev,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250814-james-nxp-lpspi-v1-0-9586d7815d14@linaro.org>
 <20250814-james-nxp-lpspi-v1-12-9586d7815d14@linaro.org>
 <aJ4ox8+OLhIir2bU@lizhi-Precision-Tower-5810>
 <bd59344b-9dc0-42bd-98c8-80ab9ca97123@linaro.org>
 <aKNJFJDf1Clnkbex@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: James Clark <james.clark@linaro.org>
In-Reply-To: <aKNJFJDf1Clnkbex@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 18/08/2025 4:39 pm, Frank Li wrote:
> On Mon, Aug 18, 2025 at 03:47:45PM +0100, James Clark wrote:
>>
>>
>> On 14/08/2025 7:19 pm, Frank Li wrote:
>>> On Thu, Aug 14, 2025 at 05:06:52PM +0100, James Clark wrote:
>>>> Document the two valid pincfg values and the defaults.
>>>>
>>>> Although the hardware supports two more values for half-duplex modes,
>>>> the driver doesn't support them so don't document them.
>>>
>>> binding doc should be first patch before drivers.
>>>
>>> binding descript hardware not driver, you should add all regardless if
>>> driver support it.
>>>
>>
>> Replied to same on "[PATCH 10/13] spi: spi-fsl-lpspi: Add compatible for
>> S32G"
>>
>>>>
>>>> Signed-off-by: James Clark <james.clark@linaro.org>
>>>> ---
>>>>    Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml | 14 ++++++++++++++
>>>>    1 file changed, 14 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
>>>> index ce7bd44ee17e..3f8833911807 100644
>>>> --- a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
>>>> +++ b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
>>>> @@ -70,6 +70,19 @@ properties:
>>>>      power-domains:
>>>>        maxItems: 1
>>>>
>>>> +  nxp,pincfg:
>>>> +    description:
>>>> +      'Pin configuration value for CFGR1.PINCFG.
>>>> +        - "sin-in-sout-out": SIN is used for input data and SOUT is used for
>>>> +                             output data
>>>> +        - "sout-in-sin-out": SOUT is used for input data and SIN is used for
>>>> +                             output data
>>>> +      If no value is specified then the default is "sin-in-sout-out" for host
>>>> +      mode and "sout-in-sin-out" for target mode.'
>>>
>>> why need this? are there varible at difference boards? look like default
>>> is more make sense.
>>>
>>
>> + Larissa. I think this might also be a question for the hardware designers
>> about why the feature to swap the pins was deemed worth including.
>>
>> I'm assuming the flexibility is given for routing reasons. If you have
>> another device with the pins in one order then you can route it without a
>> via if they happen to be in the same order.
> 
> DT team need reason to judge if a new property is reasonable/neccesary. You
> need  mention the reason why need this property. Here, some board design
> swap sin/sout.
> 
>>
>>> SPI signal name is MOSI and MISO
>>>
>>> Frank
>>>
>>
>> As mentioned in the commit message of "[PATCH 05/13] spi: spi-fsl-lpspi:
>> Enumerate all pin configuration definitions" the names were taken directly
>> from the reference manual and this doc text was too. I think diverging from
>> CFGR1_PINCFG could be potentially quite confusing. And MOSI isn't mentioned
>> once in S32G3RM rev 4:
>>
>>    Configures which pins are used for input and output data during serial
>>    transfers. When performing parallel transfers, the Pin Configuration
>>    field is ignored.
>>
>>      00b - SIN is used for input data and SOUT is used for output data
>>      01b - SIN is used for both input and output data, only half-duplex
>>            serial transfers are supported
>>      10b - SOUT is used for both input and output data, only half-duplex
>>            serial transfers are supported
>>      11b - SOUT is used for input data and SIN is used for output data
> 
> dt binding is ABI, design user easy understand property string.  like
> 
> enum:
>    - normal
>    - swap
>    - half-duplex-on-sin
>    - half-duplex-on-sout
> 
> Frank
> 

If we're not directly using the names that get programmed into the 
register then it's better to remove the implicit 5th mode that you get 
for leaving it blank and to use that as "normal" instead. Then "swap" is 
to swap whatever "normal" would have picked. Otherwise "normal" being a 
fixed value doesn't match up to the current "normal" behavior which is 
actually different value depending on host or target mode.

So it would look like this with the "if no value is specified..." bit 
reworded too:

    description:
       'Pin configuration value for CFGR1.PINCFG.
         - "normal": Hosts - SIN is used for input data and SOUT is used
                       for output data.
                     Targets - SOUT is used for input data and SIN is 

                       used for output data.
         - "swap": The inverse of "normal"
         - "half-duplex-on-sin": SIN is used for both input and output
                   data. Unsupported.
         - "half-duplex-on-sout": SOUT is used for both input and output
                   data. Unsupported.
       If no value is specified then the default is "normal".

>>
>> James
>>
>>>> +    enum:
>>>> +      - sin-in-sout-out
>>>> +      - sout-in-sin-out
>>>> +
>>>>    required:
>>>>      - compatible
>>>>      - reg
>>>> @@ -95,4 +108,5 @@ examples:
>>>>            spi-slave;
>>>>            fsl,spi-only-use-cs1-sel;
>>>>            num-cs = <2>;
>>>> +        nxp,pincfg = "sout-in-sin-out";
>>>>        };
>>>>
>>>> --
>>>> 2.34.1
>>>>
>>


