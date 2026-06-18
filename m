Return-Path: <devicetree+bounces-313257-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aeS5OaCbM2rFEAYAu9opvQ
	(envelope-from <devicetree+bounces-313257-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 09:17:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D892669E08C
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 09:17:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313257-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313257-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CBF423015D7C
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 07:17:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0864A3C10BF;
	Thu, 18 Jun 2026 07:17:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BB6037F8AD
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 07:17:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781767059; cv=none; b=P9cO4qUg0l4DA36vyRtjdQ31jFEhk9zoEaCvJB9qdOnFrrxjMK+0oqlDM7QGIZlIcmH3pqsfqIYxaV1JZzEQxswr1dJT2JHt0sJQYfBKL85z49lGuI7EnWnV9+hErIYtpna2kDHYBDTn6VqA6x2VvHraiN3S0P2kHXgJwMZaaDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781767059; c=relaxed/simple;
	bh=tfbcEFHyRGxmt/ZNMjfmkNiTbtmi4aiIGAAer8bH9z4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qVAYoEi+BidjWl8XAHdqlkYT/lUMY5Q6U2MatOcO9xMuIgw8quhYwlUfCZGIhQbBO6KwTcW5uNtqHjdIRMUms4GkqitTIlj82bONn8BmIhLLJkgvqFNAp4evAeypnbbWBwpqbbHdNdbqAGNhNFD1j3DRDfHCoh94oxTotrYiHOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.45
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-9618b8bdc51so200723241.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 00:17:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781767057; x=1782371857;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xzQ4TuItSjjDfqcY5h5uPw4axpJfO2Kzm9zj8eN9JJg=;
        b=T52ExzF9kPo4N7xFnagSThB2L4aF+bgznEiaznzoPlm6Flr3Z6hbChuyn4bvq6Vso0
         cPuGI5zWnNwhRlnna9t+pCXsxcu3mzBcwHnMAyCDtWoSC4SVYrxD80HsI73Il0IJRKJr
         Ewv2IEkw3NPyS8srd7/IEomRM27Vyqj0u97d1eSezCEDofA+YaYeHl8WHrFspX5xi9Un
         Dje4fwfj7OOfUpX1dwrL4opHmG5ovcJiz8+TaEFH4YA8YKzgOdg7fCGRtAt2W2kJCRxX
         5zvLl8Nk2ez5TBHol8+jeK4jAE7KEblytMwzpwAfaph/CFK3IOZD+kJB1fvG/Z0fG/F1
         tWYg==
X-Forwarded-Encrypted: i=1; AFNElJ8nW/TmxowXzv0VHEX8FMbmghQaOmbuFpmpbx2zzFQG6bzI9bGaksqKbBFSagjPuEfsYPTVNGzBQR75@vger.kernel.org
X-Gm-Message-State: AOJu0YxHQ6D5HtorGPvR6o17FKS8xdJpD3sRWIaSxQxr/pIE0rwkEw45
	+/SH1Gixph10/x3OY5obcv9BMetXKgYrkn2wEQXAUI/FvtwrIgmM7NqU1P01wEN2
X-Gm-Gg: AfdE7cmaKly/twTo+irDy+0shhoeUSuXc4QLxwXaWIOiEvau8ueOkRvsTKpZ50hmQGl
	xBZAixSxZzedD+MjpXTMPlPELDMdsZLuWwyMBuDIiuXDUbebvhJahonHgHxr2LEVNF1i0clzNMR
	JUhHHaNxXbAj7ZQ8v0VeTB9ZHlmmKGPuaNWkkGWZfnUS3UZmAp/TIR9/WNkUYlKR0TJSGN5by3w
	cEWNlAj52vlzZxfvSF1A2rvCTdYfNDmovDvuuxNfRu7TYnzmzif4EOQuZL8HXua4K8qGzyJqFvp
	QW9RmuRa+v5Er9hOZ8g6A5dkGLRyzrkPByUbI1wCYqL2pGD//PRLtHd83sRJk7rrxh2qp92MiHV
	Lf06A0mOF0+9luPRPmthxhq0C4j2epaIUiuzKoeHCrAoyoKxlS2rPLBOBw7r6yPSUo70tr+UTnm
	M+PlMMeOmy+FoG71MDkmqhedlydMYTRzzh7qnII63PMSNuUalAtwh6ULsBHsZg
X-Received: by 2002:a05:6102:5348:b0:728:572d:80a1 with SMTP id ada2fe7eead31-728572dace9mr910641137.21.1781767057416;
        Thu, 18 Jun 2026 00:17:37 -0700 (PDT)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-966ceca5f6fsm4442625241.1.2026.06.18.00.17.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jun 2026 00:17:36 -0700 (PDT)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-6cfd17e9250so255265137.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 00:17:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+BXCR5D+4pOFNVEpuUeKQeMEknmn/9fqjRz/IJ/v1LLCZ9TfBN3Zz72s5b/vPMSvPbgFrEMQjSfMI7@vger.kernel.org
X-Received: by 2002:a05:6102:3f51:b0:635:1bc8:3563 with SMTP id
 ada2fe7eead31-7246cde4ab6mr4100174137.20.1781767055966; Thu, 18 Jun 2026
 00:17:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260615104845.4122868-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260615104845.4122868-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdWBeaTB4QK5vvB0CQm+yrX1ps3V2EtFu0Q4a0JG_94f7g@mail.gmail.com> <CA+V-a8uixCr+LZ+2SrX1b2p3nNwkq8=ctdpzx=BF9OcR9eJW1w@mail.gmail.com>
In-Reply-To: <CA+V-a8uixCr+LZ+2SrX1b2p3nNwkq8=ctdpzx=BF9OcR9eJW1w@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 18 Jun 2026 09:17:23 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVx_SS0w=x4H3WUb4BdnOXQOxboeFZwmvhP31HLoQNNkw@mail.gmail.com>
X-Gm-Features: AVVi8CdwNDnTBvDYfJRjdNKhkzB68fOeQnOFgapo4u-OWjhPO9Gwwv76NFhl4Qg
Message-ID: <CAMuHMdVx_SS0w=x4H3WUb4BdnOXQOxboeFZwmvhP31HLoQNNkw@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] clk: renesas: rzv2h-cpg: Use per-SoC PLL reference
 frequency for calculations
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
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
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-313257-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:linux-kernel@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:prabhakarcsengg@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,redhat.com,gmail.com,vger.kernel.org,bp.renesas.com,renesas.com];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid,renesas.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,linux-m68k.org:from_mime,linux-m68k.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D892669E08C

