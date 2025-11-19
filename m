Return-Path: <devicetree+bounces-240102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E304C6D66E
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 09:27:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 6C3812CED9
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F347312805;
	Wed, 19 Nov 2025 08:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b="PFuYwoll"
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6314427055D;
	Wed, 19 Nov 2025 08:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763540854; cv=none; b=i7oUU9yU2yE0bW2/jkeKZD0zrMo6+d/pBoz27RSpN8jvge8nCaSxjnh0cI76xGx3fi1MOqqeg6Ketr+20fOKDMS6gQGrJ7ztVWunAHnfzU+ndOmlqrasEWYHRoBRZaHKXliP0541RK007AxZmOnBYbhCpQNOF0odDXUsKpG+O5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763540854; c=relaxed/simple;
	bh=gXgV1F9f7b3aQdSyH4Lg8X66B80SRjzNbSIh7rT/i1E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d6GctTEdGbvpASgpPJ9t/CsRz50YLe7ewJkretRBi/YEc66Pe44o6FtMJs3Q+c/WSZowDxWwuKJ3cv9vpXrBowAk8Xw27oe0KxyZlH7/Jg/P8+lYTxkGIuY9DvvlrxY+4gRjNBRwhLmZiM9pzPJ1O8G7qiu31VDQMXL9ApJsfFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b=PFuYwoll; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=freeshell.de;
	s=s2025; t=1763540782;
	bh=KDATMTQASj0ogtJXDKKKoCaehevGMrQdp6yw0/i9GSk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PFuYwollG48FOfW+d84zZ37q923IyOP1r5FwLM+qn5Uhyegn00domWLOrj+GUEW5o
	 HkyYwWku3ycCa80xS6Io0GsNCw+Wsw3tnhQL0LWUsvNcY8TLrftdwbaZEZ617YLibC
	 fuiFrDhSZdctwrXGCy+QShFJPsZOqbQhvQF8kZM6oy5ZPbsXLFTX3waokFP5tfIJQx
	 /3NzjoDNXA3SCQbPBzi2eKVN1Z5T7j9yH7epxwIJgl4zghNH7T+Rm+ANQ6io3+xdM8
	 go3cBrUYOhPG+IGvTtIBijU7fETpTvRLl+/5FnPlF7S8joBS6MbA8cciV/jIxQn0ZC
	 HM85dzK71HEIA==
Received: from [192.168.2.54] (unknown [143.105.117.136])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id F23AEB2201A7;
	Wed, 19 Nov 2025 09:26:18 +0100 (CET)
Message-ID: <841b4250-0ac6-4b49-8c8e-a6d6bc675a1f@freeshell.de>
Date: Wed, 19 Nov 2025 00:26:16 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/8] Add support for StarFive VisionFive 2 Lite board
To: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
 Conor Dooley <conor@kernel.org>, Hal Feng <hal.feng@starfivetech.com>
Cc: Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Bjorn Helgaas <bhelgaas@google.com>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kwilczynski@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Palmer Dabbelt
 <palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20251107095530.114775-1-hal.feng@starfivetech.com>
 <CAJM55Z_rczBo4D3HsC90QW1=fp3NWgK-tsEo6LHTZNXEBHTDqA@mail.gmail.com>
 <ZQ2PR01MB13076544E2136E7E7C2EEDA1E6CD2@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
 <CAJM55Z9KyNK1n4i9FxbLor4HTQKqK8WKA2svjPVvKXihw_E+sg@mail.gmail.com>
 <4a55301a-ef7e-4b47-8151-621cfba36ddd@freeshell.de>
 <CAJM55Z-bRdNmnRZ7wi3PMOkzGYrxQEGk+7F67Pdu4WXwKmTjCQ@mail.gmail.com>
 <ZQ2PR01MB13075CDDEFC2F03C837E1B31E6C92@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
 <b33919e9-e100-4629-92cb-d1ec3dd756a7@freeshell.de>
 <ZQ2PR01MB1307DADE17FFEFCE70C3F391E6D62@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
 <20251118-throwing-marina-14a87d65465a@spud>
 <1f96a267-f5c6-498e-a2c4-7a47a73ea7e7@canonical.com>
Content-Language: en-US
From: E Shattow <e@freeshell.de>
In-Reply-To: <1f96a267-f5c6-498e-a2c4-7a47a73ea7e7@canonical.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit


