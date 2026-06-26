Return-Path: <devicetree+bounces-316192-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZYLVFCTfPmrdMQkAu9opvQ
	(envelope-from <devicetree+bounces-316192-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 22:20:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B222D6CFF8A
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 22:20:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=l6PQxWT8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316192-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316192-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B6C373029795
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 20:20:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1917D3B3C15;
	Fri, 26 Jun 2026 20:20:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com [74.125.82.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE4192EA47C
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 20:20:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782505250; cv=none; b=C1IWG+0DezQA5MxRqFdx9PMflSnPFrGtZ9Qwogi9for5Td7pG4IY7A9k74D3PTnWVV3FHeasbj18BK+fEcPDbeDsxAL7R5oCtB2DRfRvHREaJXjp5X1ua5/sw/rZQYssta5HnpQw3+gR14sHoNP7oEO8U28eQziIC6Xn2IaqpRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782505250; c=relaxed/simple;
	bh=RGavRq2w7Eh/HCoask6CSMiKDWutmt9ky7lRrahkzTw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RpNITeRKrJUWCM2lMzmA1zXtdnPCVMw15bvQhYKaWXbB2vDHHf6TfKmc+cjK0JjePJIvNIIYy24C0Q7T5tPG6GQxoz5LmHog9kTIbLsXrWsrJ3u0wJJFsgO2ESEXot3AIj858RBwlHK+BNcshNde+rV8d4tzf6Q5je3pTQB4wsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l6PQxWT8; arc=none smtp.client-ip=74.125.82.41
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-139eea1aeb0so601874c88.0
        for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 13:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782505248; x=1783110048; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5YzRske6TyAkzZ6v5R+u17HWPV5j9lKO+pa7wB7nPTE=;
        b=l6PQxWT8dq/nla1UST36v+mSYoFyfxHfa7O/XU9kNIh4rp/NFUgSIRAWdPMmTbie0B
         VDE7g+gs18roF7ngR4vL6IJudr8/IhmOQdL+UC1AhPPTFdaYcxL6o1mJQLS9DkDjaGYa
         y15af0YbgwaJgMx5+XpLuDUCgmLl3tDSNjNYaaygR4ioqdNspvZ4+b62A/NR/QlFoQvM
         OgyfrOFyRTfHmolDa5XcFBteD9Zb7lIWNVlYMGhILVDbt8tPpxhC5OmbhJM3SjFDPuJ0
         q8CC8rfyPqRspLSzTKSL35pkr5VHCUzUuqFQmTCj9WfSIZloQymC15rzrYkbXskXW+0C
         XyAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782505248; x=1783110048;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5YzRske6TyAkzZ6v5R+u17HWPV5j9lKO+pa7wB7nPTE=;
        b=E3C1t4j8kHVSxKkHPRSqZVFY/pPX6ZnZ3MESnX1nivLgp+p6FqrPxq0r7+iF938LV/
         F6jDXn6TIhYvMOcEQU4Z3XAPhs652B/VSlZMewcKpsVenqSYWWbfduHLLOVrfHAC4PVK
         7MPmtFZAnCxjeSKniZC7YhRNJSA0GFu46kqWdHc9EArdhIw++SQNoBts+4DwRUQZ9tWE
         8OnBGJ4GRx9Cxqv5r9QXP8CzV2JXxMj+qhXTmRKv6c1bQoIALpVmdP0JEbrNKnSHHiAn
         syDgEuoEH7f/i4bYh699hN+QhICn6UpO27P29l39FGe3IrOOM5w+LgtgcqwgF9jksqeU
         DkFg==
X-Forwarded-Encrypted: i=1; AFNElJ+bZAAOBiL2zY0Xp0UIqNiWSN3m1WYpfCHY3queRfhShF7TgGYyoBZFcr8595M0k2oNAB8DNL1Xe3NJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyk3h0qAhyYcIIeEC91saYdwh0w8kr26L4NmaxNmxj9fgOy52z1
	mmPuLk5pm6UNjmQpAaWgxuDPxLOtUqsCaUJ3zy9KEBYDanHjEBHxjGRv
X-Gm-Gg: AfdE7cn+r9VOSmL67c4qaHOXxA0kuIBK6PUIhz/eDQqMF1qn7UhbTH7ov8i06+5Lc1h
	XUnAiSHJblY3p0lTLbqTeQSlalZcACgdAzjYmGqFmsYlph6GsFGnTgRTkv/UHX/uQKr/guvYHnf
	v67Pa/GC3oDlAAIVWpQjE3Gy4bDxvcIpdzlUVY+VBL/3uolqNCls1tjmPPEC1ByruyJ9bxBPeV4
	tKiU0HykyKii6WV4Isls5pTeHyXuXxcWDiriEnI29xpzdBQaTs1Pa1+CbR9EIxsk9KMR2fK9OXZ
	c+/xPLxLyrqjvqM/M9DOC8RPHemKjSoRBKOrvb3h5E2XrAdC+sEz4b/H83KpjyljnLWM2KF4F8P
	vWTwEXNa2OmPsX7t1z3Fs4TpV0HnpfOJTrIZc4TXjPVvV9ZrBHwtOFjHid11OMtYUH4qbYx+IUS
	2+pVcIpdkFxYxcbRNh2P6hErNsAyowkTlFlsEh/vuHBnemESwGP6edwQ==
X-Received: by 2002:a05:7022:23a0:b0:137:d08e:e5b1 with SMTP id a92af1059eb24-139dbaba7abmr7015184c88.16.1782505247784;
        Fri, 26 Jun 2026 13:20:47 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:a474:bf4a:4966:8d97])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-139d912197bsm33048756c88.15.2026.06.26.13.20.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2026 13:20:47 -0700 (PDT)
