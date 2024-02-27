Return-Path: <devicetree+bounces-46236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F7886892F
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 07:51:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DAAADB23A1C
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 06:51:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE7105338F;
	Tue, 27 Feb 2024 06:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oDsSTZ1H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE6FEAD5
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 06:51:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709016678; cv=none; b=lU3k+S+BP/HYl9OYkD12vhTqfpgt1FT3tgDwAZ4gughqOyuQ6kMWaHrsEatJ4r3CGZOlxFIBKu0WtTUH5K8MDIOQpJboq6lJNXzlyUh5ujoQ178AkJ/BkF4DoF4jjdlkIDamF6gMsI22bD28LFvCkfLireishAIOyye5cJi/zR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709016678; c=relaxed/simple;
	bh=kMm0MhaI2hrFFVsLzwvLF6qO1EAC/UVvmQ2fD2bFDAw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dI+mf1LL2+gjnW5yaKl42LQxlzXkek3MxhttEpmjwg/R3A2JwIQAEPpNrEM6SmKvRJJJ2nmvf2MlmkWQtdGbW9iWSOWMsde5PgB+0ejSJa0HIn18N1Ha28bY/ipsFGO2rUBqguigVSneJCdFNRbeohAgCEOONhPr2EmJLxvZJQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oDsSTZ1H; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a26fa294e56so663211066b.0
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 22:51:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709016675; x=1709621475; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KyzYi/oCIq0JMIl4Zm7WvnQjiUgOFPhkkdhV4XV1/bY=;
        b=oDsSTZ1HKhB9DxGPQTeDuqXqUB0aFjWi60RN7KSTAJLs9EDSwzurTDi0Tw02tenrSr
         w4jGjgQdp96wlvI0vlkbUOrnv3PrRZ6NKnGh6x3vo7YuTLLo0/RHy7MxLEBczuJpub6Q
         atleOoABi9wnqIY5pbSre7QV9xNiNMx9BLR5mbFXhExnO7L0p4S1PPZMc/soYMpgZuHT
         wL/5dRRe948gbxTXPafKe6oE27xOuScPFBd9kRN8RU+FJy47QKqxYvEfGgx2+Bu8YuDo
         htoraWos+yWriPA+nbMQ6pPu64rQo3457+B4OVWtQq4GN99dGP/RIeHns1JpbNQRzayE
         XVQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709016675; x=1709621475;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KyzYi/oCIq0JMIl4Zm7WvnQjiUgOFPhkkdhV4XV1/bY=;
        b=qqb1PoiAXOx5oo5GM69zj4Kj2EnD0KGXtM/BoM0+tMN20RgdC4zSsVmciaaBVNj3Z8
         opOBbzeQIQqXVH7qQo6Cn2X3fn8vpyRAnKBoHjx1xQtG+L7S18bAYdyR3W4CYcLNWW2I
         Cx8ii9tUkptM6/LGF5addXtrKFXK3MIFkG01WmneZLNvlFtFxkKokaYvqiZoJbwGhLdm
         X9qDvrrupRTh3RY/BSBBKj8Gd02BiET1k+QiERgLONISY5EouVHaBjYG6Q/kosV3HiBL
         0f29k2z8TV/BjHNithSK1PuWs72ig9jSrBVoBbQBcEO/AFI5HkNO13fqX4rjTHdwgsdj
         AXJw==
X-Forwarded-Encrypted: i=1; AJvYcCXCWQZrotlde9o1VDfG2AHuoUt1mkWVWpLJLevrE8nnr7zB4SHqDqz0523O1NnnsuUXrjG7CwhVegR5UF33VrRIPPHABeLEzk8bmw==
X-Gm-Message-State: AOJu0YwUoqdMicLMBFyhJ3l3tyFg2oRdjbQoAu7yUNYP1/n6ORnusRq/
	qd+0yI0TFeTp1bQu5zQSnwMBBjnz17UpxWjbyFPhdaSNgSpIPGH8mEzHGixHQHs=
X-Google-Smtp-Source: AGHT+IEyY0uo9sxm3c77EHMIMldafeOPLJD2VjS8oEye05bD2H7dpe+TuMi9MuCDSKsXFoJEhRus7A==
X-Received: by 2002:a17:906:528d:b0:a3f:4b56:b9bc with SMTP id c13-20020a170906528d00b00a3f4b56b9bcmr6779201ejm.47.1709016675374;
        Mon, 26 Feb 2024 22:51:15 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id k7-20020a17090627c700b00a3f81200425sm448734ejc.122.2024.02.26.22.51.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Feb 2024 22:51:14 -0800 (PST)
Message-ID: <2e277281-0c28-4159-8c32-4e96254339c3@linaro.org>
Date: Tue, 27 Feb 2024 07:51:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v4 3/6] dt-bindings: net: remove outdated
 hisilicon-femac
Content-Language: en-US
To: Yang Xiwen <forbidden405@outlook.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Salil Mehta
 <salil.mehta@huawei.com>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240222-net-v4-0-eea68f93f090@outlook.com>
 <20240222-net-v4-3-eea68f93f090@outlook.com>
 <c3f3d276-46a5-4cc7-ab79-e1ca3262abdf@linaro.org>
 <SEZPR06MB695901BB60F786D7E209EAAC96592@SEZPR06MB6959.apcprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <SEZPR06MB695901BB60F786D7E209EAAC96592@SEZPR06MB6959.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 27/02/2024 02:43, Yang Xiwen wrote:
> On 2/26/2024 3:50 PM, Krzysztof Kozlowski wrote:
>> On 22/02/2024 13:43, Yang Xiwen via B4 Relay wrote:
>>> From: Yang Xiwen <forbidden405@outlook.com>
>>>
>>> The user documented(Hi3516) is not found in current kernel anymore. And
>>> it seems this SoC has been EOL for a long time. While at it, Remove this
>>> binding entirely due to recent driver changes.
>>
>> This removes documented compatibles, which:
>> 1. should cause checkpatch issues,
>> 2. is not what we want.
>>
>> Driver is still there, so first the driver would have to be removed...
>> but then why do you add it immediately back? No, it does not work like that.
> 
> I has downloaded TRM for this old Hi3519 SoC. So i think with the new
> driver, it still works for Hi3519 FEMAC controller. So i'll rewrite
> these 3 patches and describe the whole thing in commit logs. i.e. the
> old binding is wrong, inconsistent with real hardware, etc..
> 
> So you mean conversion to YAML first, in a separate commit. And then do
> necessary edition to match the real hardware? I believe Hi3519 FEMAC and
> Hi3798MV200 FEMAC are compatible in hardware. So the old binding is
> wrong, missing critical hardware resources.

If you remove binding, then it has to be done in reverse order than
adding it (see DT submitting patches). However removing binding and
re-adding it, is not what you think. It's a obfuscated way to make a
change, so better just make a change and explicitly say why and what is
happening

Best regards,
Krzysztof


