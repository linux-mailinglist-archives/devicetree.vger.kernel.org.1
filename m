Return-Path: <devicetree+bounces-252502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D41D001AA
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 22:11:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F32C430351D7
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 21:10:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FFEE33A6E5;
	Wed,  7 Jan 2026 21:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b="N1247UBr"
X-Original-To: devicetree@vger.kernel.org
Received: from raptorengineering.com (mail.raptorengineering.com [23.155.224.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6C3233A030;
	Wed,  7 Jan 2026 21:05:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.155.224.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767819912; cv=none; b=T04bPjHXetC7PeiOvzTujLOS5OGVDiXH0XCxcRwptLJbxLe8bODC6x8SEioh5FcKt/xoc2W0DVPQp6EBzlm+nDHk7bNJibYj/2kbr7dRJWYLAjmbecPUJz+qWRfL7LYtylQ/9p80dh2YUr9pmHJEh9jM+LnNMADkCd25velE3XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767819912; c=relaxed/simple;
	bh=k9ib31sa91Nq6SsqaJXJ6LgNoTT17WEOL7iU0VH3kRY=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 MIME-Version:Content-Type; b=MJml4OWIIqZ8Mm4Mjo7bssRziPvbw43et8Td2fUejHfQSZV9E1/jjiZBrxBrlr5Fc0q83XTu2ThFK/LakmfraNH38jx6UA9jAJAVsvqTFxGno9lsTUUUTmDZJRF/nFFYaTI+UvdJTHz/6eSwFotXtMpj/Z9BSYF+UJS0lm5aTq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com; spf=pass smtp.mailfrom=raptorengineering.com; dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b=N1247UBr; arc=none smtp.client-ip=23.155.224.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raptorengineering.com
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id A52D87790DD9;
	Wed,  7 Jan 2026 15:05:08 -0600 (CST)
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id BnOE2YGWOgoc; Wed,  7 Jan 2026 15:05:06 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id C4C387790EC0;
	Wed,  7 Jan 2026 15:05:06 -0600 (CST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rptsys.com C4C387790EC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=raptorengineering.com; s=B8E824E6-0BE2-11E6-931D-288C65937AAD;
	t=1767819906; bh=PNuq+UAfnNqtS8psdE+aSvhLPdhgU2fmYKyXLDRzhO8=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=N1247UBrepTyRkYw9rGlZ1N7Afr126q5EdbN9Yi+tisnWU2J0IfbQbCwawTRDUmv7
	 nAhulJ+6B7kaB1GQh6YxtrIiP32TAIzBknbwO9OVbfMEtUgfYup1LNc8Yt0wnixXNU
	 9jAka1izBK7QWmIJ7vsSQdR/KqxE4+vRMZwzZWNw=
X-Virus-Scanned: amavisd-new at rptsys.com
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id Z8kXrlyfSkT4; Wed,  7 Jan 2026 15:05:06 -0600 (CST)
Received: from vali.starlink.edu (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 956857790DD9;
	Wed,  7 Jan 2026 15:05:06 -0600 (CST)
Date: Wed, 7 Jan 2026 15:05:03 -0600 (CST)
From: Timothy Pearson <tpearson@raptorengineering.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree <devicetree@vger.kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Lee Jones <lee@kernel.org>, 
	Georgy Yakovlev <Georgy.Yakovlev@sony.com>, 
	Shawn Anastasio <sanastasio@raptorengineering.com>
Message-ID: <26444998.193317.1767819903648.JavaMail.zimbra@raptorengineeringinc.com>
In-Reply-To: <68985605-1b18-4413-943d-c6af04c4a7f6@kernel.org>
References: <20260107002136.3121607-1-tpearson@raptorengineering.com> <20260107002136.3121607-2-tpearson@raptorengineering.com> <20260107-spotted-swan-of-sufficiency-1bfc03@quoll> <887779054.192722.1767805783381.JavaMail.zimbra@raptorengineeringinc.com> <24a1839d-5c5d-4e59-bc42-403dbc8134a4@kernel.org> <2068648185.192779.1767807665985.JavaMail.zimbra@raptorengineeringinc.com> <68985605-1b18-4413-943d-c6af04c4a7f6@kernel.org>
Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailer: Zimbra 8.5.0_GA_3042 (ZimbraWebClient - GC143 (Linux)/8.5.0_GA_3042)
Thread-Topic: dt-bindings: mfd: Add sony,cronos-smc
Thread-Index: NHKGd9qFlCoZwkpknSaJOSAn1UL8lQ==



----- Original Message -----
> From: "Krzysztof Kozlowski" <krzk@kernel.org>
> To: "Timothy Pearson" <tpearson@raptorengineering.com>
> Cc: "devicetree" <devicetree@vger.kernel.org>, "linux-kernel" <linux-kernel@vger.kernel.org>, "Rob Herring"
> <robh+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
> "Lee Jones" <lee@kernel.org>, "Georgy Yakovlev" <Georgy.Yakovlev@sony.com>, "Shawn Anastasio"
> <sanastasio@raptorengineering.com>
> Sent: Wednesday, January 7, 2026 2:22:33 PM
> Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc

> On 07/01/2026 18:41, Timothy Pearson wrote:
>> 
>> 
>> ----- Original Message -----
>>> From: "Krzysztof Kozlowski" <krzk@kernel.org>
>>> To: "Timothy Pearson" <tpearson@raptorengineering.com>
>>> Cc: "devicetree" <devicetree@vger.kernel.org>, "linux-kernel"
>>> <linux-kernel@vger.kernel.org>, "Rob Herring"
>>> <robh+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof
>>> Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
>>> "Lee Jones" <lee@kernel.org>, "Georgy Yakovlev" <Georgy.Yakovlev@sony.com>,
>>> "Shawn Anastasio"
>>> <sanastasio@raptorengineering.com>
>>> Sent: Wednesday, January 7, 2026 11:18:09 AM
>>> Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
>> 
>>> On 07/01/2026 18:09, Timothy Pearson wrote:
>>>>
>>>>
>>>> ----- Original Message -----
>>>>> From: "Krzysztof Kozlowski" <krzk@kernel.org>
>>>>> To: "Timothy Pearson" <tpearson@raptorengineering.com>
>>>>> Cc: "devicetree" <devicetree@vger.kernel.org>, "linux-kernel"
>>>>> <linux-kernel@vger.kernel.org>, "Rob Herring"
>>>>> <robh+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof
>>>>> Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
>>>>> "Lee Jones" <lee@kernel.org>, "Georgy Yakovlev" <Georgy.Yakovlev@sony.com>,
>>>>> "Shawn Anastasio"
>>>>> <sanastasio@raptorengineering.com>
>>>>> Sent: Wednesday, January 7, 2026 1:25:10 AM
>>>>> Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
>>>>
>>>>> On Tue, Jan 06, 2026 at 06:21:33PM -0600, Timothy Pearson wrote:
>>>>>> From: Shawn Anastasio <sanastasio@raptorengineering.com>
>>>>>>
>>>>>> The Sony Cronos Platform Controller is a multi-purpose platform controller
>>>>>> that provides both a watchdog timer and an LED controller for the Sony
>>>>>> Interactive Entertainment Cronos x86 server platform. As both functions
>>>>>> are provided by the same CPLD, a multi-function device is exposed as the
>>>>>> parent of both functions.
>>>>>>
>>>>>> Add a DT binding for this device.
>>>>>>
>>>>>> Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
>>>>>> Signed-off-by: Timothy Pearson <tpearson@raptorengineering.com>
>>>>>> ---
>>>>>>  .../bindings/mfd/sony,cronos-smc.yaml         | 128 ++++++++++++++++++
>>>>>
>>>>> How this can be a v6 with no changelog at all and still not tested?
>>>>>
>>>>> What happened with this patchset? Where is it explained?
>>>>
>>>> Changes have only been to fix issues identified in review and any posted
>>>> autotest failures.
>>>
>>> And where is this explained? Please always provide detailed changelog in
>>> the cover letter or individual patch.
>>>
>>>>
>>>> Please note that the tooling to check the DT bindings does NOT appear work
>>>> properly, we've wasted a lot of time and effort attempting to get it running
>>>> only to find that it's spitting out internal Python errors even for other
>>>> drivers that are *already* in the kernel source tree.  This obviously creates a
>>>> situation where it's difficult to pre-check the patch set for compliance; if
>>>> you want to see this first hand, spin up a Debian Sid VM (which has a very
>>>> recent version of the DT tooling from late 2025) and try to check any of the
>>>> in-tree MFD drivers using the documented methods.
>>>
>>> I am using DT schema on multiple distros, including Debian but not Sid
>>> but Trixie
>>> (https://krzk.eu/#/builders/91/builds/116/steps/13/logs/stdio). Works
>>> without problem...
>> 
>> Good to know.  There is next to no documentation on the required software
>> versions to make this work, which complicates
>> 
>>> On regular Debian based distro this is just few commands - pix install
>>> and them make dt_binding_check - so I am surprised you spent a lot of
>>> time on setting this up.
>>>
>>> What is the problem exactly?
>> 
>> Good to know.  There is next to no documentation on the required software
>> versions to make this work, which complicates setup.  Bookworm's DT package was
>> too old when it was tried pre-Trixie release, and at the time Sid didn't work
>> either for some other reason.  The assumption was that the kernel needed a very
>> recent version of the DT tooling, so Sid was tried again this year.  Will try
>> Trixie before the next patch update.
> 
> So you mean from distro? We don't use it from the distro because it's
> heavily outdated. It makes no sense. That's why I wrote - pipx.
> 
> 
>> 
>> Here is example output against an in-tree driver, using an up to date Sid system
>> (word wrap not applied so as to make the errors easier to read):
>> 
>> dt_binding_check
>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/silergy,sy7636a.yaml
>> 
>>   CHKDT   ./Documentation/devicetree/bindings
>> Traceback (most recent call last):
>>   File "/usr/bin/dt-doc-validate", line 8, in <module>
>>     sys.exit(main())
>>              ~~~~^^
>>   File "/usr/lib/python3/dist-packages/dtschema/doc_validate.py", line 66, in main
> 
> Feels liks distro package. Never saw this, but again I have never used
> distro and have absolutely never recommended even trying that. There
> were problems with matching jsonschema package, but regardless - if you
> use distro you will use very old schemas, so you will hit another
> problem. It's just pointless to rely on distro here - no benefits for
> you, but only stale/old package, especially that installing via pipx is
> easy.

In my opinion, the distro package should be fixed.  There are security considerations with PyPI [1], and those concerns then require (per our policies) the use of isolated systems due to downloading and running unsigned and (at least on our end) unaudited code from the general Internet.  The distro packages are signed and built from source on known trusted systems, in contrast with pip's general mode of operation, and I can't imagine it would be that difficult to make sure that Debian and Fedora (the two most common base distros) ship a reasonably new version of the valdation tools, especially in unstable / bleeding edge releases (Sid).

That said, for now, I guess I'll spin up a new VM and give pipx a shot.  Thanks for the pointer in the right direction!

[1] https://carles-garcia.net/python/python_pip/

