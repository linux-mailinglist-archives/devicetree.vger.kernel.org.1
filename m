Return-Path: <devicetree+bounces-27753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A799C81B94E
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 15:08:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 473E91F28F40
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 14:08:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAB656D6D0;
	Thu, 21 Dec 2023 14:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="VwVRVV2U"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF546D6C4
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 14:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id D6DB73F73A
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 14:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1703167658;
	bh=YSFGFVOxlECeWrb1201TBHQMqNul2EH+RYRBpW3Owdk=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=VwVRVV2UVwXjf8JlJDzV3fN24W/UzOytMCEbJrXi7MlRdL8UvxWG8XKQCNiRX2IEu
	 LXuDXj4OhJql4WQkiytPmQ+ZYvYYBIxnB7cYN6aB13g9cHm5yHZL0bNiU9vobyeWlD
	 RXtbFcpaEEbrt9gJOvYAaTGiYpFwyn+m1wyagzV/vQy5usCyIa2S3QLLJ+pifiAlDw
	 yQeyPdjUDeoJvFWrSHFWC9FOHgZ11pPWDUVKyXkwMp9H+A5+Hgu2JAqB/KVPbZn2+d
	 qxlm8NiaSF/J+KKi6/nG8cZ8m9WPjY3/KNZnxG/F2jF2Iw84lp8pnZ090oI9pCzo5+
	 w5hAHPGJJA/Ug==
Received: by mail-lf1-f71.google.com with SMTP id 2adb3069b0e04-50e40d1a6fbso707783e87.3
        for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 06:07:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703167658; x=1703772458;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:references:in-reply-to:from:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YSFGFVOxlECeWrb1201TBHQMqNul2EH+RYRBpW3Owdk=;
        b=anluzK+Pthfgvd4/T/H0dDt0ZFO51OhexnOjl8urOFk5kdDyKvHO+5DmGTGPP5BY4H
         gMzPctI27OLv3oyen+Gz+g5Gjmxi33KxbWbjVQ4ZQDORE6YP6qNoY7htGjPOlBgKI/VF
         rJUTSWp42Lgqc3dxGmJzRXsizi1TTNyc0IqBbWwhmxIFmfjzjXh819BAmGAsP2xCxhvz
         cPFc4YBBvU/21q3LbcUkNVr0l7Wi7zcHJ1XFL5UpH4gswZPTv6k0H1w9y7nujOJtAXBT
         GvExRekIRcr4QE4HTl3oH+X2szoXO5K0U5Urkt2LXj7ItsN2O+xin0pcMC4g4O/8x06j
         IxTg==
X-Gm-Message-State: AOJu0YymRbHv1UHGGE/B8STmQdtMPzdsIYtZbLoVzmlCIAHofLY8BxOs
	Ge+dBLleFm2gS18LgJKosVCBb5ej1BKElRF7Ejukd/n8RlQFsTYmZg8hHi2uMmEEUypvG57My0Z
	tDj84ljGAVgphkMsM8tIYXHkAfb8otXrA58nm8zpwfBpBEP3fpMnPyoc=
X-Received: by 2002:ac2:5617:0:b0:50e:29c1:f829 with SMTP id v23-20020ac25617000000b0050e29c1f829mr3635672lfd.74.1703167658228;
        Thu, 21 Dec 2023 06:07:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGplfpPbW0FT9ATmbiZqm1++et4V4L718raZzPodJBABIbwHrAdrNT6mNWONQxZ+jsDmjLpy/oSnYqjsp61ks4=
