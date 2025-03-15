Return-Path: <devicetree+bounces-157771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E1DA62A82
	for <lists+devicetree@lfdr.de>; Sat, 15 Mar 2025 10:52:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0783419C0C25
	for <lists+devicetree@lfdr.de>; Sat, 15 Mar 2025 09:52:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 482401F4C8C;
	Sat, 15 Mar 2025 09:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="EEEbAd9h"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC3D15098F
	for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 09:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742032362; cv=none; b=Lvu2SGv+z2PXZCa4psTsMC22+JWUTz02tVlIKgyqNG9pRUre8x9awS2+MRb9AhWg0xOoWDhY7yP4sAc08IDhXB31AuWOMfxrp1oAoJDTrnf79YhM2mric6mbcA8r7kNsgTAmESAitWIRMmLXDf1GnAWTWFqVGiti5XnGHhVemoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742032362; c=relaxed/simple;
	bh=6+2VmikGOQHHsXb+MXyVKWf8h2U3ucrj25SSz+LHCJY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P0QjytyPOMsElw60NXyt6sSwoAA9xIoyrGvjdpW08MKeMp6sSspCP38x8N+j+xcKDsde0aNDt85m+j1oMTHxXNZivYZx3U96b1GYYY//a4ruKNPEDqaACz/7sGQoSPd7DR0b9orvOMRqdefy5lmzawfx/jSeE7gGq0GHfhNH2g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=EEEbAd9h; arc=none smtp.client-ip=212.227.15.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1742032357; x=1742637157; i=wahrenst@gmx.net;
	bh=6+2VmikGOQHHsXb+MXyVKWf8h2U3ucrj25SSz+LHCJY=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=EEEbAd9hgFOgjuPcWYjDIvAXAUEukjmfwwqyWTorel1svTAaJkJFHejllb/0+qbE
	 vpShgbZ4eZpRYeiL6K0xn/uCgtj8aIIO900zU5W6prMOlGdgoqVoSAwTol6jgk2+E
	 Trpx+s94M8Og6kmHVdP+pIKdEJtHj684tPIxrQ0Uh7iUgPJIwb4GkIfuEx8oHlmBm
	 kZXqNNdTt4cvx7sXpB06YIIt4+GBStVbAOpNMhjikv6y1T7NfbA7l+wk9tzaksrp1
	 jH07S5AVIn5QJGYN7GzWEXIOk+RDA1NnYsp3La7fE5ktow7h5fZNlfxlxC8geqr4S
	 NgCCRzNlzK5YGUIZTQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.107] ([37.4.251.153]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mk0JW-1tVLyP0tia-00nUE8; Sat, 15
 Mar 2025 10:52:37 +0100
Message-ID: <0edcd27d-64a6-494e-bc81-5a9ad89d4d90@gmx.net>
Date: Sat, 15 Mar 2025 10:52:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/7] dt-bindings: gpu: v3d: Add per-compatible register
 restrictions
To: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Melissa Wen <mwen@igalia.com>,
 Iago Toral <itoral@igalia.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, kernel-dev@igalia.com,
 Maxime Ripard <mripard@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>
References: <20250313-v3d-gpu-reset-fixes-v4-0-c1e780d8e096@igalia.com>
 <20250313-v3d-gpu-reset-fixes-v4-4-c1e780d8e096@igalia.com>
 <3fbaa5ed-e70f-4293-99d0-faf22f3c4adf@kernel.org>
 <701c71cb-47a6-4970-bd21-ae61cf971f7c@igalia.com>
Content-Language: en-US
From: Stefan Wahren <wahrenst@gmx.net>
Autocrypt: addr=wahrenst@gmx.net; keydata=
 xjMEZ1dOJBYJKwYBBAHaRw8BAQdA7H2MMG3q8FV7kAPko5vOAeaa4UA1I0hMgga1j5iYTTvN
 IFN0ZWZhbiBXYWhyZW4gPHdhaHJlbnN0QGdteC5uZXQ+wo8EExYIADcWIQT3FXg+ApsOhPDN
 NNFuwvLLwiAwigUCZ1dOJAUJB4TOAAIbAwQLCQgHBRUICQoLBRYCAwEAAAoJEG7C8svCIDCK
 JQ4BAP4Y9uuHAxbAhHSQf6UZ+hl5BDznsZVBJvH8cZe2dSZ6AQCNgoc1Lxw1tvPscuC1Jd1C
 TZomrGfQI47OiiJ3vGktBc44BGdXTiQSCisGAQQBl1UBBQEBB0B5M0B2E2XxySUQhU6emMYx
 f5QR/BrEK0hs3bLT6Hb9WgMBCAfCfgQYFggAJhYhBPcVeD4Cmw6E8M000W7C8svCIDCKBQJn
 V04kBQkHhM4AAhsMAAoJEG7C8svCIDCKJxoA/i+kqD5bphZEucrJHw77ujnOQbiKY2rLb0pE
 aHMQoiECAQDVbj827W1Yai/0XEABIr8Ci6a+/qZ8Vz6MZzL5GJosAA==
