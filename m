Return-Path: <devicetree+bounces-83411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9B3928501
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 11:21:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C5035285EB5
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 09:21:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E544146D69;
	Fri,  5 Jul 2024 09:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="BHxXWldj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAB21465AC
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 09:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720171291; cv=none; b=B2Id0/cJ3tq8Z0bs0UpagJRJwpxSjvM+LuYmHbgFxMSdKkpg6+TB3OegVeCcYLo9sdbqNBZemSGQQczLOb8DfC+F+63aprv9ryF7r0KnVN+dM6KLEP8S/MZbtdZhwRCV3dfwVJboBKRqAO+cOYoUSYY4fFT2OMfJWRn96zDEenY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720171291; c=relaxed/simple;
	bh=DAsvD8/mLkcQAkkYRWz+VC5gPXf282xVyAGgndXBPhk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UYlR8qDknNPMAzaZ/JPu/6cd08IhbOdoAQ7JjcQG2yE+t8SnZSIhA+JdZ6AMSfgOzwefWVli4z7eNrmkG2q6ad0RbJSVyIOmGP8ACmQ6nMnHAcrRSKlj7/mCLJjACjovQXc/rk9mCYruBP0EAnr8+JUu9alphFLMbe56Mig/GDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=BHxXWldj; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-58ba3e38028so1875097a12.0
        for <devicetree@vger.kernel.org>; Fri, 05 Jul 2024 02:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1720171286; x=1720776086; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DAsvD8/mLkcQAkkYRWz+VC5gPXf282xVyAGgndXBPhk=;
        b=BHxXWldj+hHqE2ns8S7/HAU42Z7MkYBmemSuhBWSrNKLJElFlh+Q7FcO+aA+P9LbaA
         EAYq1RdO44rOCVBQIN7NgVzw5+vw9GZXvknaG0YFg/JZExIY6Ex6YAvsSbvIyrCbT1Fk
         SymdVF1FI8op/8C6GBynndXKuBvrUlCd7+Orq+SdWWRrmREve0aOYgn+m9F7lNz8pCmy
         FX7mtN7hJUMBz7mmYMIbddHt6ohOM24jP83x4BCkktmhK91m4j7HsLvHwH7jy1VI5k4S
         M7Qyb+ARd26QRITXmUIfMXUvfuVm+MhhkaFkNiZglCxndpvv5En9S08MJPo8WpnSxewy
         oRRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720171286; x=1720776086;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DAsvD8/mLkcQAkkYRWz+VC5gPXf282xVyAGgndXBPhk=;
        b=AtopHxhFqAzpOi562mWsCJOjlU6vnCN72TF68PfkXRAWXPpqJjAdPRG9GE1ohYeukG
         yITFtMrUV64gW5ShVHQ3zOmp1Kah1GLHMdAfxyKEHf2YaJLN59sv1W0uhLNGMCP8bIvv
         aIvYPj2fMZ3oTg1OrFCGy0jMlsCiihog9YZkROwv2IHJ9VwgsdTSDAv8jJ/WBj56Uihz
         i1K3VMrTy6osghiJEiOyfT9BnHskPGcimKSI6VvutahMLN0Jrg1i768FLoIp+0oeVK9Y
         Ltns7Qo5fMA7hTHaJ3XA8/taLmTEttmSTULZ1jeK60dCoaLDhhg+gtzGjWEjeHwFpLFW
         BoCA==
X-Forwarded-Encrypted: i=1; AJvYcCWNt7NDYOvLiMxz1HQX9lEMXQABH8DzFG2czcOx8Vzr4WLLozC4v+V2EObwApvV3Lv/2JmMiNX+NJlAqv++3+byefpx1Jq2ttd+Ww==
X-Gm-Message-State: AOJu0Ywoe1bd8GGYHhlJ1gLkxDiIqSREYPbqIJ2zD/WaTIGqLBCT1k4i
	dRKbgSs1pgB9xukooEXK1PIcxL/2DCiZ7gQJEORv5CcjK5UYElupR5Y00b+/vZk=
X-Google-Smtp-Source: AGHT+IH5GBzifj2YL+uV1tph7kmD/UU37Fput+e22tUxmHwQFDW0cLo/eN2fRQ1OiC6xRmZjvtbAaw==
X-Received: by 2002:a17:906:fb95:b0:a6f:b400:4751 with SMTP id a640c23a62f3a-a77ba46ccffmr181755366b.22.1720171286291;
        Fri, 05 Jul 2024 02:21:26 -0700 (PDT)
