Return-Path: <devicetree+bounces-136482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1860A05553
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 09:28:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 87B0716103B
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 08:28:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 247681E9B26;
	Wed,  8 Jan 2025 08:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="p6MeYy3W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D411DE4D6
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 08:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736324897; cv=none; b=J3dDoZ52S19k6jUlAOB5fw0+66jBmfTDW0JJARp91cDCraZ4+fCAXc014/UvAj6WJKWvkOIyQ9cWZXoGSlKfxS3YpQWMYao9iRnzUOxqTSZ5hPr7+Zk3IQpTde9V5r8RpO/J4HtJDAstdK54xJdlO+gYlOVM0VygaIoq3S1kBuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736324897; c=relaxed/simple;
	bh=3mZ5vtoOeY4eeomrlHFlW8D7/nhC1ZMpGJNE9zcPbB4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=boISNafDvqu4uNgyBVme6a411cFEr7WYVp1aEWW6DHOcUX6tD4cZQP/FSatNSxd+XqbrASWsyigE3TcIs4oXYWB9cnDDsLtZtFhL4leirgtlHCtC/lJ6tDEPnCKDgtzPq2h1v57HGdTl04mFYBtr+y75tzZ5Xdsq7fI4eVveV4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=p6MeYy3W; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2efded08c79so19170606a91.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 00:28:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1736324894; x=1736929694; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L5qGQeE8Ni6zPIaDoaP+YW8VihbqmTFfDZb3xW0nQFw=;
        b=p6MeYy3W0ueThLLL5hoa0cBmw6lRc2FzPryaY9hjfSKtc7eNNTkIATlAFen1cE2DEf
         tc7CqYB4D313jZLYXe5xXSC9te+vZshdGyNYMKhiDQps+AX+N0TdpjwHdJ06vET+vWK1
         a7WAn2GQk+/PFuunnIR6ipARugP5tidcFmpVqpXpkq85ePMCG1yzy6ninq2dMScPPeTZ
         cYe9coSS2GgrVMKLE+09rK96v5c6HsGpNlUCeH/ojvhxdOB8Q7g3kZC8V1h523qXRJ7T
         EZb0GDK0gWrh4gAwTjsRzVuZNj2X+MonRYL3zpDe90+WdZa6YgZMY6rGzxgK0rgyhF3y
         aEkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736324894; x=1736929694;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L5qGQeE8Ni6zPIaDoaP+YW8VihbqmTFfDZb3xW0nQFw=;
        b=Q6NTadMgDMEq6IuPaVrkBCjuzkT2nRli6hNtuWoqqpjg7gaJ9RQauKS2E07ijKKzHI
         BdYnl/CbOJ86Su0XT/+x7UQG36mDk706ZOD9rYi1crQRK6+sGKHngUGBuk6jrpPxaYeV
         kngtRfCIyvcohATIeXtc/qbrKpvZ1kpNtdlV0u0VKI/SwL5ipP1hW8YHcLs/LbBJlY3R
         wDxFQ6yUCrBc3oiS6FF4Ue6wYSdowfIKIBF4SQkNrqqfKt5hAUwvX/AeGmGrBTLSUMkV
         thAbjHSYoxMX/2uNueZUqUPqt7PQKRBE56wm7MRU8w5U9JlPJGV++zyFmzMUppWK0j1x
         QfFw==
X-Forwarded-Encrypted: i=1; AJvYcCXTDMH7LsM9I/+cMb+yHbQeyzbdrZIaJdHX18/Dupip6pMqy/L/ybbsIq8sDpFQ/+NOxOGkaC0i30Q9@vger.kernel.org
X-Gm-Message-State: AOJu0YwfXay5Q1eJBem4oo9ippNn+gcojER+1yY594igjqzruQEZjNEJ
	M3FQRzDevmJQTc6/fby2Sp5RKmXtmZRr0EcgrEInqrwgp1JTdBjI1aSV52X3SA==
X-Gm-Gg: ASbGncsMUIkKlPnDlhSsZvG5IcmdqPD8DfGy++PNYZJvNYmUSzcOLqrxPlHp6Eq7SBL
	Ycv96l/ttoES1ITRJ8h5rtu+NLN7DaTyt/MAE8eR8tKCn+0P/qUN52EyS6wzyI1shDChpELz+07
	I4Mzs3qdYYgwxCXA2vASfMzL4rmLzrykfJbfobF7QElmcR45V/3YZh0Q0ajE3hd6loD45l5921i
	XsziHlasGBhZV5P+Ech1cqgm7KQptR5r0+cQMf0c3+baL4vd0JavRj+t3wn53I=
X-Google-Smtp-Source: AGHT+IF2IJxP5p10X/719EBWtqLj4z+QhIIvLPwOq8iskKA4IVVKudQILHAc9gsyjaOiiBimXFQ7gA==
X-Received: by 2002:aa7:88cd:0:b0:725:f097:ed21 with SMTP id d2e1a72fcca58-72d21f471d6mr2725263b3a.15.1736324893681;
        Wed, 08 Jan 2025 00:28:13 -0800 (PST)
Received: from [172.16.116.58] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-842dc7edbadsm31678867a12.65.2025.01.08.00.28.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2025 00:28:12 -0800 (PST)
Message-ID: <d25572fa-8f0c-4f19-874c-6698a1db40ae@beagleboard.org>
Date: Wed, 8 Jan 2025 13:58:04 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/7] of: overlay: Add support for export-symbols node
 feature
