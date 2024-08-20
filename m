Return-Path: <devicetree+bounces-95085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8A895803B
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 09:47:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 15D8B1F21AD5
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 07:47:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 980FB18A6BA;
	Tue, 20 Aug 2024 07:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="DKRRP2/l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4CD118A6B5
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 07:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724139949; cv=none; b=WioEsRXpor4aWG34PvqmKTQfUl3AxojK5EHtYgfYMtGQpDDB14kJZuT57jvp8HGfFjaqOZ4IXpOGtbeeWAQ3S4VBBLcDVPhmn6LgycBuspGtqYQ4wb3ZWXn/SRQkp+jBNm/i26aVDsXHCWKtrta9IoWfuFJ86wnYeQYqqwAJG78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724139949; c=relaxed/simple;
	bh=IzqUJpOxWHIZLXuAxFpK1IY0UQNTFwHq2Cl7sGYmSNc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FEdv7jCxbe8FML489e5NaMcaOmWQ2OgQ2q7fpr7Eo21+mNg96dl5trMW3OR4DqZk3qR0bG++fl8yPl21yM2fkL83675iPo9ktOAawSi2QQQ/vhCP+46cHOLzy5/B0WLeLiUsER5tsZHxSAFiDggLDbiiwav2/SsSMRwHDUWU3c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=DKRRP2/l; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a7ab5fc975dso508567766b.1
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 00:45:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724139946; x=1724744746; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CMkxnD7tJSGVlFCxUXgz+W1GqsA8QnvZFdBKuBS4r0w=;
        b=DKRRP2/lG/KD15SJCI0RqTxdmoTIm/1E5+2iADrz5OzuMLyqV+l+AHC44dDGjw2ban
         Q7hbUL52oIvC4RtRXVcN0eeL7dsM/ZWZgC6aRt/1rIs9vomRhARUOCvK/2ZJNYViHAsn
         Qbib/usuNUVAkpvj8WZ77HU0/rTfUyChnYKf0eGQ8ULu6lr2yg11CDeiH1m201vkpp5k
         Kl/B5Z7TddWkr88Z3g/dYVKlCGWtYOimqS0qt1Ei1RjzpiQ+Pjez/jDC7P4AM0Hz5kYN
         kaPPOxhOWh4yL0rRTJVR5g6W4cBVhe1rKxeyixFxhHDwEm2Bveii3R8be9OVTKKZvMW9
         rISQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724139946; x=1724744746;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CMkxnD7tJSGVlFCxUXgz+W1GqsA8QnvZFdBKuBS4r0w=;
        b=AENcGRxUVrc6frRkIXe1b6zOFjYYJA0WhHVojvpBwioBQKQ2R6I6IPH/HzwZWh+QxR
         bedJu/Ftuv1auuD1gUYjdsvGVGJy+mkz7ChjBmn3FoWT4Nj8D0bN+LlHez1nmfu0s9UU
         v1FY7qhtgIBLJCggDxJs3muMn8ZXdsS8gB+y7jrZfaBa9XwvpTUjjZ8F0UplRrk8y/IU
         RI4aBI0xNFvKsTnlCPA48XEfJh1m2KcAjhN1ws2u+jGDAaBU9oJOZsjLgv52x4nlXU7w
         w5bPx8x3XNFij8JEYizzwttrorm+CXEemi7ZD2Q3T12BXOnbkVz9zmLB1yE4h9WvXxHW
         wwOg==
X-Forwarded-Encrypted: i=1; AJvYcCW0F4uV512WvlKKHRkGHuVjwOvAC4/VnmEmS1HSuQoOrIuGNdHb72YHksaalBpSTVl1fxgIpbzznowTTlwk+G9v5RrUKrhxdZr5sQ==
X-Gm-Message-State: AOJu0Yz8wlDvZHTp3hVmeSuRLZFXr34wKJe4udKrows01jAbsE2Deguv
	DMpzPpVjLld1gHLKUWXqHIKi6Hnco+j1d68c/TyKCHRYGSOoqWVCg+AnKx84MoQ=
X-Google-Smtp-Source: AGHT+IGEB9b5o3lQUcpVrzOpOPM4TKWZrn6n4CB6Bt48ZfipcQPhnHGYi1zYToUDh19MHWDjV7QeBA==
X-Received: by 2002:a17:907:6d02:b0:a77:da14:8403 with SMTP id a640c23a62f3a-a83928a64e3mr795678866b.2.1724139945917;
        Tue, 20 Aug 2024 00:45:45 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a83aeb6eb4dsm430535166b.35.2024.08.20.00.45.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2024 00:45:45 -0700 (PDT)
Message-ID: <709ddcee-637d-49d3-915b-0872b3c67f30@tuxon.dev>
Date: Tue, 20 Aug 2024 10:45:43 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 07/11] dt-bindings: i2c: renesas,riic: Document the
 R9A08G045 support
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: chris.brandt@renesas.com, andi.shyti@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, geert+renesas@glider.be,
 magnus.damm@gmail.com, p.zabel@pengutronix.de,
 wsa+renesas@sang-engineering.com, linux-renesas-soc@vger.kernel.org,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240819102348.1592171-1-claudiu.beznea.uj@bp.renesas.com>
 <20240819102348.1592171-8-claudiu.beznea.uj@bp.renesas.com>
 <gxjlmdjicwzlexitsx673beyn7ijuf47637nao2luc5h6h6hvi@qstobttin7dw>
 <e6377448-9af3-4807-a8fd-197f5b2b4aa4@tuxon.dev>
 <56204f92-d1d4-4681-8a9d-f28925919ef4@kernel.org>
 <20240819-sizing-devouring-17b74473d1a1@spud>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240819-sizing-devouring-17b74473d1a1@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 19.08.2024 19:39, Conor Dooley wrote:
> On Mon, Aug 19, 2024 at 01:22:39PM +0200, Krzysztof Kozlowski wrote:
>> On 19/08/2024 13:10, claudiu beznea wrote:
>>>
>>>
>>> On 19.08.2024 14:05, Krzysztof Kozlowski wrote:
>>>> On Mon, Aug 19, 2024 at 01:23:44PM +0300, Claudiu wrote:
>>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>
>>>>> Document the Renesas RZ/G3S (R9A08G045) RIIC IP. This is compatible with
>>>>> the version available on Renesas RZ/V2H (R9A09G075).
>>>>>
>>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>> ---
>>>>>
>>>>> Changes in v4:
>>>>> - added comment near the fallback for RZ/G3S; because of this
>>>>>   dropped Conor's tag
>>>>
>>>> That's not a reason to request a re-review.
> 
> FWIW, I don't care about how many binding patches I do or do not get
> credit for reviewing. 

I had no intention to drop your credit for reviewing this. In the past I
went though situations where reviewer complained due to keeping the tag and
doing very simple adjustment on the next version. I dropped your tag to
avoid that situation here too and mentioned it in the change log.

Thank you,
Claudiu Beznea



> Feel free to give a tag yourself Krzysztof in the
> future if you come across these situations and I'll happily hit ctrl+d
> and remove the thread from my mailbox rather than reply :)
> 
>>>
>>> Sorry for that, I wasn't aware of the procedure for this on bindings.
>>
>> There is no difference. Please read carefully submitting patches,
>> including the chapter about tags.
> 
> Yeah, I don't think this patch is materially different on those
> grounds...
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> 
> Cheers,
> Conor.

