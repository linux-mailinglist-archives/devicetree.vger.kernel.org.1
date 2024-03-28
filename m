Return-Path: <devicetree+bounces-53516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 28ADA88C899
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 17:08:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C2791C3D625
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 16:08:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B0C013C9A9;
	Tue, 26 Mar 2024 16:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UZiSlbHu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2696A13C903
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 16:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711469319; cv=none; b=IOctKexsckvr2XnIL3rwXut/t7CrUCAOFTE9mYFMiA9kERlgh+H40NbbaKMgWeNyMqx87dEbzqsP9CrD/dlt0jrEnhLCr2gV31A0lf/Juqq250tfThDzVq6zvflu/tMIIpeNn6Pm9ruo3s9pukXEICL/PLLL7Dxg/ospjp61U4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711469319; c=relaxed/simple;
	bh=I9jYhEpT1hJ4WkmCi5EfutNG7AD2pBTYUdgSEQ4l9cI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ri6nHLds1UVAE3pfLC5akuENLdJqaDie2R5upLmTbxsjKvSAwMFiDCYjvSSKZB+5nPMVvmBEy1RbOPZ9Sd/eq7bXyTCUBQTIFrEsp64hN+a4qgZqo2gwkcZowFKxEK92asuRRRrVOpdl1RAbzWcOM7sRbUMaI3EARO3rOsqZVmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UZiSlbHu; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-56bf6591865so4991990a12.0
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 09:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711469316; x=1712074116; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=PCcCW5MXBTsuYjj4AkYESlhZOGHwdUsHgBnc4ofEFK0=;
        b=UZiSlbHuTzsJ4kLsTnJ2GsCb13brSipdn32C+zt1ehuKutuNrclSG55Uq9lYQPq8nS
         iQtI/TCrXevDWdOo9IpZfSzXFIo6Z/cc3J1aXw9JZ7kiNj+GL14QQD/ssSI33cAz0otf
         o5mFBvGYhjey6DskdikqwTHpsOGixOFUiBHf0kkVWhqw0zIS1pBLnsIP0jxJjc/fEK/h
         aNeunUo/JLyn/2MbQeAofsSff+iRcVZCkM8oyIt2dmvl8Q+Y4by0+bItA01FrVyc8K1e
         5xn0smhxe6W1mVSeXKzZbtexkn+Lkc/WMtyjt2SdV3k0t0y+a6Ejho7u6k4eM/+gHGJa
         DqTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711469316; x=1712074116;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PCcCW5MXBTsuYjj4AkYESlhZOGHwdUsHgBnc4ofEFK0=;
        b=BNoprboyAOPGQSaRV7jZKnBoq2KHX78Uq1umr5KU+uWI/xuz6i8KkGHUVpEHWZDhI+
         C+DTkWHDGdqt8liBa529XWrWH7yuRR+KR+mUWO3iOCN0U2jBRzGFs9VyzvKv5/xJi50s
         tZZCiVWSAEnMuonFLoVgtzYwHO/u/0DW4Mlbi3bxPf9TiLU+YIX8xdzIT563c1hItdnD
         FmSQvtQu839/pXaGEhsoTP3tqXJQvvqMC8d1AltwcT36hxOHW3O9hpDwHnKNVPDxttR2
         YVW27FVQGLCiSp1fnn4xlmTucQfihbJHXosO165ZQzloimYQ9fRF7het7L7UY/IimkPB
         cD3A==
X-Forwarded-Encrypted: i=1; AJvYcCVSNRixXl4ag6sB+zgPB8Sy827a/3wz4GSUietoDgD9Mg8ekMmY5T32XxBXwxuEuma8/in054oL7NYGrWXzu/SeQXx4456q9Df+eg==
X-Gm-Message-State: AOJu0YxMuyBgnBewLNBMIxxKyv9gYW7eZ8s+pRv1bYKbJnXJM61M1sQp
	DCOoFiw1/22f2CU8MYy8txk6FckBkMIaPU33vooOfBIOKbXLCnkiKSl6TLWMDs0=