To: Herve Codina <herve.codina@bootlin.com>
Cc: Andrew Davis <afd@ti.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 David Gibson <david@gibson.dropbear.id.au>
References: <20241209151830.95723-1-herve.codina@bootlin.com>
 <33c61b28-c0b8-478d-8107-c6ed1ff9e466@beagleboard.org>
 <20241210104141.39acffb1@bootlin.com>
 <bab9f277-a366-48ec-acdd-0896c8307ad9@beagleboard.org>
 <20241210115515.1886f73f@bootlin.com>
 <6d48095d-59b1-4439-8e2a-927aa1aa1b55@beagleboard.org>
 <20250108090750.45685a50@bootlin.com>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <20250108090750.45685a50@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 08/01/25 13:37, Herve Codina wrote:
> Hi Ayush,
> 
> On Wed, 8 Jan 2025 13:06:03 +0530
> Ayush Singh <ayush@beagleboard.org> wrote:
> 
>> On 10/12/24 16:25, Herve Codina wrote:
>>> Hi Ayush,
>>>
>>> On Tue, 10 Dec 2024 15:26:44 +0530
>>> Ayush Singh <ayush@beagleboard.org> wrote:
>>>    
>>>> On 10/12/24 15:11, Herve Codina wrote:
>>>>> Hi Ayush,
>>>>>
>>>>> On Tue, 10 Dec 2024 14:52:22 +0530
>>>>> Ayush Singh <ayush@beagleboard.org> wrote:
>>>>>
>>>>> ...
>>>>>>
>>>>>> What is the reason for not using symbols directly as described here [3]?
>>>>>>
>>>>>> I do like this approach since it does not pollute the global symbols.
>>>>>> Just want to know if there are any other reasons for it.
>>>>>>      
>>>>>
>>>>> Modifying the __symbols__ node at runtime (adding / removing properties in
>>>>> it) exposes memory leaks if __symbols__ already exist in the live DT.
>>>>> This __symbols__ node exist if the dtb was compiled with '-@' or if you
>>>>> chain the overlay (i.e. __symbols__ node created by the first overlay).
>>>>
>>>> Yeah, that is a problem, specially in a setup which might involve
>>>> hot-plugging.
>>>>   
>>>>>
>>>>> I think also that some conflicts can appears. What happens if you want to
>>>>> add a new label but this label is already present for some other purpose?
>>>>
>>>> I do not think that actually is a problem. As described in the original
>>>> patch [0], the symbol and connector overlay is supposed to be applied as
>>>> a group (overwriting any conflicting symbols in the process).
>>>>
>>>> The reason why this is not a problem is that `__symbols__` are only used
>>>> to resolve the phandles (overlays do not support path references yet),
>>>> but do not really have a purpose in the livetree (at least far as I
>>>> know, but I can be wrong).
>>>>   
>>>>>
>>>>> Best regards,
>>>>> Hervé
>>>>
>>>> [0]: https://lore.kernel.org/lkml/20240702164403.29067-1-afd@ti.com/
>>>
>>>
>>> Also, in your first overlay (adding symbols in __sympbols__ node), you have
>>> something like:
>>>      GROVE_PIN1_MUX_I2C_SCL = "/bus@f0000/pinctrl@f4000/grove-i2c-pins";
>>>
>>> If I understood correctly, other overlays will have GROVE_PIN1_MUX_I2C_SCL
>>> as unresolved symbols and will use GROVE_PIN1_MUX_I2C_SCL to reference the
>>> grove-i2c-pins node.
>>> This unresolved symbol from the overlay is resolved thanks to the __symbols__
>>> table where you added GROVE_PIN1_MUX_I2C_SCL (first overlay operation).
>>>
>>> In order to work, you need to have a phandle property set in the
>>> grove-i2c-pins node.
>>>
>>> This is done by dtc when you compile the dtb containing the grove-i2c-pins
>>> node (i.e. k3-am625-beagleplay.dts)
>>>
>>> The phandle property will be set only if:
>>> - a label for grove-i2c-pins already exist and -@ option is used
>>> or
>>> - a label for grove-i2c-pins already exist and it is referenced as a phandle
>>>     in the dts (k3-am625-beagleplay.dts).
>>>
>>> Otherwise, dtc will not create the phandle property and without this
>>> property, the symbol resolution will not be correct.
>>>
>>> Best regards,
>>> Hervé
>>>    
>>
>> Hello Hervé
>>
>> Thanks for the clarification. things have changed a bit since the last
>> message and it seems like trying to add path reference support to
>> overlays is not the best way forward [0]. So I would love to help move
>> this approach forward.
>>
>> I do have a question regarding this approach, so here I go:
>>
>> Can the `export-symbols` node be added to devicetree spec and be
>> resolved by the devicetree compiler (and fdtoverlay) instead of being
>> runtime resolution.
> 
> Of course, a solution with fdtoverlay is welcome but it should not fully
> replace the runtime resolution. In our case, we need runtime resolution
> because the overlay is loaded by a driver.
> 
> Both resolutions (fdtoverlay and runtime) should work.

I see, it seems linux does not use libfdt for applying overlays internally.

> 
>>
>> To get some context, I would like to share the addon-board overlays
>> between ZephyrRTOS and Linux kernel. I would be happy to try adding
>> support to dtc compiler for it. I am also tagging David Gibson (dtc
>> maintainer) in this discussion since he also had some ideas regarding
>> the feasibility and pitfalls of adding it to devicetree compiler (and spec).
>>
>>
>> [0]:
>> https://lore.kernel.org/devicetree-compiler/6b2dba90-3c52-4933-88f3-b47f96dc7710@beagleboard.org/T/#m900b5ca13cfc28396d4d46d9c3130a7070fa8c90
>>
>> Best regards,
>> Ayush Singh
>>
> 
> Thanks for your help proposal!
> 
> Best regards,
> Hervé

I will experiment with adding support to dtc and see how things look. 
Hopefully, 2025 is the year of addon board support.

Best regards,
Ayush Singh


