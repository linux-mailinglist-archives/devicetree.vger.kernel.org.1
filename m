Return-Path: <devicetree+bounces-242001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E8DC851C5
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 14:09:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 18E864E9F51
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 13:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E027320CDB;
	Tue, 25 Nov 2025 13:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b="UaIlOsIx"
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F28E31A818;
	Tue, 25 Nov 2025 13:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764076082; cv=none; b=dzpilnIgrWLDbgwAoq4Wmhe+jxeCnnJy4w71zEMqkNGtnReNv0Q8HXeiqAdlG7vatsZQFXYE4+UevJFC2HoVPa8c72TymPc1FG10Seof/ziLcdcd0wrj1UmLmKgsAK+MhE5F4lrA0ItT3PgjFqCLVlPzsaAg+vmfizNQFgDPG+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764076082; c=relaxed/simple;
	bh=cu3v1uHTR2Quy+E6MlMjTio/PwnYn+7g3fpuhiZqoig=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CbB9enp1AP305kGcgf479ryzgQU6ZfCwCZpci0u/iSObfeH4L6gDhd7w5Ztp3r7RV4RGHY6c5q37oQXsOIOOx1iicb1n2ama2NsrZXPPbHxMGC9OoK6au24V/z2uWeKF1kx2DSaumO/TlR1yxzYJY0/z42UVu9nsgSAP+Et2kYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b=UaIlOsIx; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=freeshell.de;
	s=s2025; t=1764076025;
	bh=O8pPEWmwuC1hrOwz6iM27BqW82qWb9y2muB3MkxcZlU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=UaIlOsIxeq218mJ4EjbDaHlhnI4fEXiIucnhWK8tl0CQFFKMiZRB1/iGCLy6W8c04
	 dkVo4WVpS3kyTnQKy4XWTijZ17i85JDCIvWDUIjUrdCxuNPBF+JsR13W5tfPw+k2o8
	 yFoVITTHEhU/bXcODFASowheKXBVJdoaLQQ+UhAcQF701UKmiEH6/XZg/7hvfSUrxm
	 rPSbWgycfAbnH37hizFMdsj01P0aeF6dYvSA2/8RTRzanOnxCPtk1obmmk34ZMMwGE
	 01TB112C6t3oG4xFVzdUmDn6Sp0ky3kkBUuH+CHnNdjvc75e4ZE7cVIxiWskJGLBSX
	 H/gG/Rq5K8iTQ==
Received: from [192.168.2.54] (unknown [98.97.63.250])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id E5401B221459;
	Tue, 25 Nov 2025 14:07:02 +0100 (CET)
Message-ID: <fb9ca9fd-1591-4e43-b055-b6ea8d55a42a@freeshell.de>
Date: Tue, 25 Nov 2025 05:07:00 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: riscv: starfive: add
 xunlong,orangepi-rv
To: Icenowy Zheng <uwu@icenowy.me>, Krzysztof Kozlowski <krzk@kernel.org>,
 Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Michael Zhu <michael.zhu@starfivetech.com>,
 Drew Fustini <drew@beagleboard.org>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
References: <20251123225059.49665-1-e@freeshell.de>
 <20251123225059.49665-2-e@freeshell.de>
 <20251124-free-bandicoot-of-skill-fa7d9a@kuoka>
 <20251124-state-campsite-3e7788a495c1@spud>
 <0e851ca0-1f56-437d-ae14-094c114d3b77@freeshell.de>
 <dc48fa76-0a08-4c9d-a3d7-724eb255aff8@kernel.org>
 <ff1f0e6b95150896136ab31ce13e0a2c7a3a5fe3.camel@icenowy.me>
 <489e9d44-fac6-4aa8-b094-ef20196e392b@kernel.org>
 <0a2104faee332ee143b5499c18aea3625971156c.camel@icenowy.me>
Content-Language: en-US
From: E Shattow <e@freeshell.de>
In-Reply-To: <0a2104faee332ee143b5499c18aea3625971156c.camel@icenowy.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 11/25/25 00:01, Icenowy Zheng wrote:
> 在 2025-11-25星期二的 08:48 +0100，Krzysztof Kozlowski写道：
>> On 25/11/2025 08:33, Icenowy Zheng wrote:
>>> 在 2025-11-25星期二的 08:28 +0100，Krzysztof Kozlowski写道：
>>>> On 24/11/2025 22:59, E Shattow wrote:
>>>>>
>>>>> On 11/24/25 05:22, Conor Dooley wrote:
>>>>>> On Mon, Nov 24, 2025 at 08:28:10AM +0100, Krzysztof Kozlowski
>>>>>> wrote:
>>>>>>> On Sun, Nov 23, 2025 at 02:50:44PM -0800, E Shattow wrote:
>>>>>>>> From: Icenowy Zheng <uwu@icenowy.me>
>>>>>>>>
>>>>>>>> Add "xunlong,orangepi-rv" as a StarFive JH7110 SoC-based
>>>>>>>> board.
>>>>>>>>
>>>>>>>> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
>>>>>>>> Signed-off-by: E Shattow <e@freeshell.de>
>>>>>>>
>>>>>>> <form letter>
>>>>>>> This is a friendly reminder during the review process.
>>>>>>>
>>>>>>> It looks like you received a tag and forgot to add it.
>>>>>>
>>>>>> It's from me, don't resubmit just to add it since it'll be me
>>>>>> applying
>>>>>> anyway.
>>>>>>
>>>>>
>>>>> Hi Conor,
>>>>>
>>>>> Okay. Yes I'd dropped the tag since the commit message is
>>>>> appreciably
>>>>> different, and you would be handling it again anyways. Thanks!
>>>>> And
>>>>> thank
>>>>> you Krzysztof for the reminder -E
>>>>
>>>>
>>>> And where did you explain that you dropped the tag because of
>>>> that?
>>>> Please read the form letter carefully.
>>>
>>> Well I think there's no clear definition of "the patch has changed
>>> substantially" here.
>>>
>>> E may think for this such-short patch, the commit message weighs a
>>> lot
>>> and the change to it is significant to the patch (e.g. making the
>>> patch
>>> not clear enough).
>>
>> You still did not bother to read what we expect. I do not discuss if
>> this changed significantly or not, although it is obvious that it did
>> not change and tag should have been retained.
>>
>> Look again:
>> <QUOTE>
>> Please read:
>> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
>>
>> If a tag was not added on purpose, please state why and what changed.
>> </QUOTE>
>>
>> Where did you explain that?
> 
> Sure, I agree that explaination of this should be delivered.
> 
>>
>>
>> Best regards,
>> Krzysztof
> 

Krzysztof,

The submitting-patches document does not support your assertion in this
situation. I evidently have a different understanding of than you, as
when I read it before sending the series I did arrive at the action of:

1. Acked-by is less formal and so it is a matter of opinion and
judgement whether to retain it or not. I choose not to here due to
changes visible in the commit log (the commit messages and titles). I
would let Conor decide if they will acknowledge the revised series
instead of making that decision for them.

2. I am not required to mention the drop of any Acked-by tag in the
cover letter for this situation. Conor is handling this series so I do
need to participate on the mailing list when there's a question or
comment about picking up the lack of Acked-by.

I am in the understanding at the exchange between Conor and I that this
concern of yours will be resolved without my input depending on the
review from Emil. Let us know what/if more specific and actionable needs
done and whom by you expect it to be done.

Thank you,

-E

