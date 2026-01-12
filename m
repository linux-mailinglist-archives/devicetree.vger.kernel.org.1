Return-Path: <devicetree+bounces-254151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5365FD14D94
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 20:03:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C100F3081E54
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 19:01:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D91AC313554;
	Mon, 12 Jan 2026 19:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="bpXx6w4t"
X-Original-To: devicetree@vger.kernel.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82DE31195C;
	Mon, 12 Jan 2026 19:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768244513; cv=none; b=kVqTBYQwsweOcMG3bUlGDtb+AqrcjAFdYmemjKBQbn1Pgjar54tyTtGNCHw/nqO1TunC3LeiZptkWjzRDIhvONf7eAnH+O5kGEXvpcHUsxAceXv4WLFl0AHTuGe0hkszeFQ0EdlQ/Ha1ie3Tcc8cJfSJYFyD5s3dj2JxmW3Cvts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768244513; c=relaxed/simple;
	bh=FEcpt4a0pSzqkcHGxScRUqgxs9kLMybwdYh26bOAdXE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y9FuWUxqN5Z3AF3X3uM3qBEGm/P1EAwWrVjQBphhLH7EwOwheSuO0GK8ErucGcmVC8gFM4lwbPaiK59c82ci4tNgTlrEwZ/FjXMgJtwKZDA8WlBC5SUQ/I7macnEQb7INddiG3YYDpDUl27bQSkr02ZAabSKZlknsvWEMLqI84I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=none smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=bpXx6w4t; arc=none smtp.client-ip=198.137.202.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Sender:Reply-To:Content-ID:Content-Description;
	bh=Ne51o0UrCw4ck80IX6B2iiDYmKj1zjYYR9vMy7ydmtU=; b=bpXx6w4t9KsfpoD6zdKriFEkTD
	hniSqNWH9of/bS/SAud+356Lhlqhl8FDMYGrQTX2ObE2w667CMAuBkOQ6d+JDQobnyiz0mQmerIDA
	rbbU3nh2KGDbam7BOq4qpn11udRwdUZllf3LgFXLiUd+TECA9xXepDSNDrtqFPAJH0UpBhkT76y0t
	eYvwH3BDPtp6TFyEJEtRYKOKtv3ljU1UKNW/EnRI8ReMHqVwqXY9RRWZMTJLOp9qTnf/Px/V5eQGx
	XmcytT6dNa+Lh9q8ybae+trJDqLS2/Ijrw4kGi+859Cvqc5HFFJHrcl6dLUrzl4ynOw8+tn6xLX0K
	mOrcvTGg==;
Received: from [50.53.43.113] (helo=[192.168.254.34])
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfNAi-00000005xHb-2M6j;
	Mon, 12 Jan 2026 19:01:48 +0000
Message-ID: <bdff1820-f7b5-4895-a38f-566f99b52c8c@infradead.org>
Date: Mon, 12 Jan 2026 11:01:47 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] reset: remove the reset-tn48m driver
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Robert Marko <robert.marko@sartura.hr>
Cc: linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
References: <20260112064958.3837756-1-rdunlap@infradead.org>
 <7a8ba1af-0b52-4174-8d8a-97d4c050b8bd@kernel.org>
 <CA+HBbNGT+7x0Bs9p5=bNVUSHt66vd38RuFdjm_GxPWX6C6XDNA@mail.gmail.com>
 <20260112-determined-misty-porpoise-c77a2a@quoll>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20260112-determined-misty-porpoise-c77a2a@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi,

On 1/12/26 3:51 AM, Krzysztof Kozlowski wrote:
> On Mon, Jan 12, 2026 at 10:16:44AM +0100, Robert Marko wrote:
>> On Mon, Jan 12, 2026 at 8:26 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>>
>>> On 12/01/2026 07:49, Randy Dunlap wrote:
>>>> The reset-tn48m driver is useless without the simple-mfd parent, which
>>>> is not present in the kernel tree, so remove it and references to it.
>>>
>>> I don't understand that sentence. simple-mfd is present in the kernel
>>> tree, so the condition is clearly false.
>>>
>>> Driver has proper instantiation mechanism, thus all out of tree users
>>> can properly use it and there is no ever requirement to have in-tree
>>> DTS. Otherwise you would remove half of the kernel drivers...
>>
>> The simple-mfd driver itself exists, but all of the TN48M drivers
>> depend on a symbol
>> that sadly, was reverted in [1], and thus you cannot build them, nor
>> are they instantiated without it.
> 
> Ah, so missing is MFD_TN48M_CPLD. You should just say that driver is
> impossible to build outside of compile testing, thus it is unusable.
> simple-mfd is rather confusing in this context, because itself exists.
> 
>>
>> I am sad that was the case as the drivers work, and they were planned
>> for expansion for more
>> switch models but it ended up in this limbo state.
>>
>> [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20260109&id=540e6a8114d0
>>
>> Regards,
>> Robert
>>
>>>
>>>>
>>>> Fixes: 5cd3921d16b6 ("reset: Add Delta TN48M CPLD reset controller")
>>>
>>> No bug to be fixed. Or at least not explained yet...
> 
> In that case I would say fixed commit is what you pointed:
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20260109&id=540e6a8114d0

OK, if there is another version.
Hopefully there will just be a patch for the simple-mfd parent.

thanks.
-- 
~Randy


