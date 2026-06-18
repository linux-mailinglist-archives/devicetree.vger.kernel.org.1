Return-Path: <devicetree+bounces-313301-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EJB/ElWqM2phEwYAu9opvQ
	(envelope-from <devicetree+bounces-313301-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 10:20:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9A669E684
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 10:20:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=QT7cVVSQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313301-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313301-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6AB6130056E6
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 08:20:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D810395AE3;
	Thu, 18 Jun 2026 08:20:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A8439184E
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 08:20:30 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781770833; cv=pass; b=F+K0SL1OFAMsxxnB4PQckvYZfxae7/hwk05UAzGrmSDOJ0gZ0DWVvgN3Kv4HOJiYFzPoO/TMHIkzvO63bflZoEEWKRr9uEJneiAwiIUtT5wh5fDTKOXtBV9gy40iQ0xJK25exyyVIgNDakalNG2aoESpMbuBjjuSYvk8YESbNCE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781770833; c=relaxed/simple;
	bh=fiMoFb2yDwUTE2GdMx5xeBoU/9rZgzEwoxvoMoWxtos=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=un1lZD2/YGJpeF4fDnCmWfuSAOKPxYXWytfII8Zg18qY3h50o91qGkkXN3ZaydHfOderXNX6os5TNknIm/isxVG72M2MEds1OBhEtpOJMRhBmQLjg5L3gAitZ7xmInZo268nZPRP/CDc0Gfo8CrWkMCgjGBp4x5AtEaaDJIqlLg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QT7cVVSQ; arc=pass smtp.client-ip=209.85.221.41
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-45ef56d9b67so550806f8f.2
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 01:20:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781770828; cv=none;
        d=google.com; s=arc-20240605;
        b=hzJPepFHDrpR4OCHPUvV8gJK/9qPXL1MywKL+ErDCs872QxsOWNBJX85St3o5tAHgx
         xxLByLdE+oiAW0BX9f8gLfry3TzunsyoYGnfNjdamBcCbCw00CFiOJkZ0Q4t9QeJnWR2
         191Ch2xeu7+EYLk7bFm8ucNLUPeOEG1E7H6ofx5Y0S0cZYGQr6ynFnD1AoneUUE7ld8K
         evTbZ6EdIkZIamdf+l30jxbTVfdCft2259/fJHybK6pn2LSPU/hMk3r9J+afiqiPTTjg
         YYXbGS5CZKkM8Be1ZG5QansEaLoDIGQ5PTKsuy0jcp1tF942BUoHNIA89sa0eUHvyxKC
         dS0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jmxp3UYQzWdAJNffCvhOnFb1/BbRExCkHu3N92bH3tM=;
        fh=fZXWTUNSZEsbtT39GFQ/J/kRsOIrpfIQpj3539quFpE=;
        b=ipg8XCJ/FlwoKpPgJmtLLe8N4UZ/d4s6ziM51NvtWt9AHHCQSznvPUN9C4yKzDINdX
         hU+dEIah/v6nvyhthNR4xLVpsRFOqRlFal+M5crtuKB9C0/ucT+Cxg068k6/lruC1CEv
         /ioaibyUYlnltjoDjo7+uKoULsO0yh+MG/fDGV+hKNvD5cMSmEjsPpAbr8kSv6rFb0Lz
         IC1BuXyWGiBFOUOJ5m0Jvg/5kXVK8iEq4elZqcgy80KN5K3NQXx7Pe5tYqXJmEhvGT96
         ko+tH6hrh0mpZoCYzhO8fXWWH7FzdhYG8l1BgjbLgAC+RIuO+KcVhDeP/jBDLjq9+jKg
         3U+w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781770828; x=1782375628; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jmxp3UYQzWdAJNffCvhOnFb1/BbRExCkHu3N92bH3tM=;
        b=QT7cVVSQZuAz6NuccHVwpkgY9DFYs6yKNBeHevouBsdjzS7z+B8iw4w07VYXdAFOiJ
         F5OEvV0tvnB8ddk+rXKzOFDDhHzNZGqixLtC2hLgfTY5hDWH/SHAR8xil0G4bOFR5Zdq
         ybhdJpE9SNDVr75Ra3aCbjlt7gigNzP84luuAYfAlIrKDRNRKi9llaAv9EWAtGqmIm3y
         9SQVkyd6kMFDeDYxMhA6aSdXO420bAkxKSccEFcLzdEoBOTzcWyWKnBpPZfw+cfCnwp8
         vyBcnO3mLslou8IE+8zn5UWjha9V04DoJ2PvS6XNwBxElAzqbOW4woSnmGqSOyJyUioB
         bZ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781770828; x=1782375628;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jmxp3UYQzWdAJNffCvhOnFb1/BbRExCkHu3N92bH3tM=;
        b=F/vpMCVpjPWih/b7wLwqqFurq4ULjK29FZUoKtrufJ5vupPyYNvQZiaCvPIHxPVWn4
         1oUEZ7r/XJQDWIKopPfuBxtD3G6h5j0TKfvmRfFqe9ZR0n12aPrC39wh0LJo30o9WFNl
         sDxlRWFJf4uPCuDevbIcvp2ki93Iai8aEqG5BjkX7iKcG2TCT/fX0YHu6Ew0DsupAzBG
         e9DD2KfrN+Pfdz0MlOXzLr96BSgKmo+jGi/jVDSygIUhM8wGNMqCR44QRC3ZfD6seQ7g
         M6WC2zDHknBiK6Fnxb1zC6YWbcOkOSJfkMPF4UIcCCUPn+uFKVtN5QSL6C6NMKSWyy3q
         p2YA==
X-Forwarded-Encrypted: i=1; AFNElJ/05ll3SHZItyWuoQcNhY4gvy0E8seYdOuW971uWeuBW9nNnvC7b9ft3GR7MxAYoliI/+AE0ocAS+MM@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6QPgHl5pOsrbZmcwFYPRazN1HhMzwr+VnKIvy0PVTg9GD0DdX
	Snp2QoSr5dtUsNGN2eFYHD4LatQ6WL5MwrILj7+iXW/dQqX9Qm13nLowSSvcFA1aRRql5PZdES1
	Vm/gEr2Pm6r7zGD/X8VC0hLPm7ayTSEA=
X-Gm-Gg: AfdE7cko4ZYAjQuyCJoCFEdlrwbwLWRbAMeSrGXp9kkQA8gjbockhDRTt7erOYR5CVA
	rwqd9uBp7WB0kGfpiLdHxfOE7gs7gsTYdeWkZYv4DybRRJxyiF+Sv14+PJL8/n0fGnb+rjh0qrL
	sAsNIvFFL1aelnIMXkmWsqYrsBCVRM8Wkv5/PYHbRM31Tdm4OKqPlGQkqw83DAKGqi9xOYbw0Sc
	7nIlnZg67rVYBaFyGD0GgCTECHFJzsKIKJHYSNv8EzUcGrF7a0HL7Qy1LcLHEcMoHzclJ/3F4vQ
	TEPEoZqjkwCupPDlmaZsLIyTmYUxXuPbpNkt9BxQjUNPTy6aN/sXjsQfRZdeJwO+sPLJ8FoECH/
	U5lNNNA06yt9XZCc=
X-Received: by 2002:a05:6000:22c9:b0:460:2eee:4e21 with SMTP id
 ffacd0b85a97d-463ac0a944fmr3916466f8f.17.1781770828175; Thu, 18 Jun 2026
 01:20:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260615104845.4122868-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260615104845.4122868-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdWBeaTB4QK5vvB0CQm+yrX1ps3V2EtFu0Q4a0JG_94f7g@mail.gmail.com>
 <CA+V-a8uixCr+LZ+2SrX1b2p3nNwkq8=ctdpzx=BF9OcR9eJW1w@mail.gmail.com> <CAMuHMdVx_SS0w=x4H3WUb4BdnOXQOxboeFZwmvhP31HLoQNNkw@mail.gmail.com>
In-Reply-To: <CAMuHMdVx_SS0w=x4H3WUb4BdnOXQOxboeFZwmvhP31HLoQNNkw@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 18 Jun 2026 09:20:00 +0100
X-Gm-Features: AVVi8Ccg4AT8n1omfHvxVoN0Ah5TcPCtg6-Pb4o9uNtxeqlzJVr2zsf7kYawbAk
Message-ID: <CA+V-a8uLoOdFcMzE=1=TDRhQjf7ffy9C=gzOgNf55HpAJ3_+zA@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] clk: renesas: rzv2h-cpg: Use per-SoC PLL reference
 frequency for calculations
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Brian Masney <bmasney@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:geert@linux-m68k.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:linux-kernel@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-313301-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,redhat.com,gmail.com,vger.kernel.org,bp.renesas.com,renesas.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linux-m68k.org:email,mail.gmail.com:mid,vger.kernel.org:from_smtp,renesas.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9D9A669E684

