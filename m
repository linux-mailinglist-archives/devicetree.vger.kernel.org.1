Return-Path: <devicetree+bounces-31284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 048EE82AAE6
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 10:30:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7E3A71F2863B
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 09:30:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0188E10A08;
	Thu, 11 Jan 2024 09:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i9rUgT1Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5724B1094E
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 09:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5589d38de53so426969a12.0
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 01:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704965397; x=1705570197; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zI8aOKoY1J1LzQGBJCecKcYIvB4FJqN1IGqRzkcldyQ=;
        b=i9rUgT1ZEzcGgBtvzCddhCA61kOfq5KEeaXh68BGqZtpTCAxM5/65iNYXgoHSmMLPm
         nxNTcZxBX+Ctx1thUv3gDNnpZxtqJBu+a0iVymZyPYLgUNH4j4YQwz8UmAr/uHdJtm5V
         9HMaUgQGflQPc+uNuG2cBG4PMoxu5yshzXgi0JUL+72oxelikabHBmn3qrMvDIZWKjT1
         xp4suj488nlwwHVDi8po3lwVD7WJQV3/XJRmmuIctjmUm/+NuvmYNXKWh4NlFJo/fZ/G
         ZSi5dpk2mEYgwDjqcySE3e1sYjgS/2vDiMFlRPuNmcPwU7eX3L+Q+AH3vjzaNIVJLC5w
         4pSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704965397; x=1705570197;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zI8aOKoY1J1LzQGBJCecKcYIvB4FJqN1IGqRzkcldyQ=;
        b=S1g8hehKRrlI5oj3i7+IY2JA9TzbYYMZS86I7uVt/OO2gNCBkHoud9WQ5JAoceW4f7
         p9xmEtTot+0fqfLWNzcd7unFLl/XLpbbHGnWP2Y6dAwDd5V1JOIXkTG5Y+/N+SGEH+Vf
         L1i67cMbg3ruXFCCht0vJzlfQ8DOtjWAbgvYYGJxMhEPIkAEm8UEa4hbcpKRKMVk+c10
         7RmvqhcGU0rRs+AUXahecXlheRsj2YcQygRICYdtB3ol0ZIkhMW6rdfVExvYJwmTYzem
         0dCaKsBq4FpCBV8hfWisjQJEsaLEHDjeLrC4XMD+ORDRUAedtScPKB10c+3Q2E9xto23
         tnQQ==
X-Gm-Message-State: AOJu0YxA/uuarl5eH4HR7LpQxvdMR0Rhoe51YXbcWzndKdTftnq5hFbd
	H/o/INVKBDOJCiu4rdUeNE/Z4Ajc1TqmGw==
X-Google-Smtp-Source: AGHT+IFmJvC4h8dnnPMKN5HoXLRJV8fo6ByPAMiPWXQlUHuh1MZAApTAIIIoZ7IAwmgZNLXXFThv7A==
X-Received: by 2002:a17:907:9346:b0:a29:335f:4248 with SMTP id bv6-20020a170907934600b00a29335f4248mr481321ejc.45.1704965397637;
        Thu, 11 Jan 2024 01:29:57 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.112])
        by smtp.gmail.com with ESMTPSA id b4-20020a170906150400b00a2a37f63216sm353336ejd.171.2024.01.11.01.29.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jan 2024 01:29:56 -0800 (PST)
Message-ID: <910736a3-069f-430c-ba6c-221777ddcda2@linaro.org>
Date: Thu, 11 Jan 2024 10:29:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 00/24] Support more Amlogic SoC families in crypto
 driver
To: Alexey Romanov <avromanov@salutedevices.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>
Cc: "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "clabbe@baylibre.com" <clabbe@baylibre.com>,
 "herbert@gondor.apana.org.au" <herbert@gondor.apana.org.au>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "jbrunet@baylibre.com" <jbrunet@baylibre.com>,
 "artin.blumenstingl@googlemail.com" <artin.blumenstingl@googlemail.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, kernel <kernel@sberdevices.ru>
References: <20240110201216.18016-1-avromanov@salutedevices.com>
 <ZZ8HP7dJgVaZLMw5@Red> <20240111091840.7fe4lqx225rdlwly@cab-wsm-0029881>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240111091840.7fe4lqx225rdlwly@cab-wsm-0029881>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/01/2024 10:18, Alexey Romanov wrote:
> Hello!
> 
> On Wed, Jan 10, 2024 at 10:08:15PM +0100, Corentin Labbe wrote:
>> Le Wed, Jan 10, 2024 at 11:11:16PM +0300, Alexey Romanov a 'ecrit :
>>> Hello!
>>>
>>> This patchset expand the funcionality of the Amlogic
>>> crypto driver by adding support for more SoC families: 
>>> AXG, G12A, G12B, SM1, A1, S4.
>>>
>>> Also specify and enable crypto node in device tree
>>> for reference Amlogic devices.
>>>
>>> Tested on AXG, G12A/B, SM1, A1 and S4 devices via
>>> custom tests and trcypt module.
>>
>> Hello
>>
>> Thanks for your patch series.
>> Unfortunatly, I fail to apply it for testing on top of linux-next.
>> On top of which tree did you have tested ?
> 
> We use 6.5-rc3.

Don't develop on old trees... I mean, internally you can do whatever you
wish, but don't work upstream on such trees.

Best regards,
Krzysztof


