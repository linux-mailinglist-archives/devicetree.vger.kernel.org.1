Return-Path: <devicetree+bounces-252013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 795D0CF9E60
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 18:59:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 98F4E32BA8D0
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 17:46:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3A3633C50A;
	Tue,  6 Jan 2026 17:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HA1WiDHb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1793733985B
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 17:26:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767720409; cv=none; b=Jk4ZwafErqZyh6btZcyWqcIllFUgA8S8WnAYpEgfUA6XFaKm70MXaw42UJ/GLReyEqhYd9NyYdQCszD1jq/msvTCFRXnwUac1dbsl9U9IIHRhHEOpY472rErvsMOsWStVOsQu+3QMddc2DpsPyPe6uhdefWb+b90pjRbw6aN81w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767720409; c=relaxed/simple;
	bh=jIERsNeLWsCMRsQUhVUyTdjFaVz1btYgxR4tH7uHWbs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oTJ3iz8Y9Aute9yO9QUOig4Rxd91p1L5AsGSxuEi3Kd7p9W9bhms/ugSEE9+V32iyRtWTN9pArWxs7sU0GEkxes0GGqEswX3SQ99WE5FUI0VBU2sPOs2sUf2l3jhGFdBca1svyZi15VBjYIc5SytutynoHWxiQu8Mzk6Mi8PykY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HA1WiDHb; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4779ce2a624so10119955e9.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 09:26:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767720405; x=1768325205; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2pMHpVSuzSyUl3NaYsDNZbwWy9/z4ne3LRaPNYd9gtY=;
        b=HA1WiDHblkzmbBh+R3ra8Vi0u3Y+Hl7+/3c0w1xec3HDYnK/dh35FFm9ns9faoksmB
         pvhLb2DEYD1yfJThms691VLJAN+tmwllhkkRuGFxQad44rO3kd3WiNB0YcGP8HAkLout
         gBBp+ZiSCSLoDz61BiUbwdWnbu7ur6269vecvNBUNuLZuLrqVbgQsSehVunl0xeVNkAA
         0yzRf2tBrZPtRM1I31NrkWZXnWpnDFVAO1cBLwcD5jEokR1E8g2xaGNkFWhhuPh4/ozJ
         sO/XI/uWOduQx0C4LB/LS5ODbLaIIipekDBdIcRCn1SIwgyg3l2ED8mIoYeLbqJf02nG
         HoDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767720405; x=1768325205;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2pMHpVSuzSyUl3NaYsDNZbwWy9/z4ne3LRaPNYd9gtY=;
        b=CqTPk+MvOmY06Hh2BDDrKShGBMnKL0XIQl0qsKQiX/T2p8lsnurU5coyQxirZEJPMS
         4sVTWorFyIVuY2kFbBslTaJpFL8NlxpmQkOhbdOXvOh8X4jzfyOt+2OSNtc7nOXhSwnp
         3Fyjf/lnBYpB4dxJHkcYlxLRW+yDmtOWG5KXyaa9WtKrsRtJQnsS633bDAKh2qhyyAwU
         tmWF2MTr65sPgQsNoHhn439RgYyrU/MTYhx6I8lLeXCZvACwWfQ/9/4XQmMoKP1eQdys
         jNmdy8hXfOyyB79nHqta/P+enTIxG76oxSnxUUuY6DfSCxAUtge9K3YEI6LPlO8O5Ezp
         d/Qg==
X-Forwarded-Encrypted: i=1; AJvYcCWjpdZT7ttgmjCqlfDVsAtKy+iQ3n3NQz20ZLNbSELqQo7cC2hynm87rkodlBmQ9sNYlMCevE5fens+@vger.kernel.org
X-Gm-Message-State: AOJu0YwSvfy5H4JIIXN09dVmtmUGtCE0084ss/vXUIYT3av8UDy0RuOv
	DckGHeY22rxJu4nbyWtZOJfWZZsNpx94YHbyppxJf+lkfZqBWCbtKsUBiLDtxXkR7Pe1eS7s1AB
	XO1L5OcocHLe0sc3O1qCaeAVyw+Tbdxg=