Hi Prabhakar,

On Wed, 17 Jun 2026 at 22:17, Lad, Prabhakar <prabhakar.csengg@gmail.com> w=
rote:
> On Wed, Jun 17, 2026 at 10:48=E2=80=AFAM Geert Uytterhoeven
> <geert@linux-m68k.org> wrote:
> > On Mon, 15 Jun 2026 at 12:48, Prabhakar <prabhakar.csengg@gmail.com> wr=
ote:
> > > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > >
> > > Introduce a per-SoC PLL reference input frequency parameter to avoid
> > > relying on a hardcoded 24MHz constant during PLL configuration math.
> > >
> > > Add an input_fref member to struct rzv2h_pll_limits. In the core
> > > calculation helper rzv2h_get_pll_pars(), derive the base input clock
> > > rate from limits->input_fref, utilizing the conditional ternary opera=
tor
> > > to fall back to 24MHz if the struct field is left uninitialized (0), =
and
> > > drop the obsolete macro RZ_V2H_OSC_CLK_IN_MEGA.
> > >
> > > This abstraction permits the reuse of the common PLL divider logic on
> > > newer SoC platforms like the RZ/T2H, which feature a 48 MHz PLL refer=
ence
> > > clock input instead of the 24 MHz signal used by RZ/V2H(P), without
> > > disrupting existing platforms.
> > >
> > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com=
>
> >
> > Thanks for your patch!
> >
> > > --- a/include/linux/clk/renesas.h
> > > +++ b/include/linux/clk/renesas.h
> > > @@ -53,6 +53,9 @@ static inline void rzg2l_cpg_dsi_div_set_divider(u8=
 divider, int target) { }
> > >   * various parameters used to configure a PLL. These limits ensure
> > >   * the PLL operates within valid and stable ranges.
> > >   *
> > > + * @input_fref: Reference input frequency to the PLL (in MHz). If se=
t
> >
> > "in Hz", as pointed out by Sashiko.
> >
> Agreed.
>
> > > + * to 0, a default value of 24MHz is used.
> > > + *
> I'll also replace `24MHz` to `24000000 Hz`.

Personally, I find "24 MHz" easier to read.
Counting zeroes without thousands-grouping can be hard...
https://lore.kernel.org/CAMuHMdUp3fOkAttk2FKJTh5svaiMwgu4JZ8utPeHghU4TQLE-w=
@mail.gmail.com

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