In-Reply-To: <701c71cb-47a6-4970-bd21-ae61cf971f7c@igalia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:SiYL6tyRrImtuikRQZ0y0dIQEOMEeIxdbEaHuYVsEFRB8eEHmih
 XNjaNShCaGkzIc2wPW0fC+laApt4+gMLBKIOBSSLcP0Ntem8btI544/9KH5KDMyd6WIr1yu
 WXoucswc/ikZYt2QNp53ubXnFIk57jTwgwS7AlaKo5Nd00hekudoyOlE4GH/v6kFi0Fe4ZJ
 p60Vqpyg1iF5d/urQdq2Q==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:fDvxEU63uG4=;Fy4dd5t9TzLN3qBCPYvx7uxTCTk
 TM/TqkkW4Pg4nbuzvHD3grP9RFKHv9irTtf3ndAFW31axkINGLbgGkibdk3c3N4asedLzBJhy
 0WrWI6kUSG/t1R99c1AkTU33e/mw15mKkiqPeItc4zBE8nfpDtfwQOu5nM8ASKZ1IhxdQOtl7
 4P45HkwsnaUkwWdcUHu31NlB2HiOUpHZIw0tR6rCt/Psmp0iMuZ4hA+337PEx3NqQz7uZ6ODz
 aBUO1iH7UIavHpqji3zWaXhCg6rzXfEL0zuZRCx1vCu2JwbId0DujNDpYko923OhddVqQZfvJ
 QJa/VBxVeQUXggkn/PKcUfQq6traO9jzoGYBw/dg5ouznIeiptuXCC6/sW5kxCdHH4zLuU926
 HqM1po++aDAGFda/YlaPQgBo04/mMpnwEKNM1srDwkKifnnjWYKemcfF+MXn4i38dsfzq9JB7
 WdcxY2NhxN7fgrmnO9hN+qR9es4EAB83AD4kFNptp+zX7Wt2WSBD1yvZ+AvAJOQsYCuMhct1u
 4M0GP3ZuNuoo2VaITXsZgP/m850iXg/Rn6sKp68PR7F2s2hs2hCGJWcJbGLgslTNQhiiEPmWT
 ihhNLzL3FOTzrhpQ+sdp8iXyXcANM0mXFFcnU1V6AdCXxu1qc4KpmpAtFyIlCp6QOEU3bL1Lc
 SpbDlZusIbRVZwYk5lxUFBkb1nZ9lziFRLVHNuoPwOJriVVrLoTrCyEAzTsejtztEnndPDCWs
 xzS+myWEZgat1CY2EX4xpOnC1uRRMHxxgr2XNafgwzok/Wn1hdHBKe+kbxMpNhE7tf3lf94eB
 0GVcJ5caIVRp7e7E/rCmLWg+Vdls752p1hCjCguFiPS8Jk1GyAYRzelZcJe1HH57U82vnxNeo
 0aqSf/ZcFjQobhMH28OuutblG9jgnPW2ScFkV4XyUVjJUI6KjXjeapkLdq5c9Ixv01ueel3cS
 /bIKUh1jEnNzJ+8+jRcNbuyiy3f2l3YA9ZM8F7wE5sFfOIa5uRGotmMbXUKUBV5ie5x+PD0X6
 PaxxSlGJm0j3BGkdSxOQ4LWW+eD2hRoErfHfU+UvHTwcBanfrEW7XgXdIzg4fFkjNtIT0yUzN
 tlvT2PMjcx8CsfchSNpJVVlOdzXQpPpCZ/0Q2W8rNvS+yOHyTVkWPmzoTjtWWQyMxad15N9rR
 KBo/MhiFT0ZIY8n914p7SpjPfwCwlJTeENIxE9YQuNRKSqhcWnBr1+11zAxLSQ5jcokoi+SVg
 sZajTx+ZCoJQDe5o8iLJiRwuCsA2vTXq+T057D3QeFK+OZFVKFS8G+2Pr3rNfrB1pvcTy2Ut+
 3E+OcXKjXTUleXilnEqCCyw1VVMwlU9mhJukZ64QTf1pxt9eBuuIzOAWsZxWWGxgQv3XyMoDo
 hq0M+SHJ0neyKzPdYv7P4/7En/qKXExs9juG2I5TAlD7e9a5dtq6XW5uIf4G/66WDgvLKtZiO
 4HoM4sx1UWSMe4Lqnmg5yuN28458=

Hello,