X-Gm-Gg: AY/fxX78qBBEAyjcX6AZx+D4gVvZMHRbGdYB3wuIhmXLAxUpAVvq/spA6zkZiQeK17e
	HjwiI7f6l61D5Aw3l5fZOTRZ0BKhWna7+P1Dm9Mb56uBY++J3GPCTK0MHcejcT62u80oIeLHfTO
	6KgPD1Plun937xBplLVNG5gUVASm9ChOMOUls2PkNmHPX1w8edUT0FDSWrdopa92SbC2Q5RE4uQ
	8Iy7DhNyiV9ChXWtzZZyb5gzeE/vcqJrN5lvPLODEWh4rbq6Z6jtT69AySzq/pv0TLJiP+d9U+i
	+oOehHy8L8AfWB4+r4M4tCNn3jsPwQAGxsf4J2CMca8JeKYzDnNw5z7h9VNr5xa6ItbM+400Nq1
	jEPYXRXfR97Eq1lVzDEvacO4=
X-Google-Smtp-Source: AGHT+IE8gvKCbSJq1z8Cd0vdaqEHelQJRB7VUwu1Y6OV1SxZq84Rtw9xQvuGr69PPYzoTYxNGWtVKyAC81y0wEosCQQ=
X-Received: by 2002:a05:600c:154c:b0:477:6374:6347 with SMTP id
 5b1f17b1804b1-47d7f098beamr41642405e9.22.1767720405159; Tue, 06 Jan 2026
 09:26:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251230115814.53536-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251230115814.53536-4-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260102-petite-gentle-wasp-81bbb8@quoll>
In-Reply-To: <20260102-petite-gentle-wasp-81bbb8@quoll>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 6 Jan 2026 17:26:19 +0000
X-Gm-Features: AQt7F2oLYuXOHzsB0MroBEn6dGAE93yUvo9CAwzUHg627WTSLy-aKKnPg1k6phQ
Message-ID: <CA+V-a8sryz1f_woi_r8jx_4x7TczrWPyjZoo+P9p=tG8KyK8YA@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: can: renesas,rcar-canfd: Document
 RZ/T2H and RZ/N2H SoCs
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-can@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

Thank you for the review.

On Fri, Jan 2, 2026 at 11:20=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Tue, Dec 30, 2025 at 11:58:13AM +0000, Prabhakar wrote:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Document the CAN-FD controller used on the RZ/T2H and RZ/N2H SoCs. The
> > CAN-FD IP is largely compatible with the R-Car Gen4 block, but differs
> > in that AFLPN and CFTML are different, there is no reset line for the I=
P,
> > and it only supports two channels.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> > v1->v2:
> > - No changes made.
> > ---
> >  .../bindings/net/can/renesas,rcar-canfd.yaml  | 26 ++++++++++++++++++-
> >  1 file changed, 25 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/net/can/renesas,rcar-can=
fd.yaml b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
> > index fb709cfd26d7..4a83e9e34d67 100644
> > --- a/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
> > +++ b/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml
> > @@ -50,6 +50,12 @@ properties:
> >                - renesas,r9a09g057-canfd     # RZ/V2H(P)
> >            - const: renesas,r9a09g047-canfd
> >
> > +      - const: renesas,r9a09g077-canfd      # RZ/T2H
>
>
> That's part of other enum with single compatibles.
>
There is no enum with single compatibles as of in next [0], there is
only one compatible `renesas,r9a09g047-canfd`. I can club this with
RZ/T2H one.

[0] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tre=
e/Documentation/devicetree/bindings/net/can/renesas,rcar-canfd.yaml?h=3Dnex=
t-20260106

> > +
> > +      - items:
> > +          - const: renesas,r9a09g087-canfd  # RZ/N2H
> > +          - const: renesas,r9a09g077-canfd
> > +
> >    reg:
> >      maxItems: 1
> >
> > @@ -179,7 +185,6 @@ required:
> >    - clocks
> >    - clock-names
> >    - power-domains
> > -  - resets
> >    - assigned-clocks
> >    - assigned-clock-rates
> >    - channel0
> > @@ -243,11 +248,30 @@ allOf:
> >            minItems: 2
> >            maxItems: 2
> >
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: renesas,r9a09g077-canfd
> > +    then:
> > +      properties:
> > +        interrupts:
> > +          maxItems: 8
> > +
> > +        interrupt-names:
> > +          maxItems: 8
> > +
> > +        resets: false
> > +    else:
> > +      required:
> > +        - resets
>
> Why is this de-synced with reset-names? Properties are supposed to
> behave the same way, not once requiring resets other time requiring
> reset-names.
>
There are SoCs that have a single reset and others that require two
resets. For SoCs that require two resets, the reset-names property is
marked as required, while for SoCs with a single reset it is not.
Apart from the RZ/T2H SoC, all SoCs have either one or two resets.
This difference is why the properties became de-synced. Let me know if
this can be handled differently.

Cheers,
Prabhakar

