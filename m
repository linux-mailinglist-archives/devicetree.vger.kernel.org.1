Return-Path: <devicetree+bounces-233710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8608CC24EAA
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:07:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBEFB3B7BE9
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:07:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D26983469E9;
	Fri, 31 Oct 2025 12:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KwzKI244"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F100D284690
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761912429; cv=none; b=AdjqpVUGeGvnIGnJoBdwqQCz2NwepfOXDyqwqUevAfgePWPOS2/Lt54IvJo/dGJnvlcWlv0dWA/KpY/cdtYWuJ+fuZx4pZeT+BfLPBtd9r9x3/WwccUyxD3aHOyOpNifO03xxz8uQBF+n6K/BG+RHr9eTuSOzWkrDR8smnfuv+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761912429; c=relaxed/simple;
	bh=QdfcKgydSkRm0A8GQzQXVINVhev5YokC6RzzW3M0ueA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i+ublX6dreuqqOA/LR8VZy3F1x+MH3iYWsgMVcoz+xJ2dssQZqb22b9LLio7v9WdcSYLwMGVrTfrZk3tiiowD601sZhCgZeBI4wJ9fv8gRIGtBcpA0BxrerbyTdgRbasyhb99nKKScVOCXZpCtSwCw5kboMdrP5k3GhFzLi6HgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KwzKI244; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-378de7d3057so22697611fa.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761912425; x=1762517225; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g+wNT7KW8FpybzoaA+6FfZ6C32T5hx5xiEfdag3k3wE=;
        b=KwzKI2443RijErWYu4cl00L0syz5MC2rHdkgSLEWH4DPGUMs0ccrLqzJ0S5ruQAex1
         sMvDS7t3GnTjq3FpHst5tKk5JTDawJJIPblNPxRnK+ds/vI5ck30DDKxb2IHFX7KkYbS
         Mhgy/48fpaLpHxhfYIvka6+o/y7PNv6zHoBNGHG+NOO7fG15RloVXaqAGzoVSA/aNneU
         G40DQYhXV4fD3d2KR7gzhoEVDiqFSaiq5SGiz4JNtMGRGvCefgw2sgXgaExiUXEyL7Sl
         ZiwRJcuB3FMUzBV+NHsA1ecR1Q635sD8qm6qr4Rk/VSyax4pDeSGsS9DMu/s0vCpfL51
         L48A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761912425; x=1762517225;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g+wNT7KW8FpybzoaA+6FfZ6C32T5hx5xiEfdag3k3wE=;
        b=DtVefXbiQOfpZPp1UC2W0yMiGGwZEbHtqZPnd62yR/rgFhXHTb6JKNFjF/mLrdQjva
         SI1217YpnvE3EuDntAJZ9s7V/Xu5lRD4MDEdxdfCe2ahkEeUnkCmxa5J6zU9EM0TG1va
         KimAAa9CkxOnaUq713DjsG73zND/2Sfj9vTVBegjelEGg1zen/ZxqxG10v6mQ6A2tDit
         z+XjrjGetC0p8uJK/WpUWcYCSpWD3qa+7cl4fc1+E5neR/odKuJlom+Ai9UTaA2K9W5x
         yGuACGnRzLVxKwcuoHC1UTwNs+zskFXuWFRQRyEpDIn2DFDJ+oN/TECOnZHf1gI+OxEL
         7bhA==
X-Forwarded-Encrypted: i=1; AJvYcCXQgwa781ixnqhY+FOXVGZie/RYH8Xy4gxZ6Be6K50h4bjIxraZS7+uis9E21Bwlo3Hy2uU9vlANwHb@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/WTvWW2pAzAvswkI+cDvqD7jKcy25qyOz28RtyzqVqwevavqg
	uqLF5AJGrYyB9w/M5+ADYnEbgpsDBPg2QuMmCkzLEkGOzkbWt4EjzKyS
