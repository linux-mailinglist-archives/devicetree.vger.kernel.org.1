Return-Path: <devicetree+bounces-260634-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKiAKyh5emny6wEAu9opvQ
	(envelope-from <devicetree+bounces-260634-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 22:01:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2645AA8E41
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 22:01:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0A3DB3016268
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 21:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C478335571;
	Wed, 28 Jan 2026 21:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="e1BeNxbE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F3672C159E
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 21:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769634086; cv=pass; b=PbVfv99Y2FBP86CC/Eow8D0YDBxmnUyaIyp2ZY9gt/cZ0SAhqjC6e9I85IMfyQU7oWt/y3TIK0tAaGslJkEnQ0I83nS+7aqVwZFVHOYjXFzZnlidt50PjHrLQc/1iJRdILgQL2SpbotLWXcZa/jvcmrKsXnQvVdgP2ZoYhq6yW4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769634086; c=relaxed/simple;
	bh=q366hLe7gQaI5rjlaG/ooZDp0LuYfAPugWB8ysxyHwo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ruoZt4lh/gWvVs5vnhLqeWVq8eKhd8whl87FTz62yWeVacFoLrvdIZksPqyora9nj8BKo30Fs4/TKC/a5pkHNzZjPVUdGDYGhHVzux8ydNEVTl7J8XEFAddccsLluzaMipBPeIwr7e1etVfdDvhrnrxJ7xdcWWrElOgeN0rfeGc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=e1BeNxbE; arc=pass smtp.client-ip=74.125.224.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-64942ebf1a3so257875d50.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 13:01:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769634083; cv=none;
        d=google.com; s=arc-20240605;
        b=Z5nDAmZ4AalGuBtPUG1f2+poJfvZ7HcWqJgomacm0LvMW9bx45lWYbDfyDrDa1e5k2
         R/pT1wva+g/Amtq/D56A/x2KIyymqMoNyrNTvvsShyHlEndnhR6Wi8oOgc9h9eJvE4Z/
         gSV2lQWt47S97hAIe8Yv/Gj2K7/tuVfudRtXAIDo48UGq6M91z0M7hTrs6EAiY54C460
         Rnjq1JNzkMCTott1xvuaI53fUIDt13oNMkJx5d7WeCo5JiYS0rdJ7dZZ8cnmSGmY50FA
         /ZsjFnYpogyMDMNwdGN+S49fektSPvZMzSstaZtNzGBxsWUw5usC5+5TRwUZLoYShNYk
         kPOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=q366hLe7gQaI5rjlaG/ooZDp0LuYfAPugWB8ysxyHwo=;
        fh=VavqON4rOH3NZscdxOYl1sfFJfK1JEhZ3CV8Anyi3h4=;
        b=S0CQD0D+avMCfCfy7R2X0S/kcrBSLryBPuPxfWprwx8oQyljFydWAGQue6E6iNuwUB
         LsNvTn51XBqN57gGhb2u1J5DOZe/d8a5cAUHWcjYEF76Y075TgK1m3dI4z8l8xNDbIBB
         Wr8e3kCcvfesdBvF0Fm39aIYVxVU+sGUmhOwj5vDUdIHEPb/nys2VdmA/Fy6Df2T7fKD
         vfFph9M06hWqaUxjjEHicDa5BABoZ1BDEvth/rWgv+NSApatiXuOkfrJo8P5WAVDhJp1
         /ijMw5XXH02r/sSInr2LIxqOgjykuUJ1AQFIrDZ74sdNmU9j1Gu+Eh6FOFRimvoIqzgh
         AL4Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1769634083; x=1770238883; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q366hLe7gQaI5rjlaG/ooZDp0LuYfAPugWB8ysxyHwo=;
        b=e1BeNxbEnFF7jWky50sCGNMplkmiWT0yNWkV9ages1z8Hl8ZUA+0Z+wmNb7uyRxzWs
         xEBfpV8z5lsGfC2fn1AhClS56Hxz4OPmwn2AUiT9CHVLV3hLpoO+vpxl6r12L/F+xZ/0
         3NtPsfHEliRgJ7suP1bUYwGhiQzFU37bw1GZOhL2FQneMFRgP57y6RNCiJj1TIkWfkgD
         mIHO/fOryrc8wQBx9sPArH3nZlMIhLG2vFIQbIFpiZOQxNGgDzuHGRxAJX8SgWnPxITI
         qMletHHtUCoHL0P2x5UMHX6tb3fukiQ3i76lFS1j9OxVU5/Je4TmdJnFSegTOoiD61xM
         QLjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769634083; x=1770238883;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=q366hLe7gQaI5rjlaG/ooZDp0LuYfAPugWB8ysxyHwo=;
        b=cxJ5CIkTGQM3GZS/B7nAcHDH1Ir0/6sf4qGobD3hZxWzxRUy82NLBvA5y8T6BINdXf
         XPc4yMl8r1UCm+6fgnW5zj8PJE8Ka0mtirlXo1kwEd6W0zYDve6j3nsgYIiEurz7CMqQ
         t02/94WToHnWwt/K8/bONxdOZaXn4X6mBrFRlHvDkrj325opqaWffGBH0NucCZ6Yx/aY
         d3tv20yoxR0TSXbTel6oE0vmNN4UPlhUMoMjPMNgxFUgNClazJEB/iluRR0JxBkYgkte
         8a4wnJJc81yGXAMKXjDTH3Zvzzm1ar4/lTUHFN1FjMcO76VPLpV13KUJ7X6AOXHrEBfu
         z6Jw==
X-Forwarded-Encrypted: i=1; AJvYcCW91YlA5jaFP0Dw6WnpbDDF8JUJpptaKUhgyuf3HErHkS3sfIa6stsUd8STM+UC38AhyM63RNVI+EWe@vger.kernel.org
X-Gm-Message-State: AOJu0Yz77xnXX6K0fgZS+MV46pNDuZ0GwQeuU289myOVcPXR7l/EwQV6
	maJR3G/MXgJwigcvZ37qHKdqGDyOeacMTl745REzRm3tZlo2LVfmuOvN1XM5dR0c59bW4jokGy2
	C7TdVMTwRXXqPI1/Xy4K1L25ks3VUBfJ5BLnD5WHaarTv4SN/qsRImyo=
X-Gm-Gg: AZuq6aI9sr6JL8J2Z8T6MnaLJTGTNZcBk/ICsFWwtIX0cqxKhMMcs+YfoU2axJQJftg
	bnuJ89wI6arDMGL6hK6C4NeP+SK6TvzNh9q98VChAJF5KxbeSmviruNht0YNtnlmF7YZbC9zV+4
	FBQxuWwfV+kFGu1Y4JotsWNMMaoPfJnhcgHrnfXZ6hgEmPfghqsLbZEDVHtzVy2iSiPNNon5RR+
	whNKdCtaGLLaKNXP9OL6lkvmi2eiD/rvmImKa8k8peWwOGg9czj+IYH3jh4Ny92qRJ18hcBTcmW
	fpDyuNhpQxnV8LZCBkG9XpDVFvENSFD8wGGxnaWlnfFlm68gcRlUQ78XiuI=
X-Received: by 2002:a05:690e:1901:b0:641:e6aa:583f with SMTP id
 956f58d0204a3-6498fbd7285mr5173079d50.15.1769634082636; Wed, 28 Jan 2026
 13:01:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126-atlantis-clocks-v3-0-b016135551b7@oss.tenstorrent.com>
 <20260126-atlantis-clocks-v3-1-b016135551b7@oss.tenstorrent.com>
 <20260127-mystify-carmaker-150aa3fcd6c6@spud> <CAEev2e-p28J_H2oWdrtgGJ0Z=2iGn8FjFBN8ggU0t_Wtbi62rA@mail.gmail.com>
 <20260128-duckling-confess-88e64fabe752@spud> <CAEev2e9Y95bYDdvhJQ2954K2q5yMrGA3UF2U=QN83ZNbZ5LJBw@mail.gmail.com>
 <20260128-nappy-repaint-e464d9964134@spud>
In-Reply-To: <20260128-nappy-repaint-e464d9964134@spud>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Wed, 28 Jan 2026 15:01:11 -0600
X-Gm-Features: AZwV_QgfoguDQdOLdwSNveH96jgRmNQg1sP19SgMVUtC9BAJsQ6YIqpThUYUpUM
Message-ID: <CAEev2e9onS-ogepaTugmGSc4-p6H0ZL54n1yd3bofTWTnLRM-Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: clk: tenstorrent: Add tenstorrent,atlantis-prcm
To: Conor Dooley <conor@kernel.org>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>, Joel Stanley <jms@oss.tenstorrent.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, joel@jms.id.au, fustini@kernel.org, mpe@kernel.org, 
	mpe@oss.tenstorrent.com, npiggin@oss.tenstorrent.com, agross@kernel.org, 
	agross@oss.tenstorrent.com, bmasney@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260634-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 2645AA8E41
X-Rspamd-Action: no action

Hi Conor,

On Wed, Jan 28, 2026 at 11:32=E2=80=AFAM Conor Dooley <conor@kernel.org> wr=
ote:
>
> On Wed, Jan 28, 2026 at 09:42:42AM -0600, Anirudh Srinivasan wrote:
> > Hi Conor,
> >
> > On Wed, Jan 28, 2026 at 9:02=E2=80=AFAM Conor Dooley <conor@kernel.org>=
 wrote:
> > >
> > > On Tue, Jan 27, 2026 at 05:39:33PM -0600, Anirudh Srinivasan wrote:
> > > > Hi Conor,
> > > >
> > > > On Tue, Jan 27, 2026 at 1:58=E2=80=AFPM Conor Dooley <conor@kernel.=
org> wrote:
> > > > >
> > > > > On Mon, Jan 26, 2026 at 03:07:14PM -0600, Anirudh Srinivasan wrot=
e:
> > > > > > Document bindings for Tenstorrent Atlantis PRCM that manages cl=
ocks
> > > > > > and resets. This block is instantiated 4 times in the SoC.
> > > > > > This commit documents the clocks from the RCPU PRCM block.
> > > > > >
> > > > > > Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.=
com>
> > > > > > ---
> > > > > This is pretty suspect sounding, if the PLLs for !rcpu are contro=
lled in
> > > > > the rcpu register region, why is it not a clock parent for the !r=
cpu
> > > > > prcms?
> > > >

> Right. Looking at the mail from Krzysztof, I suspect he meant to
> completely document and explain the rcpu prcm, not all of the prcms (he
> couldn't really know they existed, based on your v1, right?).
> I'd suggest you drop the !rcpu stuff for now, and submit it when you
> have the driver for them ready to go. That's typically what's done to
> avoid introducing bindings that need to be changed once the driver
> actually turns up, since as you say you've not actually tested the
> driver for those prcms.

Okay, thank you for clarifying that. I think I interpreted the
original comments as "once you add bindings, you cannot change them
later". I guess the changes I have wouldn't break backward
compatibility, so they'd probably be fine. I will do this the way you
suggest.

> If you think it is going to be confusing, then move the bits common to
> !rcpu and rcpu prcms to a file, with the unique bits in dedicated files
> perhaps? It seems like they'd be fairly different even with your current
> scheme and keeping them apart would aid readability of the driver in
> either case?
> You can do this extraction as part of adding the !rcpu code, that
> doesn't need to be done for the rcpu stuff since the concept of "common"
> wouldn't exist in upstream until the !rcpu stuff arrives.

Okay, something to figure out for when I add the !rcpu code later.

>
> Cheers,
> Conor.

