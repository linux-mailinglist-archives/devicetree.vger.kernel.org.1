Return-Path: <devicetree+bounces-136964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B66A07183
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:32:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 18C3F188A90B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 09:32:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C68C42153C4;
	Thu,  9 Jan 2025 09:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b="zpB45N8J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491C62153F5
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 09:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736415156; cv=none; b=T+CNhQowJdli67TmknqoLvFg/aM/95T2BvTjLBb9sVb1WDfvWVHJyNzy5hFzP+5HZOssv/891aKjiU/Didyp4O+0F2S51b3Nm2VYkAZo0dWYkBjgpRdWUIebepCKcBi2Cy5dcSqfrJ6n7LCs5iaHASGK9qGGblBn4H5wLw3PeD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736415156; c=relaxed/simple;
	bh=/82Bie17qmYKHBJQrNwBn4tkvCVUGCTzTY3GMsrrnAg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m8M0AX3Q7qzjV6E1tdoM4GdSJyNT7W9fliwA957xtJtYrgB3FNyIxJAXYbOXPncgMOzVrKwd0YFloe5+4RK/oBEUyE2XURMDbyLhzdbKEw5YgoLaIkaa6PscDtf2QAMsrvrlVPogANNefsvkvMpRZEp14ZXBq0ZonUpg1IbH9sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b=zpB45N8J; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43626213fffso11236965e9.1
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 01:32:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1736415152; x=1737019952; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZdSoGM0IN0Zxqh7qDqdJr7Z4o4Vwb6jb+542zPpHAYI=;
        b=zpB45N8JmCjgGfoYRQTS8Yc6M6Iv7viDC6BtueEPXJxsCSjhvIB9TWkIS8s2qG4cwU
         /3SSrf5HGHoKghUGfVFarxTO6c5ldIQLcXRRHloK9XJxPVeqbqU5kmNtyxus5kccQvzI
         LDGuqFTi4HjnVUhj0d/XKcYV8pCLryQQQElrs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736415152; x=1737019952;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZdSoGM0IN0Zxqh7qDqdJr7Z4o4Vwb6jb+542zPpHAYI=;
        b=QDkDl24yz6eja8j05f3sM4eX/AysWZsbYH5cmqL4UDK3g/bwxDt59mqhIEdD/XHDWp
         6E4KvQ12b5BGvuwSyJvstf9EQEka7eO9mH3qnrihy9ea8FfDhrUVYyj7E/w+DG4ZAadv
         y+PF1ckQ72v/0lHCdwzWeRqYvOUjhZjdMFe5gkGk13QaVoPhytX7qta/e7HJZFazK5FY
         l6+KevdBeAtNLZy0GBC+ONU6DiIz3mR59ZOcRCmhUQm3BBdkrAoVBBkfKG+fy+lnL31m
         7mmDqZEMPSzWTpUMvUljK8A/XFZ/KRGCImg8dkO380pkl6CTiIHcjf2EeX8bvWavas5g
         YW2Q==
X-Forwarded-Encrypted: i=1; AJvYcCV8DVnydj3vT6Xc2N3bHeSyI1reOZQKOw3BtpzlWhFd4pkVr3kGX7W2ecfb9NX1e1ygrndhqUD4uknE@vger.kernel.org
X-Gm-Message-State: AOJu0YyZxe1B2IHxB72r2uCAWsHp3pNrc/YCxObOcAFLTFXA3OX7FMZ1
	OzGTu6cJY38i3HFtO0of8lxzwH66z0q5tu/lMvnJmz3Cw8Nv2m0EDwvnD5oK6EA=
X-Gm-Gg: ASbGncvQ8EzN1xv0fdcn8RrXiHRYBtcP3c2qn0qa9HLwSheNEHDHGrrWMkpwWsWfSDl
	Gltt0d5tsPVFmvOZz/q4Xt+zZ5xrElAJ751mKjWIv2uoDfU2GLPMYlH2EDAOC0xVlwAQA3DaDqK
	o/Gy+g3H71jbrNVdGQXa/l4kykmapyus38oT8CqGnZ4g0I6wCaNdW7baWYvaTB+MDdrfsheeREs
	DRzWrYeCx4Z2CPEMi3XCNTTtFfeHna/vv7s69wVeVWAcj2c4Nv2qvsKxwQlcrCY3jXky088ELzH
	5AVnDfKx5knPb2yO1M1ZPqouaLUjK93MqHZKhVs1XIFM9JU8qsNHxPFrHa7gSmstYqrTYklxCLs
	kR226qW9AOO3uEWNk
X-Google-Smtp-Source: AGHT+IG6EVqO91UjbtoUelxcOZNCcrgW27kDqPVuoYWnpsd+PlHziHUYVSflHCF+xbYHxYClj+IZyg==
X-Received: by 2002:a05:6000:4011:b0:386:3d27:b4f0 with SMTP id ffacd0b85a97d-38a8b0d324bmr1808176f8f.14.1736415152547;
        Thu, 09 Jan 2025 01:32:32 -0800 (PST)