X-Gm-Gg: ASbGncv7SUaDy7+8ty5gDHmSJ9l7h8gVJOhWVYj8kybwBvQBgQ5gUl6uaNcgp27ZfCR
	NFZP2YSriDKmc9KINrDOtdgekTfH+35F1kGX8Cc6/ns4rfT+aTBI6mDsTqhu5+jR6Xk/PY7U4qN
	ICOXksRvJa3xNtryHaAgZELXswJOcJPOTdIcKnN0jxUvkJsySxgTVX3apZuPeSBRFKsqESqpyVE
	IYxA0x6eylRkZ32Ixxy4raoNnjfyxZHRbok77puE+nIqthAoLitHcyg45PoYzabnFqBq1QrqhKA
	b7Era8+nHH8bs4QWonOjv1RdDiKH7qIRIJ7aXKeEYyc7L6p/3U0V3SuwL2jZFHGIdDBjAqVZJMw
	2V+7cc34glNFAniSRfkvHw81Bbs9rgRllWtsClx2C3ZlDokhNo5KJZqj/IyHE+sHkFl0hE6ujeh
	usMVnkKUZN0D3o7BNOfObPsyzswNVShnrgwCnva9UCvzVvaJLNdZtAUwRHaC/l/oevG5tZ
X-Google-Smtp-Source: AGHT+IH/ICNj/bMV5RVGbwRdK/Ejd2emYkz7dh/g7c7spskiA/UNWUDs1dQqtabTPzVdNpWwUCQDtw==
X-Received: by 2002:a2e:8689:0:b0:36a:925e:cf3c with SMTP id 38308e7fff4ca-37a18dc7311mr10659721fa.31.1761912424618;
        Fri, 31 Oct 2025 05:07:04 -0700 (PDT)
Received: from ?IPV6:2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703? ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37a1bfb3e70sm3216571fa.12.2025.10.31.05.07.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 05:07:03 -0700 (PDT)
Message-ID: <0beeacba-c484-43c0-80fb-66b2e0293681@gmail.com>
Date: Fri, 31 Oct 2025 14:07:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] arm64: dts: freescale: add Ka-Ro Electronics
 tx8m-1610 COM
To: =?UTF-8?Q?Lothar_Wa=C3=9Fmann?= <LW@KARO-electronics.de>
Cc: Maud Spierings <maudspierings@gocontroll.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org
References: <20251022-mini_iv-v2-0-20af8f9aac14@gocontroll.com>
 <20251022-mini_iv-v2-3-20af8f9aac14@gocontroll.com>
 <a7012995-c2a8-48a3-abe1-5c227272f21c@gmail.com>
 <65202d1f-6c4f-4d4e-9fef-85cfb74ec768@gocontroll.com>
 <938f85b0-4c9b-463a-960a-f5f4e4092480@gocontroll.com>
 <20251029081138.2161a92a@karo-electronics.de>
 <4a47b9b5-f482-41b6-a441-7728572c5a0c@gmail.com>
 <20251029104838.44c5adcf@karo-electronics.de>
 <d05c62c9-7ed7-46e4-aa4d-27172741b5ee@gmail.com>
 <0667e026-99f3-4233-b3f6-e38273961d49@gocontroll.com>
 <20251030095434.1dc06df2@karo-electronics.de>
 <26fc62bb-3484-4812-b576-6640eef72c49@gmail.com>
 <20251030130006.0221957a@karo-electronics.de>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <20251030130006.0221957a@karo-electronics.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 30/10/2025 14:00, Lothar Waßmann wrote:
