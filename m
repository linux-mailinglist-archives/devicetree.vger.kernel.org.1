Return-Path: <devicetree+bounces-26531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 78618816D4B
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:03:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D7E21F2155C
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 12:03:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56E7A1A585;
	Mon, 18 Dec 2023 12:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="WAjo/lhL"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8BAF19BCA;
	Mon, 18 Dec 2023 12:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1702900929;
	bh=3MhTuYEHVtxN6jKjyXhSlPpArK287YLadDQAYGZC2IM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=WAjo/lhLjeb8QX9nhEkYkVMVLqUSZk0KhaW86DWjRscg1t1rqpDL6UgDyuXZBEib8
	 Ci7E8H3tLkD70CRdGg0eSS1VnFEM0Nj/gvKAzDywOemmEZoeiH+Tjfp8tp/B27PTh3
	 UUNdANTQxyo5PM3OQE9Aq9rE0oTMgaPislp6Kj24xvkuIv5TcCvWduUOpzJyAS0acS
	 kY97/jAxbHDL/4N6YJ26aqmMKIzev+lxd494O0Ww4QohGj4VicDrZuqYGz/QCWR9jN
	 4NyZbdlHkWHXxfj0Dq4SDadU+ddRs6Jtjw4A784SmPRLR65yeLVPQkrNx2Dw8wGxYh
	 DqNxp7CNl0DPQ==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 97C7037814A4;
	Mon, 18 Dec 2023 12:02:07 +0000 (UTC)
Message-ID: <fa4b9c1d-6033-4b35-b03c-e03419edb5dc@collabora.com>
Date: Mon, 18 Dec 2023 14:02:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/9] dt-bindings: net: starfive,jh7110-dwmac: Add
 JH7100 SoC compatible
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: Samuel Holland <samuel.holland@sifive.com>,
 Jessica Clarke <jrtc27@jrtc27.com>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>,
 Samin Guo <samin.guo@starfivetech.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Hal Feng <hal.feng@starfivetech.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, netdev@vger.kernel.org,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-riscv <linux-riscv@lists.infradead.org>, linux-clk@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com
References: <20231215204050.2296404-1-cristian.ciocaltea@collabora.com>
 <20231215204050.2296404-3-cristian.ciocaltea@collabora.com>
 <A7C96942-07CB-40FD-AAAA-4A8947DEE7CA@jrtc27.com>
 <65fd52f1-6861-42b0-9148-266766d054b1@sifive.com>
 <6c62e3b2-acde-4580-9b67-56683289e45e@collabora.com>
 <20231217-spray-livestock-a59d630b751e@spud>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20231217-spray-livestock-a59d630b751e@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 12/17/23 23:09, Conor Dooley wrote:
> On Fri, Dec 15, 2023 at 11:03:24PM +0200, Cristian Ciocaltea wrote:
>> On 12/15/23 22:59, Samuel Holland wrote:
>>> On 2023-12-15 2:47 PM, Jessica Clarke wrote:
>>>> On 15 Dec 2023, at 20:40, Cristian Ciocaltea <cristian.ciocaltea@collabora.com> wrote:
>>>>>
>>>>> The Synopsys DesignWare MAC found on StarFive JH7100 SoC is mostly
>>>>> similar to the newer JH7110, but it requires only two interrupts and a
>>>>> single reset line, which is 'ahb' instead of the commonly used
>>>>> 'stmmaceth'.
>>>>>
>>>>> Since the common binding 'snps,dwmac' allows selecting 'ahb' only in
>>>>> conjunction with 'stmmaceth', extend the logic to also permit exclusive
>>>>> usage of the 'ahb' reset name.  This ensures the following use cases are
>>>>> supported:
>>>>>
>>>>>  JH7110: reset-names = "stmmaceth", "ahb";
>>>>>  JH7100: reset-names = "ahb";
>>>>>  other:  reset-names = "stmmaceth";
>>>>>
>>>>> Also note the need to use a different dwmac fallback, as v5.20 applies
>>>>> to JH7110 only, while JH7100 relies on v3.7x.
>>>>>
>>>>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>>>>> ---
>>>>> .../devicetree/bindings/net/snps,dwmac.yaml   |  3 +-
>>>>> .../bindings/net/starfive,jh7110-dwmac.yaml   | 74 +++++++++++++------
>>>>> 2 files changed, 55 insertions(+), 22 deletions(-)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
>>>>> index 5c2769dc689a..c1380ff1c054 100644
>>>>> --- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
>>>>> +++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
>>>>> @@ -95,6 +95,7 @@ properties:
>>>>>         - snps,dwmac-5.20
>>>>>         - snps,dwxgmac
>>>>>         - snps,dwxgmac-2.10
>>>>> +        - starfive,jh7100-dwmac
>>>>>         - starfive,jh7110-dwmac
>>>>>
>>>>>   reg:
>>>>> @@ -146,7 +147,7 @@ properties:
>>>>>   reset-names:
>>>>>     minItems: 1
>>>>>     items:
>>>>> -      - const: stmmaceth
>>>>> +      - enum: [stmmaceth, ahb]
>>>>>       - const: ahb
>>>>
>>>> I’m not so well-versed in the YAML bindings, but would this not allow
>>>> reset-names = "ahb", "ahb"?
>>>
>>> Yes, it would. You need something like:
>>>
>>> reset-names:
>>>   oneOf:
>>>     - enum: [stmmaceth, ahb]
>>>     - items:
>>>         - const: stmmaceth
>>>         - const: ahb
>>
>> Oh yes, I always forget about the "oneOf" thing. Thanks!
> 
> Won't this also relax the naming for all devices that allow a single
> reset, but expect the stmmaceth one? I'm not sure that that actually
> matters, I think the consumer bindings have constraints themselves.

Before commit 843f603762a5 ("dt-bindings: net: snps,dwmac: Add 'ahb'
reset/reset-name"), the 'stmmaceth' was the only possible option, hence
there was no need for any constraints on the consumer bindings.  But
afterwards it was allowed to use both resets, hence I think the bindings
should have been updated at that time by adding 'maxItems: 1' to prevent
using the 2nd reset.

I could fix this in a separate series, if it's not something mandatory
to be handled here.

Thanks for reviewing,
Cristian

