Return-Path: <devicetree+bounces-137232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 96ECAA08406
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 01:29:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6BCF8188C75E
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 00:29:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C6B91B59A;
	Fri, 10 Jan 2025 00:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="FcPo409J"
X-Original-To: devicetree@vger.kernel.org
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C5216415
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 00:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736468980; cv=none; b=NF/FukMEl3Rrm4uB0hUrZbzS8j8FIT+zkcItt+PNW+gO/4JI9xS97idiy+cnjJEVQnSrzeNjLPxJr5sLyiO2EJTBLyoHcUqFPZkAVvZhWuBuHV2DDSK/aaAMQNlgGWIEfGlmwHIcZyNwSujMPh5EPT5ZdIkLr1xNmRlxlTiSJh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736468980; c=relaxed/simple;
	bh=NmF9OpBmOlyhdjWseD2lyW2G8XKj6Wz2ZngKw21hv48=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kUi2fmIeUK0IfWkJ+ZfyzP2a0bdI+TI2YFVFOQP7soTpPwKojADuw3lFgJg4PaGwZdP0aLRVAS7J0No4AW5wWyGfdoZPZpXoaGHMfJFfKm8WtW8PDdGLy7T68nppvU2XkSGfLZY4tRL4jEtIuINJk24rF28TxtT97Nigj1iYIy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=FcPo409J; arc=none smtp.client-ip=185.67.36.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 0695C24002B
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 01:29:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1736468976; bh=NmF9OpBmOlyhdjWseD2lyW2G8XKj6Wz2ZngKw21hv48=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:From;
	b=FcPo409J66WIu73Ng0FSXXEddwXGcFmmK2NzKQ6SSIC+/HMZM9Dmd3zw09LP326Mv
	 GtLS6WO6ymQzJdB1UKeFd+x+9llhZRaRva+zWuy+m6LjtbUNysjuYhGL1h7mgMnsDn
	 aiEb2k87+isixL9j1WioTcC9ndzzSmi60Erj3EQP7O0T4JdUYu4rsFC5U1GfZooNsV
	 JYJEl3MOEIC1jbK2x7IR1orbzY0Me9KKwvtMAzzpNcFdWeVAfVtPGY5cGZ5gPX2Lm9
	 wk/rC6RyocusQB+FWYTx6O2W9RaZ6rQKWIHqi8OWDOgQ5f45tQ0XZTBg2lPgidQNFB
	 b2c9UcICTaxcA==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4YTjG60LNbz9rxK;
	Fri, 10 Jan 2025 01:29:33 +0100 (CET)
Date: Fri, 10 Jan 2025 00:29:33 +0000
From: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: =?utf-8?B?Q3PDs2vDoXM=?= Bence <csokas.bence@prolan.hu>,
	=?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
	linux-spi <linux-spi@vger.kernel.org>
Subject: Re: [PATCH v2 0/3] gpio: 74HC595 / 74x164 shift register improvements
Message-ID: <Z4Bp7aBWWYehVucf@probook>
References: <20241224-gpio74-v2-0-bbcf14183191@posteo.net>
 <173593634037.257292.1488097273042214180.b4-ty@linaro.org>
 <CAMuHMdUqvTrSsiGuJ=VvNqsQm4eQs9rNTU8VBg+FzHJZxRnXow@mail.gmail.com>
 <CAMRc=McAm3A1movK-8q67UbKuPb8FQzVwD_me7Q6x-gei2PA_A@mail.gmail.com>
 <192e97dd-698a-4434-bd32-c1181ec85ba3@prolan.hu>
 <CAMRc=MewCR=W=_0RKFZR0gW2mvkMD-pKBWpXCeqOY4j8CXBSXw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMRc=MewCR=W=_0RKFZR0gW2mvkMD-pKBWpXCeqOY4j8CXBSXw@mail.gmail.com>

On Wed, Jan 08, 2025 at 01:08:37PM +0100, Bartosz Golaszewski wrote:
> On Wed, Jan 8, 2025 at 11:26 AM Csókás Bence <csokas.bence@prolan.hu> wrote:
> >
> > Hi all,

Hi,


> >
> > On 2025. 01. 06. 21:16, Bartosz Golaszewski wrote:
> > > On Mon, Jan 6, 2025 at 10:19 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > >> Do we really need to document and add driver support for all variants?
> > >> I can easily come up with a list of tens or perhaps even hundreds
> > >> of xx74yy595z parts that are all compatible, as far as software is
> > >> concerned.  As SPI was invented by Motorola, the original part is
> > >> probably named MC74595 or MC74LS595 (yes, ON Semiconductor bought the
> > >> logic division of Motorola).
> >
> > I second this, no point of having a new compatible which is a guaranteed
> > 1:1 equivalent of an already existing one. Especially true if the only
> > change was that a different company bought the IP. By the same logic, I
> > could start to sumbit patches to change all `fsl,` compatible-s to
> > `nxp,`; `atmel,`, `maxim,`, `smsc,` etc. to `microchip,`; `ralink,` to
> > `mediatek,` and so on. There would be no end.
> >
> > >> Perhaps we need a separate vendor prefix for the 74xx-series[1]?
> >
> > I don't think that is the case. Rather, we should document that the
> > existing binding/compatible should be used for all such simple cases (it
> > is called _compatible_ for a reason, after all, and not
> > `exact-part-number`).
> >
> > >> The xx-prefix and z-suffix don't matter; the yy-infix for semiconductor
> > >> technology rarely matters (there are a few exceptions, though, mostly
> > >> pinout, which doesn't matter for software).
> > >>
> > >
> > > I missed the fact that Rob actually responded to patch 1/3 with a
> > > similar suggestion (fallback, instead of a full compatible).
> > >
> > > I can drop this series from my queue if it needs more rework.
> >
> > I think you can keep 3/3 (the one commenting the use of `latch` as CS).
> > The rest can be replaced by another commit commenting on what it means
> > to be `fairchild,74hc595`:
> >
> 
> J. Neuschäfer: do you want to send a follow-up for this?

I'm fine with this outcome, but I'd prefer not to prepare this proposed
patch (for reasons of time management on my end, mostly).  So if anyone
else would take it up, I'd greatly appreciate that.


Best regards,
 jn