Received: from localhost (p50915e7b.dip0.t-ipconnect.de. [80.145.94.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a77d9cdf337sm10855266b.53.2024.07.05.02.21.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 02:21:25 -0700 (PDT)
Date: Fri, 5 Jul 2024 11:21:25 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Nikita Shubin <nikita.shubin@maquefel.me>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>, 
	Hartley Sweeten <hsweeten@visionengravers.com>, Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, Lukasz Majewski <lukma@denx.de>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, 
	Thierry Reding <thierry.reding@gmail.com>, Mark Brown <broonie@kernel.org>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Damien Le Moal <dlemoal@kernel.org>, 
	Sergey Shtylyov <s.shtylyov@omp.ru>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Ralf Baechle <ralf@linux-mips.org>, "Wu, Aaron" <Aaron.Wu@analog.com>, Lee Jones <lee@kernel.org>, 
	Olof Johansson <olof@lixom.net>, Niklas Cassel <cassel@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	dmaengine@vger.kernel.org, linux-watchdog@vger.kernel.org, linux-pwm@vger.kernel.org, 
	linux-spi@vger.kernel.org, netdev@vger.kernel.org, linux-mtd@lists.infradead.org, 
	linux-ide@vger.kernel.org, linux-input@vger.kernel.org, linux-sound@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Andrew Lunn <andrew@lunn.ch>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v10 00/38] ep93xx device tree conversion
Message-ID: <jyvlqfvqn5bp3jmvxvwyrcqmihjohuq3o757mfph7x37kbwvtq@gtgyh4fca4fq>
References: <20240617-ep93xx-v10-0-662e640ed811@maquefel.me>
 <CAHp75VfSC9gAD9ipeWRPdQOxUp4FXqYYei-cJTs38nbz0cHpkg@mail.gmail.com>
 <48c242838c77034485a9e667dc0e867207c5beed.camel@maquefel.me>
 <241a4cf9830b0118f01e8fcf2853c62527636049.camel@maquefel.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="icynwgj6p72h37hs"
Content-Disposition: inline
In-Reply-To: <241a4cf9830b0118f01e8fcf2853c62527636049.camel@maquefel.me>


--icynwgj6p72h37hs
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Thu, Jun 27, 2024 at 11:29:44AM +0300, Nikita Shubin wrote:
> On Tue, 2024-06-18 at 19:20 +0300, Nikita Shubin wrote:
> > Hello Andy!
> > On Mon, 2024-06-17 at 12:58 +0200, Andy Shevchenko wrote:
> > > On Mon, Jun 17, 2024 at 11:38=E2=80=AFAM Nikita Shubin via B4 Relay
> > > <devnull+nikita.shubin.maquefel.me@kernel.org> wrote:
> > > >=20
> > > > The goal is to recieve ACKs for all patches in series to merge it
> > > > via Arnd branch.
> > >=20
> > > 'receive'
> > >=20
> > > > Unfortunately, CLK subsystem suddenly went silent on clk portion
> > > > of
> > > > series V2 reroll,
> > > > tried to ping them for about a month but no luck.
> > > >=20
> > > > Link:
> > > > https://lore.kernel.org/r/20240408-ep93xx-clk-v2-1-adcd68c13753@maq=
uefel.me
> > > >=20
> > > > Some changes since last version (v9) - see "Changes in v10",
> > > > mostly
> > > > cosmetic.
> > >=20
> > > ...
> > >=20
> > > > Patches should be formated with '--histogram'
> > >=20
> > > 'formatted'
> > >=20
> > > ...
> > >=20
> > > > Changes in v10:
> > > >=20
> > > > Reordered SoB tags to make sure they appear before Rb and Acked
> > > > tags.
> > >=20
> > > This is not required. The importance is only the order of SoBs
> > > themselves. If they are interleaved with other tags, it's fine.
> >=20
> > Ah - ok. Just saw someone was complaining about b4 reordering them.=20
> >=20
> > >=20
> > > ...
> > >=20
> > >=20
> > > Hopefully to see this series being eventually applied soon.
> > > Arnd? (Do we have all necessary subsystem maintainers' tags, btw?)
> > >=20
> > >=20
> >=20
> > As i see from my perspective only three left:
> >=20
> > Clk subsystem:
> >=20
> > - clk: ep93xx: add DT support for Cirrus EP93xx
> >=20
> > DMA subsystem (but the only request from Vinod, as far as i remember,
> > was fixing commits titles):
> >=20
> > - dmaengine: cirrus: Convert to DT for Cirrus EP93xx
> > - dmaengine: cirrus: remove platform code
> >=20
> > Beside that tags missing on platform code removal (which can be Acked
> > by Arnd himself i believe) and dtsi/dts files (same ?).
>=20
> Vinod acked the above two patches:
>=20
> https://lore.kernel.org/all/ZnkIp8bOcZK3yVKP@matsya/
> https://lore.kernel.org/all/ZnkImp8BtTdxl7O3@matsya/
>=20
> so only:
>=20
> - clk: ep93xx: add DT support for Cirrus EP93xx
>=20
> https://lore.kernel.org/all/20240617-ep93xx-v10-3-662e640ed811@maquefel.m=
e/
>=20
> left.
>=20
> Hope Stephen will find some time for this one.

As we're approaching the merge window and this is still unclear, I
applied the pwm bits (i.e. patches 12, 13). If I understand correctly,
patch 33 isn't suitable for application yet as it has a dependency on
pinctrl changes in that series.

(side note: Your patches are signed, but that doesn't bring any benefit
if the receivers don't have your key. I didn't find it neither on
keys.openpgp.org nor in the kernel pgp key collection.)

Best regards
Uwe

--icynwgj6p72h37hs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmaHuxIACgkQj4D7WH0S
/k63agf/ctyXHUSwirhdvMJNeHEME1eqwJPf8P71cxUigi0cvcf0NrTT4jEqglzC
BqT8dRZCw6LKUShZlhwO7ymRXcAjNYTvFLuJKQYOGuVQZQEtoK7PDa80NeQjFhZP
r0CwuOQfcg2ovACIA1T/iSX2APqGatvsO4Ke7h2u5kawsGxQIu2TZnfPDhwTIdqj
Ib33BChvzlU45YrMZrQUHKE3/3XOHyxVvZSutJmaHLtSdIOE/fPr/U5anDzjdWFS
gxrbDGE0Z3LyDIb0OB8iZiVIeyXDjysmlTdYpfPQi3/4JT+ohaNXgpSC5dmYo/s+
R6QHGSe+ahTTQGyCjdYkOM/hMh/CiQ==
=1/WB
-----END PGP SIGNATURE-----

--icynwgj6p72h37hs--

