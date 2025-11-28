Return-Path: <devicetree+bounces-243025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A67D4C9297A
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 17:36:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 00CFE34C224
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 16:36:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 932A3265632;
	Fri, 28 Nov 2025 16:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marek.ca header.i=@marek.ca header.b="AKGvIonl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E32F62882A8
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 16:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764347751; cv=none; b=H420zaNwtwSO4Bl1YUU6zO1Hbihn28+haKmcy+W69gyqJAEIBu7baHvobzKYV2IGvGCRi+lQwPkb1KNDEQZNjk8rM39IvSoOjtsMByVIZoXl6re+wuXO86Wb15ZOQX38abAjhpRF7IZQ/bojVquFXcgRv7prT+lI5BYDX9y4Cu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764347751; c=relaxed/simple;
	bh=GOP/kpxv/SiG8IleAVvu3y+ovNM3AHbdlm/tdl/uDsI=;
	h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=uWgDMF0kr59oy0UgkadP0ydoWnZUBipPwOIfB+PKCIPXC8nNj1AQ9rTMa9C1K4L+fim1ooC+4nKl9WIRyIsOesxJx8pne+a0ktxcy/ERnG1eVcDURgxc0M/jTlc4GXLAHqSHa+GKrJF8Ly7SHvQ556tS2ZCCL1WOTMCAK2H1UgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marek.ca; spf=pass smtp.mailfrom=marek.ca; dkim=pass (2048-bit key) header.d=marek.ca header.i=@marek.ca header.b=AKGvIonl; arc=none smtp.client-ip=209.85.160.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marek.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=marek.ca
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-4ee05b2b1beso17541831cf.2
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 08:35:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek.ca; s=google; t=1764347749; x=1764952549; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dsIiGN2rbV6QEaM41dIcddlDyFwba69ep6ezkRocLRE=;
        b=AKGvIonlFOQigaHBKSSeGgckHwdMJM9QTUckb5hessWdzB+1Y0kaicVncYT9owjoQj
         YBe/S/psKdU158bN/jOWntQoHYfOZW8v2OJs+jfpL5hY2DSendg7/vJM80+gHqTLAOmK
         rd0hm9+ijsZvgekLw/CtV9Y4zSIDPd/IhoFX9f0mAPmYQV4gE5H1IfikUa1rr2jymL1P
         gUq13GOECj2nH0LWnC5pP5QXOnNDFd+oo/MbkngWoY15SqO0vDi9RnfJ36f9hgjEf+Zx
         YQHQuSsoBO8UAdPxPFN5FigAH0rczTnvB0y7pxi8Zw5CGAQdlSHopKQSHBWJckqq5+dV
         DBEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764347749; x=1764952549;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dsIiGN2rbV6QEaM41dIcddlDyFwba69ep6ezkRocLRE=;
        b=f8bih2aof8RXG6ZZzFYr2nBb+fADCsbljPs/uyZMJ5fXvSXbiyBJhi83p2KO7lwLHw
         Q8Hf9sDsNczMSs5ngojGjWp1UspExEmcJEmEWSJGp6C2SLvDW13mvhUp+H36zg//M3md
         9DXfqMCR0cFwSguzsEXGVpRXbuffKAdROgGiZc8OolNRV5o7cI9r5AV3GEaP8Qxeu8gW
         e36YRcri8W6cqFpHlxcJaWedXZyue0w1M5CYg1Qoy4jAAOySXufHyzwCxraDaHPE7ZCb
         oDTnxQmbguraojZzQq0USWdDztCMVsq8b0wBq6agBRF+2RGx7TAZqn7Gl2diXZ0B8QOQ
         tNvg==
X-Forwarded-Encrypted: i=1; AJvYcCU+7C0R6cTtgkxKHB2DiK4h8GvKB6fXJw13nkVD+iuIE4PWeIfYh6xoHQKeNokBVE9HBGTIkUia01GH@vger.kernel.org
X-Gm-Message-State: AOJu0YzW2crwifOddSPPQOXWC8Zc3RAyWccQMnLHsYUGNCBc5fXYLxDg
	/RcO/HSNtWNAQxCIu5NRGFODrbsYFe0HoSPFtoKtLI4//ikWM9kmJKrKAPC91JSm7UM=
