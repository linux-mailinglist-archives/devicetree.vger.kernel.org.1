Return-Path: <devicetree+bounces-238053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 641F0C56D4B
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 11:27:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3B2193519D9
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:26:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F57432255D;
	Thu, 13 Nov 2025 10:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Dpl7fpkX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656822F290E
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763029599; cv=none; b=cId/ZFS+GQxrZnmpoIWGbtWch9BJicDNJGdXYubshh9FJiIYlOm/StLBtQfyrtz8XF/MPQGEt4rI0DB2J196+WY8ZkmUxmfBbdBesl7TDISw6rSMe+fnO6KvrgXKGv7QjhcT+qrax4TQ7NfQSJjqZdzG/CBsqnB/1XzSUx2+1PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763029599; c=relaxed/simple;
	bh=ZCFF04RJ9CJCCxVRA1yz9U8VC4BnDMiI7a/ozJ4Gsyw=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=brv2xS8gqY65/xFmv/GWQWne33LKkgNjTWTUAxvfPfP5pKxC+bOcFiOdasQSX2zyXyWb/xVLhtgI7KLHZHSd6L3RqhbS4E+AWlhwwp6nybbFh7YADNJPWScyl1sJvQowpCB9LAMfMEQIBY3WmfF+9be2btUXwTj0cnJ1GEw+XRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Dpl7fpkX; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42b3c5defb2so415180f8f.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 02:26:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763029596; x=1763634396; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=v8GhrcAyMh3A+V43CTkvvT8Jy87HXinsSZJMcVDG3s0=;
        b=Dpl7fpkXF0gkobSFHf7scS5hTiYA3Phb2KISMxQhISZdJwWqpX4PR5Y5rcSmmfMLo+
         l6HO1l4GiuSmzym5hv+H7QXd362GlKGj/AP/N/TGPD/crZYyIvzvZ/1am8Cu0NyWlwUg
         7k/xgszsuJKLy55vRK0M0WIe/eUbtbCsRNC8BC/GB3Wsd28mWqtisUeKPFNQ60lprpce
         xHK1RtURMlL+ZJb+SWH5vfrA8ts2Dhj2pho/SNvLW+Jdz9Yoeab4hC5InmXnqJFqbCRS
         XHw7BJl4RADFY3sm4ldIjewGF3OdMFfdcdcAcbnSQu+onp8G9brFGBrMFwyEKdecIl5q
         Wbzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763029596; x=1763634396;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v8GhrcAyMh3A+V43CTkvvT8Jy87HXinsSZJMcVDG3s0=;
        b=nWC41z9UP/1BClJg6PSiNVk3tyRQOqtMx673dOEZHK7F86ePlMwA+6AaTTEe3uvN+7
         3G4cdPWODgtChbFEnWlvJzYzQu79Vqk1idSYOlAmKQktAyrJWVGtM1ujSfislQeYc+de
         KjoI16VVkIVoDbDRVSmVn+Yn0RzrEnVEgOjLNk7295EDG5YCDYbMqzh/uedSdUU8PWYH
         7dhpfEHneDQMZuPwSZPmNca8wsR3Ql+8DaVK+c83fQSUs7gLPZp2scP0qV02EqbLQW5I
         sawaHqNrJeeRwJ7nhbQYK06Ey9xXT6Au2eepwEvLD3c5Q+2C3euKDPCsEGpA+fZ0IOZ5
         AjGA==
X-Forwarded-Encrypted: i=1; AJvYcCXn/SqpibPjJej7UM2bvXle+TQSXCpZRSE7Yx2rdCeYTBZsnCqKr328uzAaDaOPK169/NR99x24riYw@vger.kernel.org
X-Gm-Message-State: AOJu0YwXtAt0o3vkicGbRDdt/oDFsWlTvinCYgnqNaMWq0H369iseBrq
	oTVJc5ZJUvsjRxWL4kvPfbJlJ9WOawAd4urXWjRqLo5acRA0F0Jq+D9cFWaGkYE/9Fk=
X-Gm-Gg: ASbGnctLmdzKKX9VUvjFnj7SWfdKqykBr1A3pcmboc7gUmarMyd95QqAbyJDt9scLaZ
	B61eRwgwBt64RZlxxB3ZnxnmQx03ByISjDI6stVrc5vz78x0dHkOzWtNFIBHiEtID5lGV6lBGMk
	UK/xKmkRwhCNc9to3qa94e0qMfQZOusdB5zvB1QoU9eNjD1ByFDelszJWEDtubtauwB6NKAXUxD
	zQyRhF53T9f1N5A0opgmL/IrWJTjntW9RTszjuKwxZMNB9O7SIuqCbskaRtUfUWBA67XAErlF+J
	I2KCargTVPJIuqxw1FuNGlHKjnjxw8g0wsFGwIG8zBg2RSNvy3jmPZr8MPcSW3V8d+u7eiIEJWl
	j8x80TCGW+lHKTq8iu6Hn4gmZC9GZo5GLFV+ACwdQ8i+GKsW5h39hBhrIOq0YWvFi/sfiklKWZw
	ZzBNLEhA==
X-Google-Smtp-Source: AGHT+IFappH0cJvSx4iLsRJxGuedr9FOAfOnQi4qZr3vNlHJHTAAZOTa3M8ohns19ObiXS0otCFe/Q==
X-Received: by 2002:a5d:5848:0:b0:42b:3dfb:6436 with SMTP id ffacd0b85a97d-42b4bdaeacbmr6137389f8f.60.1763029595613;
        Thu, 13 Nov 2025 02:26:35 -0800 (PST)