Received: from ?IPV6:2a01:cb05:949d:5800:e3ef:2d7a:4131:71f? (2a01cb05949d5800e3ef2d7a4131071f.ipv6.abo.wanadoo.fr. [2a01:cb05:949d:5800:e3ef:2d7a:4131:71f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e4c1bebsm1274803f8f.95.2025.01.09.01.32.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 01:32:32 -0800 (PST)
Message-ID: <efe370b6-09ed-46b7-a40d-dacc03d853cf@smile.fr>
Date: Thu, 9 Jan 2025 10:32:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCHv3 1/2] dt-bindings: mfd: syscon: Add
 ti,j721e-acspcie-proxy-ctrl compatible
To: Siddharth Vadapalli <s-vadapalli@ti.com>, Andrew Davis <afd@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Kevin Hilman <khilman@baylibre.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-omap@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 robh@kernel.org, kristo@kernel.org, vigneshr@ti.com,
 Romain Naour <romain.naour@skf.com>
References: <20241202143331.126800-1-romain.naour@smile.fr>
 <173344002250.407600.8303166891165540615.b4-ty@baylibre.com>
 <20250103212528.enq4ur5afxhwzh7n@outdoors> <7hr05eb5st.fsf@baylibre.com>
 <20250108131139.dygei6ejamh5zaij@segment>
 <1251db38-5009-4e93-9603-3ae02f276e5b@ti.com>
 <ikfjvrqi7jbqmeyjejuhpe4iw7uzaqeuqc3ijf4t6wjqgvextt@j4w5cift7ev3>
Content-Language: en-US
From: Romain Naour <romain.naour@smile.fr>
In-Reply-To: <ikfjvrqi7jbqmeyjejuhpe4iw7uzaqeuqc3ijf4t6wjqgvextt@j4w5cift7ev3>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello Andrew, Siddharth, All,

Le 08/01/2025 à 16:46, Siddharth Vadapalli a écrit :
> On Wed, Jan 08, 2025 at 09:09:37AM -0600, Andrew Davis wrote:
> 
> Hello Andrew,
> 
>> On 1/8/25 7:11 AM, Nishanth Menon wrote:
>>> On 14:46-20250107, Kevin Hilman wrote:
>>>> Nishanth Menon <nm@ti.com> writes:
>>>>
>>>>> On 15:07-20241205, Kevin Hilman wrote:
>>>>>>
>>>>>> On Mon, 02 Dec 2024 15:33:30 +0100, Romain Naour wrote:
>>>>>>> The ACSPCIE_PROXY_CTRL registers within the CTRL_MMR space of TI's J721e
>>>>>>> SoC are used to drive the reference clock to the PCIe Endpoint device via
>>>>>>> the PAD IO Buffers. Add the compatible for allowing the PCIe driver to
>>>>>>> obtain the regmap for the ACSPCIE_CTRL register within the System
>>>>>>> Controller device-tree node in order to enable the PAD IO Buffers.
>>>>>>>
>>>>>>> The Technical Reference Manual for J721e SoC with details of the
>>>>>>> ASCPCIE_CTRL registers is available at:
>>>>>>> https://www.ti.com/lit/zip/spruil1
>>>>>>>
>>>>>>> [...]
>>>>>>
>>>>>> Applied, thanks!
>>>>>>
>>>>>> [1/2] dt-bindings: mfd: syscon: Add ti,j721e-acspcie-proxy-ctrl compatible
>>>>>>        commit: d8efc0b428856137608ffcbb6994da6041c9fe2a
>>>>>> [2/2] arm64: dts: ti: k3-j721e-beagleboneai64: Enable ACSPCIE output for PCIe1
>>>>>>        commit: 1d5e14a20dc60b440c60bec8489acfd45cdf7508
>>>>>>
>>>>>> Best regards,
>>>>>> -- 
>>>>>> Kevin Hilman <khilman@baylibre.com>
>>>>>>
>>>>> This will need a bit of fixup - See along the lines of the following.
>>>>> Additionally, we should be a bit careful about the dependency of dts
>>>>> mix up from two trees.
>>>>
>>>> sorry, these should be going through your tree in the first place.  They
>>>> are now dropped from my tree, please go ahead and take them along with
>>>> Andrews fixup.  Sorry for complicating things.
>>>
>>>
>>> Romain,
>>>
>>> There is additional fixups needed, unfortunately as well: syscon yaml
>>> has two lists based on which dt-schema version you use.. your patch
>>> fixed one list, but missed the other as well. Could you integrate the
>>> fixes and resubmit, please?
>>>
>>>
>>
>> Or since we already have 'ti,j784s4-acspcie-proxy-ctrl' for the same
>> reason, you could drop the first patch and re-use this compatible.
> 
> I had suggested this in the past since the ACSPCIE IP on J784S4 and J721E
> is the same, but Krzysztof insists that there will be hardware differences
> in the ACSPCIE block across J784S4 and J721E irrespective of what the
> datasheet says, as mentioned by Krzysztof at:
> https://lore.kernel.org/r/1bfdf1f1-7542-4149-a85d-2ac4b659b26b@kernel.org/
> Therefore Romain had to introduce a new compatible for J721E.

There is a pending patch series from Andrew [1] fixing
ti,j784s4-acspcie-proxy-ctrl compatible for the same reason.

Should I take it into account before resubmit?

[1] https://lore.kernel.org/linux-devicetree/20250103174524.28768-1-afd@ti.com/

Best regards,
Romain


> 
> Regards,
> Siddharth.


