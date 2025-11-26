Return-Path: <devicetree+bounces-242373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3C6C89B26
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 13:11:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E022C3A3BDE
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 12:11:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15655325700;
	Wed, 26 Nov 2025 12:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h4MyEpi+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E893195E8
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 12:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764159071; cv=none; b=Um8Nxc72J+Yu0iA4Fw3e3Aktpa8h1nHP38hWDzU1is3I0pH0UkaX8Nvb/CIXj0603cF+2zaeIg5WfJwUg9wR2RtSmh7ejAfr4enSzQML4HUrDxmruLl6fgcqTCZyaE0DP29BgwWSazGmPQP1IMo3AoybDbxwPtmmB5YokDgUpfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764159071; c=relaxed/simple;
	bh=A/iiy+Fp1kAykWnlOzSoYnOlxAMMKyuoGr+9DwSiOQc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=okVFei6C0WH+MaHhpLLAGyNBbzNUk7/s1NVjHbOx9XSIEGpvcebRVJRRkSpJBzqf8JnGwPpATG2ptw+uuRcFvgsaFQz5uZ5RAShxXzCLbrDXAWykivHDGTETIyJzl2ff9llZ0KzUESxAaatbu1Fczej8v3DcbJwFtf4pi8jet6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h4MyEpi+; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-477aa218f20so40891035e9.0
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 04:11:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764159066; x=1764763866; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z9jAY13IDhoBX88jeAJQmVezaHbYmh2Vhoc27H1l3dI=;
        b=h4MyEpi+vv0FHF59vvCj38TW7jfl/WBP2JXP2mc5I2THiluJX3BEoUXCo/pEVuDsJp
         geteYMBq0gNMmCfIt8k8we8SoZOZFTh83KpH802VDMPJg+jkmTMpaqDs557iEPgt5LWr
         kRuzDYkqa8b9iMGobNBsCUqj+ENyBBq7W6OLsr1EqpVYGZLDHTEMJlbYBk82d/q2Y667
         Mat7m8lK1S8xjY9PV63AEzdYg/f+nxHfIDWeCskeg0iZ3tgWhNMjB3uCbi6YZdD2KYir
         4YRdedf0KjqanKF1T2XlmblJ6Wu1VEkuKKc7+R2nECLwUIizkG1Uzt+tWGCRzzcQg3k8
         dkCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764159066; x=1764763866;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Z9jAY13IDhoBX88jeAJQmVezaHbYmh2Vhoc27H1l3dI=;
        b=g+7uQn+go8gkQkS0xs6RsS59sZdpHOEoOM6o5iseO0TXaNnJcBmZBaQ/k7gGfMgpgg
         xr02eQzVUNMbk9SWAmvzgsNpU3tbsnUcnJalPipTNX7sE/TdfaHDrQJiU0fGxkEzW1nQ
         0WR56qJlVlTsbEJB1bjHbr5QR0VN37BsbFTBllCFH7+Im7v6jt1pVZT45039fOWTIK+n
         6tT7ZOHRvUSMGqjVS9xxtCsrtSOYnl1aVJ/gqb5SlVK3X5U71tqrOxTpU3kX4nBeOga3
         PV/6Tcga5BTlRQKOgNwcKYyQ7fSVNXOvIHj+9q8yAG11JpWEdwIajgMvqC3AZjRPX1Ay
         7u1w==
X-Forwarded-Encrypted: i=1; AJvYcCX/dfQTOydl3Sx51UttXMT2LrD/oi3FDjIsUsjxBPy8WlkTZ1qTQFy3VIg7e7nWPb1jEOwV8HFGKQ1P@vger.kernel.org
X-Gm-Message-State: AOJu0YyQMWLQKdvzN4FSAOG9TloV70BK1mCsuKER221Vx4UMXC6L8Guw
	9Eq/lHkQRAKjX6NJOKpJEonqyNZkC74GieLMRW2YKD0rudrswCW4BkIRaoI1mhxkO5a/axsD1+s
	bZzt7UEe3l6sqKumJESsBUdM2juOrIzQ=