On 11/18/25 23:04, Heinrich Schuchardt wrote:
> On 11/19/25 00:10, Conor Dooley wrote:
>> On Tue, Nov 18, 2025 at 02:12:58AM +0000, Hal Feng wrote:
>>>> All,
>>>>
>>>> I repeat that the suggestion was made months ago (by Hal) to split
>>>> out the
>>>> OPP tables per-board from the period of time when I was complaining
>>>> about
>>>> 1.5GHz JH-7110 operation pushing TDP into over-temperature thermal
>>>> limit
>>>> on Milk-V Mars CM SoM.
>>>>
>>>> Whether or not JH7110S is a new compatible should follow precedence in
>>>> Linux development. JH-7110S is evidently the same tape-out as
>>>> JH-7110 and
>>>> however you deal with that in Linux is the appropriate way to deal
>>>> with that
>>>> here. Selection of OPP table for correct operation will be
>>>> determined by
>>>> bootloader, where, it is demonstrated by patch series sent to U-Boot
>>>> upstream to be selected ** per-board ** based on EEPROM content as
>>>> if it
>>>> was any other JH-7110 board deciding dts based on EEPROM content. Given
>>>> that it is the same tape-out I do not find a valid justification for
>>>> a new
>>>> compatible in the stack of adjacent software besides going along
>>>> with some
>>>> kind of marketing-driven answer about whether or not this is a new SoC.
>>>>
>>>> What I care about now is that the VisionFive 2 Lite series is in
>>>> good enough
>>>> shape and there's a possibility to act on this months-old suggestion
>>>> to split out
>>>> the OPP tables which as we have confirmed the JH7110S is the same
>>>> SoC as
>>>> JH7110 it makes a lot of sense to do.
>>>>
>>>> How is it supposed to work for binned silicon in Linux?
>>>
>>> Hi, Conor,  Emil,
>>>
>>> What do you think about this? Hope to hear from you.
>>
>> Can someone just give me a yes/no question out of this thread? I'm not
>> really immediately sure what's being asked of me. What exactly do you
>> want to do with the opp-tables? "Split out" isn't super clear. Does that
>> mean into board files? I am guessing it does, since you're saying that a
>> particular board cannot support the 1.5 GHz mode. It's not unusual
>> though to use delete node for unsupported opp-table entries, could that
>> be done instead?
>>
>> FWIW, this weekend is -rc7, so I won't be applying any new material
>> after that.
>>
> 
> There was agreement that the JH7110 and JH7110S need different operating
> points. This is realized via the different includes for the VisionFive 2
> Lite boards and the other boards.
> 
> Support for the new compatible string "starfive,jh7110s" used by the
> VisionFive 2 Lite is already implemented in OpenSBI where it is needed
> for platform support (specifically reboot). It is also used in tag
> next-20251119 in drivers/cpufreq/cpufreq-dt-platdev.c. There is no
> technical need to role this back.
> 
> The changes in OpenSBI and the cpu frequency driver could have been
> avoided by using
> 
> compatible = "starfive,visionfive-2-lite-emmc", "starfive,jh7110s",
> "starfive,jh7110"
> 
> to indicate that JH7110s is just a variety of JH7110. This also would
> match the best practice example in Documentation/devicetree/usage-
> model.rst:
> 
>     compatible = "ti,omap3-beagleboard", "ti,omap3450", "ti,omap3";
> 
> I guess we could add that third compatible value in a later patch.

No, how about doing that now instead of pushing out the wrong result?

> 
> As U-Boot uses the Linux device-trees too, I have built U-Boot with the
> updated device-trees and had no problem to boot all supported JH7110 and
> JH7110S devices including the StarFive VisionFive 2 Lite.
> 

Yes that is clear when reading the documentation, sounds good to me if
following the docs.

> A bootph-pre-ram property for booting from SD-card that was already
> missing before the series can be added via a separate patch.

You are referring to booting U-Boot SPL from SD-card. The supported
method for new designs (StarFive VisionFive 2 Lite is a new design) is
to boot U-Boot SPL from UART serial or SPI Flash. U-Boot Main has the
full unfiltered devicetree available and does in fact boot Linux from
SD-card as-is without what you refer to.

How then is U-Boot SPL boot from SD-card possible on StarFive VisionFive
2 Lite? There is only a boot button (serial or spi flash select). Is
this for a developer board with MSEL DIP, or some other boot selection
in hardware not mentioned?

> 
> I think we should go ahead as is.

This is the review feedback I wish we'd had for Hal with the RFC and v1
of this series. I would now like the identified changes to be applied to
the devicetree. It says right there in the documentation how to do it,
thank you.

> 
> Best regards
> 
> Heinrich

B.R.,

-E