X-Received: by 2002:ac2:5617:0:b0:50e:29c1:f829 with SMTP id
 v23-20020ac25617000000b0050e29c1f829mr3635656lfd.74.1703167657892; Thu, 21
 Dec 2023 06:07:37 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 21 Dec 2023 09:07:36 -0500
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <CACRpkdbx7BOoHzbGd6n5p=Ho3GhMcujwUzQam0jLe6Ysg+xsNg@mail.gmail.com>
References: <20231215143906.3651122-1-emil.renner.berthing@canonical.com>
 <20231215143906.3651122-2-emil.renner.berthing@canonical.com>
 <20231215202137.GA317624-robh@kernel.org> <CAJM55Z9pBpYfwpxPH7bUumuosVDn9DHLSBngW6CtG7aK_z+_bQ@mail.gmail.com>
 <CACRpkdYT+jf4=dk3Y9cwa_=aYCihVq93N-iT0RUbtT2-+PX69w@mail.gmail.com>
 <CAJM55Z8osSFxKi_7=aRkEr+U3vAq0TS93OggnRzyPpssNuuJ3Q@mail.gmail.com> <CACRpkdbx7BOoHzbGd6n5p=Ho3GhMcujwUzQam0jLe6Ysg+xsNg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Thu, 21 Dec 2023 09:07:36 -0500
Message-ID: <CAJM55Z8SwyNEqw4HWRd7G8Y9rdtOGtKy-KbzDorqohdK3nZg0A@mail.gmail.com>
Subject: Re: [PATCH v1 1/8] dt-bindings: pinctrl: Add thead,th1520-pinctrl bindings
To: Linus Walleij <linus.walleij@linaro.org>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: Rob Herring <robh@kernel.org>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	Hoan Tran <hoan@os.amperecomputing.com>, Serge Semin <fancer.lancer@gmail.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Linus Walleij wrote:
> On Thu, Dec 21, 2023 at 1:28=E2=80=AFPM Emil Renner Berthing
> <emil.renner.berthing@canonical.com> wrote:
> > Linus Walleij wrote:
> > > On Sat, Dec 16, 2023 at 2:57=E2=80=AFPM Emil Renner Berthing
> > > <emil.renner.berthing@canonical.com> wrote:
> > >
> > > > > > +          thead,strong-pull-up:
> > > > > > +            oneOf:
> > > > > > +              - type: boolean
> > > > > > +              - $ref: /schemas/types.yaml#/definitions/uint32
> > > > > > +                enum: [ 0, 2100 ]
> > > > > > +            description: Enable or disable strong 2.1kOhm pull=
-up.
> > > > >
> > > > > bias-pull-up can already specify the strength in Ohms.
> > > >
> > > > The strong pull up is a separate bit that can be enabled independen=
tly from the
> > > > regular pull-up/down, so in theory you could enable both the regula=
r pull-up
> > > > and the strong pull-up at the same time, or even the regular poll-d=
own and the
> > > > strong pull-up which is probably not advised.
> > >
> > > bias-pull-up; <- Just regular pulling up the ordinary
> > > bias-pull-up =3D <100>; <- Same thing if the ordinary is 100 Ohm (fig=
ure out what
> > >   resistance it actually is....)
> > > bias-pull-up =3D <21000000>; <- strong pull up
> > > bias-pull-up =3D <21000100>; <- both at the same time
> >
> > Hmm.. the two pull-ups combined would be a stronger pull-up, eg. lower
> > resistance, right? So you'd need to calculate it using
> > https://en.wikipedia.org/wiki/Series_and_parallel_circuits#Resistance_u=
nits_2
>
> Yeah hehe elementary electronics beats me, of course it is in parallel.
>
> > The problem is that the documentation doesn't actually mention what wil=
l happen
> > if you combine the strong pull-up with the regular bias.
>
> So why even allow it then?
>
> Do the people designing boards using this have better documentation than =
what
> you have? Then either get that documentation or just don't give them
> too much rope.

We can certainly prevent Linux from ever combining the strong pull-up with =
the
regular bias, but that doesn't mean that the vendor u-boot can't find a use=
 for
it and might hand over pins in such states Linux then wouldn't know how to
handle.

If you think its better we could just postpone that problem to when/if it e=
ver
happens.

