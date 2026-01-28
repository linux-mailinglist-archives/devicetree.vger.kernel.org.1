Return-Path: <devicetree+bounces-260455-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCVgN8Qhemmv2wEAu9opvQ
	(envelope-from <devicetree+bounces-260455-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:48:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B41A31BA
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:48:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8962E300F12A
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:47:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3A762874F8;
	Wed, 28 Jan 2026 14:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="U9iycEUq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0030429D280
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 14:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.175
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769611634; cv=pass; b=n4yfu4Rz+VgVDf+F8gX+R86C84aATaHPUKgcaC7sidnP4OcP0BAOO5IK5mSaVrnB32TEAT4a1G9Ai6V6bpqwq/gOUfVtdGvCISycAYRWme0oqTYGX10dVk2rMeZY3FyA8oIJ9pvVFvQJxTEe2PrQoiFq0WCvMvdCpd4IW6vS/FM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769611634; c=relaxed/simple;
	bh=09G///ul3AICFwsvGOczDjPPSqVpjJGEwL26TGSob6k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=s0prn5VmMz0o/if3Hz6KE7i9gG+CLfYTnpUzxzUXYrZw2OxOLrUarLgtAWjoIh9Tregkm/VOMYaoxOG/DRYm4cbRZNL9yNa1DJr1sF3yyWGBKH/MQfcHd4aSxgIZ2pRSuBKqnxHWnC0+2QeOp3EpqBef118kbgY8vvx2GrmR9wA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=U9iycEUq; arc=pass smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-78c66bdf675so69297367b3.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 06:47:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769611632; cv=none;
        d=google.com; s=arc-20240605;
        b=JVHlbCrST0+wmBLy1+K1yYhHI2pQIbzos1xyIvA4brxqIUqzrZAtISlL1RkufVT0EO
         KAU1JgN4QtldMhdjS3dpm08p8iLhHtPLSLgLOcQTvGsSgAiaixl5e933zA4rTuDxpOOZ
         yvfMs+LYmM319Qa7lg0SjCzprcAFf/NLcs7scPuYHUdFV9LQkZhHmg8Gxm2muqyUeKKQ
         bTkuJLBRmvGvTB5fQ/SF/I6nEZtsNbz99KoGK049CcTHhKgtykiJ7NfuLtkgLUDw8azi
         txc4SmZDhRKbufHQbUkMrkyTGsUkQyVSZxmdrQuAXrTjwFFwHsQ7mzmH8dwnSOR4pWAT
         kyag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=E6L9Umo/uP8ZQkG562utb1rtQO4EFo9vq+3Gr4Yf7Ak=;
        fh=JyrcdxHr6/Ch/tp9STA9OV+P0sHJvJo9BEUGGmIOIMo=;
        b=WoJ5i9ufU03FE/6fNttxFMPt3jj9cqDA3KSci6Ol9M7LW0Tnu3DMsacbukSPy8ltLJ
         pdFj76IN/u7+blDMIZBbQEUm8wZwynYEqy1TTv6FqgD463J9eI/Bvm9VIwu2jGSpwnTn
         FbrqnyDxByp+Ywj5zDiX3lUWhZeW35tvLJu5RoRLeFdJgaEKBt4UEuI62q931Ip9vspG
         GelIwv/0DltA/4bFDKIxjpT+GICn8PaYLUkcmA5NYf0D9lzaT/UtcLnR9j75NiKWhsSA
         9Nq/jheE99o03vPIVu8BkOiWhb02AGxVR5R3/Zeic2x3TyQvdB61dRPmF32P+CwznzSF
         jKkA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769611632; x=1770216432; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E6L9Umo/uP8ZQkG562utb1rtQO4EFo9vq+3Gr4Yf7Ak=;
        b=U9iycEUqDmc/cqXdwLB/npm3U2MfvttClHkcViCbZPD1nHnr7V7OYKGMiF19e0Sa4e
         zuXlPcHvdODy3WQeVq5eT5VrQ1qOqRASyt522SrZohHIHDN5ITuWE6h2tl4MbOCMXyMF
         TCSNSK3hfZD/xCMRbGPKIZ+6YdXkBjFhqQmMlK32aLb+ggqFshb93D981vnVeOJHva2J
         OGxiQk5Ru8sflnI+CpkqRvG+IrF9CPxdeLc4Kbii/iQu02/s02X9gc4s+J67FEFCc3tM
         0y0CVVhWRax6lQh4j5bweSenM48+4wuydfxIUAESj/opatyjakW8X7ZK01zCcvERrR67
         Efpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769611632; x=1770216432;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=E6L9Umo/uP8ZQkG562utb1rtQO4EFo9vq+3Gr4Yf7Ak=;
        b=slNUiD6DwuCRhHgVGP8mCnREnhrxEBoWIY0mpXaatlnq23akEZW+nixaBarUbRj3zV
         e1NkzoJaU/QzchOHYq8V8rGxVrXlRWkg8eDuDJ/RSLwEJ2f6XVZyUk6bByZjf/2bFoMp
         qNMBVPe+KqCM015xCwbFzR/9/vnKa5D0p2BFMNehbDGWc5BJoRRzSy32wTntOV3PSDgr
         d9PNI/5OMQbu6HdlacenpbUWHu/QzGzKqCM71S99MNsriOHrGALO8m8pClJWuiZHMogw
         EM6pQhfOla+mMdJD9Hr6DqPSt2I1Wlqnhmi3FHQzlN8ErZ7XUzAXwgq2pA8v99dQOJxV
         XboA==
X-Forwarded-Encrypted: i=1; AJvYcCUt227UezDfynQaojmngYPDU/upfeBHehDSC+VK6YoaQNZKXsL+Z7sX9gfGFnLaHkBfbNHOavMdPljH@vger.kernel.org
X-Gm-Message-State: AOJu0Yyrzo8b/3TwUiaBpksngY8TG+UWmrqs7/NtxINzGiu2ROCGRuGE
	bhQ0cEdrkpxXaHGIRQFpeUdPnQczywYNfsDyNof3gK9+oWaIr4p00IRZcTl1F3iKXVk2VsE21XU
	oFqjDQDiCQjHY1b1UWwHlK4cAFudEE0m+NP/SmEnEJg==
X-Gm-Gg: AZuq6aI3UFtfMSKcNNvsba7PjlJcpVvwPzX+6R0/H3XQgzY36guvXyNvqMzTXsB5qhd
	Dt5XgFHJ0a5/bVh9a/DlNHTKHMrJFXaufspCBkJm+fkZ+pCiz1gvHbJDU1AEYBEM+dt2TyIyRhc
	FQUDrXwlKVtD6HpiSEubD9LsnZR+LnWUIZiYVFR7ldx0XnYXQx6lNDVa94fLCeSKF5vQMIKPtH6
	5B9CnNuUWm1hyUCEFmPNOKdG+DTk6+/L3vTlsbRN2j21p5+U+pEAhcutk2EGH5mVK18yZPGrSmn
	e/JFIVnYtmOHMmSrPmPf4aS5ffbRy8dvWgegJKUgNG3V
X-Received: by 2002:a05:690c:a7dc:b0:794:1eee:608d with SMTP id
 00721157ae682-7947ac02895mr29873107b3.32.1769611631995; Wed, 28 Jan 2026
 06:47:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com>
 <20260124-spacemit-p1-v2-3-2c86b06694ba@riscstar.com> <4395bea9-44d7-4f0f-81d6-c1e05976a308@riscstar.com>
In-Reply-To: <4395bea9-44d7-4f0f-81d6-c1e05976a308@riscstar.com>
From: Guodong Xu <guodong@riscstar.com>
Date: Wed, 28 Jan 2026 22:47:00 +0800
X-Gm-Features: AZwV_Qgr9cFTrml5EGU3f-mMndB_n-GeOjeWwN7e29EUvpE6R5XaRFfNWtlDbRE
Message-ID: <CAH1PCMa_wxX_0YX0=3uMpKpE2FQ=COPafAL-tyJv3Y9kjdAujQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] regulator: spacemit-p1: Update supply names
To: Alex Elder <elder@riscstar.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Troy Mitchell <troy.mitchell@linux.spacemit.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-260455-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,gentoo.org,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid,riscstar-com.20230601.gappssmtp.com:dkim,spacemit.com:url]
X-Rspamd-Queue-Id: 69B41A31BA
X-Rspamd-Action: no action