Hi Geert,

On Thu, Jun 18, 2026 at 8:18=E2=80=AFAM Geert Uytterhoeven <geert@linux-m68=
k.org> wrote:
>
> Hi Prabhakar,
>
> On Wed, 17 Jun 2026 at 22:17, Lad, Prabhakar <prabhakar.csengg@gmail.com>=
 wrote:
> > On Wed, Jun 17, 2026 at 10:48=E2=80=AFAM Geert Uytterhoeven
> > <geert@linux-m68k.org> wrote:
> > > On Mon, 15 Jun 2026 at 12:48, Prabhakar <prabhakar.csengg@gmail.com> =
wrote:
> > > > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > >
> > > > Introduce a per-SoC PLL reference input frequency parameter to avoi=
d
> > > > relying on a hardcoded 24MHz constant during PLL configuration math=
.
> > > >
> > > > Add an input_fref member to struct rzv2h_pll_limits. In the core
> > > > calculation helper rzv2h_get_pll_pars(), derive the base input cloc=
k
> > > > rate from limits->input_fref, utilizing the conditional ternary ope=
rator
> > > > to fall back to 24MHz if the struct field is left uninitialized (0)=
, and
> > > > drop the obsolete macro RZ_V2H_OSC_CLK_IN_MEGA.
> > > >
> > > > This abstraction permits the reuse of the common PLL divider logic =
on
> > > > newer SoC platforms like the RZ/T2H, which feature a 48 MHz PLL ref=
erence
> > > > clock input instead of the 24 MHz signal used by RZ/V2H(P), without
> > > > disrupting existing platforms.
> > > >
> > > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.c=
om>
> > >
> > > Thanks for your patch!
> > >
> > > > --- a/include/linux/clk/renesas.h
> > > > +++ b/include/linux/clk/renesas.h
> > > > @@ -53,6 +53,9 @@ static inline void rzg2l_cpg_dsi_div_set_divider(=
u8 divider, int target) { }
> > > >   * various parameters used to configure a PLL. These limits ensure
> > > >   * the PLL operates within valid and stable ranges.
> > > >   *
> > > > + * @input_fref: Reference input frequency to the PLL (in MHz). If =
set
> > >
> > > "in Hz", as pointed out by Sashiko.
> > >
> > Agreed.
> >
> > > > + * to 0, a default value of 24MHz is used.
> > > > + *
> > I'll also replace `24MHz` to `24000000 Hz`.
>
> Personally, I find "24 MHz" easier to read.
> Counting zeroes without thousands-grouping can be hard...
> https://lore.kernel.org/CAMuHMdUp3fOkAttk2FKJTh5svaiMwgu4JZ8utPeHghU4TQLE=
-w@mail.gmail.com
>
Agreed, I will leave it as is.

Cheers,
Prabhakar

> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m6=
8k.org
>
> In personal conversations with technical people, I call myself a hacker. =
But
> when I'm talking to journalists I just say "programmer" or something like=
 that.
>                                 -- Linus Torvalds
>

