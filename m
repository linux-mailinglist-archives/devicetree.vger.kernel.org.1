Return-Path: <devicetree+bounces-179596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCDAAC0E7B
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 16:41:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA80AA410A1
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 14:39:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5277428C87C;
	Thu, 22 May 2025 14:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="QCvAumpQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84E5628C842
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 14:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747924794; cv=none; b=uQzKJVWHx/y6xSJvg64Et08eBK0FmZkeutHaHmwrbZyCZF4P78UwJOqHudP30QU66kwnfk36tBzGxLcwEVQL9TCh/gdmqCOJlUYpl1ImVFsDF5yWH1h0CRtkQQT+IZdNgoLFNCNaAFfyqbiN8fQwGBodIxbwAO8pM+oDTRGNpfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747924794; c=relaxed/simple;
	bh=YKlbXnURs97TmbTpjUezNbI938aiKGi/vqj82PNrfgw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A1JTBUyvVYlzxAT3QrNcs+kuM9M7uSIKEUOpSVFUVDT9PAxgVVJ9qYlZSNt7FKHlC2UGBK2X9mqYV2ghsoh8ArK4mbo/xBZ1XXAxyGdvYqX5rNZlXmZvoT0xlCUTtQMaqhZ/kiDd4zM/hUmdFplmr6S0eqsCs8rnsWGDpTo1EQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=QCvAumpQ; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-6020ff8d51dso5419028a12.2
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 07:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747924791; x=1748529591; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5dUW3XcT56QSO6IzrjYqsZTqvCBor25DIllhfgnMqf8=;
        b=QCvAumpQmugaw0sbSIj8flMl4Rjm4dyNn71jU06GSadnbIFiluK9vVU1TkWoVf+MM7
         CYLILaNBEi8emIR3xNY6MN/CKcpuGpa549RPt83W0qQLaYSFiVlfZ12vt3i7Selu1Cqy
         fixKIP2nVTwQkLC1hg/vwgQMjat2mBbN3O1EWHvzpMQPWpqg0C6NPVRcARO6g4XuldHs
         a6cjWspkl2+reFmJKmkCkVh945GqIv3HZAMdztT1taodPCzSqOtkrNVBq/JV2YjhcYVu
         uz8BbByVeP+GsJEBQ/HVjBcCnQS2bwkIWr62sXDq3miABZtUMGRiXso7KK54e+2ejKpU
         hUgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747924791; x=1748529591;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5dUW3XcT56QSO6IzrjYqsZTqvCBor25DIllhfgnMqf8=;
        b=YfcgCmNdyQ1hw3sf5UCmA3zmAI9c3Z2wT0nr5acTXWgWRR27KHSqqRvElmcE9JtPJN
         5LVAju8zZyvSVFboTTEtrztXYVjDnIjC8tinAGbuDzCeGVe8hdg1Nryeqq1CJ4gDutBE
         c406OOWP7ZNBkwkPjXGorWcanlil6/Sj10BfpLmtBncx/ZLraTGm3X+kG8v6hjwMWKe5
         TV8HxpViGXFjFGPP7CltEy0XHVdOFreAY+8X09AGSL6+VL6zTOp0qzTV7icrWrMdESgQ
         CohuzGxpDXi8SHoMXp/uRC3Kh6VW8AVzOEURCxBrr4tez78s0fvVAME0JI7KNQuvPKxw
         d1ag==
X-Forwarded-Encrypted: i=1; AJvYcCW8mtWv18YDO9eJ7AXnIIvF29+qo438VUm9kmFwTBlW3oinGbaIy4rItwBRHeXlnGwwOuw8Oh1k0l0Z@vger.kernel.org
X-Gm-Message-State: AOJu0Yww0jor+RRk00/45y3gUVA/RpKxSQJZY443COec1VV9puk23xrP
	cZ+Fjl7YIyPdVA3BJMF9zlVuna3UwDuHKw4A2dmNIUrmUShsQDd01owwfuoOC5Wbbeg=
X-Gm-Gg: ASbGncsnrEP0e+kiB76le61OrCzvL0HHkwMpwSziEHBKCYb0tqFIdu6S78iSRlt82XC
	oA48WZfqRhLGwBMh2QdlA/pQ+bGMQ/Cl66dat7DmH54CYbKudXQ7Hv3tAheOr5s+FLy9lYtsgBW
	ZOq50X6RBpBo8VyNp8KGVvSoT2q9FV3EkmrbkbNeBq+yFrFTlXdyqVHUJ2YEM/qlGieoW/naHIs
	sfTp6wcw4Z3vYi3y3GE+dd6C5GdCusWvuk9e7dwCmTiGvDrC8Sb4UJpyH+3NqlV9G0PMl1nbtd2
	uR2e3qKFWfJC0Z/YT1F87nwRzIpepTruUv32Ab84JVrIQTsw85lhKTuK1fk=
X-Google-Smtp-Source: AGHT+IE/RdKTMZdYx9F6yx1Kzprvz+cSKkMQRkLYiOsz7mEXFrIWg/Hdk4IKesUgJcilzgg+XPJrLQ==
X-Received: by 2002:a05:6402:34c8:b0:602:4405:777b with SMTP id 4fb4d7f45d1cf-602440578f8mr5149377a12.24.1747924790721;
        Thu, 22 May 2025 07:39:50 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6004d4f1c7esm10543212a12.14.2025.05.22.07.39.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 07:39:50 -0700 (PDT)
Message-ID: <797611e1-3786-45c4-9103-3ee8f96cec6d@tuxon.dev>
Date: Thu, 22 May 2025 17:39:47 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/12] dt-bindings: phy: renesas,usb2-phy: Add
 renesas,sysc-signals
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, yoshihiro.shimoda.uh@renesas.com, kees@kernel.org,
 gustavoars@kernel.org, biju.das.jz@bp.renesas.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-hardening@vger.kernel.org, john.madieu.xa@bp.renesas.com,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
 <20250521140943.3830195-6-claudiu.beznea.uj@bp.renesas.com>
 <20250522-evasive-unyielding-quoll-dbc9b2@kuoka>
 <b22e7a46-7e35-4840-aae3-a855c97fbde4@tuxon.dev>
 <4a07048a-c55a-4fd3-b4e5-7f9d218de76f@kernel.org>
 <68d83aaf-280a-4c19-becf-c6e1d9c2432b@kernel.org>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <68d83aaf-280a-4c19-becf-c6e1d9c2432b@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 22.05.2025 15:48, Krzysztof Kozlowski wrote:
> On 22/05/2025 14:46, Krzysztof Kozlowski wrote:
>>>>>  
>>>>> +  - if:
>>>>> +      properties:
>>>>> +        compatible:
>>>>> +          contains:
>>>>> +            const: renesas,usb2-phy-r9a08g045
>>>>> +    then:
>>>>> +      required:
>>>>> +        - renesas,sysc-signals
>>>>
>>>> That's ABI break.
>>>
>>> There is no in kernel device tree users of "renesas,usb2-phy-r9a08g045"
>>> compatible. It is introduced in patch 11/12 from this series. With this do
>>> you still consider it ABI break?
>>
>> Then this patch cannot be split from binding introducing the user. Don't
>> add unused/undocumented compatibles.
>>
> Or you meant DTS?

Yes, I meant in tree DTS.

> I asked about ABI which is not about in-kernel users.
> You can always change in-kernel users, so what would be any point of a
> binding and its ABI?
> 
> Best regards,
> Krzysztof


