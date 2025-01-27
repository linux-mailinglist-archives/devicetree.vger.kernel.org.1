Return-Path: <devicetree+bounces-141087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA6DA1D5CD
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 13:10:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B0583A386F
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 12:09:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1DC71FF1A9;
	Mon, 27 Jan 2025 12:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gAP9/WDJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 992F51FECC7
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737979795; cv=none; b=cQjusmJPRKo0shL7MGgZqk+FgccvRHdOdcDkVzbiyGCqNmROhkOpQs/rNWlvj7DKwzR8VC/OsVTxz5wecpCn2S/XAXPt/05/UArGAj0LHxgaLde3UORSz6HgWXjQFCl1tpsOO+v1NdFUG/0xju4x4VAKoi9UNOiqmREa06uZ7OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737979795; c=relaxed/simple;
	bh=H/XTSEh9GBTfKP3b2IE0x472kFKTkDNQQYJkiwztXD4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HMXXwReKhJn5dPLFtTcKrh8JRh5xhFmN7w4wnc2z6pnjK3smXTpipWV4vEcaClyKHEScfQd3vOB2VTuqyjj3Fly/dQ0XgvRQwFW3T1QuJcyTIYt0fZE+voGjQ1rrXhn88fo+wvKwB5hGWf/QC9/ArLaMogRKaDD3t8KFSCx3uKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gAP9/WDJ; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4361e82e3c3so6924265e9.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 04:09:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737979792; x=1738584592; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=HUe3DUnXqiKmidXYzS2M8Ys8OYEMZaaNdOcb0wUSp4o=;
        b=gAP9/WDJoJeWXhDU2o0zaVK1uhoicp76XjPSC/k+A8+roYFMtaqmUeOK/8FpsUeVia
         yxXBpdWugbpf1Oc4/kOjRlbpevV7U/XYCpEPKQg48zL48eXK7v/LYJVTQlZmnTmHPpoQ
         +FNyj8KjIrR60RfdTZCmav2Is714sJYauKQrPem3qSp6plaOj6sb6GhQBiki4lyW90nf
         +SYBwzBrkVPss/Y23Sc4A9M2H2IqH9mwiuhXlgoRks4d5i5mJhg/HBLqK+oFSpGFfQdP
         GefnfGd3VbcjPS9CXsMdxFPt1ZV5NULk/xUS+tpF2gaKuWZLuOB63fr8FxEu85cfKZY3
         rLQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737979792; x=1738584592;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HUe3DUnXqiKmidXYzS2M8Ys8OYEMZaaNdOcb0wUSp4o=;
        b=b93KQj/0ntTOaldgsb6MRhSDBLDpbN2QUmMuit+Js4s22MAJ62DSv4b/aTmqttooSr
         fWJaYVzBRs4bVQP6PUHRnIbBiC3tsHt6YX1vmH4Z9MINyKjdKYgU9YSB6h6nzEzUnchh
         3kSTR1lxPP9QJJs9CgPKZnNie+wn1iMXy/U2MpnGBj2XqlHaUySxDXUymbKnHioFUW31
         pryiFtSkCmKrWSjW/RhBhCrl5hrLmdZcW2qO15CecKDQxZIyZqjvQ46+pk0RUga1mvAP
         BkuDqvMFdzi2k6EdEKb2SQYBFvQox7EMHd8Az9g8CEP1chfMKNDsM8sSiY7khT1Kx/K/
         gJPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhTSBCEXtumLGk1jFJFaYHeARiTB/uVYRNZiuF8u9ZgBw8lA4eYaIZXDPWK+PJndqkaMIUTTpDk2im@vger.kernel.org
X-Gm-Message-State: AOJu0YyCdeyuqk3XgbvNpez2Cl/fXRsJAiL/zrTV+/Iwnjll//dq1yb7
	ymGB5iyxrNb/4ro/uH26RvWKIcGvPmYB4278cx6vS3sSXzZV3PGfsUXmyNKyQFM=
X-Gm-Gg: ASbGncu8HU7S8v+Ke2pfbOjPJSk0OumdWBXyh8ekoFIRdawnGOcEHHFGrw59/WOxgNq
	A30Xo78X2nbz114cDQcaoxg3KmvD6J/DhJV2WLHkM01+lhBdkEF18JPOQ/Tx2vYCxQmgiDcY+8o
	rWaD9mKMFGJRIdViezaieU32WV2g04HZ8dc/KntZdwe++aIHWapqzi4HBbH5HSIe0lRSqXF3zAE
	KhflA6P8Sf2jsDsqnb1b4BzZYLP8gW732WL/3g31ldyoU/xcQYeovFEJcbwBE0u1cwG3Nf3A1/8
	0JRnhAhOi5I/IZoJvLw0eck=
