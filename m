Return-Path: <devicetree+bounces-233903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 075CBC269CC
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 19:37:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 70B644E5DBE
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 18:37:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3AF32E9741;
	Fri, 31 Oct 2025 18:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YTF7oqyE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7246E2E427B
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 18:37:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761935828; cv=none; b=Tg5zosDN5X65dpwPRPn1oZJRWJnW9SgAl4HlNt8Egx4iePU5B0Af/7ygj5ClBZ+Ugk7buamm/Qc3/sLDK16RUnrDWhUgvFr2ZFaSj1DSDHOAr5wS1qZri0QbKL29C5bui4YZ8V40yfj4gfaa6uNnx0zt+u8T8skOapM5ywKjdsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761935828; c=relaxed/simple;
	bh=fq4ahmFZ7bpfJBQK18QsXF0TADYYnB2UkPabqpgqDBU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eM7dQ/qEFM94ZRo9DbbALZiBOCJCjuHJvzZfTV2gNAnN5X3esRkEycqpND3XRhwdiJAbe6DOHQ1jMMqhsPsx0Vk6Ny0MLrzClGYyOhp/btkDpH6KGF4vOfGz0JdQZOAiGhihAsUKsXHo+zCaYggZKjuetb2XlEUYkmQ7iHbDaUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YTF7oqyE; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-77f5d497692so3358764b3a.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761935826; x=1762540626; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ZbNh/oyHxx1gNKK10MMyuZ2NpBZZZZyF3csuO91peh4=;
        b=YTF7oqyEqPc3itBnrFXmD+01epFwqBlLFoX2rXFvCIIg5IwVcD+sP5JHG00cCjfBV5
         qwKsPZosNikjt3BVlkHYF+/Ed0ZtmxmS58DwITtgBHN0NqHL6owFMU+bNQahHPNsLz4E
         dh4wRooT2L7uxeEsvNfiy9SFjwjWWyEy/z4M0Slayv8mbxGiucXW4OHngRdanHxzh7Zd
         cRp8U3b/rhJLwg2zB8bi90U96c40adpOZbuypiz3lILZdMIGt3mqRXATUAgMXOWpy/XR
         XLg/O4jLOd+bX4zQEFyp5wgEueukzDwmS40mjQF/eXihMUvi1sa34IzV2t5bQq9/Vl4W
         ZERA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761935826; x=1762540626;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZbNh/oyHxx1gNKK10MMyuZ2NpBZZZZyF3csuO91peh4=;
        b=SH6O+X9k+C46a7tPbRQ/M2uSN1Ms02JbXAYrdx0nfZt2I0VXrtWoIeXxvxNaXcjO2Y
         rcbppQvRcNJmtXyFNztMJ0YuXX50n0lVitEycIW1QIuIcOH4wu7F5bm9iHOxHlmPPbH8
         JcAOw0GUMXrna1LFwzBR9VKAuQCJr73XDTgUyqHqk51VxeUoFnTPiRlTQoP+PEmWOoMp
         s1FOTVkPrmmS/Lhi0QMQs1eTl7RgLs2uccg2JkUtw2GDI1f98zRq4VXQqjpsFsMwmmec
         L0g2K6zgWYc8cl+35cY6jpQLFOKQUrDgwhjdPfMk14mm9hpyAFSQ7e2LdDEd6DkhjVOG
         ROCw==
X-Forwarded-Encrypted: i=1; AJvYcCVSerFIw0nXINfAcERDiGiS46OLHsvUdrbL6H3jG+Ig80JZ0Dl8CdpPy1OfZWSoKiGoWI7fG35ZQnXD@vger.kernel.org
X-Gm-Message-State: AOJu0YyrP14vbqMqVrr4EAKmunnZt/8q2AxgOK3vquMiYtLMXpvehB0X
	TbSpSXyx6PDGN4phl2uSCrl6SQ/zQwJqXErsqhloRp2avzsQH7bG3ocfxQ5Obg==
