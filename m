Return-Path: <devicetree+bounces-319807-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cZALJQhaR2q+WgAAu9opvQ
	(envelope-from <devicetree+bounces-319807-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 08:43:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BF06FF28B
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 08:43:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=D5cG1Fra;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319807-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319807-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CFB1030179E2
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 06:43:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 265223806B4;
	Fri,  3 Jul 2026 06:43:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF75D360EF4
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 06:42:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783060981; cv=none; b=bTOq9IkSJyBRB+AADonmkksN6Zva3APvOSMQbz40xAVez2ExJDLEoOR3CuoWDMoKvbmOfNlTiQzxCcvm+qN6lR7KrSwPVCHeM6yKhk/NU49uUdV9VoRil9kf7DlWrij9Z7GZSvh1Apmy+uFztRYTMUBw1AxYMYXjfXh5Whvo4ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783060981; c=relaxed/simple;
	bh=Lv/QgXerDHkBYlnEgo+QNgRQf461nSCPNSQ9zeq+4Cg=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=U5PDYGdEUq6MPb5H3lQrHVQoaCbH67ngUFSXZ89bc5/nC45OWQtU6rU8I1BGoix3cQ5xd4sOuiZr+N18qPGZ/176xHjfxTezm1MMW5/gI1pTbLHHe+4l3crUopVzCqJ3SloU2k2Ds6DwfX+rp76ARvhFhacHSi6X6a38ZB3tq+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D5cG1Fra; arc=none smtp.client-ip=209.85.221.42
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-476a130c138so228810f8f.0
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 23:42:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783060978; x=1783665778; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=v+sqymlOvxvkOi7TZXL6sHTdLLN7fEoTwyaDCo9neQ4=;
        b=D5cG1FraBR0T7TjrsVIaoo1a2AlkhqEG+LzZzAXlEygAGmdT9t8ZD1E19LS6dqPXLL
         M1SJql0DIqIlvxVWKbwHrdJWvtOlHrrhAntBxwYZxgroNgZZtakxRPhbwNxmlVFTGZ3u
         +tQIiYYrZAuRKDEbWV1LZIC3FDNpf0JbFpHVrIQHXNHvT0BXva4CG86IelZpyBSTP1qp
         yc/A+KAlZTmiVmbxVpH7djQUYBA8lF+sr9FV99GGmVEBEia1BmPrnNpmAj9wBTq591/+
         wRCQE49+/P25Qyvj1aMbbubpl0TuViOnGjwj/w0636mrPwg53rvlm+Rh4PvGi6HsLQjq
         tVqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783060978; x=1783665778;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=v+sqymlOvxvkOi7TZXL6sHTdLLN7fEoTwyaDCo9neQ4=;
        b=Txo7I82tcC2CADA7sgIgjmglzwln1loJcGr5DRrDieYF0V3JqjSmc74ZweKPqE+SJk
         WX4hH7mTtENPl/SoPFDkx+pVDE7M875M4K4tJvKIFDYNNBVq7cPAn8y5hwWQHiryXVB0
         JyGMweaL82jjtzCDjxMnboTEp4qRIdyMiVCc7di8WfprpRnGmDr/RR9H+qK/k1eHn+Bq
         V4SKqGlFYZpFs0MNmF5O9dTw4jzs9scfIl4gKfx1Zqa/2HWDsQQnhNU28JKaSLeY8GV5
         ooOtdxx72YDYe79KC/uqVWB8vM9uXkw4xkglyS5DZTNEodIKqTkZTIYa/7T1A+q9CVh8
         pBIA==
X-Forwarded-Encrypted: i=1; AHgh+Rqdiodng2ZE78eOesh4UpSnHFUqt5sk6wf5k/OWa3HopSolFFst+lR/FnedFLC7d84vOITze7Dq1DF3@vger.kernel.org
X-Gm-Message-State: AOJu0YyKZ81UQi5DGu4s54la59ftVQoTkNptzX47TTGFe6zeFBAI9CxC
	AkfXS2JzcWumqU7TboDi6xbueAvaPY3d6HV23LTHZTc0EIPip86pB+an
X-Gm-Gg: AfdE7cm5r/A17UElbfe1t/FfYshF7/M0RiS58+kMmhMuPRSZYmJ8R3iqcP+Zr1x+BMm
	mAtSA4uyJqv8npUhh1ZWjeSUCcDGLj/H9hwH1lnWBitVqUsPx52ChimJUegyCvxmFeJM9WodisM
	4n92c69rXQy956k5xmYUOVVAEpULPAIJIc9rQdGv3LlxraE0o7M4/F+L0IONVf2XLbWNL2T6BPL
	hZrjxNjYMCaL1f/aMDaWaHyGK+QqTbGmeUcF+CQcA8l2sJpJcAFE5XKXDrEO2cVYLIDd5MdbWL9
	hwjf2Nr0D1wAVWN1hp+QJskOSoAhSFDSmQh4JejYPbXdMBYNQqleoVXREKdh0B9v9kmZiYabJDC
	s8rToFsB7WTRocWNGIq1lqY59OxeBcx4VWfisrG0Uzyjf51uUTvXPEk2opAJwlcMg/PuAh/uOXR
	61XdvIiSh0S40HfCVAM5L/8qVBu0r8AcGXvzCQ4z0bHom6eIq1rl2+pXLqhT8+K/7ogUoFPzsYn
	iMvV4hrLzwFR9RYjPjSDlQVr+gRwJCpPAHkbn+38VoKm+P3CBkeno3iINzLNr/CdzoUGbOUEPYT
	GGYwHlhS/WGAlnecko92NKq3hys3Chr9TkLBj6u1Qow7+gEJFReLEtY=
X-Received: by 2002:a05:6000:26d1:b0:473:6e8d:7f3 with SMTP id ffacd0b85a97d-477b34b02f8mr12884086f8f.1.1783060978076;
        Thu, 02 Jul 2026 23:42:58 -0700 (PDT)
Received: from localhost (90-182-112-124.rcp.o2.cz. [90.182.112.124])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-477dd94c829sm15326806f8f.24.2026.07.02.23.42.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 23:42:57 -0700 (PDT)
Date: Fri, 3 Jul 2026 08:42:56 +0200
From: Joshua Crofts <joshua.crofts1@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Maxwell Doose <m32285159@gmail.com>, David Lechner
 <dlechner@baylibre.com>, Nuno =?ISO-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "open
 list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>, "open
 list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 2/2] iio: temperature: Add STS30 temperature sensor
 driver
