Return-Path: <devicetree+bounces-238046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61926C56B6A
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:58:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E79333B2B82
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 09:51:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A8642DFA2F;
	Thu, 13 Nov 2025 09:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CBqx3iDU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC4F2DFA3B
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763027516; cv=none; b=b4ntXmekJqCaeeoEZ1Kfty4OLatqhOjXHHJvAyZbxgUkqFVKVS+TSz+D4hiAfQDRkA+v7zpTkxB77eiNvuzz++2P67VTIaLckPF4dZLpRHvVJSFHiprdlaLg70K1FVQjrL7YcCFTjZXsrGEVE5a+j3Df4KngZJ1IAyApNt9O4Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763027516; c=relaxed/simple;
	bh=1oacFYY/294TkhoTBx5pVnm2MquFkmlHkFBHaMNlPfk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZfRCW0ClKYHqkYZAD25eRnRh+DEYOdopKzS5dpM60hy6gK07EJaAdrAJn9PvTL8FaFWjWXG4yCfdrO5Q7YKdFJz19tWP1STComp/+cWkCzvU1BRksxSHI4GWMEZ37XB0Fuiey0P02X/eqa9oy2cQbMK5hhU/kTQyGJP4lGw04eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CBqx3iDU; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4777707a7c2so13845125e9.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:51:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763027513; x=1763632313; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZDYZngmwSRp+0NNAwoPTnkhHZW5E4BniA8duLqhYUG0=;
        b=CBqx3iDUQC4FdMFOg5rqeoQLrvVlMD4F1JABvIRPnoED3VbaBWTxIUhETV7JWNSw7v
         AuCDQPOG/sEjmn5swazPIDXI1dsNoBvEiYAXtQhGivdbdmK8t/aFMwZrfBF49LLC4KvE
         arYLTbTKQzsO4k4EhfOlDM5syHRFNjdYs9tprBQ1hZ7/VUcR8PAZROYfK+ksGQOq8T6L
         uhL4Zxa5BLxVNIAgEX5rttAflXGQgnDoy8c6OkkTXNRJfHGcVO8PylHtYl1N/9sWOrSb
         W01xaT7rCITpfstiHtf3HbZfeTwlVR+wYxkQ78YJtquPt6s0prMg6EKWnUZlbskN3AaX
         kCcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763027513; x=1763632313;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZDYZngmwSRp+0NNAwoPTnkhHZW5E4BniA8duLqhYUG0=;
        b=az98S/91swOj1hhiX1UZbKNKX6YRvDvS0d7TJsH5GsuFarQdvfhDS3rF/zPH97ZKy5
         ciVa/zl+ETAmkEWzmswseslI7Q2a4GwLZ/bjfOzICwbAC+4VD+c9MKu2OFQrbBQ28VwJ
         Z5KsPubpH7HirCgz9kBUtWZHhfHe/ui8UxB00T3bk+yakfC2Fz8b1CBwou0OK+0htxu3
         jN7Lr9nBcX14+MnLfEhzJYSvL+oGcqMQOuM9VaISS1KoXT2I0bDu3wkpTTqrrxUwnTNZ
         1b9FC8oYEfQ4Qs3+jlO9i1ykcvthVPl8pYzypwvXIskC+6V8JOncM//Yb2ZJqy1Cm6BL
         F5Kg==
X-Forwarded-Encrypted: i=1; AJvYcCVQ4WSTE35vDLaHc19150JDvM+6tonkVJ2SQwHCfOqkhFhyEl1H5s8fBgwVWRsVa1n22CZsM2oMVrb3@vger.kernel.org
X-Gm-Message-State: AOJu0YyNWHvorb1P0m9ewSQltU+EEwxFfNzGQD2zAAd7BCvi/0QVXOSQ
	XqScSSClAYJil1AB+zZrPFS+N9L6YUdwRAj44QHW/4rzXX3yrjO2WOpk1PFkGLIHmkc=
X-Gm-Gg: ASbGncu3KfX2BzsQ3qSxZ0vZHzFGknC1NGYVS/kJIlFK3Bp06ghjqVthjgtKj5Qme3G
	wRrhXmZa8IZ6sQlYl2SkpzkFylvj98801ZeoOiFMoSY5vZ/WAHWnbYKbWJ/D6Hdetp44UW2l4qQ
	ecFsNHD3u3Znx429F4gtF0Myg3zw+GgjBa/Hf0gsWt2jr9UHvGxqsyWGntkKJ52NdwKeTz4mlK3
	ecxbfRhgPv69vaSPZdIBoonq3T1VBEfVtCAXbVzX5GjZ/ntNchOSUPZ8fHffNwZNxbrnvtBPKP5
	WSNvEENPksKhySbJZBE6j//cqf4HbfoDgFcBMDLPevo4qFkXBmY3LlRBXLA5P1EYgE0Xwag+Fh5
	sOBgPwKWP8WaFrBuaiaOZIc6trbo+1fM9ujILBAIkbo6K9qZosImVhOdaYJ1E9l5RdKdTbcY1D1
	3wLdzd/LYynF8D3p2g
