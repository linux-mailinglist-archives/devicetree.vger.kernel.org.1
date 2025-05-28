Return-Path: <devicetree+bounces-181212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39689AC6967
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 14:36:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 371003B594E
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 12:35:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC1322857E4;
	Wed, 28 May 2025 12:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Aw5z0QSc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502F0284B25
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 12:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748435765; cv=none; b=nZPKZr6rGjQODg/Zou+fVkbhn05GlMx5twyi8b3WAifkxK0DqGSv0JmhWe5o6h12AUHnXvKfMxnbbx1pi3PUoxup9zMng0cMOZm94pSAtnLpKzM+d7GNq70qmkzXquQUGV5ANhfpVd+PiQ1Ky3Rp0bxRP9mzHglpeEdnQE0xp4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748435765; c=relaxed/simple;
	bh=ZhZaCx9zTAfydyiSk7i4+D3+796XUnIpYm5sDEhibbk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=T08A0Gols8vl40laDL4xTIZX0//Chgz/Po+zbmfR6qxu4OttU7IF+QduPMQFX4u6rzXHJpmTaUWH50F3X2DhqL7H3Zt7ZS4p3qEMMm9DNBGVMmmbBxfSbwFOqpRud3fDoPfPFM/RqfGt6KjMato78uL+CTVXvQJnW0sv5STGZf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Aw5z0QSc; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e7db6aaef22so2067521276.0
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 05:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1748435762; x=1749040562; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Y2nJxgpLq/4ajBXNTSM9IN0ALNLXkV13ENJ/HewBaA=;
        b=Aw5z0QScH2LZafG66RDOljRoUaAq3gM2OGOhltff6mdMqOcuOnMSWCUlynnyhMgIuJ
         5b1tw5VPsBBnx9y6VuyEP11jkrnw3qEw5w+Hq1f1zfKnIV25G/syGnXvXU0dxY6skkTM
         5ND+vGAOKxH8ow6b/tZePm03QG6KbXxsZJVkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748435762; x=1749040562;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2Y2nJxgpLq/4ajBXNTSM9IN0ALNLXkV13ENJ/HewBaA=;
        b=ZPvZlaDaR5nLvZ1ceiqGdIsUOTK8iyvzc0mbJi1hEeSCkS8xYjnFdUvOZSrs5ihiRR
         GdKsDJER+TUNXZggNoor513Zr7134/VMricbSaCO4YvSyW2oNzJl49Jfrwg48fkYs87a
         fsxOfUR1BSrzZ6mVU7vye8LqzyCsz2XSisjHXXIlN0neO1jTWtI985LYgnBVx7cX3kGz
         Ez2ifDOtMyLA+oM4hvn9bU1evIUKrdrv2Z5ruGpNjefzZfNtkrfVkRntYVaTWVtCfLEd
         gSroylwudLYkQlyil1rjItJEqslFoqaOdt/1CFGTQurZEOaekQBztsmLe8IVwrFgn+uN
         Pyqw==
X-Forwarded-Encrypted: i=1; AJvYcCWx1jCDY4q+U4ypAA+FKUofl3sr6VtJG9lpcmwGL/aevLv3a9wat7pcKBwdBNTDCOzi3ryIQmeLcURc@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3WAZs+40Hi03pZMrjfvNE2qjEev0NtJp1+XvyhTz6eDFTSNxT
	t+wK6W606E9CvOsw4/+LZtonolKgkjD4TRKiPi1aTEODiP/8DqwU8PP9Wy15nYp7KPf+ShrpzIf
	hvPZNx156OPpQo38vVAatY8CmLoSnXaMWH77hVvYQlA==
X-Gm-Gg: ASbGnctZYTzVJu5YjG44MCrt6Mmw1Xga8jdggbWTyMCtvhCVC6gpTlfw0wevG+TOvjb
	yTLREBmO1rzYqkV6zCsfu5EunEPS8dVGckBGYyPlZyUhTBApDljrgHEw+FshYyB89k+XCC7DT1C
	uHYsgLlYSKZEqf8BIGuEPCpjwkOFDnGEhAYHyZMeUkfkwaaFucA0n+mwaEMZ6GGztTBg==
X-Google-Smtp-Source: AGHT+IHBh35vbTwgJCVmI6qYBeU0Sp2Wx1M+Pq2Rp63W3aCe0f9Vwlcw2TxiYl89UFgJ0Ni/gNn9cRNUEGm7TvbhuTg=
X-Received: by 2002:a05:6902:20c8:b0:e7d:8a63:1a2a with SMTP id
 3f1490d57ef6-e7d919b04c6mr18500419276.25.1748435762006; Wed, 28 May 2025
 05:36:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250528121306.1464830-1-dario.binacchi@amarulasolutions.com>
 <20250528121306.1464830-5-dario.binacchi@amarulasolutions.com> <20250528-toucanet-of-utter-conversion-2bb1c7-mkl@pengutronix.de>
In-Reply-To: <20250528-toucanet-of-utter-conversion-2bb1c7-mkl@pengutronix.de>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Wed, 28 May 2025 14:35:49 +0200
X-Gm-Features: AX0GCFsWpbnRJlmj0FdLliCaul8VD_OZHEgOqPPNi4PhesFCouLSLcxJegiNFSU
Message-ID: <CABGWkvqAy+-mjhXFKc9dkeJnZKLKuC23=Dmn3axJx_1+5fLWSw@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] ARM: dts: mxs: support i.MX28 Amarula rmm board
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-amarula@amarulasolutions.com, Sascha Hauer <s.hauer@pengutronix.de>, 
	imx@lists.linux.dev, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Shawn Guo <shawnguo@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, michael@amarulasolutions.com, 
	Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 28, 2025 at 2:21=E2=80=AFPM Marc Kleine-Budde <mkl@pengutronix.=
de> wrote:
>
> On 28.05.2025 14:11:41, Dario Binacchi wrote:
> > The board includes the following resources:
> >  - 256 Mbytes NAND Flash
> >  - 128 Mbytes DRAM DDR2
> >  - CAN
> >  - USB 2.0 high-speed/full-speed
> >  - Ethernet MAC
> >
> > Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
>
> [...]
>
> > +     reg_3v3: regulator-3v3 {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "3v3";
> > +             regulator-min-microvolt =3D <3300000>;
> > +             regulator-max-microvolt =3D <3300000>;
> > +             regulator-always-on;
> > +     };
>
> [...]
>
> > +&can0 {
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&can0_pins_a>;
> > +     xceiver-supply =3D <&reg_3v3>;
>
> The xceiver-supply "reg_3v3" is an always fixed regulator, that doesn't
> switch a GPIO, so IMHO, you can remove it. Saves a bit of runtime mem.

Yes, you're right.
Removed and verified.
It works.

Thanks and regards,
Dario

>
> > +     status =3D "okay";
> > +};
>
> regards,
> Marc
>
> --
> Pengutronix e.K.                 | Marc Kleine-Budde          |
> Embedded Linux                   | https://www.pengutronix.de |
> Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
> Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |



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