X-Google-Smtp-Source: AGHT+IEu+k+uVqeRWjSz8Vqxdk6BKNgsJlvhhYLRcSQ85XnHIT117OdlV3cn0yZ1VEnkCrv0fWYlFQ==
X-Received: by 2002:a50:cd9c:0:b0:56c:16c6:2091 with SMTP id p28-20020a50cd9c000000b0056c16c62091mr1145607edi.1.1711469316396;
        Tue, 26 Mar 2024 09:08:36 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id es9-20020a056402380900b00568d60cfbccsm4266150edb.42.2024.03.26.09.08.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Mar 2024 09:08:35 -0700 (PDT)
Message-ID: <5aed1a7f-6cab-4e5b-91b3-99c1d9b7faa2@linaro.org>
Date: Tue, 26 Mar 2024 17:08:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: hsi: hsi-client: convert to YAML
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Tony Lindgren <tony@atomide.com>,
 devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240325-hsi-dt-binding-v1-0-88e8e97c3aae@collabora.com>
 <20240325-hsi-dt-binding-v1-1-88e8e97c3aae@collabora.com>
 <2905247d-03b0-45c1-add5-d3c2a986d87c@linaro.org>
 <hz4fbdix5yaz2wtdkjkf23pc3m4kbeavynvjagundqvv3bisor@lc7dev4667i5>
 <1c6d995a-b1f1-48ca-b85c-f69071e7e3bb@linaro.org>
 <5z2b74h2zvo7fwc4624hy5vegvlkyfdflijr35byqeemoiwd6l@vfebii4m2mim>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <5z2b74h2zvo7fwc4624hy5vegvlkyfdflijr35byqeemoiwd6l@vfebii4m2mim>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/03/2024 16:15, Sebastian Reichel wrote:
> Hi,
> 
> On Tue, Mar 26, 2024 at 01:56:22PM +0100, Krzysztof Kozlowski wrote:
>>>>> +allOf:
>>>>> +  - if:
>>>>> +      required:
>>>>> +        - hsi-mode
>>>>> +    then:
>>>>> +      properties:
>>>>> +        hsi-rx-mode: false
>>>>> +        hsi-tx-mode: false
>>>>
>>>> I don't understand what you are trying to achieve here and with anyOf.
>>>> It looks like just oneOf. OTOH, old binding did not exclude these
>>>> properties.
>>>
>>> So the anyOf ensures, that either hsi-mode or hsi-rx-mode +
>>> hsi-tx-mode are specified. Those properties were previously
>>
>> Not entirely. anyOf should succeed also when none of them are present,
>> which is not what you want in such case.
> 
> Right, this should be oneOf instead of anyOf. I fixed that for v2.
> 
>>> listed as required and they are indeed mandatory by the Linux
>>> kernel implementation.
>>>
>>> The old binding also has this:
>>>
>>> hsi-mode:		May be used ***instead*** hsi-rx-mode and hsi-tx-mode
>>>
>>> So it's either hsi-rx-mode + hsi-tx-mode OR hsi-mode, but not
>>> all properties at the same time. That's what the allOf ensures:
>>> if hsi-mode is specified, then hsi-rx-mode and hsi-tx-mode may
>>> not be specified.
>>
>> Then wouldn't this work for you:
>> https://elixir.bootlin.com/linux/v5.17-rc2/source/Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml#L91
> 
> I suppose you mean using "then: not: required: PROPERTY" instead of
> "then: PROPERTY: false"? The variant using "PROPERTY: false" is what
> is being used in example-schema.yaml:

No, I pointed to specific line with code for you.

> 
> https://elixir.bootlin.com/linux/v6.8/source/Documentation/devicetree/bindings/example-schema.yaml#L225
> 
> IMHO the "not: required: property" is harder to understand. I would
> expect that to mean "the property is not required (i.e. optional)"
> instead of "the property is not allowed".


Best regards,
Krzysztof