X-Google-Smtp-Source: AGHT+IFCbLjiN8Di7PeMQ8lCk2sCxmh5vVxRKf+2Wzops3gNwmJ7assU8UruIp6OXCZ/19+7mxN9Zg==
X-Received: by 2002:a05:6000:1faa:b0:385:e374:bd4 with SMTP id ffacd0b85a97d-38bf5655a66mr14175781f8f.3.1737979791734;
        Mon, 27 Jan 2025 04:09:51 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a17d697sm10719821f8f.29.2025.01.27.04.09.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 04:09:51 -0800 (PST)
Message-ID: <74ee6d9b-fd78-4d8a-a94f-b2c4dc794b60@linaro.org>
Date: Mon, 27 Jan 2025 13:09:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: mfd: syscon: Add ti,am62-ddr-pmctrl
To: Andrew Davis <afd@ti.com>, Markus Schneider-Pargmann <msp@baylibre.com>
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
 <639b4e3a-3f68-4fba-aa33-c46dcb6fc88f@linaro.org>
 <d6252b73-0bcc-4724-8144-d6a98c8980f8@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <d6252b73-0bcc-4724-8144-d6a98c8980f8@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/01/2025 23:35, Andrew Davis wrote:
> On 1/24/25 10:48 AM, Krzysztof Kozlowski wrote:
>> On 24/01/2025 17:05, Markus Schneider-Pargmann wrote:
>>> Hi Krzysztof,
>>>
>>> On Fri, Jan 24, 2025 at 09:22:54AM +0100, Krzysztof Kozlowski wrote:
>>>> On Fri, Jan 24, 2025 at 09:19:49AM +0100, Krzysztof Kozlowski wrote:
>>>>> On Wed, Jan 22, 2025 at 11:24:33AM +0100, Markus Schneider-Pargmann wrote:
>>>>>> Add compatible for ti,am62-ddr-pmctrl to the list. There is a DDR pmctrl
>>>>>> register in the wkup-conf register space of am62a and am62p. This
>>>>>> register controls DDR power management.
>>>>>>
>>>>>> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
>>>>>> ---
>>>>>>   Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
>>>>>>   1 file changed, 2 insertions(+)
>>>>>
>>>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>
>>>> Un-acked, I missed the point that you really speak in commit msg about
>>>> register and you really treat one register is a device. I assumed you
>>>> only need that register from this device, but no. That obviously is not
>>>> what this device is. Device is not a single register among 10000 others.
>>>> IOW, You do not have 10000 devices there.
>>>
>>> Do I understand you correctly that the whole register range of the
>>> wkup_conf node as seen in arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
>>> should be considered a single syscon device?
>>
>> I don't have the datasheets (and not my task to actually check this),
>> but you should probably follow datasheet. I assume it describes what is
>> the device, more or less.
>>
>> I assume entire wkup_conf is considered a device.
>>
>>>
>>> Unfortunately wkup_conf is modeled as a simple-bus with currently 5
>>> subnodes defined of which 4 of them consist of a single register. Most
>>> of them are syscon as well. So I think I can't change the simple-bus
>>> back to syscon.
>>
>> Huh... Maybe TI folks will help us understand why such design was chosen.
>>
> 
> Many of the devices inside the wkup_conf are already modeled as such.
> Clocks and muxes for instance already have drivers and bindings, this
> is nothing new to TI.
> 
> If we just use a blank "syscon" over the entire region we would end up
> with drivers that use phandles to the top level wkup_conf node and
> poke directly the registers they need from that space.
> 
> Would you rather have
> 
> some-device {
> 	ti,epwm_tbclk = <&wkup_conf>;
> }
> 
> or
> 
> some-device {
> 	clocks = <&epwm_tbclk 0>;
> }

How is this comparable? These are clocks. You would have clocks property
in both cases.


> 
> with that epwm_tbclk being a proper clock node inside wkup_conf?
> I would much prefer the second, even though the clock node
> only uses a single register. And in the first case, we would need
> to have the offset into the wkup_conf space hard-coded in the
> driver for each new SoC. Eventually all that data would need to be
> put in tables and we end up back to machine board files..
> 
> I'm not saying every magic number in all drivers should
> be offloaded into DT, but there is a line somewhere between
> that and having the DT simply contain the SoC's name compatible

That's not the question here.

> and all other data going into the kernel. That line might be a
> personal preference, so my question back is: what is wrong
> if we do want "1000 new syscons per each register" for our
> SoCs DT?

Because it is false representation of hardware. You do not have 1000
devices. You have only one device.


> 
> (and the number is not 1000, scanning the kernel I can see
> the largest wkup_conf region node we have today has a grand
> total number sub-nodes of 6)

But what is being added here is device per each register, not per feature.


Best regards,
Krzysztof

