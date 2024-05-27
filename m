Return-Path: <devicetree+bounces-69359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 279A88CFB7E
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 10:34:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B9221C21009
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 08:34:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 228E95427E;
	Mon, 27 May 2024 08:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HFJ+/D7U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9EF2744E
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 08:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716798842; cv=none; b=f4p2TP+wEX0woP3GChZ2v0r0g2N8VGxFE056b2uLxs5j+s0q42AHKFifMBOg9UYgGvSeJpLGXxuN82QsL30phP9rc5u/E2umac4uNcEIp3oH5aE3awNgibKdjjGVoSjTMhWuKYrn9bl1tqTBeegx+fJPaRVY1dfaDi48lGa5ysw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716798842; c=relaxed/simple;
	bh=ovTWx/4tBiWPf8NcW0MDaY5mZicrlGCgmALsauOxQlo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JeHYYEqDHLycooXM11jrsFQLmFlEJhkxq06fTJNuE/uFt9yoO4JutDDjpOzEDpt9r4BdvIVId5ObVkazdCF6AzbxHVkfTJVaJSlGA2MBk9yJmg3dwppc/AziqN0lJDUQw4259MlnaWrKKIiLy/0iXQmuziGNg5M33piCAPsI5y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HFJ+/D7U; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5785c1e7448so2614064a12.2
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 01:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716798838; x=1717403638; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=PkhQ7NV2BiQIlRfEnI28FnJrqApDyLtxZfEoO/rxk6g=;
        b=HFJ+/D7UaJ5qqhhxTVOToM3uMEqD6XLG+2H+BOkBD0d/54AAK7a48YmrUAUPQ6hgJU
         NPar6kyBp8/lR/4/HjDp1bIy2wmt8JTE82hY08OouoF7WsGZ8CH5u2tNZweolMIdcEMq
         OTEOUop3u3gc1g34yp5syu+T1Hh3sGOkWbw5gpdQMmwuA0i9rzlpWt7MuQbCUeJlDtGj
         rDhyQwRBUutHzXuJ1/XbRy+Zn45cmDw/yaKUQ5bgr1e/Sb7xKXJXbkdgh0hp1zslOJk2
         w+RDpda71jfAleE+8/f7ecS9NpRjqooXsf53BcmS4V1vKhBdTaPwCoa9oHeNa/qrrKLN
         E9UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716798838; x=1717403638;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PkhQ7NV2BiQIlRfEnI28FnJrqApDyLtxZfEoO/rxk6g=;
        b=lYzXt0CVpTrtungqG9M810KYMODojQoRy/jhO3acupYh4eCtWPSm3iJBeKMkOOeGka
         D8bB13+G7Vo5Isk/+J7EUSur9eXZwhlHnhkpAdiSMt9N4nT0xnK2pEz+/PSCckkdXy1d
         cbcDqh5TrPyInG4/o21O0kP5V/wnZXQAFOAckj+rHJNA20A0lwcGfa65H4rWYbLeSSfq
         A5Wk2JSdsDOkoGtRfeZXirTxOOZ/gkA0pybyaakRvPJ8ZtymFokNsdqAzOpbIFbQEVL3
         gcdJ4TjN+VJ8oLdJKwt8VmjVK+3JOYzBUVbBiYc7FyRfLqLTGGMo3uLaePCuJmRN04YY
         oTAA==
X-Forwarded-Encrypted: i=1; AJvYcCXkAyru6ibzQpSR08+fDP9wbcRZZ/4QLQdUlaZs8jfoTjuFE9lq1R99F7r2p7Z7BC401nl8qrEYAWCtVyq66b0N3jMu1Jc8NUPKNQ==
X-Gm-Message-State: AOJu0Yy9sKevgR55c123mYKAu68Ni4YU3+AZxm6alyy57UK6s7hFHipg
	7xHdJIQ+nWsQDXduN/z2WJtOYxPxWswhjY8rdp6CnzDzVSEQcrqtKYJDQH++ldg=
X-Google-Smtp-Source: AGHT+IEwFmcx7b2gYAkZqKfbrTXnG3BB+mAxygiP6ob3hoPkpTkDQZ0pZTAzO9vosAQrHEu5r1h7Lg==
X-Received: by 2002:a17:906:55ce:b0:a59:c3dd:db2a with SMTP id a640c23a62f3a-a62641aaf08mr525704766b.11.1716798838489;
        Mon, 27 May 2024 01:33:58 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a626c817953sm468040166b.42.2024.05.27.01.33.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 May 2024 01:33:57 -0700 (PDT)
