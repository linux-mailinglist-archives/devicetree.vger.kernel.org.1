Return-Path: <devicetree+bounces-317130-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WTfMC+iNQmqt9gkAu9opvQ
	(envelope-from <devicetree+bounces-317130-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:23:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFD46DC994
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:23:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QRrqQBNq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317130-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317130-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4A973306AD34
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:16:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57467423148;
	Mon, 29 Jun 2026 15:16:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341A5416D06
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 15:16:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782746174; cv=none; b=HGLulVDXv3tbC0+VWatn4n4zgenevABbHcwvZ2cttBg/LbZOlIqXr4cMl+jQmGQN2UW/DT/5dM9QKJgkbdEEFp7zL5cTF1mgJ2thwsXlWq32yYLW+1ERgPvpJG955FAJChSAitHm6xi1tfEa1Wi2Uspkw0kl6htTurJF4wTU3ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782746174; c=relaxed/simple;
	bh=5qUvDc/anpKY0rZWXjGyA7aC9jD5KwFfUPFWYDXIwuo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=p1Dwxyb4VT/FDXQzI1NXhDqRTBq8JdPizF3LPHhUy+MhlG2w9jF561cwMAQCPp1LCLSPsw9XjHekxAMk2KUrqzKWnfdK4QMXsxfvHjlEAKkJ7a4OF+dmYam2F5I2hSfHurf9FS6DB4FVQJB1IcQeZ1GKfsWiqVancB8fr99IfQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRrqQBNq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F25D41F00A3A
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 15:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782746173;
	bh=eohseHTDVRorRwqLGgg5MSpmUGbKyFrl+Pmkvc7rkbU=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=QRrqQBNqmhO8gQLY/RpbMxC3EEMDVBUulR8F5IrMqI8z2p1Gp5nViDZCmERffAgn9
	 BZkRt7Ce7re84q4acTElbEInzATEA9UHSV5q4lokpD8ItAldAvt4h8Njra2wJFXhJ5
	 3V+1t54Evi8kyULd440f3IYRO0K0zu8r/Upahc4bkATxc+Q+H4oCaXNwwx9Kg99Yus
	 ixoGNguok7z8aZnfUmgz9Gr/LMR9wJU/+jH+opKT742KohANrPVOHpYLMhL8IPIZx+
	 1fi+5NuhUhpfBMe7bvKrmjrnkJ7HIM9JLXg3lxv5uYuGYssZ2qtpC94DqhdIF3Qpza
	 ZIoljEqaQLIAw==
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-3996c9eeebeso27225841fa.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 08:16:12 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RrlwmGpQB+c5kaizdLB8Rlf3KG998OIRN2EEXE5jK9V032FyhPd0Tznc92jrDXwrxgQNvfa6Oxzur1W@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0JgHQBmP3AuIlazH7BnrQVAU2ngdY8eUg4IY/el+DJGis5N/n
	vJrvrtjZ7MPe29qw9kFdHuN47rITzNr69Br38tS/Dp5S17amZobal4zofhqdhvR3znO+m+vmj7f
	dwm37EkZJrIduSvnZ85waUZeHiY9bAWQ=
X-Received: by 2002:a05:651c:1986:b0:39b:90f:b1dc with SMTP id
 38308e7fff4ca-39b090fc4f4mr12449031fa.13.1782746171458; Mon, 29 Jun 2026
 08:16:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260629-a733-rtc-v2-0-7b72112784f8@baylibre.com>
 <20260629-a733-rtc-v2-6-7b72112784f8@baylibre.com> <20260629131546.8D0261F000E9@smtp.kernel.org>
 <1jy0fx8lvp.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1jy0fx8lvp.fsf@starbuckisacylon.baylibre.com>
Reply-To: wens@kernel.org
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 29 Jun 2026 23:15:59 +0800
X-Gmail-Original-Message-ID: <CAGb2v64VWt6KBtQsqSez9HWBASh50txA4TvKwvdSeFtDH-x9rg@mail.gmail.com>
X-Gm-Features: AVVi8CepgUHMPDQkqp9e-_HXov3hbmLBBrR-cBueJlKz6r_Uxuo6w9fTKHdibJI
Message-ID: <CAGb2v64VWt6KBtQsqSez9HWBASh50txA4TvKwvdSeFtDH-x9rg@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] clk: sunxi-ng: sun6i-rtc: add a733 support
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: sashiko-bot@kernel.org, sashiko-reviews@lists.linux.dev, robh@kernel.org, 
	linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org, conor+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317130-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jbrunet@baylibre.com,m:sashiko-bot@kernel.org,m:sashiko-reviews@lists.linux.dev,m:robh@kernel.org,m:linux-sunxi@lists.linux.dev,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[wens@kernel.org];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,baylibre.com:email,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8FFD46DC994