X-Gm-Gg: ASbGnct3JtLeZji7sCL3bkAU8292ekaVlNA9LnyZyMnUfbrJXSB+lTOZ/GKm84ZsuJ5
	fwP3ffUpAfg4xzw29HpRJc3Z80nwlPSQe7izc+F7wANR5Gr1u0iyFvHr8ucjWLFU2j/W9UMgKuL
	4yMYewvrgsER7/xxwQXM6AX6ea3b/W99h8y5vVt9sUkZYiMJJ/QUXd9lwjvAJHzMe1+T+rzcGhs
	mRcSDGN1kX2fSC80TrJGwPpH8TX97JyKm9P+CXJl/h3D8rckS31qwNqHd/hB+Rjyn0yh2yVfZvs
	YV9IrgzHnt19f0NL0fUPk5bkbEmKFOzO8REmc04Le1mFeLWJ5gudSKdpK9wkBAxXXF4MOsqp9aW
	iQRIpHm6me5IlpGoVowkAqaTdWgrVOsNvz0bIVpY6APh66gG94D8XE85n+b/P7SgWykIDOE5YhK
	Yt/C5Wm1tmN1Vz3/efNs4P6gziQ14rSBrZzka75mVG/3l/9aiD
X-Google-Smtp-Source: AGHT+IFxM9ZPDKP64KwLTzZY1mRUZoimrQ3Q3TbPQ32t3Aj7lwWBRV06PRS1CSCna8E66/pJLqw2Hw==
X-Received: by 2002:a05:6a20:7484:b0:33d:4e4b:7b3a with SMTP id adf61e73a8af0-348cb187fc4mr6900447637.25.1761935825528;
        Fri, 31 Oct 2025 11:37:05 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b93be4f8cccsm2795935a12.30.2025.10.31.11.37.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 11:37:04 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <a4245d73-365b-4dca-a2a6-685fb11c34c6@roeck-us.net>
Date: Fri, 31 Oct 2025 11:37:03 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: hwmon: Add support for ST TSC1641
 power monitor
To: Igor Reznichenko <igor@reznichenko.net>, krzk@kernel.org
Cc: conor+dt@kernel.org, corbet@lwn.net, david.hunter.linux@gmail.com,
 devicetree@vger.kernel.org, krzk+dt@kernel.org, linux-doc@vger.kernel.org,
 linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org, robh@kernel.org,
 skhan@linuxfoundation.org
References: <35d41d46-5bc8-43af-a84d-6b118fff08e0@kernel.org>
 <20251031173029.904313-1-igor@reznichenko.net>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20251031173029.904313-1-igor@reznichenko.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/31/25 10:30, Igor Reznichenko wrote:
>>>> On 10/28/25 08:17, Igor Reznichenko wrote:
>>>>> Understood. The bit in question controls the alert pin polarity on the device side,
>>>>> independent of whether the pin is used as interrupt or not. I'll drop the property
>>>>> for now and revisit if there's a board that actually uses an inverter or needs to
>>>>> program the bit explicitly.
>>>>>
>>>>
>>>> This is kind of unusual. The requirement used to be that devicetree properties
>>>> shall be complete. "Only if there is a known use case" is a significant policy
>>>> change. Has the policy changed recently ?
>>>>
>>>> Thanks,
>>>> Guenter
>>>
>>> Rob, following up on Guenter's question above.
>>> I'm not sure whether it's better to drop the property as discussed earlier or keep
>>> it for binding completeness.
>>> Could you clarify what approach is preferred?
>>
>> Don't you have there possibility of interrupt (not only SMBus Alert)? At
>> least this is what I understood from previous talks.
> 
> Yes, the alert pin could be used as interrupt in principle.
> Datasheet calls it "Multi-functional digital alert pin".
> 

Maybe you could try adding an optional "interrupts" property.

Guenter