Date: Fri, 26 Jun 2026 13:20:44 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linusw@kernel.org>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 2/2] Input: isa1200 - new driver for Imagis ISA1200
Message-ID: <aj7fASOM-jwLTCQS@google.com>
References: <20260617070528.35006-1-clamor95@gmail.com>
 <20260617070528.35006-3-clamor95@gmail.com>
 <aj28fvj34b4_VI3k@google.com>
 <CAPVz0n0Ja0eKrpirtMxK8bkTV0NY-UoKU0c09qLEF-xMWmOzKQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAPVz0n0Ja0eKrpirtMxK8bkTV0NY-UoKU0c09qLEF-xMWmOzKQ@mail.gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316192-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:clamor95@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linusw@kernel.org,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B222D6CFF8A

On Fri, Jun 26, 2026 at 10:45:20AM +0300, Svyatoslav Ryhel wrote:
> пт, 26 черв. 2026 р. о 02:45 Dmitry Torokhov <dmitry.torokhov@gmail.com> пише:
> >
> > Hi Svyatoslav,
> >
> > On Wed, Jun 17, 2026 at 10:05:27AM +0300, Svyatoslav Ryhel wrote:
> > > From: Linus Walleij <linusw@kernel.org>
> > >
> > > The ISA1200 is a haptic feedback unit from Imagis Technology using two
> > > motors for haptic feedback in mobile phones. Used in many mobile devices
> > > c. 2012 including Samsung Galxy S Advance GT-I9070 (Janice), Samsung Beam
> > > GT-I8350 (Gavini), LG Optimus 4X P880 and LG Optimus Vu P895.
> > >
> > > The exact datasheet for the ISA1200 is not available; all data was modeled
> > > based on available downstream kernel sources for various devices and
> > > fragments of information scattered across the internet.
> > >
> > > Tested-by: Linus Walleij <linusw@kernel.org> # GT-I9070 Janice
> > > Signed-off-by: Linus Walleij <linusw@kernel.org>
> > > Co-developed-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> >
> >
> > Sashiko convinced me that using mutex_trylock() in the playback work
> > handler will result in dropping requests and that we are safe not taking
> > the lock there at all. Can you please try the following modification?
> >
> > diff --git a/drivers/input/misc/isa1200.c b/drivers/input/misc/isa1200.c
> > index c61adc4b605c..fb7f68fa0a2b 100644
> > --- a/drivers/input/misc/isa1200.c
> > +++ b/drivers/input/misc/isa1200.c
> > @@ -253,15 +253,12 @@ static void isa1200_stop(struct isa1200 *isa)
> >  static void isa1200_play_work(struct work_struct *work)
> >  {
> >         struct isa1200 *isa = container_of(work, struct isa1200, play_work);
> > -       struct input_dev *input = isa->input;
> > -
> > -       scoped_guard(mutex_try, &input->mutex) {
> > -               if (!isa->suspended) {
> > -                       if (isa->level)
> > -                               isa1200_start(isa);
> > -                       else
> > -                               isa1200_stop(isa);
> > -               }
> > +
> > +       if (!READ_ONCE(isa->suspended)) {
> > +               if (isa->level)
> > +                       isa1200_start(isa);
> > +               else
> > +                       isa1200_stop(isa);
> >         }
> >  }
> >
> >
> > If this works no need to resend, I'll fold on my side.
> >
> 
> It does work fine. Thank you.

Excelled, thank you. Applied both patches.

-- 
Dmitry

