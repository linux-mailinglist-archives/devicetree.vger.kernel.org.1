Return-Path: <devicetree+bounces-236599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5C2C45A84
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 10:33:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D95544E94E4
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 09:29:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7DEB28AB0B;
	Mon, 10 Nov 2025 09:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nU39OciU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B1D1CAA85
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 09:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762766945; cv=none; b=lVJV5Wv8VNz9hEbNhi6QC56ypzGLnHeW2D3UhEez5N1OtJGz9Vz2+B2JDhUyBvyqlFAp+dL7bZBe2hrcA6oBGy5hLIwTm129g2vU1/kfUqzYLP+EbGwF6TzAHzHVi97/okw6O2+t3zCIJmXyG93ZP/zyLZ07tOORyBSiVKoOp5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762766945; c=relaxed/simple;
	bh=cQCq9mf+4odA3iUdRoOEUQPVNJLSpTjSlhgginhi9m8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jah/sSTzZmYcyS1U5uHJK9fb3iklakoiU6keGlNflq13ptvEz/ZkIqIyKfMXE88xGIrhDbsC9vf3K0LGWnIau5fnDXycQGnfOVflL8d7SKYsvxhCJNZxC7doIEKODvVv575pJhXE8AFLLoXP3sYLBEBbKHUgmTcJ2Em3k3lXyO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nU39OciU; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-477632d45c9so18099345e9.2
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 01:29:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762766941; x=1763371741; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yy2Y3SJbuc6h3iInMfmhynFq9n8Y39FAnrKgiWA6qd4=;
        b=nU39OciU6xlalCppBfMHmG2Ki88rc+8SK7ABBNIHuRhHhotVhMVevQ7Ofmw0WQ4RbS
         ptCnqjtGiOtUo2tlqv3i9cfZmAgsAohZM8UM8TaiQyDBfpiG5Xb1Wywar/EVQ9nErMjS
         dFpcatjHFjm91/PN5v1OzeowjCY6FbfpZl8toKNxFv8XDQLpuhuuaCK7PytLMAPMEGa6
         Xtzy/Oo0sjtCpQV90RizvlBZtll4wIgJDdGxynj9PBeSvUtskUMKCNvMEbbyTtNH8KuM
         wVq1YSTGFLxZxhQHA50rDKkpFewYz2sU5qxOrknpZll280kKADD1VRRTVfberFH4FHPb
         9lzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762766941; x=1763371741;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yy2Y3SJbuc6h3iInMfmhynFq9n8Y39FAnrKgiWA6qd4=;
        b=e5epAFu0m/Au9vsux5fhwuH0OFC90EAnMOteQQWlyl642bOexVQAHgG5Ri4ntmr5+K
         EQVGQmplo3mY+ep2xdWkJzKkf9O6JLjKzW4Zf7uKcjNTkPUgZ2DXwiBI5aj4JQ6/O+gy
         dRhB9i2S1ex4SFCcY6BxM9nxfWi/8UbsY8hTOd6sGwWgzEspBgav7E6q+0QXTAyCiaZP
         pZGOOc0vHlmmqI4ZMMJf4eCJthrL07QK/YiEL/o8axbx4WoLsd5dy+AAUBwQ/aX0b/vU
         SIAD8jx2cxFBTMKwqOkiJlhAp9tC5uV9T34yydhdN26eXfcXCWKhXkaA9vo1q9uElDnE
         DKUA==
X-Forwarded-Encrypted: i=1; AJvYcCV0MZXywjc6x1qCxovghrunZR5uEF8+jLdx0uTJZmMwmCXkbItZGkFlDmuskeFm92tAbQd+uTwCSKIV@vger.kernel.org
X-Gm-Message-State: AOJu0YwePdqdvmt929DtZOTOHEG73h46wd6j3j8vpcw5V5zXYbKixmtJ
	+Ym87FVYgkPxGHahGUziaQn97tWhMGHC3eL1mfhoSwq0MsGUg+flRbMqea2O6SlyBtg=
X-Gm-Gg: ASbGncsY7RET9NXckIwsPqezH4Q/A6OhgFsixnouZAJM8HTAS9n+93orbGgyP0UlmaM
	QKF7ZXxDvtTr9s2w4uv9o2HiHiXQbY//FPfzHBeSyTiunftLaTDZ0tXMC8uzVUU+rDCpZ6uDOVj
	Us1357x1IiwSZRWRGNv+gPUDF57Ylo3uO/L9vUyYWIvTEsIamaETtVlLzFvl0DP4VKVoBpHihaP
	EP31cJMTbJfeGIkwbF+cgj8lfVQ+McmLXZJEjfY15MVS4kcvcGSk4z2UeZ52xDf+ox/aGfts23c
	CGgXUgYqt3h5gs+FgRTRCj/h3gKsYi5SVHqBCIwfwoPFISmEozbialZ0bswKwocxWNlHyXrtQ3L
	peD03JrWKgBwh9ZGgz1/D9sKBapNK9iW4HBKvgyXxtd+n8HhugBO4aLJxEMKQk2z14/H/J/M81b
	I1C9FDVGx6PuwK0CM6