X-Google-Smtp-Source: AGHT+IHZkeuEDZYJsmeqSkNhq3Bl5KYXIylnr89Ea5RYR3BcZR9jpgcLY7nN/+8jXCtmO4YuJD3daw==
X-Received: by 2002:a05:6000:2887:b0:429:58f:26f with SMTP id ffacd0b85a97d-42b5281c40cmr2203450f8f.24.1763027512635;
        Thu, 13 Nov 2025 01:51:52 -0800 (PST)
Received: from [10.11.12.107] ([5.12.85.52])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f1fd50sm2817519f8f.38.2025.11.13.01.51.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 01:51:52 -0800 (PST)
Message-ID: <1af37451-1f66-4b6b-8b36-846cbd2ca1e8@linaro.org>
Date: Thu, 13 Nov 2025 11:51:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] nvmem: add Samsung Exynos OTP support
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
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <725ea727-d488-40aa-b36d-04d6d44a8ec5@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11/13/25 11:35 AM, Krzysztof Kozlowski wrote:
> On 13/11/2025 10:28, Tudor Ambarus wrote:
>>
>>
>> On 11/13/25 10:30 AM, Krzysztof Kozlowski wrote:
>>> On Wed, Nov 12, 2025 at 08:29:06AM +0000, Tudor Ambarus wrote:
>>>> Add initial support for the Samsung Exynos OTP controller. Read the
>>>> product and chip IDs from the OTP controller registers space and
>>>> register the SoC info to the SoC interface.
>>>>
>>>> The driver can be extended to empower the controller become nvmem
>>>> provider. This is not in the scope of this patch because it seems the
>>>> OTP memory space is not yet used by any consumer, even downstream.
>>>
>>> Quick look tells me you just duplicated existing Samsung ChipID driver.
>>> Even actual product ID registers and masks are the same, with one
>>> difference - you read CHIPID3... which is the same as in newer Exynos,
>>> e.g. Exynos8895.
>>
>> Yes, that's correct. It's very similar with the Samsung ChipID driver.
>>
>>>
>>> What is exactly the point of having this as separate driver? I think
>>
>> The difference is that for gs101 the chipid info is part of the OTP
>> registers. GS101 OTP has a clock, an interrupt line, a register space 
>> (that contains product and chip ID, TMU data, ASV, etc) and a 32Kbit
>> memory space that can be read/program/locked with specific commands.
>>
>> The ChipID driver handles older exynos platforms that have a dedicated
>> chipid device that references a SFR register space to get the product
>> and chip ID. On GS101 (but also for e850 and autov9 I assume) the
>> "ChipID block" is just an abstraction, it's not a physical device. The
>> ChipID info is from OTP. When the power-on sequence progresses, the OTP
>> chipid values are loaded to the OTP registers. We need the OTP clock to
>> be on in order to read them. So GS101 has an OTP device that also happens
>> to have chip ID info.
>>
>> For now I just got the chipid info and registered it to the SoC interface
>> (which is very similar to that the exynos-chipid driver does), but this
>> driver can be extended to export both its memory space and register space
> 
> 
> There is no code for that now and possibility of extension is not a
> reason to duplicate yet.
> 
>> as nvmem devices, if any consumer needs them. Downstream GS101 drivers
>> seem to use just the chip id info and a dvfs version from the OTP
>> registers. DVFS version is not going to be used upstream as we're defining
>> the OPPs in DT. So I was not interested in extending the driver with nvmem
>> provider support, because it seems we don't need it for GS101.
>>
>> Do the above justify the point of having a dedicated driver?
> Only partially, I asked about driver. I did not spot previously the
> clock, so we have two differences - CHIPID3 register and clock - right?

clock and interrupts, but I don't use the interrupts because I just need
to read the OTP registers to get the chip id info.

> I wonder why Exynos8895 and others, which are already supported, do not
> use CHIPID3, but nevertheless these two differences can be easily
> integrated into existing driver.

they can be integrated, but I want to make sure we're making the best
decision.

>>> this can easily be just customized chipid driver - with different
>>> implementation of exynos_chipid_get_chipid_info().
>>
>> If the answer is no to my question above, how shall I model the device
>> that binds to the existing exynos-chipid driver?
> Just extend the existing driver.
> 
So you mean I shall have something like that in DT:

+		chipid@10000000 {
+			compatible = "google,gs101-chipid";
+			reg = <0x10000000 0xf084>;
+			clocks = <&cmu_misc CLK_GOUT_MISC_OTP_CON_TOP_PCLK>;
+			interrupts = <GIC_SPI 752 IRQ_TYPE_LEVEL_HIGH 0>;
+		};

Maybe remove the interrupts because I don't need them for reading OTP regs.

What happens in the maybe unlikely case we do want to add support for OTP
for GS101? How will we describe that in DT?

Thanks!
ta

