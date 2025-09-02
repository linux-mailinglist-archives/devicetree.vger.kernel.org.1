Return-Path: <devicetree+bounces-211516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 068B0B3F56C
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 08:25:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 15E811A85912
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 06:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52B8D2E3AF5;
	Tue,  2 Sep 2025 06:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="qK7f/sLn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 841D32E36F4
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 06:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756794298; cv=none; b=fHbkSVWibgSnendz7LeM7OlRAqqeK9pggCEtKIfTrbnJs+aXJFxGQIAQyd2ZN7j87t7z3+xTALBpn28ZMcRqw/D7btROsYyOQta3hyMb0QT16SS9hT/nCP6MhYRdRhWq1Uyyhr7RBJ/sga6o0U8K3qgwTR+t4A5WIdXL3Bom9XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756794298; c=relaxed/simple;
	bh=/X5tvcuJAxWn3JDYkNwSrjpsesfg6FURaUkJpV2ccGw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Kgnmct3yXYMPll7SJ7yul6TWGuuKgknuqmpuhKzh7HJMdeA/ZF1m6zEuqb9De5Ez1Eb8ufny9l4BY0ENbuaCJg4m8ehFp2S3xIyT5CznYsbiWslC0t/O1g79oyIKM0LLK4Wdo64QnRd1jZzEMqCr3oMQWQNhn4ytx/qzV+6ZP9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=qK7f/sLn; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e96eb999262so3710703276.2
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 23:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1756794295; x=1757399095; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T7vWWxNzseg54QZAjivUxxK0pnJ4DlOhxfw0ykDICyI=;
        b=qK7f/sLnPoJeVQTd9FElwAA0Tl0UFyDF1bQ3sZBHacOoeGdsYb4Luai+0J+OTwpbSo
         JzAFychWDM2JZkQ0Fz6jMcEqvhesOXKBgivD7UCxyF0JcaeQxWNqpccxc8fPBCnDGZNH
         9Q68kGAWOAX/oc4yvr7gAi4FcQ/RgA1vot/hg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756794295; x=1757399095;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T7vWWxNzseg54QZAjivUxxK0pnJ4DlOhxfw0ykDICyI=;
        b=bZxhVryrkpj1Gug+v7jZDE1HP+tIdcQFA0GKfyeLwnrVMx62Tda7IIiJux8gakU2m0
         yWn1/qcaDvVMe11kj89VixcDTMYpTR1HDhWm/IKHJ4r6KLoXtWKckwt1LF2yave2TYvX
         BNTmp8tq7zflk4cEmpP46OjMR4z5CQUF7ixB1PhZqRfP4ZmgBStrwcXaBxofP+XDd4yB
         jcLTGF6u8KJs/LNAjN6KlXkMyi5t0DxLaUQ7Os74L93Jo8Btn/dqGCUkc8ybR9Jw+VPe
         J4NPmerLvOhOfzYdsSUPF91Ux84xjXrjiA7qtCA4l5/D95WqAuRKGh/Ll85FRH6GLEHa
         m/rQ==
X-Forwarded-Encrypted: i=1; AJvYcCVuoiPfkpgi1SxOHgesxaPMa/JQ0sQ63LTEsnXh0/9jwcBSAcvFpZLMxZb/LHwZcDQlkYBYlE2VSAqf@vger.kernel.org
X-Gm-Message-State: AOJu0YwtrrEIt/zXxscitO377ZyGf0k2CDCacZdT07TnX0AYm20Qp1XM
	5LQ+wrD32higZPt7ywbGE7FUDQAhvUYpfz4BcDjxCa84020HNHa9f9SYnmq7yHdxaeyvyjNCAXr
	A/pzYYA1PG/HY0V+iwLFZcFm5uI3v03U19/kI8STKTQ==
X-Gm-Gg: ASbGnctMABQALvai68mb2NEeUmzQLWE4jKZhaX8nR718BrYCOslF8WeWXzkvWNF4tFR
	RzVSlM1ygvFGhOMmu75CUbOgrHOe8LWIZ+TbHdljT5JwrAmJI1v5XgHs9WrF+66XhB0PM7tC4nu
	IgPmYSg/3BTvjbJHr88rUge2UUp0rSrgfCc7cj/51FMo3q5ZTD0d5/VlI41Wa45ItFiD4LkkT1r
	cT2T0YreseGARH4
X-Google-Smtp-Source: AGHT+IEC+bhwfIsYKYd4OXHEYbsF24ESl19VnrU0Lm+wzyoJZpbOTOeMhCWWexm/yC9IvNQdZvyYLuGaB9Amv1jSkRs=
X-Received: by 2002:a05:6902:e03:b0:e96:ec6a:26c7 with SMTP id
 3f1490d57ef6-e98a567eea7mr11493602276.0.1756794295489; Mon, 01 Sep 2025
 23:24:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250722103706.3440777-1-dario.binacchi@amarulasolutions.com>
 <20250722103706.3440777-3-dario.binacchi@amarulasolutions.com>
 <20250723050319.GA1239529-robh@kernel.org> <CABGWkvpWPXz8bFPC3OgqY+C6cgu6hHGh6muCQkoCOEVK048fSA@mail.gmail.com>
