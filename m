Return-Path: <devicetree+bounces-299035-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKBtGs4cCmqmwwQAu9opvQ
	(envelope-from <devicetree+bounces-299035-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 21:53:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D50563A0F
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 21:53:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B51AD300A7EB
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 19:53:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77F3D2F7F1C;
	Sun, 17 May 2026 19:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="K6b+mF8g"
X-Original-To: devicetree@vger.kernel.org
Received: from out-171.mta0.migadu.com (out-171.mta0.migadu.com [91.218.175.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B412C11FD
	for <devicetree@vger.kernel.org>; Sun, 17 May 2026 19:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779047618; cv=none; b=iHJeWq+ml+5UsPvYLxf2Bssev44dwear+klgk0J0rryaKgRUR29zUIK1qfY0yw7G+z36xirp5XJQ/P/FmclVAv4C3f+lH7l5wTlsEi9OVjTGltvFVhoUCJjNfhEoO9+pFIk2GrrNK9wH2rcefTpFV1Mkp0WKUtR1VshFdGTGq3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779047618; c=relaxed/simple;
	bh=rziN1hh0A5wT+pZjQfWI+vaKYthAU6o0Wnfyfi7LghU=;
	h=Content-Type:From:Mime-Version:Subject:Message-Id:Date:Cc:To; b=YH/gRVJ1w5ZtfkAw7HZ60gGM41h+O8ese2bsMR0hg+4oJc8O0LGWh/jFIliFS1IlJfvCXyyLuibyc5WdLxKNf2/OV+pJ9ttkLY8l1UqHvK3ahrVxMfZ2iFpyusvp4prNnA8GLQJ41k++UwV9itNbD8HySdb9PJop/fLYt6NnIMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=K6b+mF8g; arc=none smtp.client-ip=91.218.175.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Content-Type: text/plain; charset=utf-8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1779047614;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=rrXf+swBl4yp9CtNuCEzzNucE6Q+vtW2TZ7N7Ibq2Gk=;
	b=K6b+mF8gJmKtADw1GEqNvYlcofJiUFGBMiRX6rw836icAeNlS551hvn+MjBEI6bbqj0efr
	iLA9NeKDJYFHvXe9konzB3cnVIY3LLCX+Lm1UJTQrklmdIGQGQhvBiBdte0esAWxVlUj4T
	9jfylDEjzThfEv7/696dY2je91bJDk4=
Content-Transfer-Encoding: quoted-printable
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Roman Gushchin <roman.gushchin@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (1.0)
Subject: Re: Stop false review statements
Message-Id: <2CB46AD9-BD19-4FAC-B992-C1CDBB9C36C0@linux.dev>
Date: Sun, 17 May 2026 12:53:19 -0700
Cc: Greg KH <gregkh@linuxfoundation.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, debarbos@redhat.com,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Konstantin Ryabitsev <mricon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>, sashiko-bot@kernel.org,
 sashiko-reviews@lists.linux.dev, sashiko@lists.linux.dev,
 Linux Kernel Workflows <workflows@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 devicetree@vger.kernel.org, kfree@google.com
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Queue-Id: 99D50563A0F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	FAKE_REPLY(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299035-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[roman.gushchin@linux.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linux.dev:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,huawei];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,linux.dev:mid,linux.dev:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,ollama.com:url,linuxfoundation.org:email]
X-Rspamd-Action: no action


> On May 17, 2026, at 11:56=E2=80=AFAM, Mauro Carvalho Chehab <mchehab+huawe=
i@kernel.org> wrote:
> =EF=BB=BFOn Sun, 17 May 2026 11:17:06 -0700
> Roman Gushchin <roman.gushchin@linux.dev> wrote:
>=20
>>> On May 17, 2026, at 9:40=E2=80=AFAM, Mauro Carvalho Chehab <mchehab+huaw=
ei@kernel.org> wrote:
>>> =EF=BB=BFOn Sun, 17 May 2026 12:12:00 +0200
>>> Greg KH <gregkh@linuxfoundation.org> wrote:
>>>>> On Sun, May 17, 2026 at 12:05:56PM +0200, Mauro Carvalho Chehab wrote:=

>>>>> On Sat, 16 May 2026 14:59:44 -0700
>>>>> Roman Gushchin <roman.gushchin@linux.dev> wrote:
>>>>>>> On May 16, 2026, at 2:33=E2=80=AFPM, Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
>>>>>>> I find it opposite: clogging commits with useless information, becau=
se
>>>>>>> some arbitrary and completely closed-source tool did analysis means
>>>>>>> nothing to me one year later when I look at the commit in the Git hi=
story.     =20
>>>>>> This is simple not true: Sashiko is fully open-source, under Apache 2=
.0 license
>>>>>> and the code belongs to LF.    =20
>>>>>> Yes, the instance behind sashiko.dev is using
>>>>>> Gemini 3.1 Pro LLM, which is not open-source, but it=E2=80=99s not a f=
undamental limitation -
>>>>>> Sashiko is supporting various LLMs, including open models - it=E2=80=99=
s just a practical
>>>>>> choice: to my knowledge the quality of open models is not on par with=
 frontier closed
>>>>>> models    =20
>>>>> I would very much prefer using an open source LLM, even if not in pair=

>>>>> with latest paid models.
>>>>>> and it would require a non-trivial amount of hardware and infrastruct=
ure to run
>>>>>> an open model at the required scale.   =20
>>>>> IMHO the best would be to have them running on some infra that would a=
ccept
>>>>> open source models (*). If there aren't enough resources to have our o=
wn
>>>>> infra, there are offers out there which allows running open source mod=
els
>>>>> like https://ollama.com/pricing (I never used myself).
>>>>> (*) For instance, Qwen3.6 is brand new and licensed under apache-2.0.
>>>>>   Not bad on my tests running it locally.   =20
>>>> You can run the tool locally, with whatever model you want, if you want=

>>>> to.
>>>> But for now, let's just take the free credits that Google is willing to=

>>>> throw at this thing and let it give us reviews IF the maintainer of the=

>>>> subsystem feels it is something they want to do.  No one is forcing
>>>> maintainers to do this. =20
>>> If Google and/or others are willing to give free credits on their cloud,=

>>> they could instead or in addition give free credits to run ollama
>>> there, allowing us to use different models.
>>> =46rom my side, while I won't personally object getting reviews from
>>> Sashiko/Gemini, this is something I can't reproduce locally. I would
>>> very much want something where I can select my LLM preferred model
>>> and run on my ollama docker container on my own GPU, in a way that
>>> I could run it locally before even sending a patch series. =20
>>=20
>> 2 thoughts here:
>> 1) I actually tried to run it with ollama on my personal framework 13. Ad=
ding nominal support is trivial,
>> but the whole thing is not really useful: I can get maybe few hundreds to=
kens per second using
>> a quantified model with reduced quality; an average sashiko review is con=
suming 3.5 millions tokens
>> (with Gemini 3.1 pro, it=E2=80=99s also model-dependent).
>=20
> Do you mean 3.5 millions tokens per patch series? If so, that
> sounds a lot! Why does it require too many tokens?

It=E2=80=99s an average per patch, not a series. Some are much cheaper, some=
 are much more expensive.
Sashiko posts token cost nearby each review.

Why it uses many tokens? Because in many cases it has to dig deep into the c=
ode.
Long sessions with multiple tool calls are expensive. Also Sashiko has a mul=
ti-stage
architecture, effectively it reviews every patch multiple times from differe=
nt angles.
It has a measurable influence on the quality of reviews. The current generat=
ion of LLMs
is not good at spotting various types of issues at once: once it sees a memo=
ry leak
it can=E2=80=99t think anymore on e.g. locking issues. Also just by running t=
he same thing multiple times
and combining the result you can meaningfully improve the quality.

>> I=E2=80=99m personally all in on having the entire thing as open as possi=
ble and I believe Sashiko is what
>> is realistically the best at this moment - a fully open-source harness an=
d set of prompts which
>> can work with a variety of models.
>> I=E2=80=99m happy to merge a support for any LLM model which can produce d=
ecent review results.
>>=20
>> 2) Due to probabilistic nature of LLMs, nothing is reproducible in a stri=
ct sense of the word.
>> Even with exactly the same model/harness/prompts you=E2=80=99ll get diffe=
rent results every time you run it.
>> It=E2=80=99s unfortunate, but it is what it is at the moment.
>=20
> By "reproduce locally", I didn't mean in strict sense. Sure, LLM answers
> won't be identical, but I suspect that at least most of the major issues
> on a patch series would be reported by any decent model.

I believe we=E2=80=99re not quite there yet. Models do differ in their abili=
ties to spot
various types of bugs and also producing false positives. Some types of issu=
es
(e.g. complex locking issues) are really hard for best of the current models=
.

> So, if we have something that one can locally run using its GPU, being
> able to get an answer in the range of a couple of minutes per patch
> should be enough to catch most of the issues.

I=E2=80=99m happy to be wrong here, but my understanding is that it=E2=80=99=
s not realistic now.
Sashiko reviews taking longer with production grade hardware.=

