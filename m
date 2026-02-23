Return-Path: <devicetree+bounces-267337-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIzjFCEpnGl1AAQAu9opvQ
	(envelope-from <devicetree+bounces-267337-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:17:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72512174B31
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:17:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B9F743032071
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:10:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8479135B12B;
	Mon, 23 Feb 2026 10:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YaZ5atst"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D77F356A24
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771841380; cv=none; b=JntLslIQWyuuPQUB2735I0R8LH7+/JNe/+Y7Jbz6EyardH+v+S7+GW+HkyA3/HWIrCR+UcTgRIdbpyVDkhmpvSxdDbqE2iBEnnULEPmHjJUuOaOAx7ksxs2BHbuWfUxsORKyxezq9JDcbg+m4ju5EX1UvPDva/NmU6iF0gBe2A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771841380; c=relaxed/simple;
	bh=Ky3jcIBbGAp358Kb7hZKDppR/DA4Xry1FogPtt3x2sE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=FMYnk9OESCm1BzmGj9lXjZCueR9z9M74hJ6lPecwS50gfZfUjmyD1fo49RyRNE2+2bTrJARnYWKUQ/kh0hNIYptVFlLAZNj1jlM54k65nqWGWC4BTHshHOH+QYizKk2WTWf3alN+12gqGt9tf9fUxY7a0xoEBEtcVcxJBz/YO00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YaZ5atst; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-480706554beso50224305e9.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 02:09:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771841378; x=1772446178; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Y3U0wiZ1PaLP9HKufniCA3p+26o0xtDqndh6mBEwyx0=;
        b=YaZ5atstiuyyX/KZ4RGNr8CAywUBCCig5Wo62ckOMjU3Ar02DldYn69p7x3kgXyS0S
         gWClepkcbbcupsiVSlusldMOEVWNxCTcN6V7W7LvwAmasazxHXvic6YyJJf6ATOSOzur
         bh0SWGvIh7B+pKF+1P3iKhXN0GiCgsOfbpgkLKWi4C8P1XO1X0G0IXlIB71KZk8RiDq0
         IhuGbODNEdkycFjdKIHlKTmNnebWIBRc7Syt9Mw2ntlYUmsi3F4Q7a9ODtnf4M2YiULq
         IHde9fhM018Mc3nNuiz+UgvI7DMmj22TrusJmUPSppNC+uqz62pqIWuW6Gr120WqPufw
         tLNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771841378; x=1772446178;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y3U0wiZ1PaLP9HKufniCA3p+26o0xtDqndh6mBEwyx0=;
        b=iL/WZ3D5/ecNPW93vkBX1ZFPR0BpqKMqncG078A27U9CjJgWOFG39IRrD4FlPPCI8U
         z2TxLWaDCzXoLIuyu7EBFQ8B6yX7nIPfNqwQtGcLHf5jbaq8+Ml21i889TA1Ibdw2QvP
         HYltEtg1HU4UTFI2c4NvTC20THV2YNJTbDdaaUt5LPsj03n3qc4JIz/3MWvM+oAq0d+0
         slZtmw+M8X30jMlxiSxiIMFJqKQvU2BdR/4SQ1sVz5t1qHPf44VA1I/3OujKF4EXIJ2f
         fsZr+LPhE4x5FX2Vu4OmYEtmKr1haV1hO2jY4jIcZx46pupqyU6QXePf19sEPkU9I9oe
         QKGw==
X-Forwarded-Encrypted: i=1; AJvYcCWEpL4xYKyhUAGp4oB666Z1CFcaFSjFxfAJFLTLOXlJPxF5ZPcDq47Juj8kIa/Ptce3yk7l02F8iTeh@vger.kernel.org
X-Gm-Message-State: AOJu0YxzgtLLtGmHEWYsHdhZKkXMe4iBEjChn4hbYIN4Eu19XaggwsgY
	dD1Y/Is63poZsjnjDypEXlgkSfoBIMgSnDnEBdsXS/9KlWCOBsCXiNTj
X-Gm-Gg: AZuq6aJ2uzXFFGwsUpCeGSyqH5J8Pp9rSEWtys/zzlOklfCZa9zXbPdFsXeSZKFQpTu
	rFwZoYh8zrmqrr8OknOxWtyCRCX0wpTPn5E1mdd4lTQf980HlfFFQyRqSm7Bsg0SOXTTuzj3bgY
	+RnSnEPVSM4qm8DkbI3JerrZwGM5RPd4RpYh6CAsfgLUv6/wus+AHcuCnVBDv84qNxPvlBtt1YA
	mKCLmXJSJv5aNz4kqKsaLIASpuZx5J60LmSCxkxbXNQWb8cTAhnWxBxKULauzltgrrborc4L9Lj
	iOM5XIWGzOzhHtOVfkKiLaQBlIhUmDh5YDm9JkvmBqL5KjDBsKOROaRwnDFj1zHrqNY8/z+u5Gi
	9v+BmKmiCaSvsrYc0oKUimiFXcYZe7I/2WT19QYjJLpT64/uR+MEeoWdj4ynUUVvDgfyafOx7KW
	wtTLHps+7QP5ZrwGyNyggnvSesfLGmK2Pi5+InFfaQlA==
X-Received: by 2002:a05:600c:34d3:b0:47a:975b:e3e6 with SMTP id 5b1f17b1804b1-483a962e175mr136244295e9.18.1771841377468;
        Mon, 23 Feb 2026 02:09:37 -0800 (PST)
Received: from [192.168.1.187] ([148.63.225.166])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a31bc068sm245815725e9.4.2026.02.23.02.09.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 02:09:37 -0800 (PST)
Message-ID: <d1a1f8af14fd515409805f1071c051fb51206b1d.camel@gmail.com>
Subject: Re: [PATCH 2/3] iio: dac: ad5706r: Add support for AD5706R DAC
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Alexis Czezar Torreno <alexisczezar.torreno@analog.com>, Lars-Peter
 Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Jonathan Cameron	 <jic23@kernel.org>, David
 Lechner <dlechner@baylibre.com>, Nuno =?ISO-8859-1?Q?S=E1?=	
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring	
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley	
 <conor+dt@kernel.org>, Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?=
 <ukleinek@kernel.org>, 	linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-pwm@vger.kernel.org
Date: Mon, 23 Feb 2026 10:10:20 +0000
In-Reply-To: <aZiSVSvCOS4MvcGt@smile.fi.intel.com>
References: <20260220-dev_ad5706r-v1-0-7253bbd74889@analog.com>
	 <20260220-dev_ad5706r-v1-2-7253bbd74889@analog.com>
	 <4fd329ed6416fd2f8e2a72adfa5a77f73107948b.camel@gmail.com>
	 <aZg-vtenBU2rKKX_@smile.fi.intel.com>
	 <a6a2fc3ebb45fa4d7b379d552196d56eb13fa8d3.camel@gmail.com>
	 <aZiSVSvCOS4MvcGt@smile.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267337-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 72512174B31
X-Rspamd-Action: no action

On Fri, 2026-02-20 at 18:56 +0200, Andy Shevchenko wrote:
> On Fri, Feb 20, 2026 at 03:02:37PM +0000, Nuno S=C3=A1 wrote:
> > On Fri, 2026-02-20 at 13:00 +0200, Andy Shevchenko wrote:
> > > On Fri, Feb 20, 2026 at 10:48:59AM +0000, Nuno S=C3=A1 wrote:
> > > > On Fri, 2026-02-20 at 16:02 +0800, Alexis Czezar Torreno wrote:
>=20
> ...
>=20
> > > > > +static void ad5706r_debugs_init(struct iio_dev *indio_dev)
> > > > > +{
> > > > > +	struct dentry *d =3D iio_get_debugfs_dentry(indio_dev);
> > > >=20
> > > > It should have:
> > > >=20
> > > > if (!IS_ENABLED(CONFIG_DEBUGFS))
> > > > 	return
> > >=20
> > > But why? The debugfs is a stub when disabled, nobody should do that
> > > in the cases when the main purpose is not the debugfs code.
> >=20
> > Because the compiler can then optimize away all of the above code...
>=20
> How is it different to the code elimination part that is inside in each o=
f
> the below calls?

Clearly none :). For some reason I thought it would matter. Maybe I was mis=
taken by
some old code that had #ifdef guards on the debug code.

Any ways, I might send some patches cleaning some places where I added the =
above so
people do not copy it around.

- Nuno S=C3=A1
>=20