In-Reply-To: <CABGWkvpWPXz8bFPC3OgqY+C6cgu6hHGh6muCQkoCOEVK048fSA@mail.gmail.com>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Tue, 2 Sep 2025 08:24:44 +0200
X-Gm-Features: Ac12FXxEccgAI8M5f9oOb9ii1ya7raF_SCejPp9-Hl3t92BIFWLzJIdX2D6ZhXo
Message-ID: <CABGWkvqazpyra=n5Jswon576pGG7yEOQg=_qdpTM+X6WmHP43g@mail.gmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: input: touchscreen: fsl,imx6ul-tsc: add fsl,glitch-threshold
To: Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Conor Dooley <conor+dt@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Fabio Estevam <festevam@gmail.com>, Haibo Chen <haibo.chen@nxp.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-input@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Rob,

just a gentle ping =E2=80=94 I=E2=80=99ve replied to your comments on this =
patch, but
I haven=E2=80=99t seen any further feedback.

Thanks and regards,
Dario

On Wed, Jul 23, 2025 at 8:25=E2=80=AFAM Dario Binacchi
<dario.binacchi@amarulasolutions.com> wrote:
>
> On Wed, Jul 23, 2025 at 7:03=E2=80=AFAM Rob Herring <robh@kernel.org> wro=
te:
> >
> > On Tue, Jul 22, 2025 at 12:36:16PM +0200, Dario Binacchi wrote:
> > > Add support for glitch threshold configuration. A detected signal is =
valid
> > > only if it lasts longer than the set threshold; otherwise, it is rega=
rded
> > > as a glitch.
> > >
> > > Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> > > ---
> > >
> > >  .../input/touchscreen/fsl,imx6ul-tsc.yaml      | 18 ++++++++++++++++=
++
> > >  1 file changed, 18 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/input/touchscreen/fsl,=
imx6ul-tsc.yaml b/Documentation/devicetree/bindings/input/touchscreen/fsl,i=
mx6ul-tsc.yaml
> > > index 678756ad0f92..2fee2940213f 100644
> > > --- a/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-=
tsc.yaml
> > > +++ b/Documentation/devicetree/bindings/input/touchscreen/fsl,imx6ul-=
tsc.yaml
> > > @@ -62,6 +62,23 @@ properties:
> > >      description: Number of data samples which are averaged for each =
read.
> > >      enum: [ 1, 4, 8, 16, 32 ]
> > >
> > > +  fsl,glitch-threshold:
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > +    default: 0
> > > +    enum: [ 0, 1, 2, 3 ]
> > > +    description: |
> > > +      Indicates the glitch threshold. The threshold is defined by nu=
mber
> > > +      of clock cycles. A detect signal is only valid if it is exist =
longer
> > > +      than threshold; otherwise, it is regarded as a glitch.
> > > +      0: Normal function: 8191 clock cycles
> > > +         Low power mode: 9 clock cycles
> > > +      1: Normal function: 4095 clock cycles
> > > +         Low power mode: 7 clock cycles
> > > +      2: Normal function: 2047 clock cycles
> > > +         Low power mode: 5 clock cycles
> > > +      3: Normal function: 1023 clock cycles
> > > +         Low power mode: 3 clock cycles
> >
> > Don't we have common properties for this expressed in time? Debounce
> > time IIRC.
>
> I tried checking in
> Documentation/devicetree/bindings/input/touchscreen/touchscreen.yaml,
> but I didn't find anything about it.
>
> It exists in some specific touchscreen bindings:
> - azoteq,iqs7211.yaml
> - brcm,iproc-touchscreen.txt
> - fsl-mx25-tcq.txt,
> - ti,ads7843.yaml.
>
> Only fsl-mx25-tcq.txt expresses it in terms of time (ns).
>
> Thanks and regards,
> Dario
>
> >
> > > +
> > >  required:
> > >    - compatible
> > >    - reg
> > > @@ -94,4 +111,5 @@ examples:
> > >          measure-delay-time =3D <0xfff>;
> > >          pre-charge-time =3D <0xffff>;
> > >          touchscreen-average-samples =3D <32>;
> > > +        fsl,glitch-threshold =3D <2>;
> > >      };
> > > --
> > > 2.43.0
> > >
>
>
>
> --
>
> Dario Binacchi
>
> Senior Embedded Linux Developer
>
> dario.binacchi@amarulasolutions.com
>
> __________________________________
>
>
> Amarula Solutions SRL
>
> Via Le Canevare 30, 31100 Treviso, Veneto, IT
>
> T. +39 042 243 5310
> info@amarulasolutions.com
>
> www.amarulasolutions.com



--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com

