Return-Path: <devicetree+bounces-274547-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CLvCbansmnwOQAAu9opvQ
	(envelope-from <devicetree+bounces-274547-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:47:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D0285271400
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:47:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A57A7302F413
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:43:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D8BD3B7B87;
	Thu, 12 Mar 2026 11:43:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S1h/q5jO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B6E3B7B6C
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773315783; cv=pass; b=CsZSfaEfqyvjxfB7pykmf2ax7ZFbyfeXuEuezOAqA7x6yeyfZR3wzDySmDJc6hYuaGYLMV+kzrAE9oENCUrfJhi9DI4EYEJl1fts1oEAj75bGWYmS4A+iyt3Ah5S75v1MtwLVNpNoKai18hokSBbnziJjJ6w9Qx8YeoYm2oSc4M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773315783; c=relaxed/simple;
	bh=RsAdZW+SNrysKlGF0KYpi9oK13tnuvg/Wgv68rH1S9k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iUHc+fC7RrTcSqOLismm8MIvHpEw5qf0Un5FGKu/xazo+X4ySFMQi9f2weXhZXghJD/VVzjBo9gkI4WbkLP/otC2K7T/af2EDcA3ng3xRgMCCRpyndQlR5xQ5zigHv6AFGIXa/gpad27X5ZUN+FHayqtq+sehCYDQE9gfJ3jyqY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S1h/q5jO; arc=pass smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-439b611274bso623863f8f.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:43:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773315780; cv=none;
        d=google.com; s=arc-20240605;
        b=Bm/RyHjd43R+CY7gqYQIfYsc6OiCcLUbrhXTGt0MLj8A3IfB/O152wV7GfixdgEa9D
         Q05WptFjCfhofV+78b3cwQeXNVL5MBlBiPhmWkAySUVQZwoi9X21FHCQeaHKk9eizq0P
         d15ZGFXkCbMlwbz0oPIZHGqQjc/OO8d3TZy7lbZG3F4EL+RBx7po1bTE7urL9KgQPBYR
         yYbn5xhLAjgQWbiudwasfm3reckz0aT5ycD1EKVpcxyOsalxvhlTY71JZS+z+8PIXo7b
         LFVCVQGmuBEdr0kn2FoXVGkccWKkxHB6tSD58kYKnN/NB1tphABPRWb54+DXOgzxzFbh
         xLRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=CHVMKXPO7fhC3aitzZrQw9ifuMfBk3M50PCScMu19BE=;
        fh=Sb7RxmtK47pABbw0boixZtLqxSABQ7/bMxY1Aul2ums=;
        b=lRtk/DpfC3RHx0A6QOdLZSqo2ANq0NKM8AERbsmJ3qTVtOnTQG98gOKe+6+BZ+KaZy
         hipOSY1OR+tsMp87P+Xeha8RHDs60wWpKMpkJlchGXpUpqTk1jIdZ6nzjkTDGMeHQG5s
         CfVnuMJgTSZAmL7n2r6kSbfDjqCXw5q7oxfeuFxB0zTkJWclnRohEDMHW3By677bG5qm
         HvY8zB4fzfSfdbyz69wPTE6r2MjPcwoeVUfBya5/4PhRnUlDtwhjegYrxjYTwYGJL95v
         QtNPb3WnZPkvdgVsmxCKH1s/cEqpoJRSo3s79Lgw5jiUaJhe80hDcLi748XP+WwcUuJ3
         rzPg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773315780; x=1773920580; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CHVMKXPO7fhC3aitzZrQw9ifuMfBk3M50PCScMu19BE=;
        b=S1h/q5jOCVmiLqHqHkIGTdcwQZST/B8kO+UgK27OMk9n9KUaCRpB8+WMVortuM2jhl
         oEgzIrhIg/L0aDeFwJjSKDaSS+rV89hqt0EpnsyUBCUGP+x8uX6ki7UF8I8mfGGgDQbF
         MKpS2PMQYjETDJKo8orRfDfDvVxQJTnFIIbTEk8OU5UAyyYVVyl4ipIiCF6ejdckFV5Q
         11mp+GZWjVDGNMWfbrtbRFA7/wbB9pjuh7w7A7fkd5nylsmTY7/911LJ6fNGmGGYg5wP
         OvHA7E+IhSh+GYKA1+2t3/2V7TO+ZjRmoH6AJDk+12sIn5o43YTWJAnXKmv6YKtqS42R
         JEzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773315780; x=1773920580;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CHVMKXPO7fhC3aitzZrQw9ifuMfBk3M50PCScMu19BE=;
        b=FPA7stR54dsI5D/FkzHykMLi9GTc/CHFqs1TVmab6G1LS4bvV3rVyxQ72kxJQDDayB
         WOPJUf3F1v+nYh9LQcdvzXv3+k3zWAOqMrGdVsblKAF1nY2AN/pY/LyYbChUcSHLz2bq
         9lQ2FCfsePT9pffZDexwT//hMWJiEBOMxnbfksRxZ55wvqCasXLJ44IRZjymlbmfDB5w
         Qk5b21+eeI1g65SU0jFD5sPgNNiBcaTf5dsv6jhmQrpxmn9x31UtlZaIUmeP2f8Mp3u4
         uMpzdz9sucH60B9seyah9BZS853ejd8sded5G1ritLglBqjcHYnkojqAn5wpLc5/2TjL
         kHqg==
X-Forwarded-Encrypted: i=1; AJvYcCWpJQ6WH8VfNuiYzWWsqI4ZbgawvWRRLoDbnXaln4EhddNOz6RYHlSUdZMOBH9AvQVlzxMiQuduEwA9@vger.kernel.org
X-Gm-Message-State: AOJu0YwxT2TZ8Fu+m51QPInLqAjUI5M/pcpvQLXR4HPcot88OQVqwcC3
	/+xm7OXHHOYYT6e106Yedj0dp2hBLEroSrEctLs1xpiEODmPIjwd4u0DJagvbKNFwMNMYELMHBK
	3gJ1qWMSvxM2SBhbb2lFTMFvA/PJ3zHE=
X-Gm-Gg: ATEYQzyxzJBdfifDVEbUZIJ10y/hAYYyDIRnSB2vcZwtEu0i43E9pXNhB61Oxoa82w8
	cg5jJrVT4+V3at1MowkzQgEoqIolYznxNGgem5Mvw/p0NwFdCLRL6Wd53u/ln3D/NDoSR6Pnkpj
	beLqB0WTffwBZyQL/w2xYudWntI8/eKuwSBYJ+B1OOYEZ52R8A7KSl6XPWAwrzSrZqoMxpcr7R5
	xYY5/NpGM1RhZMwI59EV9e2hChFJ2F9HHsFup2Gns12q6V4zlGO5WA0WbFaLkeT9p/SgcSD5j2P
	xs91e09jWf9Q43Pz4ybQIYXo7z44RWz+3l9G7PSkAlo41eWXAkInCxLhYMsxNrvm1GI0JA==
X-Received: by 2002:a05:6000:18a9:b0:439:ba4d:bf53 with SMTP id
 ffacd0b85a97d-439f8423d74mr10803375f8f.52.1773315780042; Thu, 12 Mar 2026
 04:43:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014191121.368475-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251014191121.368475-3-prabhakar.mahadev-lad.rj@bp.renesas.com> <CAMuHMdWQeOa5L9QAMDMy-KSH=HiZeOpLnq+VewSTVbvWHosygw@mail.gmail.com>
In-Reply-To: <CAMuHMdWQeOa5L9QAMDMy-KSH=HiZeOpLnq+VewSTVbvWHosygw@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 12 Mar 2026 11:42:34 +0000
X-Gm-Features: AaiRm51_ssk7vGH1f9YJGjAo91zvg5snVrOTShKiwdxkIaJ0-47Q0oGg_3OsmGM
Message-ID: <CA+V-a8sqDAdJMGhjFi-HsdEvHj=6FaquyLhFvLUwXVp7Jk0j9g@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: renesas: rzt2h: Add pin configuration support
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274547-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,gmail.com,vger.kernel.org,bp.renesas.com,renesas.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,renesas.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D0285271400
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Geert,

Thank you for the review.

On Tue, Mar 3, 2026 at 1:53=E2=80=AFPM Geert Uytterhoeven <geert@linux-m68k=
.org> wrote:
>
> Hi Prabhakar,
>
> On Tue, 14 Oct 2025 at 21:11, Prabhakar <prabhakar.csengg@gmail.com> wrot=
e:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Add pin configuration support for the Renesas RZ/T2H SoC. The RZ/T2H al=
lows
> > configuring pin properties through the DRCTLm (I/O Buffer Function
> > Switching) registers, including:
> > - Drive strength (low/middle/high/ultra high)
> > - Pull-up/pull-down/no-bias configuration (3 options: no pull, pull-up,
> >   pull-down)
> > - Schmitt trigger control (enable/disable)
> > - Slew rate control (2 options: slow/fast)
> >
> > The drive strength configuration uses four discrete levels (low, middle=
,
> > high, ultra high) rather than the standard milliamp values. To properly
> > represent this hardware behavior, implement a custom device-tree bindin=
g
> > parameter "renesas,drive-strength" that accepts values 0-3 correspondin=
g
> > to these discrete levels.
> >
> > The DRCTLm registers are accessed in 32-bit mode, with each port split
> > into two halves (bits 0-3 and bits 4-7) requiring separate register
> > offsets.
> >
> > Implement pinconf_ops to support:
> > - Getting/setting individual pin configurations
> > - Getting/setting pin group configurations
> > - Standard properties: bias-disable, bias-pull-up, bias-pull-down,
> >   input-schmitt-enable, slew-rate
> > - Custom property: renesas,drive-strength
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Just a minor drive-by comment for a patch that is still WIP...
>
> > --- a/drivers/pinctrl/renesas/pinctrl-rzt2h.c
> > +++ b/drivers/pinctrl/renesas/pinctrl-rzt2h.c
>
> > +static void rzt2h_drctl_rmw(struct rzt2h_pinctrl *pctrl, unsigned int =
pin,
> > +                           u32 mask, u32 val)
> > +{
> > +       u32 port =3D RZT2H_PIN_ID_TO_PORT(pin);
> > +       u8 bit =3D RZT2H_PIN_ID_TO_PIN(pin);
> > +       u32 offset =3D DRCTL(port);
> > +       unsigned long flags;
> > +       u32 drctl;
> > +
> > +       /* Access DRCTLm register in 32-bit mode */
> > +       if (bit >=3D 4)
> > +               offset +=3D 4;
> > +
> > +       spin_lock_irqsave(&pctrl->lock, flags);
>
> Please use "guard(spinlock_irqsave)(&pctrl->lock);" instead, to match
> the style of the rest of the file.
>
Agreed.

> Note that that will become "raw_spinlock_irqsave" soon, due to
> "[PATCH v2] pinctrl: renesas: rzt2h: fix invalid wait context".
>
Thanks for the heads up.

Cheers,
Prabhakar

