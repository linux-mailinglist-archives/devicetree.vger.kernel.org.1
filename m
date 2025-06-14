Return-Path: <devicetree+bounces-185874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E86BAAD9A45
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 07:47:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 87A14175C8B
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 05:47:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 893581BD9C1;
	Sat, 14 Jun 2025 05:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="neVctJNt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B249D145323
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 05:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749880058; cv=none; b=f28n8H1ooy1jCskrJp2JIqGrid+qGnvThO4wWv28dt1l0HUbuC/FO0BpAXs9itzT/sgUgOIOeUQp8YjXJ3GHW2s8a5k2dazKzrtHpucXOEKdJkRfYsf/gDPMbmIc/HJfAr0/vA8XSfDBLjoJ/QuTZq7OcR8jB+lf9fWz1NVOVQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749880058; c=relaxed/simple;
	bh=twjCULnPvQktgkULV3W0goFjMuAZQGsgGQpq9q8v3VI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uF8Pt4R3WOl1jZlG9DM4nXaTe3TEoCcByhy5Djq3UwwucxjaQAK/jRE13UiW9BfR0TFg1wG4QKqWv4KQyFAuI/gLxgxdRAtTC9ApaHZBa5qGpabGgjHSNT8RkTV5R1rALoDht9Ykmc7FoHEJ6OUqGRSluq3/2wzneSgkwGRIPHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=neVctJNt; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e733e25bfc7so2449902276.3
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 22:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1749880055; x=1750484855; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5TA4UKVMC4ezArEziyUXtjtORC3a3PiIS1vEVR8IM9k=;
        b=neVctJNtWovVy717yY57dB9BZQpZLCxEGdyd5gVqTf09FsU3+f8oSWWG4ayaiAjHSr
         BjUPrc/V5NKnAFfIxL5aZecE+il9LgcbFOM7YvR2xNaVmSI1ayVa42uJWIEdd3xahZup
         yDkWgnHtbTFstRH0oiEZ20aXiZm2zbILKaw10mlBHc2hgHLE7KFMQquPk1kXEhkerZv+
         k0dQJRyCimN7HRye4ez0Ndj30W++H2kgBpPWBeKCgyAgC8olQRIJIWdnxQym7CLM+Wo4
         GujbgBKlWWn4PtUzM+qu30coi1dnTcNbnjs0cUAQsA4VATkB+Q8hXQoDd5WDiL1JM/Pm
         8l/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749880055; x=1750484855;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5TA4UKVMC4ezArEziyUXtjtORC3a3PiIS1vEVR8IM9k=;
        b=nNTE7/ufVXkF58Y1mRxzBF49rhlL7LmAlqoL/Uhonq3FDwhznJITZqsiNCUDGaGN3C
         EV47mRYCE7lnyZC412F9LkoxsaleBfPiH3jDz3b8pgMn1cE3WjmhIjDVujyGbhkbQn/R
         3a6xq+CCAGdnnkVAU5D7SV6fNDF1GB9pguCQSzEm22TICA/+7szSlZgC670oC4TDnBsV
         Q27AOR+SbRHcVwNvV+Zu5PsI6Ev1Q12TSfylshVn9X2oa1BRrok16R7npdUxTFLVfCYd
         6CJzbtaLB5qoRu70bVftq+u1DPj/VobLPkLKzXJHt3jkKgQgSd5c84OsmnCFoAK0vZV4
         1SdA==
X-Forwarded-Encrypted: i=1; AJvYcCVtxpw1dM3MIhgCBOqXDrHWj0OpPPjuWk6GFQCTVBHWfXpt5EMWWKfC6AZEkqI7WqKbAWJ9aaVFK32I@vger.kernel.org
X-Gm-Message-State: AOJu0YywOkfWObf3QPKPAG+v0CO1Mk2C79exoXhuYWY5eVI6SKzpTAjF
	J4ckVdQZNoSprjlSXG+xiolz8hElb8GsOwZU3OzcVrVwSwUrxRFyvZv+TuQs9K/pD4BbL9E7jPr
	hWUDrtN8Ciq8ngtiu3yYotdhqb77oYJPBQs5VaaApaw==
X-Gm-Gg: ASbGncvBMqlbZLzYbaE2svZDL90cie09jH1XMBMuQpb2O0yfkdDjPo42ji+pSqB7XQM
	vstpb487c9CQbqZaz3qh2rEe/rHPjgXnWPKBxahFfODxOcxe/HhakwmKpCYxPav2yZKOz05v1Vs
	EuwuUFieMH82cCGu79xFU0CJ+lASW5q83FEc6iprj7VKpuOlqgbOsjqDdkWY6D1/ybA1IohguY