Hi, Alex

On Wed, Jan 28, 2026 at 9:29=E2=80=AFPM Alex Elder <elder@riscstar.com> wro=
te:
>
> On 1/23/26 6:20 PM, Guodong Xu wrote:
> > Update supply names to match the P1 PMIC's actual hardware pinout where
> > each buck has an individual VIN pin (vin1-vin6) and LDO groups have
> > dedicated input pins (aldoin, dldoin1, dldoin2).
> >
> > The supply is a board design decision and should not be hardcoded to an=
y
> > existing power source. This allows boards to specify their actual power
> > tree topology in devicetree.
> >
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
>
> These are good changes but I have a suggestion on the way
> you define the DLDO descriptors.  I might be mistaken but
> I think you should make this change.
>
> Aside from that:
>
> Reviewed-by: Alex Elder <elder@riscstar.com>
>
> > ---
> > v2: No change.
> > ---
> >   drivers/regulator/spacemit-p1.c | 25 ++++++++++++++-----------
> >   1 file changed, 14 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/regulator/spacemit-p1.c b/drivers/regulator/spacem=
it-p1.c
> > index 2b585ba01a93..57e6e00a73fa 100644
> > --- a/drivers/regulator/spacemit-p1.c
> > +++ b/drivers/regulator/spacemit-p1.c
> > @@ -87,13 +87,16 @@ static const struct linear_range p1_ldo_ranges[] =
=3D {
> >       }
> >
> >   #define P1_BUCK_DESC(_n) \
> > -     P1_REG_DESC(BUCK, buck, _n, "vin", 0x47, BUCK_MASK, 255, p1_buck_=
ranges)
> > +     P1_REG_DESC(BUCK, buck, _n, "vin" #_n, 0x47, BUCK_MASK, 255, p1_b=
uck_ranges)
>
> That was a simple change...
>
> >   #define P1_ALDO_DESC(_n) \
> > -     P1_REG_DESC(ALDO, aldo, _n, "vin", 0x5b, LDO_MASK, 128, p1_ldo_ra=
nges)
> > +     P1_REG_DESC(ALDO, aldo, _n, "aldoin", 0x5b, LDO_MASK, 128, p1_ldo=
_ranges)
>
> As stated before, I believe the 128 should be 117 here.  (If

I will explain this in another email.

> you change the earlier patch, make sure the change to 128
> doesn't persist here.)  Same comment for the DLDO regulators.
>
> > -#define P1_DLDO_DESC(_n) \
> > -     P1_REG_DESC(DLDO, dldo, _n, "buck5", 0x67, LDO_MASK, 128, p1_ldo_=
ranges)
> > +#define P1_DLDO1_DESC(_n) \
> > +     P1_REG_DESC(DLDO, dldo, _n, "dldoin1", 0x67, LDO_MASK, 128, p1_ld=
o_ranges)
>
> Why can't you use _n here like you did for P1_BUCK_DESC() above?

The naming follows the P1 pinout definitions in the datasheet [1].

Unlike the BUCK regulators, which have individual input pins (e.g.,
VIN3 for BUCK3), the DLDOs share power inputs. For example, DLDOIN1 (pin 17=
)
powers DLDO1 through DLDO4. DLDOIN2 provides power to DLDO5, 6 and 7.

Since there are no physical pins named dldoin3, etc., I can't use the _n in=
dex
for the supply name argument like I did for the BUCKs.

Datasheet pin examples:
8 VIN3 PWR Buck3 power input (1:1 mapping)
17 DLDOIN1 PWR DLDO1~4 power input (1:Many mapping)

Link: https://developer.spacemit.com/documentation?token=3DT1Btw2BdiiSlSXkA=
dibcoMetnag
[1]

Best regards,
Guodong Xu

>
> > +
> > +#define P1_DLDO2_DESC(_n) \
> > +     P1_REG_DESC(DLDO, dldo, _n, "dldoin2", 0x67, LDO_MASK, 128, p1_ld=
o_ranges)
>
> So this is generalizing the input, which is good.  The use
> of "buck5" here was a Banana Pi BPI-F3 design and but it
> doesn't have to be that way.
>
> >   static const struct regulator_desc p1_regulator_desc[] =3D {
> >       P1_BUCK_DESC(1),
> > @@ -108,13 +111,13 @@ static const struct regulator_desc p1_regulator_d=
esc[] =3D {
> >       P1_ALDO_DESC(3),
> >       P1_ALDO_DESC(4),
> >
> > -     P1_DLDO_DESC(1),
> > -     P1_DLDO_DESC(2),
> > -     P1_DLDO_DESC(3),
> > -     P1_DLDO_DESC(4),
> > -     P1_DLDO_DESC(5),
> > -     P1_DLDO_DESC(6),
> > -     P1_DLDO_DESC(7),
> > +     P1_DLDO1_DESC(1),
> > +     P1_DLDO1_DESC(2),
> > +     P1_DLDO1_DESC(3),
> > +     P1_DLDO1_DESC(4),
> > +     P1_DLDO2_DESC(5),
> > +     P1_DLDO2_DESC(6),
> > +     P1_DLDO2_DESC(7),
> >   };
> >
> >   static int p1_regulator_probe(struct platform_device *pdev)
> >
>

