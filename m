Return-Path: <devicetree+bounces-227669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 36619BE3492
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 14:14:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4452C4FE8DC
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 12:14:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBCF0323403;
	Thu, 16 Oct 2025 12:14:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E8E2FD1CC
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 12:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760616847; cv=none; b=QDYGCPAiGwUNAaacC6wJqAz0ePTpvyMJnlXXwfJUoP3P1aJRgbWV9Ah6XEx/FBuPyleB6trqUM7hTSC/iDsEShy+ohWg2JBnLoZEWNlK4BIsxjO7nek+Vt63uKnYs+jKo3zz6L3PedOaHO6aLGf+qh/SRFVHEAs/W6a5Mhu3hqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760616847; c=relaxed/simple;
	bh=Qljm2z2l5uF20OnzQWwo+pu0aWLXVl3TFALx6BWruW4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Zix6eQ9lVzVW4j+sMa7HlOoyW/4tiIex69hNeRffiNbCvU74cRzlzDQ5gaAxdjEcSN3L/cF+pW1aYGT8DMawVpMzN6qiwtxo28LmoTAjKj2TbQH4+GvHR4zLFpvmUgriDLvEVlGpxqXLjpQhJ21fDmElLz5nSnmaQsvTF9uLUE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-88e68c0a7bfso136508685a.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 05:14:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760616844; x=1761221644;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e3GThzLUFjGbl3VuQITKYi7/BLSw+ups+ZHEY60Y/84=;
        b=o7xPG69hBGQH7SL58wagArpVf4lHDeHMxIdFbGDmujv3tG/Jl2TfY1MtGu3dxT/XJw
         yNh0cWQ3Dv/1k8fiQgfxPE/GFTA+6iF6hHBP0O/NJqiKrIrlPcwyusmzRDqutHkf4nSP
         Uvrg5L8nXamrwcihi7Zdd0CBxCFcigvtQprySJv6kyWY/CYMmbCB2ew3a+aquAw7QFOg
         0Twvqf28qILfnYaXr0N8maEfg4Eau7v2yJP6DztQEJsUmZ+EHEvkFZDwGAvKU9TX+TVW
         b8OX7Wt2q+Z1GpaEP07ajL0Gad3tQN8NOtHreOBWT3v5zZUVGFgFB6jEdhKAtSjQwkL+
         KK6A==
X-Forwarded-Encrypted: i=1; AJvYcCWcExbOagCwyNB8F2QwBVBKoDFHZ5+tiLUODoY7/DxUodgat8jK06w83DakFb01C58stNOXQgAYK/cb@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9z0EM3eeyk5SAHnmOZTnIO6prXNA7yVOehkzyM3+GHbS0obBP
	na0uH8QDV17mJObkIO2gaOHYQIRMF2J1q0+L+3pQKDzyTfeGj4Ea5lZZyiANEEkq
X-Gm-Gg: ASbGncvTY4J7YWcPT7XHMHFdkO8CooLSyKyu1jExLMEShYwdss1cRlh7UJc5Mdl7VtB
	wnShHSbKdwwrR7AYtMPldohLtc28sY0DbZtJpc2tf8rYJm5nEYWHkGq06rvxDuekNGCUWhERGhy
	p1ZjIGtLirB6zYkEHrwfe1GW5pc+mgs9i2KZ6p51Uq6qiGotOqpYrk0iLZub5U/5XCgL3DEZQwK
	FSlNLp7mJXYm7pXGOGjxjaaKdw393t2dCS+ZLKQN2adBnGoqjby0LJqN4fLCymncqlXpgVZIGdH
	9IqPsdF7S3iyzv9SmzkNdWZwH65sWxm1Mokn4Pfcfyz3dHFc00bVR0HMvK3ulSBWu6GN84yvK+5
	ly4neCUoSwZPZFSmJhSqz08HpFnmKpySWRDyRfs6CTlPjQuQONTZEVheURiDu/qOHYr89hhvCn7
	bRw9kUtjZvKSUfoqqSvrxl0cin3a+md0t0lDyYAED2M9t+FtIG