X-Gm-Gg: ASbGncuOlWrugWEMLK1/CXl1/u/8PFPXAADssOABk3zQRvHSaekgbDQE/zzytE6jCar
	EjvQVg3joNhyTZe9JJnkGL4uENiN1Xoc0+lB/YVfDTjKUdbMsd1wjCik57fhEce6DQoaPs16Ddy
	shAk20GDxMLbhtYjy7BYpCx+x3sKf4aejOfhi0GrNXtR6zPfFocBHSKnZxFKyZn3VLco8iSzrK6
	vpM9BR4ctMMNk0EWnKSXO4AFmx98vmFPjgyf8C7rDdIzPC3UlHvKah+Z40IcAUON47ppG9WGb/3
	ktR6szXK
X-Google-Smtp-Source: AGHT+IHC636RCi1541Ptvl75RzMnsiTIVETO1sWQDjqj+JrAZ9vxfXHnCrioMKRVqEbU6FVYIm3EdyVyxe4JOxXwHlw=
X-Received: by 2002:a05:600c:154c:b0:477:7b16:5f88 with SMTP id
 5b1f17b1804b1-477c0165a5cmr180904235e9.6.1764159066280; Wed, 26 Nov 2025
 04:11:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251125214529.276819-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <CAMuHMdXD3f3jN2F7c+yHmEb1C5Byc-e=sEXt_s=UpBQLv_F=Pg@mail.gmail.com>
In-Reply-To: <CAMuHMdXD3f3jN2F7c+yHmEb1C5Byc-e=sEXt_s=UpBQLv_F=Pg@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 26 Nov 2025 12:10:38 +0000
X-Gm-Features: AWmQ_blZWyGSSPNsufLhVifRnEBMhm6m_dSKdeAvhR9B3oeWnomG5gtFBihklV8
Message-ID: <CA+V-a8vDzG3_CKUPRLmFv9Z3qjqcgAp8vhpBHkGs=EA3o3Zxkg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: spi: renesas,rzv2h-rspi: Document RZ/V2N SoC support
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-spi@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Geert,

Thank you for the review.

On Wed, Nov 26, 2025 at 11:38=E2=80=AFAM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
>
> Hi Prabhakar,
>
> On Tue, 25 Nov 2025 at 22:45, Prabhakar <prabhakar.csengg@gmail.com> wrot=
e:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Document the RSPI controller on the Renesas RZ/V2N SoC. The block is
> > compatible with the RSPI implementation found on the RZ/V2H(P) family.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Thanks for your patch!
>
> > --- a/Documentation/devicetree/bindings/spi/renesas,rzv2h-rspi.yaml
> > +++ b/Documentation/devicetree/bindings/spi/renesas,rzv2h-rspi.yaml
> > @@ -12,6 +12,9 @@ maintainers:
> >  properties:
> >    compatible:
> >      oneOf:
> > +      - items:
> > +          - const: renesas,r9a09g056-rspi # RZ/V2N
> > +          - const: renesas,r9a09g057-rspi
>
> I am a bit intrigued too read that the initial value of the SPI
> Transfer FIFO Status Register indicates 4 empty stages on RZ/V2H,
> and 16 on RZ/V2N, while both variants have a 16-stage FIFO...
>
Both SoC variants report a value of 0x10 for the RSPIm_SPTFSR register.

Rev.1.20 for RZ/V2N mentions, 16-stage
Rev.1.30 for RZ/V2H mentions, 16-stage

> >        - enum:
>
> Please don't bury the enum between two items.  Put it at either the
> top or the bottom of the oneOf list.
>
Ok, I will fix that and send v2. The reason to do this was to keep it
sorted based on the SoC part number.


Cheers,
Prabhakar

> >            - renesas,r9a09g057-rspi # RZ/V2H(P)
> >            - renesas,r9a09g077-rspi # RZ/T2H
>
> For the content added:
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
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