X-Gm-Gg: ASbGnctbZt9uG/Wl1DefnbnYlyv9XMYdpitRVHSxLkZjiRQuGIeMAbRSSVCu0tvjTaX
	oHfOfPjGzkzDbYUk5ynPGsYu7zVZSuQutvIEQZf1b5NsP8xJ7ZI2l3vnWFesKadDjMrebEV4p5g
	4KxI3lhH05gDB+pYvK0kyk/3Y8VC+RQaZLBgH4NVV5++I77Q23cj20VxL78oapfnbdvX79dleUJ
	ui18TF9tSRY5SSifrUs1mD39c8SK4lTzu5k8HqHEu49yRjWdcvnG1OrMoeq6AbyoUQp8CXtv6vf
	0lcAr/0IynSKPcgUWdALc1vwtuuUeREVQw5iCB3fmBWPf1tHLxHMxeAUrG+huWmVSbnywC/wppC
	E7ocaesVqSzJ3lerGaRjSv8JeugBzz4vQY4ogmfX6Tgtu52yKRfefPVL7rgAytseGR4y7m5JlUg
	kSIx5ftb8cvljd6/YYNJrWrsr1MCljSg3keWXfX+2CLTwHG/1uB9iPyHhCRQ==
X-Google-Smtp-Source: AGHT+IEid5PwFVhxwHcg2m8sj1oMjCxEDjABwlPhJ94vWnRIxAYTmRy804ezhMM72PRfoULBpaYSRw==
X-Received: by 2002:a05:622a:591:b0:4d2:f9e3:c12d with SMTP id d75a77b69052e-4ee5883f8f2mr405538631cf.14.1764347747428;
        Fri, 28 Nov 2025 08:35:47 -0800 (PST)
Received: from [192.168.0.189] (modemcable125.110-19-135.mc.videotron.ca. [135.19.110.125])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4efd34365b4sm28012621cf.26.2025.11.28.08.35.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 08:35:47 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: qcom: x1e: bus is 40-bits (fix 64GB models)
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
 Abel Vesa <abel.vesa@linaro.org>, Rajendra Nayak <quic_rjendra@quicinc.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20251127212943.24480-1-jonathan@marek.ca>
 <aSl48gV9laFb-MR1@linaro.org> <d969b3e6-a6e1-6dd3-45b9-539ba7a9f42d@marek.ca>
 <aSnH3C8s5xVSk_ti@linaro.org>
From: Jonathan Marek <jonathan@marek.ca>
Message-ID: <1aa75dd2-6fb4-e9ca-ca27-c0bd910246fe@marek.ca>
Date: Fri, 28 Nov 2025 11:34:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <aSnH3C8s5xVSk_ti@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/28/25 11:03 AM, Stephan Gerhold wrote:
> On Fri, Nov 28, 2025 at 09:39:52AM -0500, Jonathan Marek wrote:
>> On 11/28/25 5:26 AM, Stephan Gerhold wrote:

...

>>
>> I am using EL2.
>>
>> Without this patch, DMA buffers allocated in the upper 36-bit physical range
>> will try to use bounce buffers. The dma range from the dts is compared
>> against the physical address, not the virtual address.
> 
> I don't think this is the case for the dma-iommu layer. I debugged a
> crash caused by USB in EL1 on a 64 GiB device earlier this year and it
> was happily using buffers above the 36-bit physical range without using
> bounce buffers. There is some code inside dma-iommu for using swiotlb,
> but it's used only for "untrusted" PCI devices and some edge cases with
> unaligned/small buffers.
> 
>>
>> The crash I see is display driver crashes/freezes once a buffer is allocated
>> in the upper 36-bit range and it tries to use bounce buffers. This can
>> happens very quickly under load.
>>
> 
> You could be right about the MSM display driver though, since that
> bypasses dma-iommu and manages the IOMMU itself. I stared at the code a
> bit and I'm not immediately seeing where it would end up calling into
> swiotlb, but it might be hidden somewhere in the endless nesting.
> 

Looks like you are right about this, MSM driver ends up going through 
dma_direct_map_phys(), which decides to use bounce buffers. I didn't try 
to see if other drivers end up using bounce buffers, but it would make 
sense that only MSM driver is affected.

>> The same crash would happen for EL1 as well. I wasn't aware of the EL1
>> broken firmware when I sent this patch, but instead of display freezing I
>> guess the behavior would a hard reset now, which is a bit worse but still
>> unusable unles display/gpu driver is disabled.
>>
>> This patch is correct and should be applied regardless of broken-firmware
>> EL1 cases (where 64GB isn't usable anyway), but I guess the Fixes tag
>> can/should be dropped.
>>
> 
> Please clarify the commit message a bit and mention the two separate use
> cases (EL1 and EL2). I'll leave it up to Bjorn/Konrad to decide whether
> to merge it. At the end you are right and using 64 GiB RAM in EL1 is
> kind of a lost cause anyway.
> 
> Thanks,
> Stephan
> 

