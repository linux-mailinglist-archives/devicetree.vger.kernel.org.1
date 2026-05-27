Return-Path: <devicetree+bounces-303404-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qE7UNOfiFmpbvQcAu9opvQ
	(envelope-from <devicetree+bounces-303404-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 14:26:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B355E426F
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 14:26:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B6F1F3019A36
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 12:18:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF5F23CFF7D;
	Wed, 27 May 2026 12:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iup0aUza"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11762393DC0
	for <devicetree@vger.kernel.org>; Wed, 27 May 2026 12:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779884329; cv=pass; b=jD13C2MGyxsCTrLuW9fR7y87TKGNBzT09VLPomejeFqYjSU/gi/8q830EfmrffurjYy1r8sx33XZR2JF2BV6m7jTBhFQmX+HnkkHvuFda7VqkDcAs8OLkCuv1lQfsMwalHIp5Nu6BVjhcNVSj+5I4ZdPDTG64HKljvNhbygDi8I=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779884329; c=relaxed/simple;
	bh=eunLwWZyeNP6y8RjCZ9qVFbItePsAKJFGFspcKcRlSE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LVq7jwf1UL/rm+PrlkAitHbdSD2oitMhgohw3JKBC52H0B8QzNlhUOnEuKkVUDb4LiSiy+FSre/yL7vxRLdhm8nLKVCrutJZDhxiS4HEYV66KCdBYktL+hYc058paJoLx4zJh1BcQzHvhCKsbkqWIBtMwEy5A//8OhF2U3V7mt8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iup0aUza; arc=pass smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4906869f0cbso32605085e9.1
        for <devicetree@vger.kernel.org>; Wed, 27 May 2026 05:18:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779884325; cv=none;
        d=google.com; s=arc-20240605;
        b=Xnd/0yHZDxvh1v1EwqyHv3BqhUB7v1I4OJG9WRJu1IsqDdH5gi8UUTqb8+f8pWEqh9
         0O9TkI3lrHmtXfOxfHp8QeTcKBANYA8H1mzoof3xYUoxWYi6tgv5f2cGGG86eF3b0AQP
         0ndc3rJOdNOO+6ku/1xaK6MFnEH6QnFsDWDbGyx15aOx0EI9POcqUD8D42g7AJRoACf/
         XnfY0Et2JJXGchhzOB7eHxVbhqVog3JATMkoZUBPafY4ebIASTgJ9Wtk2e2dd2w0v0Aw
         zpPyo741EI/6Xo2DGc4WZSQGSVbpqTZy91zsUOaNdpb6FUI5HC/4CT/e3aAJOfTwECIG
         REiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=pkxjcWbu9MZjjBxbwrKkIq+DQQqJ5ptkHwwdkN7jP4U=;
        fh=1Fr5pjtyBm3CXISTT+pXNhODsg2QIBjQwcmEQ8nExdA=;
        b=d8CIjQi59lIRjxkRCRGXbnPG8kJQkXSvHgy1zpdJohsQDPhaN7qUKp7uE7LKnOyTt/
         u2E2dvCTu+SgGkcoKQH4guup6J6cSX9/pq9+qShiPm1HTT14I5v9h3XIOSxPuCHrANWc
         Vr/CzQ7I+nag6XqSFrN7GX+O6edc5m7Ox+KgoJ8z4jUGE4hEaTJj8PHXf1N28ixpGu+7
         tqHX+RwUq+dYaoJ9KLDfmFoGUOpR+EAAjloQHKyS+FNBzHJVMrZMWdv06blphznDovM6
         8xOdboq6tMHJrm2PCVo1YFXM5v3HjzZ1/R0nXez1of78RRRmo8Mfo56yEPsooReT13sX
         5EsA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779884325; x=1780489125; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pkxjcWbu9MZjjBxbwrKkIq+DQQqJ5ptkHwwdkN7jP4U=;
        b=iup0aUza5Dxbcz6eyzcJ9cBFl/3Y0L2eNnEXatvKGNVMcETHdK7QmYTmB4Br0T0M52
         Lo9YgYeRDBwH7sV94LrwF+qJDv7PAJvF+0WnOAGJcaAUOQLeWuwXn6cjemMDmgvdBJJK
         DiehVJVKF7mwNYU0LaTis3pjtQsB7Iq0JuxI7DWraT1ha/rqTBrsQgetADW6IIQ/nNzr
         dlXGX+yLWfi6OfaTyVfPEs00Jiv4q/a/BIjOHHVavNwwiDnSo34PqrhLl0If4cnnijwY
         k24fCovl+npQqHdaz77GQ4E3U/vsAnI380GmllsIb/voJ/zrw5JQrfi/nLl2uGjfLXmM
         k50Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779884325; x=1780489125;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pkxjcWbu9MZjjBxbwrKkIq+DQQqJ5ptkHwwdkN7jP4U=;
        b=UgPB0cP/ar9hplqqpl1H4Mnn8/jKB+oZhbeadKokqFEEpVkFyN5BIZXhOPDrabm0DG
         jUPKt47Citk5ZFBE66XEgOBGOioPrxO0BqzrhfLtKibyZIMnhKqzLYMpij/g8FlMMNIe
         FXVvl0sOX1Gxfez+XuAijv2tFEoAY7oprq8R7p8pmUp6dudtmD21PleuW86ot0BuLn6q
         /sJUX5mx9l9Rl1nWduvlKw6ed820t9Od+pyyk3ovXn5guF5cdoCmYjOE2KiqXC+uH+nG
         dZ+eYlBhXYpJZ9ZzmNhaDWn9uzl5qsXpxs99sJQawr/li6MIJf7RZeDVbpmvOzBDQnXV
         s0Jg==
X-Forwarded-Encrypted: i=1; AFNElJ/H0WrXO2PljjfwOyp+7rPFa6p/+Zwg3LzAiOh4aOfZImPhpMms6c4mU+O6aICre1rfwe1TVngYAWsB@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0crB2VDRn3pc1sDW+7C+S5QI2bYhHg78uc2kargpZEcN0EKI2
	o+p5QL77LBWxTLl5pO+7g1NxjRsVH1CSV1ggGjSieJ9DDhSjMos1RSJtN8YFXyzGffoaqAOxvKA
	u6Ciu8VFeCdi1KcukcinjNrcq5pmkyr8=
X-Gm-Gg: Acq92OHgeV+3HKvvdDlTkZf2gEH5yi7LEmdGai2RmTM0MZPTlv6LwKCbfq+SeecVF5e
	o7EiAO8Cli1lJW7jqzvTciU4b5kZUMXRvFF5Y7EkPrw3D0bPMm5lHkLEgau+Err0kQvakA0KWgP
	7M5ZJuXhvXCeOmEWny/XN4h3oDc9T3HfhEaWKrIIqn/Bn/crdDnreMWT2gDSI+3UHq5APlbdLOQ
	eKToUHHRuhfHiC2hjAwSyg0UmK6TkwOMgO1fnTSkITVZyWNLduy0903+erg2LDwpJ+N7wh4s5cU
	YJYKIRtsVtz5TQ7S2/xr6pbdA0YirDcU5hmWsHW7Z2fISo0hvTGZ32ftZ/i5eRCMN0ERlnI7x/Q
	CMcNi4JScum1clY4U
X-Received: by 2002:a05:600c:4ecc:b0:490:3a07:c467 with SMTP id
 5b1f17b1804b1-490426cf642mr354995575e9.22.1779884324964; Wed, 27 May 2026
 05:18:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260505120153.680979-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260505120153.680979-2-prabhakar.mahadev-lad.rj@bp.renesas.com> <CAMuHMdXDvM1NoU0fi+9dGZWcEyEmfni_P7NH2o3V5rK-OiNjeA@mail.gmail.com>
In-Reply-To: <CAMuHMdXDvM1NoU0fi+9dGZWcEyEmfni_P7NH2o3V5rK-OiNjeA@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 27 May 2026 13:18:18 +0100
X-Gm-Features: AVHnY4LEw9oHmwZWVib4bDP0uuax_0rVbkEiyBIIYgKqbHTFAWVr1VNFjySy3Pg
Message-ID: <CA+V-a8uLjFfPGOiq_ZxbzcY9JE3PsCHyHcx1dP8+=x-71cE--A@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: renesas: r9a09g077: Add xSPI nodes
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-303404-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,bp.renesas.com,renesas.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.3:email,801c0000:email,renesas.com:email,mail.gmail.com:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,linux-m68k.org:email]
X-Rspamd-Queue-Id: D6B355E426F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Geert,