Am 13.03.25 um 20:04 schrieb Ma=C3=ADra Canal:
> +Cc Stefan
>
> Hi Krzysztof,
>
> On 13/03/25 12:03, Krzysztof Kozlowski wrote:
>> On 13/03/2025 15:43, Ma=C3=ADra Canal wrote:
>>> In order to enforce per-SoC register rules, add per-compatible
>>> restrictions. V3D 3.3 (represented by brcm,7268-v3d) has a cache
>>> controller (GCA), which is not present in other V3D generations.
>>> Declaring these differences helps ensure the DTB accurately reflect
>>> the hardware design.
>>>
>>> While not ideal, this commit keeps the register order flexible for
>>> brcm,7268-v3d with the goal to keep the ABI backwards compatible.
>>>
>>> Signed-off-by: Ma=C3=ADra Canal <mcanal@igalia.com>
>>> ---
>>> =C2=A0 .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 | 73
>>> ++++++++++++++++++----
>>> =C2=A0 1 file changed, 61 insertions(+), 12 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
>>> b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
>>> index
>>> dc078ceeca9ac3447ba54a7c8830821f0b2a7f9f..9867b617c60c6fe34a0f88a3ee2f=
581a94b69a5c
>>> 100644
>>> --- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
>>> +++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
>>> @@ -22,20 +22,10 @@ properties:
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - brcm,7278-v3d
>>> =C2=A0 =C2=A0=C2=A0=C2=A0 reg:
>>> -=C2=A0=C2=A0=C2=A0 items:
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - description: hub register (required)
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - description: core0 register (require=
d)
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - description: GCA cache controller re=
gister (if GCA
>>> controller present)
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - description: bridge register (if no =
external reset controller)
>>> -=C2=A0=C2=A0=C2=A0 minItems: 2
>>
>> Widest constraints always stay here, so you cannot remove minItems.
>>
>>> +=C2=A0=C2=A0=C2=A0 maxItems: 4
>>
>>> =C2=A0 =C2=A0=C2=A0=C2=A0 reg-names:
>>> -=C2=A0=C2=A0=C2=A0 items:
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: hub
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: core0
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - enum: [ bridge, gca ]
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - enum: [ bridge, gca ]
>>> -=C2=A0=C2=A0=C2=A0 minItems: 2
>>
>> Same problem.
>>
>>> +=C2=A0=C2=A0=C2=A0 maxItems: 4
>>> =C2=A0 =C2=A0=C2=A0=C2=A0 interrupts:
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 items:
>>> @@ -58,6 +48,65 @@ required:
>>> =C2=A0=C2=A0=C2=A0 - reg-names
>>> =C2=A0=C2=A0=C2=A0 - interrupts
>>
>> ...
>>
>>> +=C2=A0 - if:
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 properties:
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible:
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 contains:
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 co=
nst: brcm,7268-v3d
>>> +=C2=A0=C2=A0=C2=A0 then:
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 properties:
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 reg:
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 items:
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - =
description: hub register
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - =
description: core0 register
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - =
description: GCA cache controller register
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - =
description: bridge register (if no external reset
>>> controller)
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 minItems: 3
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 reg-names:
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 items:
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - =
const: hub
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - =
const: core0
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - =
enum: [ bridge, gca ]
>>
> > So GCA is always there? Then this should be just 'gca'. Your list for
>
> GCA is always there for V3D 3.3, therefore it is always there for
> brcm,7268-v3d.
>
>> 'reg' already says that third item must be GCA. I understand that you d=
o
>> not want to affect the ABI, but it already kind of is with enforcing GC=
A
>> in 'reg'.
>
> I'm adding Stefan to the loop as he was the one that converted this DT
> binding to YAML. Stefan, could you share your thoughts about breaking
> the ABI for BCM7268? We would enforce the following order: hub, core0,
> bridge, and gca.
Phew, that was over 4 years ago. To be honest, my only motivation back
then was to prepare support for the Raspberry Pi 4 (BCM2711). I did it
all in my spare time and never had access to any Broadcom documents. I
have no idea about all the other BCM chips, so a possible break of the
ABI for the BCM7268 was an accident. I don't know if Florian Fainelli or
Maxime Ripard can help here.

By the way the two schema maintainers have not been active at V3D for a
long time, so it would be good if someone could take over.

Regards
>
>>
>> I anyway do not understand why 'gca' or 'bridge' are supposed to be
>> optional. Does the given SoC differ between boards? What is the externa=
l
>> reset controller here? External like outside of SoC?
>
> TBH I never saw BCM7268 or BCM7278 in the wild, but you are correct,
> "bridge" shouldn't change for the same SoC. I'll do my diligence and
> research more about those SoCs.
>
> Best Regards,
> - Ma=C3=ADra
>
>>
>> Best regards,
>> Krzysztof
>


