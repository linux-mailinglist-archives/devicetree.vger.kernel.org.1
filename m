Return-Path: <devicetree+bounces-298711-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULsfAjiSCGrEvwMAu9opvQ
	(envelope-from <devicetree+bounces-298711-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 17:50:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 453A755C7F9
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 17:50:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 526A53003838
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 15:50:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F37543E1680;
	Sat, 16 May 2026 15:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="ZgNn/JIj"
X-Original-To: devicetree@vger.kernel.org
Received: from out-183.mta1.migadu.com (out-183.mta1.migadu.com [95.215.58.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2F076026
	for <devicetree@vger.kernel.org>; Sat, 16 May 2026 15:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778946608; cv=none; b=QOGqhpRwUm5dZbxnCPtYOITn6jzqpe6tCoILFO7hs0dkcOHh6m5ytZWOA53PMuvdLlZiN0FFp/ML4KLGoaMOq7Ic/lHpYxMIE867GOE4pauLLrBi73reVkaMLTyMqUVi1daZbWyQYdN2Vp8j1PXg2364MV/muS72ba1n5CAihAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778946608; c=relaxed/simple;
	bh=FeuUX8oMZRiDE1D/l77ftV+FFZbaTVPV4PkPXVXrARU=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=d7gAx+nhRbJBVcZG+x441x5yFv6EmQRjnbfrE5Z+1WorSL95UAUNZD8ZU1Tu7NIP/gGWxBB0PqsAkByXbMlqpBKN9G4Vqp9AqhtyOkMvNeHxcx1vLhZrQQw/qk2U6tgRvXIe2txseW7FI4+EE+vnXK2jmLKP0jSuFnV7HtD8k80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=ZgNn/JIj; arc=none smtp.client-ip=95.215.58.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Content-Type: text/plain; charset=utf-8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1778946595;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GZ3+QXNs1Ruk6C/JUmWvrB0kpJwdp6UGI2mwrNsZMhs=;
	b=ZgNn/JIj5mBrXnmCCm4JECClo95jWnAfgvxaeUogSLftOTtVOzEu4LwImaPcNL4LtHqDNj
	iHjoJngmIBDXMTVlkTV1dUk2ZIgbdt35RP8vhnAxzoi9SmadjToGVPn56XnocUuz+cH0kb
	uKtkVu326TWUBz5b4aaQr0MG7ebI3YU=
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (1.0)
Subject: Re: Stop false review statements
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Roman Gushchin <roman.gushchin@linux.dev>
In-Reply-To: <2026051631-trolling-juggling-da1c@gregkh>
Date: Sat, 16 May 2026 08:49:39 -0700
Cc: Konstantin Ryabitsev <mricon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>, Krzysztof Kozlowski <krzk@kernel.org>,
 sashiko-bot@kernel.org, sashiko-reviews@lists.linux.dev,
 sashiko@lists.linux.dev,
 Linux Kernel Workflows <workflows@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 devicetree@vger.kernel.org, kfree@google.com
Message-Id: <0902F8E6-C495-40A1-975D-92D3B72D44AE@linux.dev>
References: <2026051631-trolling-juggling-da1c@gregkh>
To: Greg KH <gregkh@linuxfoundation.org>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Queue-Id: 453A755C7F9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-298711-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linux.dev:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[roman.gushchin@linux.dev,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:mid,linux.dev:dkim,linuxfoundation.org:email]
X-Rspamd-Action: no action


> On May 16, 2026, at 8:45=E2=80=AFAM, Greg KH <gregkh@linuxfoundation.org> w=
rote:
>=20
> =EF=BB=BFOn Sat, May 16, 2026 at 08:41:43AM -0700, Roman Gushchin wrote:
>>=20
>>>> On May 16, 2026, at 8:20=E2=80=AFAM, Konstantin Ryabitsev <mricon@kerne=
l.org> wrote:
>>>=20
>>> =EF=BB=BFOn Sat, May 16, 2026 at 05:11:28AM -0700, Guenter Roeck wrote:
>>>>> On Sat, May 16, 2026 at 10:05:02AM +0200, Krzysztof Kozlowski wrote:
>>>>> What the hell is that:
>>>>>=20
>>>>> https://lore.kernel.org/all/20260515190707.033BDC2BCB0@smtp.kernel.org=
/
>>>>>=20
>>>>> As a bot you CANNOT MAKE a Reviewer's statement of oversight. You are
>>>>> not a damn human do be able to make such statement. You are a bot, a t=
ool.
>>>>>=20
>>>>=20
>>>> Where exactly do the rules say that ? I seem to miss that.
>>>>=20
>>>> There is a policy document about _contributions_ made by AI, but I don'=
t
>>>> see the one that says that AI agents must not provide Reviewed-by: tags=
.
>>>=20
>>> =46rom my perspective, AI agents must NOT use the Reviewed-by tag for th=
e
>>> following reasons:
>>>=20
>>> - We consider this a "person-trailer" and it implies agency
>>> - Adding yourself to a commit via a trailer is a *binding responsibility=
* for
>>> the change. A lot of tooling will cc the Reviewed-by addresses on follow=
-up
>>> messages regarding code in this commit. If the address is bogus or doesn=
't
>>> go to a developer, this is both wasteful and potentially frustrating.
>>=20
>> Hi Konstantin!
>>=20
>> The goal here is to inform maintainers that sashiko has successfully revi=
ewed the patch
>> and there were no findings, otherwise maintainers have to go to the web s=
ite and check the status.
>=20
> That's fine.
>=20
>> I=E2=80=99m not attached to any specific form of it, I thought Reviewed-b=
y is the most obvious form.
>> And we use Reported-by: tags with various tooling for years.
>=20
> Reported-by: shows the existance of a problem that some tool found, a
> subtle difference here.
>=20
>> What do you think is the best form?
>>=20
>> I=E2=80=99ll pause sending reviewed-by tags until we have a discussion an=
d agreement here.
>=20
> Just say it in some other text form, that our tools will not pick up.
> Like:
>    Tool XXXX reports that all is good:
>        https://....
>=20
> or something like that?

Sure, works for me.

Thanks,
Roman=