Thank you for the review.

On Wed, May 27, 2026 at 11:13=E2=80=AFAM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
>
> Hi Prabhakar,
>
> On Tue, 5 May 2026 at 14:02, Prabhakar <prabhakar.csengg@gmail.com> wrote=
:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Add xSPI (Expanded SPI) device nodes to the RZ/T2H (R9A09G077) SoC DTSI=
.
> > The RZ/T2H integrates two xSPI interfaces.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Thanks for your patch!
>
> > --- a/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
> > +++ b/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
> > @@ -1006,6 +1006,44 @@ mii_conv3: mii-conv@3 {
> >                         };
> >                 };
> >
> > +               xspi0: spi@801c0000 {
> > +                       compatible =3D "renesas,r9a09g077-xspi", "renes=
as,r9a09g047-xspi";
> > +                       reg =3D <0 0x801c0000 0 0x1000>,
> > +                             <0 0x40000000 0 0x10000000>;
> > +                       reg-names =3D "regs", "dirmap";
> > +                       interrupts =3D <GIC_SPI 654 IRQ_TYPE_LEVEL_HIGH=
>,
> > +                                    <GIC_SPI 655 IRQ_TYPE_LEVEL_HIGH>;
> > +                       interrupt-names =3D "pulse", "err_pulse";
> > +                       clocks =3D <&cpg CPG_MOD 4>,
> > +                                <&cpg CPG_CORE R9A09G077_XSPI_CLK0>;
> > +                       clock-names =3D "ahb", "spi";
> > +                       resets =3D <&cpg 0x4>;
>
> 4
>
Ouch.
> > +                       reset-names =3D "hresetn";
> > +                       power-domains =3D <&cpg>;
> > +                       #address-cells =3D <1>;
> > +                       #size-cells =3D <0>;
> > +                       status =3D "disabled";
> > +               };
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> i.e. will queue in renesas-devel for v7.2 with the above fixed.
>
Thank you for taking care of this (and also patch 2/3).

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

