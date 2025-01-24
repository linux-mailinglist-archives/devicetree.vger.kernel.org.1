Return-Path: <devicetree+bounces-140848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA4DA1BAE9
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 17:48:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 703F716B6EE
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 16:48:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC16E1BD9E5;
	Fri, 24 Jan 2025 16:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aKP1KF9M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 068F51AAA09
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 16:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737737289; cv=none; b=BJirAlsEXrO2J+KRGFerKcsxPqBRdLK96PD96I1VMuDD8cyzU2vnjnb5hMs0whvFSAdDn5C3y4TDGQ1a+rPnDdIvDZJPrhmTR1WP6skP8fUJ+BGciodKjisQXZ2LbMOjmXFd+WPl+LY+N73ckQsCYNNHuw4TJQyudhQ5M/S04ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737737289; c=relaxed/simple;
	bh=BFLTNIvRztfvqzR0WmJOlzRWL+6TeEDoJzhpVeRYPm8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Kb83Cb5yFae6zXqxppdt/fhQpt4Ds+Ib1bLWFo6GBoGW/Ab1deQA6G7agRC1IFZVu2eGM0BiX4Uqw62HCZRlW/fPeny4UXAME/3ukWtYVZLL6sk7RHr8t/hpEfiHoWXAOZnnYVgkE8/sJn9rmKV5tz1hmt38Rkm2V5vTsvbsV40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aKP1KF9M; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-434f398a171so1621485e9.2
        for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 08:48:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737737286; x=1738342086; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=tFpxP7HIUscLgyABMDBmuoWJ7K+N+2vaKQ2+P9xRFD0=;
        b=aKP1KF9MXq0Uzu5wRe9uiJWklHWFlo+s74lqV/HuUknvg9M/i8T/eJJ5g3xJmNO4Cg
         VTsfn0GGjgbEb6O5fThWyVq2Y/4/sdSSIfm2cxRAJU0kB+nhP2X2+11ONbSw9Vdded7g
         KhnP3sGWDoKM8Rn2Q5vw42L3nZze0Uno7KnwG09qAmirUx/F8SVpOUZ6puRdj1YOEQwj
         qsVuWPS9bxq1ku4z5iGQ3ATGeTA0+8SR7jZup58HaPrvYRkWSfQprfCjlW6nohdTFCXf
         Hv+xhbZZaIwsG1dmauQhB8BI95racKrK3pq9OEh9JKD/X8H/2W2cp3IDKyW4/TyOrtcA
         4I0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737737286; x=1738342086;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tFpxP7HIUscLgyABMDBmuoWJ7K+N+2vaKQ2+P9xRFD0=;
        b=q4mKnzGwH+0Ei5XUIByymfYP6nlYF0l2AvGE2owzKbnhiU5L/O1TwRv1oAQjTkniHC
         u1Yq9QAXOMaYJVnhGK2Gq3dFTqnlE52sHNb7RooPrGZ/s0XQb1ThKxcuMfJGxF1E3sE6
         sLZknrbWyIvTYQG+XO4Jp8t6TSaXncQjQLu49iK9mmH43qGmVRGiglvpMpdAH+7TKRZk
         RrZi1GOXKCCE1FSLi9oHXaDZ7L8QRlMZvejGgbeyQZbHyECYZxinttgVzFcOiLVcA0us
         lzLR95f7uezDrg8rl2R/rHMMOnV3cN8ZodiKce58jR7zvs19qD81+BpnVP9NRKpkiPAx
         pXpg==
X-Forwarded-Encrypted: i=1; AJvYcCV/3BdUsO8hMZo4ZUfQGPtsVczwb8wedRdYRo1iSXsyBz72x92s59nfM3dMjr5BEaKyz6xiYWv7vhmX@vger.kernel.org
X-Gm-Message-State: AOJu0YxaMAbb5HymBRUMcR1LY/4bYvpQLF+SoocSviDcBeA1M9n54KzP
	H0DIrXbyWje2L8EwsIqvQPGyPR1ToLIgKZ9m+P3tthRxkspr9Pmadrb5PO6X6Tk=
X-Gm-Gg: ASbGnctOTkt9PAsZdq3rEd6Ux4fotxGtyiJwMhylfWP+uz/xwtCBzYBBYj+3whYIVsA
	4mYCoMWfMyc1alLAUYMVNWTCrL6jxWGqSfBzAouRPft5+l/PNeDpOTI6quOD7gJ5jZJS2hF29Fy
	9NiQMF4atLWe7Pnie6AwJ3SrTtoe+Iv5P2xaC6GE09EPJMpFt4CeLhyF3qaRVSm6NB3FFh7sWa5
	7f9s7NsYSaFq6wdu5WByXlepYAyc+NXkDgSMJL6wY+/xh/7gtQKkymeq6wPPgtdEmE9hUqLasBY
	NtBY48n7zDSDbaXyk5GA3qcB
