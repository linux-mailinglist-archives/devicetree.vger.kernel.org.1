Return-Path: <devicetree+bounces-174857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCBBAAF13A
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 04:43:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA1BE1B68D9C
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 02:43:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01C5B1DF244;
	Thu,  8 May 2025 02:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="ac3wSSl2"
X-Original-To: devicetree@vger.kernel.org
Received: from out-183.mta1.migadu.com (out-183.mta1.migadu.com [95.215.58.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13881E282D
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 02:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746672201; cv=none; b=cj0Hz15kiecHAEDZMi2VXAyejODucYI+GZy87QFxfWcvSVUkSJCkWvexAq/XzvO8vqncQ8p+5DyScqHan8628lGPFkk+F05/mvGlaEaAbBTt2hm1o/q4woNzJsQ6ACfHOkS1hLPXgMBNP6ClKXtzFreZFt9RYny30eTXYYgTHEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746672201; c=relaxed/simple;
	bh=8p6jGS4TZQI7rI9iRgaiegouvp+N/bSL5KFlRmDlY78=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=M5jPxADY7lUgEz2Vhm42a8TaEiQaf4gcTg9hdZxCH/3EYqag0xMQfspbRFDLzSGfY7Io1rwehqbwiIq3ELY80V0y6QfmLJr9LqqXv40ULXKeRQzdgZKtAH5uDMkVTUqXgXQ0PF61fkkKI/8shkWj7BMVR9ovTpKVY6vnqrFBumY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=ac3wSSl2; arc=none smtp.client-ip=95.215.58.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <1b72364f-e997-4d41-89b1-5de3b82bc664@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1746672186;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AGdZqGDq7unsOjS9YY7VGbfeP6K3GMQsO4IbWDuMJY8=;
	b=ac3wSSl2RZReHvZePXaYOpBuCxWBp9qhAv2452kfXxtlJSGP/SQoecK7yJCJmmcCpTB4TA
	jnp+689Ze6cifqPcOcpkzE73tGJWkKBY9h2Or8CyL8iqeJT11Ma8b3XccAw9O2uYq2ov/O
	qepMrN7XVFgUqiL2QdVNVtwHsB2AvNw=
Date: Thu, 8 May 2025 10:42:40 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 2/4] dt-bindings: LoongArch: Add CTCISZ Ninenine Pi
To: Yao Zi <ziyao@disroot.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Huacai Chen <chenhuacai@kernel.org>,
 WANG Xuerui <kernel@xen0n.name>, Neil Armstrong <neil.armstrong@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Junhao Xie <bigfoot@classfun.cn>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Aradhya Bhatia <a-bhatia1@ti.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Binbin Zhou <zhoubinbin@loongson.cn>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, loongarch@lists.linux.dev,
 Mingcong Bai <jeffbai@aosc.io>, Kexy Biscuit <kexybiscuit@aosc.io>
References: <20250501044239.9404-2-ziyao@disroot.org>
 <20250501044239.9404-4-ziyao@disroot.org>
 <7e56091d-0e91-44ef-b314-facb102ee468@linux.dev> <aBsGozWwg_WQfe4R@pie>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Yanteng Si <si.yanteng@linux.dev>
In-Reply-To: <aBsGozWwg_WQfe4R@pie>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

在 5/7/25 3:07 PM, Yao Zi 写道:
> On Tue, May 06, 2025 at 04:58:50PM +0800, Yanteng Si wrote:
>> 在 5/1/25 12:42 PM, Yao Zi 写道:
>>> Ninenine Pi is an Loongson 2K0300-based development board produced by
>> I think "Ninenine Pi" doesn't make sense. I browsed
>> <https://bbs.ctcisz.com/forum.php?mod=forumdisplay&fid=2> and found that the
>> Chinese name of this development board is "久久派". Interestingly, its
>> selling price is 99 yuan. In Chinese, the Roman numeral "9" has the same
>> pronunciation as the Chinese character "久".
> 
>> It seems that you intended to name the development board after its
>> selling price.
> 
> I've confirmed with the vendor that they call the board "99pi" in
> English which is rewritten as "Ninenine Pi" to avoid possibly unexpected
> problems with a name starting with digits. This has nothing to do with
> the price.
I searched on the Internet for a long time last night, but
still couldn't find the source of Ninenine Pi. Can you
provide the origin of the manufacturer's naming? Or transfer
our offline discussion to an online platform.

What are the possible unexpected problems that may be
triggered? For example?
> 
>> But shouldn't it be
>> "Ninety-nine Pi" in English? Or "99 Pi"? Perhaps "Jiujiu Pi" is a better
>> option?
> 
> "Ninety-nine Pi" sounds too complicated for a board name and I don't
> think "99" in "99pi" is meant to represent a number. Thus I'd like to
> stick with "ninenine pi".
Since 99 has nothing to do with the price, and you think that
the 9 is not used to represent a number, then I'm curious. In
the name of this development board, what does the 9 represent?
Based on my research, I have already clarified that "99" has
the same Chinese pronunciation as "久久 (long time)", so I
think the naming should carry the implication of "lasting
or a long time".

I have research on other similar development boards,
such as Raspberry Pi, Orange Pi, Mango Pi... The English names
of these development boards all have corresponding meanings.
Why can't we come up with a good name?

Based on the above discussion, I don't accept the name "ninenine Pi" 
which has no implied meaning.

Thanks,
Yanteng
> 
>>
>>
>> Thanks,
>> Yanteng
> 
> Best regards,
> Yao Zi
> 
>>