Message-ID: <c5aa0c8b-b2b4-4ad2-a8a8-ab26ee0edd22@linaro.org>
Date: Mon, 27 May 2024 10:33:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] dt-bindings: crypto: Add Texas Instruments MCRC64
To: Kamlesh Gurudasani <kamlesh@ti.com>, Conor Dooley <conor@kernel.org>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20230719-mcrc-upstream-v2-0-4152b987e4c2@ti.com>
 <20230719-mcrc-upstream-v2-3-4152b987e4c2@ti.com>
 <20230811-crestless-gratify-21c9bb422375@spud>
 <20230811-imminent-fancied-89663c373ab5@spud>
 <87plt7acgg.fsf@kamlesh.i-did-not-set--mail-host-address--so-tickle-me>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <87plt7acgg.fsf@kamlesh.i-did-not-set--mail-host-address--so-tickle-me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 27/05/2024 10:25, Kamlesh Gurudasani wrote:
> Conor Dooley <conor@kernel.org> writes:
> 
>> On Fri, Aug 11, 2023 at 04:34:33PM +0100, Conor Dooley wrote:
>>> On Fri, Aug 11, 2023 at 12:58:50AM +0530, Kamlesh Gurudasani wrote:
>>>> Add binding for Texas Instruments MCRC64
>>>>
>>>> MCRC64 engine calculates 64-bit cyclic redundancy checks (CRC)
>>>> according to the ISO 3309 standard.
>>>>
>>>> The ISO 3309 64-bit CRC model parameters are as follows:
>>>>     Generator Polynomial: x^64 + x^4 + x^3 + x + 1
>>>>     Polynomial Value: 0x000000000000001B
>>>>     Initial value: 0x0000000000000000
>>>>     Reflected Input: False
>>>>     Reflected Output: False
>>>>     Xor Final: 0x0000000000000000
>>>>
>>>> Signed-off-by: Kamlesh Gurudasani <kamlesh@ti.com>
>>>> ---
>>>>  Documentation/devicetree/bindings/crypto/ti,mcrc64.yaml | 47 +++++++++++++++++++++++++++++++++++++++++++++++
>>>>  MAINTAINERS                                             |  5 +++++
>>>>  2 files changed, 52 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/crypto/ti,mcrc64.yaml b/Documentation/devicetree/bindings/crypto/ti,mcrc64.yaml
>>>> new file mode 100644
>>>> index 000000000000..38bc7efebd68
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/crypto/ti,mcrc64.yaml
>>>> @@ -0,0 +1,47 @@
>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>>> +%YAML 1.2
>>>> +---
>>>> +$id: http://devicetree.org/schemas/crypto/ti,mcrc64.yaml#
>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>> +
>>>> +title: Texas Instruments MCRC64
>>>> +
>>>> +description: The MCRC64 engine calculates 64-bit cyclic redundancy checks
>>>
>>> A newline after "description" please.
>>>
>>>> +  (CRC) according to the ISO 3309 standard.
>>>> +
>>>> +maintainers:
>>>> +  - Kamlesh Gurudasani <kamlesh@ti.com>
>>>> +
>>>> +properties:
>>>> +  compatible:
>>>> +    const: ti,am62-mcrc64
>>>
>>> Is the am62 an SoC or a family of SoCs? I googled a wee bit for am62 &
>>> there seems to be an am625 and an am623?
>>
>> Or is it an am62p5, in which case the compatible should contain
>> ti,am62p5 I suppose. Sorry for my confusion here, its not really clear
>> me too since I've been seeing many different-but-similar product names
>> the last few days.
>>
>> Thanks,
>> Conor.
>>
> Hi Conor,
> 
> Thanks for the review.
> 
> am62 is family of SOCs.
> 
> All devices under this family, like am623/5/p5 and etc, have MCRC64.
> 
> I have kept the naming convention similar to SA2UL/SA3UL[0].
> 
> [0] https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/crypto/ti,sa2ul.yaml#L18

Usual answer is: no families. There are exceptions, though, so is this
case on the exception list?

https://elixir.bootlin.com/linux/v6.10-rc1/source/Documentation/devicetree/bindings/writing-bindings.rst#L42

P.S. Your email client added some weird subject prefix - please fix it.



Best regards,
Krzysztof