Received: from [10.11.12.107] ([5.12.85.52])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f0b57asm3088931f8f.27.2025.11.13.02.26.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 02:26:35 -0800 (PST)
Message-ID: <62bb6c08-a1d0-4dba-a431-0d6ce49d66b2@linaro.org>
Date: Thu, 13 Nov 2025 12:26:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] nvmem: add Samsung Exynos OTP support
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 semen.protsenko@linaro.org, willmcvicker@google.com,
 kernel-team@android.com, linux-kernel@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20251112-gs101-otp-v2-0-bff2eb020c95@linaro.org>
 <20251112-gs101-otp-v2-2-bff2eb020c95@linaro.org>
 <20251113-benign-macaw-of-development-dbd1f8@kuoka>
 <9d77461c-4487-4719-98db-1c5c5025c87e@linaro.org>
 <725ea727-d488-40aa-b36d-04d6d44a8ec5@kernel.org>
 <1af37451-1f66-4b6b-8b36-846cbd2ca1e8@linaro.org>
Content-Language: en-US
In-Reply-To: <1af37451-1f66-4b6b-8b36-846cbd2ca1e8@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11/13/25 11:51 AM, Tudor Ambarus wrote:
> 
> 
> On 11/13/25 11:35 AM, Krzysztof Kozlowski wrote:
>> On 13/11/2025 10:28, Tudor Ambarus wrote:
>>>
>>>
>>> On 11/13/25 10:30 AM, Krzysztof Kozlowski wrote:
>>>> On Wed, Nov 12, 2025 at 08:29:06AM +0000, Tudor Ambarus wrote:
>>>>> Add initial support for the Samsung Exynos OTP controller. Read the
>>>>> product and chip IDs from the OTP controller registers space and
>>>>> register the SoC info to the SoC interface.
>>>>>
>>>>> The driver can be extended to empower the controller become nvmem
>>>>> provider. This is not in the scope of this patch because it seems the
>>>>> OTP memory space is not yet used by any consumer, even downstream.
>>>>
>>>> Quick look tells me you just duplicated existing Samsung ChipID driver.
>>>> Even actual product ID registers and masks are the same, with one
>>>> difference - you read CHIPID3... which is the same as in newer Exynos,
>>>> e.g. Exynos8895.
>>>
>>> Yes, that's correct. It's very similar with the Samsung ChipID driver.
>>>
>>>>
>>>> What is exactly the point of having this as separate driver? I think
>>>
>>> The difference is that for gs101 the chipid info is part of the OTP
>>> registers. GS101 OTP has a clock, an interrupt line, a register space 
>>> (that contains product and chip ID, TMU data, ASV, etc) and a 32Kbit
>>> memory space that can be read/program/locked with specific commands.
>>>
>>> The ChipID driver handles older exynos platforms that have a dedicated
>>> chipid device that references a SFR register space to get the product
>>> and chip ID. On GS101 (but also for e850 and autov9 I assume) the
>>> "ChipID block" is just an abstraction, it's not a physical device. The
>>> ChipID info is from OTP. When the power-on sequence progresses, the OTP
>>> chipid values are loaded to the OTP registers. We need the OTP clock to
>>> be on in order to read them. So GS101 has an OTP device that also happens
>>> to have chip ID info.
>>>
>>> For now I just got the chipid info and registered it to the SoC interface
>>> (which is very similar to that the exynos-chipid driver does), but this
>>> driver can be extended to export both its memory space and register space
>>
>>
>> There is no code for that now and possibility of extension is not a
>> reason to duplicate yet.
>>
>>> as nvmem devices, if any consumer needs them. Downstream GS101 drivers
>>> seem to use just the chip id info and a dvfs version from the OTP
>>> registers. DVFS version is not going to be used upstream as we're defining
>>> the OPPs in DT. So I was not interested in extending the driver with nvmem
>>> provider support, because it seems we don't need it for GS101.
>>>
>>> Do the above justify the point of having a dedicated driver?
>> Only partially, I asked about driver. I did not spot previously the
>> clock, so we have two differences - CHIPID3 register and clock - right?
> 
> clock and interrupts, but I don't use the interrupts because I just need
> to read the OTP registers to get the chip id info.
> 
>> I wonder why Exynos8895 and others, which are already supported, do not
>> use CHIPID3, but nevertheless these two differences can be easily
>> integrated into existing driver.
> 
> they can be integrated, but I want to make sure we're making the best
> decision.
> 
>>>> this can easily be just customized chipid driver - with different
>>>> implementation of exynos_chipid_get_chipid_info().
>>>
>>> If the answer is no to my question above, how shall I model the device
>>> that binds to the existing exynos-chipid driver?
>> Just extend the existing driver.
>>
> So you mean I shall have something like that in DT:
> 
> +		chipid@10000000 {
> +			compatible = "google,gs101-chipid";
> +			reg = <0x10000000 0xf084>;
> +			clocks = <&cmu_misc CLK_GOUT_MISC_OTP_CON_TOP_PCLK>;
> +			interrupts = <GIC_SPI 752 IRQ_TYPE_LEVEL_HIGH 0>;
> +		};
> 
> Maybe remove the interrupts because I don't need them for reading OTP regs.
> 
> What happens in the maybe unlikely case we do want to add support for OTP
> for GS101? How will we describe that in DT?
> 

Ah, I guess you meant to keep the node as I described it in patch 3/5,
an efuse node with a google,gs101-otp compatible, that will bind to the
existing exynos-chipid driver. Then if/when we add OTP support, move
everything to a new OTP driver. That can work, yes. Unless I add some
OTP support now, to justify the new driver. Both shall be okay, right?

Thanks,
ta