X-Google-Smtp-Source: AGHT+IEAO067R0rz/SNoXsbJuZsB4tR7Nmi8XWJWmDM3XfZyXMg82GtcHI10EK24LYFZnMg33lT6fA==
X-Received: by 2002:a05:600c:3b9c:b0:434:a339:ec67 with SMTP id 5b1f17b1804b1-438926dc167mr109813135e9.3.1737737285939;
        Fri, 24 Jan 2025 08:48:05 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd4b99dfsm32832985e9.26.2025.01.24.08.48.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jan 2025 08:48:04 -0800 (PST)
Message-ID: <639b4e3a-3f68-4fba-aa33-c46dcb6fc88f@linaro.org>
Date: Fri, 24 Jan 2025 17:48:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: mfd: syscon: Add ti,am62-ddr-pmctrl
To: Markus Schneider-Pargmann <msp@baylibre.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Siddharth Vadapalli <s-vadapalli@ti.com>,
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tero Kristo <kristo@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
 <20250122-topic-am62-dt-syscon-v6-13-v1-2-515d56edc35e@baylibre.com>
 <20250124-heavy-jaybird-of-vitality-4cbe24@krzk-bin>
 <20250124-able-beagle-of-prowess-f5eb7a@krzk-bin>
 <mocfnpebc67xegcis6tx3ekhsjcsqnvhwtipufycrtq2be4nbh@pmxhir5gmkos>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <mocfnpebc67xegcis6tx3ekhsjcsqnvhwtipufycrtq2be4nbh@pmxhir5gmkos>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/01/2025 17:05, Markus Schneider-Pargmann wrote:
> Hi Krzysztof,
> 
> On Fri, Jan 24, 2025 at 09:22:54AM +0100, Krzysztof Kozlowski wrote:
>> On Fri, Jan 24, 2025 at 09:19:49AM +0100, Krzysztof Kozlowski wrote:
>>> On Wed, Jan 22, 2025 at 11:24:33AM +0100, Markus Schneider-Pargmann wrote:
>>>> Add compatible for ti,am62-ddr-pmctrl to the list. There is a DDR pmctrl
>>>> register in the wkup-conf register space of am62a and am62p. This
>>>> register controls DDR power management.
>>>>
>>>> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
>>>> ---
>>>>  Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
>>>>  1 file changed, 2 insertions(+)
>>>
>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> Un-acked, I missed the point that you really speak in commit msg about
>> register and you really treat one register is a device. I assumed you
>> only need that register from this device, but no. That obviously is not
>> what this device is. Device is not a single register among 10000 others.
>> IOW, You do not have 10000 devices there.
> 
> Do I understand you correctly that the whole register range of the
> wkup_conf node as seen in arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
> should be considered a single syscon device?

I don't have the datasheets (and not my task to actually check this),
but you should probably follow datasheet. I assume it describes what is
the device, more or less.

I assume entire wkup_conf is considered a device.

> 
> Unfortunately wkup_conf is modeled as a simple-bus with currently 5
> subnodes defined of which 4 of them consist of a single register. Most
> of them are syscon as well. So I think I can't change the simple-bus
> back to syscon.

Huh... Maybe TI folks will help us understand why such design was chosen.

> 
> For the DDR pmctrl, this really only consist of a single register, the
> registers surrounding this pmctrl are not related as far as I can tell.

DDR pmctrl does not fit definition of syscon then. Syscon is a
*collection* of miscellaneous registers. Most likely the entire block is
that collection and someone decided - oh but I want syscon per each
register. Awesome. And then what if someone wants two registers, but
there are spread apart and in the middle is someone else?

| ddr pmctrl 1 | something else | ddr pmctrl 2 |

Two syscons?

And what if you have three registers? What if four? You see where it is
getting at?


> 
> What do you suggest how I can solve this?

I have no clue how the device actually looks like, so tricky to give
answer, but I could imagine total node rework, calling everything
syscon+mfd. This would still be backwards compatible.

Or adding one new block covering remaining parts of the device, so at
least people stop adding 1000 new syscons per each register, because
there will be just one.

Best regards,
Krzysztof