On Mon, Jun 29, 2026 at 10:25=E2=80=AFPM Jerome Brunet <jbrunet@baylibre.co=
m> wrote:
>
> On lun. 29 juin 2026 at 13:15, sashiko-bot@kernel.org wrote:
>
> > Thank you for your contribution! Sashiko AI review found 1 potential is=
sue(s) to consider:
> > - [Critical] The master DCXO enable bit is incorrectly mapped as the
> > exclusive enable bit for the 32kHz divider. This will cause the clock
> > framework to inadvertently turn off the master oscillator, freezing the
> > system.
> > --
> >
> > commit 83ebb861eeea7934e5df335b0d1620cad0b733bf
> > Author: Jerome Brunet <jbrunet@baylibre.com>
> >
> > clk: sunxi-ng: sun6i-rtc: add a733 support
> >
> > This commit adds support for the sun60i a733 CCU RTC. It introduces a
> > new auto-detecting oscillator divider and several phy reference clocks
> > with dedicated clock gates.
> >
> >> diff --git a/drivers/clk/sunxi-ng/ccu-sun6i-rtc.c b/drivers/clk/sunxi-=
ng/ccu-sun6i-rtc.c
> >> index 25dd87e78eb7a..2ec09e3464724 100644
> >> --- a/drivers/clk/sunxi-ng/ccu-sun6i-rtc.c
> >> +++ b/drivers/clk/sunxi-ng/ccu-sun6i-rtc.c
> >
> > [ ... ]
> >
> >> @@ -227,8 +237,28 @@ static struct clk_fixed_factor osc24M_32k_div_clk=
 =3D {
> >>                                          0),
> >>  };
> >>
> >> -static SUNXI_CCU_GATE_HW(osc24M_32k_clk, "osc24M-32k", &osc24M_32k_di=
v_clk.hw,
> >> -                     LOSC_OUT_GATING_REG, BIT(16), 0);
> >> +static struct clk_div_table osc24M_32k_div_a733_table[] =3D {
> >> +    { .val =3D 0, .div =3D 732 },
> >> +    { .val =3D 1, .div =3D 586 },
> >> +    { .val =3D 2, .div =3D 793 },
> >> +    { .val =3D 3, .div =3D 732 },
> >> +    { /* Sentinel */ },
> >> +};
> >> +
> >> +static struct ccu_div osc24M_32k_div_a733_clk =3D {
> >> +    .enable =3D BIT(1),
> >
> > [Severity: Critical]
> > This maps the master DCXO enable bit, BIT(1) defined earlier as
> > DCXO_CTRL_DCXO_EN, directly to the 32kHz divider's lifecycle.
>
> Forgot to remove that unused define
>
> >
> > If a board uses an external 32kHz crystal, the rtc-32k clock mux is
> > reparented to osc32k_clk, leaving this internal osc24M-32k-div clock wi=
th
> > zero active consumers.
> >
> > During late boot, the clock framework's clk_disable_unused() routine wa=
lks
> > the clock tree and will disable this clock, clearing BIT(1) in DCXO_CTR=
L_REG.
> >
> > Could this cause a hard system freeze? Since this bit physically turns =
off
> > the shared master 24MHz crystal (DCXO), does it immediately stop the CP=
U,
> > PLLs, and all peripherals?
>
> I don't quite get what the AI is trying to report here. If there are no
> user, the clock will be gated ... so ? Am I missing something ?

I think it's just getting confused. Since you said it was unused and you
plan to remove it, I would just ignore the AI.


ChenYu

> >
> >> +    .div    =3D _SUNXI_CCU_DIV_TABLE(14, 2, osc24M_32k_div_a733_table=
),
> >> +    .common =3D {
> >> +            .reg            =3D DCXO_CTRL_REG,
> >> +            .hw.init        =3D CLK_HW_INIT_PARENTS_DATA("osc24M-32k-=
div",
> >> +                                                       osc24M,
> >> +                                                       &ccu_rodiv_ops=
,
> >> +                                                       0),
> >> +    },
> >> +};
>
> --
> Jerome
>