X-Google-Smtp-Source: AGHT+IHYodyjiM1Rq5dBubcbh//Kx4bZI+F7RlU40sn6k0qbQp16p7c2uNfn8MQb7bq0VYmrJCTS+K2IUg/14hV1R9A=
X-Received: by 2002:a05:6902:18d5:b0:e81:de2b:97c8 with SMTP id
 3f1490d57ef6-e822acc6a28mr3354610276.13.1749880055265; Fri, 13 Jun 2025
 22:47:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250611194716.302126-1-ezra@easyb.ch> <20250611194716.302126-2-ezra@easyb.ch>
 <e2ffca36-d2ed-4253-86a6-a990e7931ba0@kernel.org> <CAM1KZSkcc8wh7yuJ-26ASKSehjWfD_QGs0JrKOWm+WMfXiY+DA@mail.gmail.com>
 <9a23e0e5-f48c-41a9-8e15-69cdfbc7eca2@kernel.org> <CAM1KZSkKUYcsx_gpvtEaz7hoT-KfJmQ0xHeFYEGMSZ7FEBDyjA@mail.gmail.com>
 <2ca2da8f-92b9-475f-aa41-bd54a95bfc69@kernel.org> <CAM1KZSmLwLopU8rVrPS+wFqAGZn-7LdsikEg6p2f93EiK9_2_Q@mail.gmail.com>
 <864cd33e-94d4-4ceb-a8dd-1b525f7bbf26@kernel.org> <CAM1KZSnAKee2UvGbNwaAq7cevpRcnFiCYixHHneafbDRH9+uyw@mail.gmail.com>
 <CAMhs-H9zna3TV5SvQw9SGvfvdGRJiwkhGa-s3OKvMqtXp9OEcQ@mail.gmail.com>
In-Reply-To: <CAMhs-H9zna3TV5SvQw9SGvfvdGRJiwkhGa-s3OKvMqtXp9OEcQ@mail.gmail.com>
From: Ezra Buehler <ezra@easyb.ch>
Date: Sat, 14 Jun 2025 07:46:58 +0200
X-Gm-Features: AX0GCFtERy2lj0NVnIJXRdF-x14drqB5Na3f9P2MNi6AvT8QWsUmhu68SBvLRnk
Message-ID: <CAM1KZSkwBf42YEJOrEv1dErt_8dj=njBWvU2Dd5jaGfUwz5=RA@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] MIPS: dts: ralink: mt7628a: Fix sysc's compatible
 property for MT7688
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-mips@vger.kernel.org, 
	Conor Dooley <conor+dt@kernel.org>, Harvey Hunt <harveyhuntnexus@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Reto Schneider <reto.schneider@husqvarnagroup.com>, 
	Rob Herring <robh@kernel.org>, Stefan Roese <sr@denx.de>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, devicetree@vger.kernel.org, 
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 14, 2025 at 7:01=E2=80=AFAM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> Hi Ezra,
>
> On Fri, Jun 13, 2025 at 7:40=E2=80=AFPM Ezra Buehler <ezra@easyb.ch> wrot=
e:
> >
> > On Fri, Jun 13, 2025 at 3:13=E2=80=AFPM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> > > On 13/06/2025 14:56, Ezra Buehler wrote:
> > > > On Fri, Jun 13, 2025 at 2:41=E2=80=AFPM Krzysztof Kozlowski <krzk@k=
ernel.org> wrote:
> > > >> That's not a binding, but driver, so obviously it is fine since yo=
u are
> > > >> not removing it from bindings.
> > > >
> > > > And, if we also remove all occurrences of "ralink,mt7688-sysc" from=
 the
> > > > code, as it is not needed from a technical standpoint, can we remov=
e it
> > > > from mediatek,mtmips-sysc.yaml or is there no going back?
> > > But it is needed. MT7688 needs it to fulfill the DT bindings requirem=
ent
> > > (see writing bindings): specific compatible.
> >
> > I see. In that case, it seems to me that the only reasonable solution i=
s
> > to adapt the bindings (mediatek,mtmips-sysc.yaml) and go forward with
> > the initial patch.
>
> Compatibles in ralink are a bit messy historically since there are
> platforms that are pretty similar and were developed before having
> proper bindings mainlined, For example, as you said, mt7628 and mt7688
> are pretty similar but having wildcard mt76x8 was not an option since
> specific compatibles are mandatory, so I ended introducing also the
> mt7688-sysc in bindings to match MT762X_SOC_MT7688 type [0].
>
> I have checked also openWRT tree and I think just modifying clk.c [1]
> returning the expected sysc would be a valid and functional approach:
>
>  diff --git a/arch/mips/ralink/clk.c b/arch/mips/ralink/clk.c
>  index 9db73fcac522..7ce9acec3a01 100644
>  --- a/arch/mips/ralink/clk.c
>  +++ b/arch/mips/ralink/clk.c
>  @@ -48,11 +48,9 @@ static const char *clk_cpu(int *idx)
>                  *idx =3D 2;
>                   return "ralink,mt7620-sysc";
>           case MT762X_SOC_MT7628AN:
>                   *idx =3D 1;
>                   return "ralink,mt7628-sysc";
>          case MT762X_SOC_MT7688:
>                  *idx =3D 1;
>  -               return "ralink,mt7688-sysc";
>  +               return "ralink,mt7628-sysc";
>          default:
>                  *idx =3D -1;
>                  return "invalid";
>
> Since you are not touching bindings at all but driver code, it should be =
ok.
>

The issue I see here is that if someone decides to put

compatible =3D "ralink,mt7688-sysc", "syscon";

into their DT, which seems very reasonable, the system will not boot.
Therefore, I would not go with that change unless one removes support
for ralink,mt7688-sysc all together.

Cheers,
Ezra.