> Hi,
> 
> On Thu, 30 Oct 2025 13:01:52 +0200 Matti Vaittinen wrote:
>> On 30/10/2025 10:54, Lothar Waßmann wrote:
>>> Hi,
>>>
>>> On Wed, 29 Oct 2025 16:35:25 +0100 Maud Spierings wrote:
>>>> Hi Matti,
>>>>
>>>> On 10/29/25 11:05, Matti Vaittinen wrote:
>>>>> On 29/10/2025 11:48, Lothar Waßmann wrote:
>>>>>> Hi,
>>>>>>
>>>>>> On Wed, 29 Oct 2025 10:42:17 +0200 Matti Vaittinen wrote:
>>>>>>> On 29/10/2025 09:11, Lothar Waßmann wrote:
>>>>>>>> Hi,
>>>>>>>>
>>>>>>>> On Tue, 28 Oct 2025 14:10:04 +0100 Maud Spierings wrote:
>>>>>>>>> On 10/28/25 13:42, Maud Spierings wrote:
>>>>>>>>>> On 10/28/25 13:15, Matti Vaittinen wrote:
>>>>>>>> [...]
>>>>>>>>>>> Could/Should this be described using the:
>>>>>>>>>>> 'rohm,feedback-pull-up-r1-ohms' and
>>>>>>>>>>> 'rohm,feedback-pull-up-r2-ohms'? If I understand the comment
>>>>>>>>>>> correctly, that might allow the driver to be able to use correctly
>>>>>>>>>>> scaled voltages.
>>>>>>>>>>>
>>>>>>>>>>> https://elixir.bootlin.com/linux/v6.18-rc1/source/Documentation/
>>>>>>>>>>> devicetree/bindings/regulator/rohm,bd71837-regulator.yaml#L108
>>>>>>>>>>   
>>
>> // snip
>>
>>>>>>>
>>>>>>> If real voltages aren't matching what is calculated by the driver, then
>>>>>>> the voltages requested by regulator consumers will cause wrong voltages
>>>>>>> to be applied. Debug interfaces will also show wrong voltages, and the
>>>>>>> safety limits set in the device-tree will not be really respected.
>>>>>>>
>>>>>>> I think this would be well worth fixing.
>>>>>>>      
>>>>>> Before doing the real-life test I did the same calculation that's done
>>>>>> in the driver to be sure that it will generate the correct values:
>>>>>> bc 1.07.1
>>>>>> Copyright 1991-1994, 1997, 1998, 2000, 2004, 2006, 2008, 2012-2017
>>>>>> Free Software Foundation, Inc.
>>>>>> This is free software with ABSOLUTELY NO WARRANTY.
>>>>>> For details type `warranty'.
>>>>>> fb_uv=0
>>>>>> r1=2200
>>>>>> r2=499
>>>>>> min=800000
>>>>>> step=10000
>>>>>> # default voltage without divider
>>>>>> min+30*step
>>>>>> 1100000
>>>>>> min=min-(fb_uv-min)*r2/r1
>>>>>> step=step*(r1+r2)/r1
>>>>>> min
>>>>>> 981454
>>>>>> step
>>>>>> 12268
>>>>>> # default voltage with divider
>>>>>> min+30*step
>>>>>> 1349494
>>>>>>
>>>>>> Probably we need to use this value rather than the nominal 135000 as
>>>>>> the target voltage in the DTB.
>>>>>
>>>>> Yes. When the driver calculates the voltages which match the actual
>>>>> voltages, then you should also use the actual voltages in the device-tree.
>>>>>       
>>>>   
>>
>> // snip
>>
>>>>
>>>> Then setting 1349494 as the actual voltage makes it fully work.
>>>> Otherwise it complains:
>>>> buck6: failed to apply 1350000-1350000uV constraint: -EINVAL
>>>>
>>>> Final debug output now:
>>>> [    0.327807] rohm-bd718x7 0-004b: buck6: old range min 800000, step 10000
>>>> [    0.327813] rohm-bd718x7 0-004b: new range min 981454, step 12268
>>>> [    0.327819] rohm-bd718x7 0-004b: regulator 'buck6' has FB pull-up
>>>> configured
>>>>
>>>> I will add this fix to the next version of this patchset and include
>>>> your requested change in the dts.
>>>>   
>>> Does it also work with min/max settings in the DTS that are taken from
>>> the designated value +/- 5% tolerance margin, so that the DTS contains
>>> reasonable values determined by the HW requirements, rather than some
>>> artificial number that is enforced by the SW behaviour?
>>
>> I am unsure what you mean by "artificial number that is enforced by the
>> SW behaviour"?
>>
> The nominal voltage that is required by the consumer is 1.35 V. That's
> the voltage I would expect to set as target for the regulator.
> If that voltage cannot be achieved exactly, I would prefer to have the
> intended voltage listed explicitly rather than listing a value that
> accidentally can be achieved by the regulator but has nothing to do with
> the requirements of the consumer.

Ah. Thanks for the explanation. I get it now - sorry for the noise.

-- 
Matti Vaittinen
Linux kernel developer at ROHM Semiconductors
Oulu Finland

~~ When things go utterly wrong vim users can always type :help! ~~

