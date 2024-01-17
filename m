Return-Path: <devicetree+bounces-32683-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E742883023D
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 10:24:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D400D1C24593
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 09:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7B0913AE0;
	Wed, 17 Jan 2024 09:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cJ6s8Sas"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05571427E
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 09:23:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705483422; cv=none; b=S0abYAQEX9ILefiwgoCP5mPXAUEz7810M5tv6YUEQIWhNV8++RWfDfc1IISRjqRSgfiBzJsWLw757S9MyA77d3CJk3iZBd+uZjr5mI/ryE1QZ8zGqOOrLDtD0ZJZ1u7Gks/jdcQm77vPr5G6606XuojqscHaX6l6qwAN2mlfck0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705483422; c=relaxed/simple;
	bh=eFhjJLQ1A55C6+lODe33Thg8R/JUCeF5rPKuLhvSW90=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:Content-Language:
	 To:Cc:References:From:Autocrypt:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding; b=efwLuvNAYSX0tWZy+CBbrLKeijd5LXpIKUVoOKZQh1vfX7j/2uzOrFddtguo0okBq714fP349Q2XrJ3VQe1e1Og35OSTW1c/npFJhrc9T1iQH81rbqjbnEqQXMEo9QWjNpFlSfwaelD3bVGxBxtExsZUyhYrlhhg6GhpVD6Zlns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cJ6s8Sas; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-559ce269be2so722276a12.3
        for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 01:23:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705483419; x=1706088219; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XMLgfsLuFxayGKw0bOON88EvvCfc/fzptwa+pnNz6Vo=;
        b=cJ6s8SasA4oHYmkyar2/leDGTKq9ozNRNenh/mb9bwyBgrvhX8aCLHS6AZOKdyQVfT
         NMTf9Ov0qgmUL+SerKU7kSf7rDdya+TuNm1VgV7pfwML5CyizqdZ7jiSYQiJ+Het1g4W
         H9xB0mvjagSEe3lRPafYHjcJbJ1OVKmZwLwVY8BwQxQJKRXnbSKgxKb6jPF3Bm7xOk8n
         9KDsbu8Du9l96kCDQUnbejqG4zcuPGa3F/jvxp3TlgSaVAu/9cvdclc4lcXnawwW/hrt
         4S6fLuNpVKb9Bg9lCeSq06zpJWf0cLozFpxFbJic/VXRWJUjU3H8PICAfV0uESceL7v7
         0GqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705483419; x=1706088219;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XMLgfsLuFxayGKw0bOON88EvvCfc/fzptwa+pnNz6Vo=;
        b=AjlrTmNMqHJ73k1UtoOTS0kJfcr6inTba+RnG5BZQj79yfVIySjnSL1VULwHNld6X/
         Q6bsJnmO4IivI4+WTvlbzEbcLcidoCfF+UVaD8q+X3hx93gXYkS1ve2bFte0wLymdXW/
         Qaw2FU6OylA0rGwvd18MsOOjrGwSuR3LWpW8Fr2KRa1pGVVWHxnA30DCPrSpgoi6M2Ei
         sKjD9R1eYLN9z/LJTSxXdxr690hB9sazQRfS6s3qrc7eLSzIB8aonjjJZb18WWwyfodu
         y3R2O1VxWoSpUoAkg2cdPJw0Ta4SQZVIyPTAIqNvykQy+ZdcS5cdXzmEKwlj0lzb3iTl
         JQKQ==
X-Gm-Message-State: AOJu0YwNWbzWbT855+WW56BovOsSwMwl5jSVsvuc79YDdfeFdARbFiA8
	ZI/ApQfMqGMf6zwpuWRPCCrowA2oGG7vgw==
X-Google-Smtp-Source: AGHT+IGo5tiZJOVKok9nZQcJpSK5f9AoSO4o4rI2E1tFnIo/02sDS7V0lb79/4WZuLRbpDo+0DFSgg==
X-Received: by 2002:a17:907:c284:b0:a2c:b1f0:eb5b with SMTP id tk4-20020a170907c28400b00a2cb1f0eb5bmr4489734ejc.43.1705483419088;
        Wed, 17 Jan 2024 01:23:39 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id f18-20020a170906561200b00a2e99c12ea5sm1286967ejq.157.2024.01.17.01.23.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jan 2024 01:23:38 -0800 (PST)
Message-ID: <76ae9e57-091e-429f-97ed-1a1b4f992d79@linaro.org>
Date: Wed, 17 Jan 2024 10:23:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: serial: stm32: add power-domains property
Content-Language: en-US
To: Valentin CARON <valentin.caron@foss.st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
References: <20240111112450.1727866-1-valentin.caron@foss.st.com>
 <aae32b47-1bb0-4af0-baf0-836dc91b9427@linaro.org>
 <1639c6b9-1cca-4f4c-a329-fc4618c572f6@foss.st.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <1639c6b9-1cca-4f4c-a329-fc4618c572f6@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 17/01/2024 10:21, Valentin CARON wrote:
> 
> On 1/15/24 16:05, Krzysztof Kozlowski wrote:
>> On 11/01/2024 12:24, Valentin Caron wrote:
>>> Add "power-domains" property in stm32 serial binding to avoid:
>>>
>>> serial@40010000: Unevaluated properties are not allowed
>>> ('power-domains' were unexpected)
>>>
>> It would be better if you checked whether it can be part of power domain
>> or not. What if the DTS is wrong?
>>
>> Best regards,
>> Krzysztof
>>
> Hi Krzysztof,
> 
> I'm not sure to understand, but if you mean that there is no
> power-domains properties right now in all stm32mp device trees
> and so it does not required to add this stm32 serial bindings:
> 
> Theses will be upstreamed in the future, and because power-domains
> property is optional, I can add it right now in stm32 serial binding
> to anticipate.

No. You used argument: "add because DTS has it" and I want different
argument: "add because it is the right thing to do because foo and bar".
If DTS is wrong, then your commit and this explanation is wrong.

Best regards,
Krzysztof


