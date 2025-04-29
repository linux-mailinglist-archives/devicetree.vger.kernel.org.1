Return-Path: <devicetree+bounces-171706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BBFA9FE82
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 02:42:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 24F8B46547A
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 00:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6655F1CA84;
	Tue, 29 Apr 2025 00:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="ESCsPAjd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B5EEACE
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 00:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745887280; cv=none; b=koaakziZI/LSCMSQFW2Fx0XQxyFXrhRAjSKCsArf5iX4ZWEnqFaNhUQzkSMkM3CUVPQDtQ9Cq9gIhuAXmHQG3a6QjWQUq0x8tcGg83LJVKhXEfs7pWY24MlzVsR2GmXJVED589Rvr3C/ihVZxxOY3l3KRAUl12c6WgbbgtDYjBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745887280; c=relaxed/simple;
	bh=rmnPc8tqdZn5hexoKGEPfBpixXioI1yDAyR7/EtGRgs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hckeQ4jTvQesG1GQTXWmcj3u0G15zWO5tkd3fkv2VLXdSVTN39Uc5LgzMRpSZGze/+Zd63+sGjHCPkOOQ38hG0a84yHOmVzt1qeRn11kVFHoLSJ3zu9np4ikg48RUwQWcSzXd8YWAZ7Wu8lBW7x9pl1EUZ8rXzVkSQCYYWTFY24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=ESCsPAjd; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5e8be1bdb7bso8619535a12.0
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 17:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1745887276; x=1746492076; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cbaKAKCTzfmHltef4oBV78jsKmCoKC/2lN4zrIr3UH8=;
        b=ESCsPAjdjmAEN56evBSHzvYuMJNFbtJcCkuF5+OaAKgIdPGPr8qBEnN3R9ihmSIwC/
         Tauw4KXVtWd3SzKs21eQgU/jq2mRkN/4J/XuYBp6fOXgGZ1mNKtQYhJ8duiUmi0l3UxR
         6/RMBScAgiDr7V5XNmUBdrUaONfxeTd5eqDutyRDc16nKjnpgK0l+Qkc3MPGQ7u8NSks
         xmlwpBV8XHsdGypKLyEXHe3AODgj4M5IuIqpYmpYKOyfD4m+bXPGIQ3z8Q7644Lim/W7
         sjgcwSiBzZBSbRwx/UIkOUfGeLgtdd98XyYNQA9oSuTPZGK9fi4bOPgtjTLc2CVNIvhP
         bngg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745887276; x=1746492076;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cbaKAKCTzfmHltef4oBV78jsKmCoKC/2lN4zrIr3UH8=;
        b=xQ32HdvDODAOUbTNrR/1610+Iv2sIbxsGiGokKfNoiyYlLGJ6Q7LoxXlifcDK19+Rf
         Tj6yKTxf661B7RNaN15xet4s0yeATqnzKntQcw/5n93qzjHIlM7jl9lCbuVMONGRb/UP
         AYfrNIkheZM2Km9ZC17Sti/o0zRZ0Rjaro4zoi+A9dd78V/2wPQiig2rj9YKxzcBBRHx
         6NwJPsYe4j0xhDlqJcEBowp2YencKQXRleAKAFd7XAbyKTEKfFV0T/eUCMi6W2JxsCkq
         gNco5dCd2duJei/gfOeHLE1lXd5yN72pSoICWAsRYCcIpBONokxlPDGIWKlzU0fN0DAY
         G4oA==
X-Forwarded-Encrypted: i=1; AJvYcCXFWjdJCnRVxq4saqwHfyILuV12dq8Yq4E6/0gPKCn5l0GsbeXlwLwPVuqUiVwbt0LRmD/kZoLr7WK2@vger.kernel.org
X-Gm-Message-State: AOJu0YzuUphWqDMOfpF8nZJx+VBNwAei8ecDx9nWTOBIOL26MIY8yceb
	9c/5ZpsAqnh7BzrCLFOP4lTY5NB4piaWbz7I0DCngHFtHKQh2rxq/SWm2ikfFuYNOyJBYuS9+MF
	DP4uRi0PJGQG1iKsQZ2ZyOmRtu0SXVGsiIHfEeg==
