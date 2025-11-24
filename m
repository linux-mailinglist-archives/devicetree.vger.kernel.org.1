Return-Path: <devicetree+bounces-241786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EE15FC829DA
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 22:59:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E5CD24E15E1
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 21:59:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35EAA331A78;
	Mon, 24 Nov 2025 21:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b="f1oBHbPT"
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB10331A46;
	Mon, 24 Nov 2025 21:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764021583; cv=none; b=dRCOnT2jDUPwsarx8fPWBw/7hbNQB9ziY/XeYLLJvrjao6bv7T5n5ONzw21U/Bhv2jdOYRka2bNoPBiTNo0auk3C/JPD4Q8cbnScgIte5CDjFlgDYkyiqL8pabSAEhtXzrtG3WpRY1Zskb7V8RUqYLU1kuB9uUpWwl8HQiy95cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764021583; c=relaxed/simple;
	bh=mK+QAMIc1p+PHjIilJtkR9BIDapdCJ9FM51rQ+CBi2Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=alQ/MzUMQoFhtYj46Y/8M4OzY0LO6GWfIJoAiyc2CAaBBEV1aRMDQJKBHu8OjULpo+mw58S1/FNJX74xvYcQe0iIYTPkU+cEFK5x0F+lQa3s86fPNESzSBvC0P0JbOs3Nkt2dZHzi0ctDKmd2NxxO9LlzenL+03KVySEnxBOO0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b=f1oBHbPT; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=freeshell.de;
	s=s2025; t=1764021550;
	bh=hA/ZGY6qxxf/8F0kJfLsWVi4AY9tMhPfGGSBzlI1JF8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=f1oBHbPT5U4wCG0QPZkAG80xrZ1G4Wzy2j694ZoyyAELsv+7imqYgvdFVH11YVjg5
	 NSSH1p3s0L0rvv+S1nOljGJWw3byzCEcqnAI5gfuNvVGqqYwwfaIkOTrOrnQHC0R7m
	 Z/gSOga64h3WG6PJfo53hyp8FIQW4JuhtxU96p+CO+z+pZEBSeq/wu8BzYm1K7SATT
	 tEFipsgmTp0V6V44ir+nALY+d3qSFVP+0xy1Osu3o/d/3v4gY9syuXeTQL3vEn2DO8
	 8l4EIX5QbgQ27ZRjwb11UeKj5H9zFihQnD8twDKsCRUzhf63Qu2zMLnxIt9z02ZFiy
	 9TslpPsgfONvA==
Received: from [192.168.2.54] (unknown [143.105.119.236])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id 312D2B2211B2;
	Mon, 24 Nov 2025 22:59:07 +0100 (CET)
Message-ID: <0e851ca0-1f56-437d-ae14-094c114d3b77@freeshell.de>
Date: Mon, 24 Nov 2025 13:59:05 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: riscv: starfive: add
 xunlong,orangepi-rv
To: Conor Dooley <conor@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Michael Zhu <michael.zhu@starfivetech.com>,
 Drew Fustini <drew@beagleboard.org>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 Icenowy Zheng <uwu@icenowy.me>
References: <20251123225059.49665-1-e@freeshell.de>
 <20251123225059.49665-2-e@freeshell.de>
 <20251124-free-bandicoot-of-skill-fa7d9a@kuoka>
 <20251124-state-campsite-3e7788a495c1@spud>
Content-Language: en-US
From: E Shattow <e@freeshell.de>
In-Reply-To: <20251124-state-campsite-3e7788a495c1@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 11/24/25 05:22, Conor Dooley wrote:
> On Mon, Nov 24, 2025 at 08:28:10AM +0100, Krzysztof Kozlowski wrote:
>> On Sun, Nov 23, 2025 at 02:50:44PM -0800, E Shattow wrote:
>>> From: Icenowy Zheng <uwu@icenowy.me>
>>>
>>> Add "xunlong,orangepi-rv" as a StarFive JH7110 SoC-based board.
>>>
>>> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
>>> Signed-off-by: E Shattow <e@freeshell.de>
>>
>> <form letter>
>> This is a friendly reminder during the review process.
>>
>> It looks like you received a tag and forgot to add it.
> 
> It's from me, don't resubmit just to add it since it'll be me applying
> anyway.
> 

Hi Conor,

Okay. Yes I'd dropped the tag since the commit message is appreciably
different, and you would be handling it again anyways. Thanks! And thank
you Krzysztof for the reminder -E

>>
>> If you do not know the process, here is a short explanation:
>> Please add Acked-by/Reviewed-by/Tested-by tags when posting new
>> versions of patchset, under or above your Signed-off-by tag, unless
>> patch changed significantly (e.g. new properties added to the DT
>> bindings). Tag is "received", when provided in a message replied to you
>> on the mailing list. Tools like b4 can help here. However, there's no
>> need to repost patches *only* to add the tags. The upstream maintainer
>> will do that for tags received on the version they apply.
>>
>> Please read:
>> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
>>
>> If a tag was not added on purpose, please state why and what changed.
>> </form letter>