X-Google-Smtp-Source: AGHT+IEYc+z1PQkQBqfdqHeulZC9+2xU09VgTdjXZSTXXbYSIr1SkJwJ+w3DVFIdez78QoPDQ1zNDA==
X-Received: by 2002:a05:620a:2697:b0:861:27a4:5bdb with SMTP id af79cd13be357-88351de74b5mr4572083385a.1.1760616843827;
        Thu, 16 Oct 2025 05:14:03 -0700 (PDT)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com. [209.85.219.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-88f359687d0sm190166985a.13.2025.10.16.05.14.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 05:14:03 -0700 (PDT)
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-791fd6bffbaso11386996d6.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 05:14:03 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWE43+TKJDiQxjZanU8q0kOs7mlpNUrfCpZlktza/t6i9iiNIKml1byfFff4Am419AnYr+Tb2dQhFa8@vger.kernel.org
X-Received: by 2002:a05:6102:6c2:b0:4fb:ebe1:7db1 with SMTP id
 ada2fe7eead31-5d5e220448dmr12281536137.12.1760616407229; Thu, 16 Oct 2025
 05:06:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251015232015.846282-1-robh@kernel.org> <CAMuHMdVBDN8-gWVs1f=1E2NgD6Dp4=ZFUnyzqHaQj9JWPpZepw@mail.gmail.com>
 <CAL_JsqL1KL4CvnxF5eQG2kN2VOxJ2Fh1yBx9=tqJEWOeg0DdzQ@mail.gmail.com>
In-Reply-To: <CAL_JsqL1KL4CvnxF5eQG2kN2VOxJ2Fh1yBx9=tqJEWOeg0DdzQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 16 Oct 2025 14:06:36 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUUZaL6qyuTZPoRc11WSuqcoRUFNksXZNJoijTeL+vfKQ@mail.gmail.com>
X-Gm-Features: AS18NWBH0cbPp0cJrT4sY267e4E8JBEuMEr4tkAtjK9DVXEqfelKr3ZBbd1AYGI
Message-ID: <CAMuHMdUUZaL6qyuTZPoRc11WSuqcoRUFNksXZNJoijTeL+vfKQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Fix inconsistent quoting
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Lee Jones <lee@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, Andrew Lunn <andrew@lunn.ch>, 
	Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Daire McNamara <daire.mcnamara@microchip.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Florian Fainelli <f.fainelli@gmail.com>, Tony Lindgren <tony@atomide.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-iio@vger.kernel.org, linux-media@vger.kernel.org, 
	netdev@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

On Thu, 16 Oct 2025 at 13:46, Rob Herring <robh@kernel.org> wrote:
> On Thu, Oct 16, 2025 at 2:57=E2=80=AFAM Geert Uytterhoeven <geert@linux-m=
68k.org> wrote:
> > On Thu, 16 Oct 2025 at 01:20, Rob Herring (Arm) <robh@kernel.org> wrote=
:
> > > yamllint has gained a new check which checks for inconsistent quoting
> > > (mixed " and ' quotes within a file). Fix all the cases yamllint foun=
d
> > > so we can enable the check (once the check is in a release). Use
> > > whichever quoting is dominate in the file.
> > >
> > > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> >
> > Thanks for your patch!
> >
> > Since you are mentioning mixed quotes, is one or the other preferred?
>
> I have a slight preference for single quotes.

OK, so outside human-readable descriptions, there should only be double
quotes in property values, i.e. on lines ending with a comma or a
semicolon.  Sounds like that can be scripted, or validated by scripting.

> > Shouldn't we try to be consistent across all files?
>
> I don't particularly care to change 915 files. And if the tools don't
> enforce it, I'm not going to do so in reviews.

Fair enough.

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