X-Gm-Gg: ASbGncuR8rWP744kBh3Ab1l0GAFbr/IgzyZ20G2mxzkdXd0n+yiRr9bG8bU6qmAnk7v
	n+dZyR+aWxlKLBnwsAcUq+CNRgagAbc6tMw9hPTkZif/Mhz8EtYmLt9iFyUmaMLGNQfknSzviJr
	qVAIoZkUNnHoTgkHeBsF7zJ1nz8xeAg0kg2g==
X-Google-Smtp-Source: AGHT+IGDDd1KBmZYtGMAtcmO079rgPCkzThzjrRGdQyH+DShBHm1WziqDjfFzM1LQRG2qnLtbMLpLsYzzQQ9Ipi2Cr0=
X-Received: by 2002:a17:907:6089:b0:ac2:66ff:878 with SMTP id
 a640c23a62f3a-acec87b1b2cmr75859566b.50.1745887276408; Mon, 28 Apr 2025
 17:41:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250420070251.378950-1-guodong@riscstar.com> <20250420070251.378950-4-guodong@riscstar.com>
 <kftfye2zn2ogyvuv7diuyrv5qkp43csbpkcqfcms2xp5lsuubm@z2kocdzkb7qk>
 <CAH1PCMZC5xrX07rd5bo+06zJoJDiAH3UNHqH5catwEALNJL2dQ@mail.gmail.com> <t4tnrsyl7t7hwfm752eapz3ajxkkl23nrfemw4jy6a7khi7a7u@gow3c2ba56ib>
In-Reply-To: <t4tnrsyl7t7hwfm752eapz3ajxkkl23nrfemw4jy6a7khi7a7u@gow3c2ba56ib>
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 29 Apr 2025 08:41:04 +0800
X-Gm-Features: ATxdqUG3lFgkg3lNUF6_ATkNEyTDRUTSmHtumyCGNvrS81lb8iksobg6ENCiyps
Message-ID: <CAH1PCMbuP6CzA-0CWM93MifWDY-cKmvozh7SUoy0658VRssaAA@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] riscv: dts: spacemit: add PWM support for K1 SoC
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	alex@ghiti.fr, dlan@gentoo.org, p.zabel@pengutronix.de, drew@pdp7.com, 
	inochiama@gmail.com, geert+renesas@glider.be, heylenay@4d2.org, 
	tglx@linutronix.de, hal.feng@starfivetech.com, unicorn_wang@outlook.com, 
	duje.mihanovic@skole.hr, elder@riscstar.com, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 29, 2025 at 12:32=E2=80=AFAM Uwe Kleine-K=C3=B6nig <ukleinek@ke=
rnel.org> wrote:
>
> Hello,
>
> On Mon, Apr 28, 2025 at 08:46:50PM +0800, Guodong Xu wrote:
> > On Thu, Apr 24, 2025 at 4:18=E2=80=AFPM Uwe Kleine-K=C3=B6nig <ukleinek=
@kernel.org> wrote:
> > > I want to make all pwms use #pwm-cells =3D <3> in the long run. Can y=
ou
> >
> > Sure. I can do this.
> >
> > > please use that for the new binding? (Of course this needs adaption i=
n
> > > the binding doc, the code should already be prepared for that.)
> > >
> >
> > I got what you mean. The code change for that is already integrated int=
o
> > v6.15-rc1.
> > Commit 895fe4537cc8 ("pwm: Add upgrade path to #pwm-cells =3D <3> for u=
sers of
> > of_pwm_single_xlate()")
> >
> > Now, if I change this #pwm-cells from <1> to <3>, without the dt-bindin=
g doc
> > changes, I would expect to see warnings (" #pwm-cells: 1 was expected")=
 during
> >   make dtbs_check W=3D3
> >
> > Any suggestions when the dt-binding changes will be merged?
> > or I can add your patch as a dependency.
> > https://lore.kernel.org/all/cb799d8a5bb284cd861785a691b8d5e329300d99.17=
38842938.git.u.kleine-koenig@baylibre.com/
>
> I don't want to merge this very soon given that 895fe4537cc8 isn't that
> old yet. But I suggest you adapt patch #1 to require #pwm-cells =3D <3>
> for the newly added compatible.

ok, I will add a conditional check of #pwm-cells based on the compatible.
spacemit,k1-pwm must use 3; other compatibles use 1.
 (if:then:else in the bingding yaml)

Thanks.
Guodong

>
> Best regards
> Uwe