X-Google-Smtp-Source: AGHT+IGRrEV2Y5FWsA2ScUyXO8LRGfeCzTu8A6LXyew1cnLNeQXucI/waFNT0uIfIF1Jhc8bs3HOiw==
X-Received: by 2002:a05:600c:4453:b0:471:13dd:bae7 with SMTP id 5b1f17b1804b1-47773277296mr66813835e9.30.1762766941281;
        Mon, 10 Nov 2025 01:29:01 -0800 (PST)
Received: from [10.11.12.107] ([5.12.85.52])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42ac675cd25sm21324511f8f.22.2025.11.10.01.28.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 01:29:00 -0800 (PST)
Message-ID: <3a2f9b58-bbdf-4977-b06b-9f43a4555274@linaro.org>
Date: Mon, 10 Nov 2025 11:28:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/11] arm64: dts: exynos: gs101: add the chipid node
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 semen.protsenko@linaro.org, willmcvicker@google.com,
 kernel-team@android.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251031-gs101-chipid-v1-0-d78d1076b210@linaro.org>
 <20251031-gs101-chipid-v1-10-d78d1076b210@linaro.org>
 <20251103-pompous-lean-jerboa-c7b8ee@kuoka>
 <b82af744-ebbd-4dc8-8ccb-c7e4f2a6b04d@linaro.org>
 <b9b10943-0ece-495f-a6a8-403fc1ab9213@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <b9b10943-0ece-495f-a6a8-403fc1ab9213@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11/4/25 9:14 AM, Krzysztof Kozlowski wrote:
> On 03/11/2025 11:50, Tudor Ambarus wrote:
>>
>>
>> On 11/3/25 12:18 PM, Krzysztof Kozlowski wrote:
>>> On Fri, Oct 31, 2025 at 12:56:09PM +0000, Tudor Ambarus wrote:
>>>> Add the chipid node.
>>>>
>>>> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>>>> ---
>>>>  arch/arm64/boot/dts/exynos/google/gs101.dtsi | 6 ++++++
>>>>  1 file changed, 6 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
>>>> index d06d1d05f36408137a8acd98e43d48ea7d4f4292..11622da2d46ff257b447a3dfdc98abdf29a45b9a 100644
>>>> --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
>>>> +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
>>>> @@ -467,6 +467,12 @@ opp-2802000000 {
>>>>  		};
>>>>  	};
>>>>  
>>>> +	chipid {
>>>> +		compatible = "google,gs101-chipid";
>>>
>>> That's not a real device, sorry.
>>>
>>> I had some doubts when reading the bindings, then more when reading
>>> driver - like chipid probe() was basically empty, no single device
>>> access, except calling other kernel subsystem - and now here no single
>>> actual hardware resource, except reference to other node.
>>>
>>> Are you REALLY REALLY sure you have in your datasheet such device as
>>> chipid?
>>>
>>> It is damn basic question, which you should start with.
>>
>> Documentation says that  GS101 "includes a CHIPID block for the software
>> that sends and receives APB interface signals to and from the bus system.
>> The first address of the SFR region (0x1000_0000) contains the product ID."
> 
> So chipid@1000_0000
> 
>>
>> 0x1000_0000 is the base address of the OTP controller (OTP_CON_TOP).
> 
> 
> and efuse@1000_0000 from your other patchset and your sentence above.
> 
> Please add them to DTS and check for warnings.

One would get an unique_unit_address warning, yes.

> 
>>
>> "CHIPID block" tells it's a device, no? But now I think it was just an
>> unfortunate datasheet description. Do you have an advice on how I shall
>> treat this next please? Maybe register to the soc interface directly from
>> the OTP controller driver?
> I think in the SoC it is impossible or at least never happening that you
> create two devices for the same address, therefore either chipid is a
> device or efuse is a device.
> 
Right. The ChipID "block" does not have its own registers. It references
the OTP registers. I'll describe just the efuse device in the DT and
register to the soc interface directly from the efuse driver. Please let
me know if you think there's a better way to handle this.

Thanks,
ta