Message-ID: <20260703084256.00001f7f@gmail.com>
In-Reply-To: <20260703003159.44850872@jic23-huawei>
References: <20260621004626.66629-1-m32285159@gmail.com>
	<20260621004626.66629-3-m32285159@gmail.com>
	<20260621203303.0f8c5d08@systembl0wer>
	<CAKqfh0HUih0q9PEh+5pwwMuBBkm6nsaZP9e2yPjHO3+Yccuvgw@mail.gmail.com>
	<CAKqfh0G1dcn4MLQ5jxjM8aDHVu=z-NEAR-y=xMjfOiW7M_HF-Q@mail.gmail.com>
	<20260703003159.44850872@jic23-huawei>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319807-lists,devicetree=lfdr.de];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:m32285159@gmail.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,baylibre.com,analog.com,kernel.org,vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[joshuacrofts1@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joshuacrofts1@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A9BF06FF28B

On Fri, 3 Jul 2026 00:31:59 +0100
Jonathan Cameron <jic23@kernel.org> wrote:

> On Sun, 21 Jun 2026 19:09:11 -0500
> Maxwell Doose <m32285159@gmail.com> wrote:
>=20
> > On Sun, Jun 21, 2026 at 7:05=E2=80=AFPM Maxwell Doose <m32285159@gmail.=
com> wrote: =20
> > >
> > > On Sun, Jun 21, 2026 at 1:33=E2=80=AFPM Joshua Crofts <joshua.crofts1=
@gmail.com> wrote:   =20
> > > >
> > > > On Sat, 20 Jun 2026 19:46:24 -0500
> > > > Maxwell Doose <m32285159@gmail.com> wrote:   =20
> > > > > +#include <linux/array_size.h>
> > > > > +#include <linux/bits.h>
> > > > > +#include <linux/cleanup.h>
> > > > > +#include <linux/crc8.h>
> > > > > +#include <linux/delay.h>
> > > > > +#include <linux/device.h>
> > > > > +#include <linux/errno.h>
> > > > > +#include <linux/export.h>
> > > > > +#include <linux/i2c.h>   =20
> > > >
> > > > I am a numpty as I also forgot to mention a missing
> > > > mod_devicetable.h header.
> > > >   =20
> > >
> > > D'oh, I ought to look at my includes a lot more closely as well.   =20
> >=20
> > Forgot to mention, I'll be away for 2 weeks starting tomorrow so it'll
> > have to wait :( =20
>=20
> Don't add mod_devicetable.h.  There is a series from Uwe that splits that=
 header
> up and puts the tables different headers. i2c.h is now enough.
> (It's causing merge conflicts)

Cool, one include less to worry about.

--=20
Kind regards

CJD

