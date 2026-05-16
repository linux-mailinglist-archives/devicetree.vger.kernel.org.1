Return-Path: <devicetree+bounces-298758-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qEfeNhG+CGql3QMAu9opvQ
	(envelope-from <devicetree+bounces-298758-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 20:57:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 397BB55D686
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 20:57:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F97C3007F43
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 18:57:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D337D346FC8;
	Sat, 16 May 2026 18:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="pDetYoJZ"
X-Original-To: devicetree@vger.kernel.org
Received: from out-173.mta1.migadu.com (out-173.mta1.migadu.com [95.215.58.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E61A3446C9
	for <devicetree@vger.kernel.org>; Sat, 16 May 2026 18:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778957837; cv=none; b=b9Og7J+ELwwWuNc9zz41Isb2zsRRrgaZ3EspH8JB4cN2s9Cl5jXMzAumeTIDrhyVuQ3zuE7iHBmoe6lUs31AQ9QAg9API0TE3wPmMzZfYvEv4tPS8+G+f0xTraK/xaqgg6GIlwguQRIL+1pHj/DlRD7scUWzHyBaM0isO0zMcb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778957837; c=relaxed/simple;
	bh=of8TX82GAchL6eHU8AfWJKqFRWVZ0hb2HwjwXfE+9xY=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=ObgxSMhhTp6gcSV1OJ3TRFqL1a4I8gjJVZ9qy5dE4jGFRPAaAQSDps+7U4uA/cJZQ10zLllo3Io7NMjiYbo1JEmcs5ctMUKeqildSE6u+xH4t3CZxh81w7sIhRiga/1u0bDwoBVYqwvMdKvfCXiLiL9p/NAwpeOqGFrMugI5OH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=pDetYoJZ; arc=none smtp.client-ip=95.215.58.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Content-Type: text/plain; charset=utf-8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1778957824;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FwKxoY0mz0ptZPDYXqLwrww/3nX4SlEEJE/N2RkvrQU=;
	b=pDetYoJZruA5D8Ps7MplFOVD3y+x45SRS/xDU+bU85E8rfWxHPGtr9wGRgjNhjAyNsYQ1o
	MYDvE+qWm5bKmANE/xIESyOHL5gMpG1XqqAcB1iTd19DAjsCuie8/AI/mNZl9+C4yeLkHy
	b4fkLbborb+M/KVwLZ+tlWZCg6k1Oj4=
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
In-Reply-To: <efc4d394-b328-4ccf-8c05-b6470ee4b88d@kernel.org>
Date: Sat, 16 May 2026 11:56:46 -0700
Cc: Greg KH <gregkh@linuxfoundation.org>,
 Konstantin Ryabitsev <mricon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>, sashiko-bot@kernel.org,
 sashiko-reviews@lists.linux.dev, sashiko@lists.linux.dev,
 Linux Kernel Workflows <workflows@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 devicetree@vger.kernel.org, kfree@google.com
Message-Id: <70C5331E-06F1-48D5-A6BA-0CD130B69A45@linux.dev>
References: <efc4d394-b328-4ccf-8c05-b6470ee4b88d@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Queue-Id: 397BB55D686
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-298758-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linux.dev:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[roman.gushchin@linux.dev,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:mid,linux.dev:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action



> On May 16, 2026, at 11:29=E2=80=AFAM, Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>=20
> =EF=BB=BFOn 16/05/2026 17:49, Roman Gushchin wrote:
>>>=20
>>>> I=E2=80=99m not attached to any specific form of it, I thought Reviewed=
-by is the most obvious form.
>>>> And we use Reported-by: tags with various tooling for years.
>>>=20
>>> Reported-by: shows the existance of a problem that some tool found, a
>>> subtle difference here.
>>>=20
>>>> What do you think is the best form?
>>>>=20
>>>> I=E2=80=99ll pause sending reviewed-by tags until we have a discussion a=
nd agreement here.
>>>=20
>>> Just say it in some other text form, that our tools will not pick up.
>>> Like:
>>>   Tool XXXX reports that all is good:
>>>       https://....
>>>=20
>>> or something like that?
>>=20
>> Sure, works for me.
> Roman,
> Before implementing such changes, send a RFC or just ask a few folks for
> opinions. We do use the tool, among other tools, so we will gladly
> provide a feedback.
>=20
> Sashiko should in general not send such emails when not asked for. Why?
> Because we have also other bots, like LKP, KernelCI, and imagine how
> maintainer's mailbox will look like.
>=20
> LKP allows opt-in for your own repo, which for example I am using, so I
> get confirmation of the success. But people are not receiving them. I
> cannot imagine all the people getting these LKP-successfully-built
> emails on every email.

It=E2=80=99s opt-in on per-subsystem basis, as well as all other email-relat=
ed features.
I do rely on corresponding maintainers to decide if they want it or not.
Even in the case which you was so unhappy about, I asked Guenter prior=20
to enabling it for hwmon.

If you=E2=80=99re saying that it should not send any non-personal emails in g=
eneral, I disagree here,
but happy to have a discussion, assuming it=E2=80=99s polite and constructiv=
e.

The reason why I disagree is simple: there are maintainers/subsystems who li=
ke Sashiko=E2=80=99s reviews=20
and  before introducing the email interface they had to manually send links t=
o Sashiko=E2=80=99s reviews
as replies to proposed patches. I=E2=80=99ve been explicitly asked to add an=
 ability to send out
emails with reviews.

Thanks



