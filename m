Return-Path: <devicetree+bounces-231444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A49FC0D3B0
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:48:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1291C4069F3
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 11:44:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 741C62FD696;
	Mon, 27 Oct 2025 11:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jAD0JZyI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7151D2FD1B2
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 11:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761565483; cv=none; b=WzZQL2fmB8Xdh+71/JbVgOjqxIMP1iJbtWK/4xWqhuJTdpf3UL5nVLObIHunLPnjdNclPMJ07EY5aVlkWJAP91dgcRFNZoazPzmlB5WY3KdriX3q4S5Y87Z9/tYMz4Sp0qI02/HVXzN1wezE1qJ8pepgpDXq93VfV16QxM/HRIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761565483; c=relaxed/simple;
	bh=27WmFaJFqU7LyYoE8bTWqdiikSQj++r4V6WkI00nrdo=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=uSA9VHB+/N1HWEjy6bo0zvnarmdN5/v6NLvRPr4oqC2WfKzqU/xnnWfcf/ne8ghXfNk312SOsXm2ZIKgLzCut5uDeYy0YD/IbMzIQHjfPVxtBXIcjlbb+fSWbFkImMlLaRpHquHUOrxpd4ERLVm4vrHdKo51451Q8WZqctnDW9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jAD0JZyI; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-36527ac0750so40810911fa.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 04:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761565479; x=1762170279; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7nvb3ts879/Sg+IsM557dqRglkyZpqRyMDTmCJcWpIY=;
        b=jAD0JZyIoYE5hc1F1fIimR0tAOeskqgQW9ojFmcxblgioJPpkJqYoTih4CoZhxrIO9
         ek1jmCbL8/GfoneCFS/+O9uDeggevrvnWuzQN+3TBu5X92Y/2yjtcLjKb08Y98K8CZmg
         QiuTK0R5dRdd4mISVIuey0dwBfmuf+K2dFaK5uElD0BtvuK6jdeQNvgo+GjkyWKSNuYl
         rNg+Hkql5bjv9UqRssJEXn3rcJKY30qXuTZegMVPenaLhE91tFjb9eOMecVBlBo0lrA8
         4/rs/bFzOA05/ORKLD06qdnSJ7b2UgD9TUydxel5+oVAYiFpa/Jzc+rXZn+s8ujXN71/
         bYCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761565479; x=1762170279;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7nvb3ts879/Sg+IsM557dqRglkyZpqRyMDTmCJcWpIY=;
        b=sjBz/VLWv2bMysZgI22btj1hxdOn9SWG/KgJQpAsBuPH4VY7sFg1i2NKWVZFw6WB/s
         mx9G/L11xUoCEpDgfdIrHBSiUTijJ30QbxHH4VlwtwdLTowQxAur/RRbDpu6CLWysyfI
         AhwcZI9MadoIRRZirxo0UCaYRpEnRuKqv3n4FJqBsg5Nvi9NLlJQDk3b07We5IVPwEAb
         AnPfHk2WqrsXkTo66TEUqYtymMuUDuONxVWzpqYoveMhC5CyAGwCsU2//DnQg1em81Xd
         fVNNrhCWA3zKCGMn4MTzpXahOmaRHAncOIhrkhuSmHHJClhzJx4GV9m4MM/pMCplw2Kw
         UjLA==
X-Forwarded-Encrypted: i=1; AJvYcCUN9IC0oqJG3DC626jRPhyZI4DLJcBDt6AN2CoovmNw03iE3/W4vFWw21xtWt9P0+pKBonvA3K0unOW@vger.kernel.org
X-Gm-Message-State: AOJu0YypKUdnuTCQNT7eqEURidecKvF/Bc4agP3G4FiQIRMsu/nWc7fc
	1Z2aEw+f43gWGpVQUw+XeP2nFZC6epd/6MPqjlGMUsXSUPogpDo7JEsb
X-Gm-Gg: ASbGncsVxzkJltJMgxm4FkPpeE1Z1vMNgOHVg7KRcOJ/rY3CW0x+JVywuNp6GjuJ6Og
	kLUMBwIUWNOSttP9N45vZmSaDLa+Ngs6FRB/HpGAeFgQL5G/EG3SavWEDLT+bQZuFkxG8JOqsD8
	T6jnga+Dbe2IrS4wb5SJd/lJW8ic9G/gqflP+PKj70ocMcsEeh8+iB7fhdtWtYmzwfIT706TBfD
	pARn/DmxWcRi0owlZr5RWi5pGKWAM9bOay+UMNQHF7KJHWLTyoBnU8vJw+nNQX/61Bec7cjzj95
	THZ0wCvfkMT3deQLXNWof3IBIrKOAXGqTFya2PrOZhCusnKC0OwBdrZidNDtWD1KQE1W0N6iBTD
	7lX9As1SgR+WQymyX3Ww4YLrEucaqYwK3Y77Q3O/QAgj50xlgIifuomS13i0XK7Mr1NkI1HjgFm
	FMqZLEaXQ3GMBwt71tbQ==
X-Google-Smtp-Source: AGHT+IFQSAqJl/qnApKxsx/9mKdWT/yO1J9O9fi4cpKuevGmaCJvnLNifaY3IeqxE+HyUnJOcQhvMg==
X-Received: by 2002:a05:651c:505:b0:378:f0f3:66b4 with SMTP id 38308e7fff4ca-378f0f36bb1mr16079661fa.41.1761565479128;
        Mon, 27 Oct 2025 04:44:39 -0700 (PDT)
Received: from mva-rohm ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-378ee0e505bsm19542081fa.52.2025.10.27.04.44.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 04:44:38 -0700 (PDT)
Date: Mon, 27 Oct 2025 13:44:32 +0200
From: Matti Vaittinen <mazziesaccount@gmail.com>
To: Matti Vaittinen <mazziesaccount@gmail.com>,
	Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sre@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andreas Kemnade <andreas@kemnade.info>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH v2 00/15] Support ROHM BD72720 PMIC
Message-ID: <cover.1761564043.git.mazziesaccount@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DzHhZA1J1wxDlr51"
Content-Disposition: inline


--DzHhZA1J1wxDlr51
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The ROHM BD72720 is a new power management IC for portable, battery
powered devices. It integrates 10 BUCKs and 11 LDOs, RTC, charger, LEDs,
GPIOs and a clock gate. To me the BD72720 seems like a successor to the
BD71828 and BD71815 PMICs.

This series depends on the series: "[PATCH v5 0/3] power: supply: add
charger for BD71828":
https://lore.kernel.org/all/20250918-bd71828-charger-v5-0-851164839c28@kemn=
ade.info/
sent by Andreas. The power-supplly and MAINTAINERs patches (2/3 and 3/3)
=66rom that serties aren't merged yet.

Revision history:
  RFCv1 =3D> v2:
  - Drop RFC status
  - Use stacked regmaps to hide secondary map from the sub-drivers
  - Quite a few styling fixes and improvements as suggested by
    reviewers. More accurate changelog in individual patches.
  - Link to v1:
    https://lore.kernel.org/all/cover.1759824376.git.mazziesaccount@gmail.c=
om/

---

Matti Vaittinen (15):
  dt-bindings: regulator: ROHM BD72720
  dt-bindings: Add trickle-charge upper limit
  dt-bindings: power: supply: BD72720 managed battery
  dt-bindings: mfd: ROHM BD72720
  dt-bindings: leds: bd72720: Add BD72720
  mfd: rohm-bd71828: Use regmap_reg_range()
  mfd: bd71828: Support ROHM BD72720
  regulator: bd71828: rename IC specific entities
  regulator: bd71828: Support ROHM BD72720
  gpio: Support ROHM BD72720 gpios
  clk: clk-bd718x7: Support BD72720 clk gate
  rtc: bd70528: Support BD72720 rtc
  power: supply: bd71828: Support wider register addresses
  power: supply: bd71828-power: Support ROHM BD72720
  MAINTAINERS: Add ROHM BD72720 PMIC

 .../bindings/leds/rohm,bd71828-leds.yaml      |    7 +-
 .../bindings/mfd/rohm,bd72720-pmic.yaml       |  269 +++++
 .../bindings/power/supply/battery.yaml        |    3 +
 .../power/supply/rohm,vdr-battery.yaml        |   80 ++
 .../regulator/rohm,bd72720-regulator.yaml     |  153 +++
 MAINTAINERS                                   |    2 +
 drivers/clk/Kconfig                           |    4 +-
 drivers/clk/clk-bd718x7.c                     |   10 +-
 drivers/gpio/Kconfig                          |    9 +
 drivers/gpio/Makefile                         |    1 +
 drivers/gpio/gpio-bd72720.c                   |  281 +++++
 drivers/mfd/Kconfig                           |   18 +-
 drivers/mfd/rohm-bd71828.c                    |  546 ++++++++-
 drivers/power/supply/bd71828-power.c          |  160 ++-
 drivers/regulator/Kconfig                     |    8 +-
 drivers/regulator/bd71828-regulator.c         | 1025 ++++++++++++++++-
 drivers/rtc/Kconfig                           |    3 +-
 drivers/rtc/rtc-bd70528.c                     |   21 +-
 include/linux/mfd/rohm-bd72720.h              |  634 ++++++++++
 include/linux/mfd/rohm-generic.h              |    1 +
 20 files changed, 3106 insertions(+), 129 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/rohm,bd72720-pmic=
=2Eyaml
 create mode 100644 Documentation/devicetree/bindings/power/supply/rohm,vdr=
-battery.yaml
 create mode 100644 Documentation/devicetree/bindings/regulator/rohm,bd7272=
0-regulator.yaml
 create mode 100644 drivers/gpio/gpio-bd72720.c
 create mode 100644 include/linux/mfd/rohm-bd72720.h

--=20
2.51.0


--DzHhZA1J1wxDlr51
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEIx+f8wZb28fLKEhTeFA3/03aocUFAmj/WxsACgkQeFA3/03a
ocUMJwf9HbRd5I2iJ6QYeIW2lWVnqqAKf4gYNQ0UHW3eQKS0Dpc+IP40tUlyxyQm
1U9Mu5cq7IIPgcUW1N6SWlSa8NI2IxrxL/XbwXAp1cwd9HpmmbkaaBhpboC61xag
ih+1uGfVEOYyHDR/PGtKhMIOyVLyhCeJpKbh5NU5VUcBGIK6RvsPuv7WxKe25xN9
0RlvsF/8gUNeC/AErsgvcb5Y6VO4KGtxkZNER15jcKzU/ZZh7IgCYhlYqJ7np4PM
Q8994iIOsdE1hMrveHn+AX3mRgjDbYZ47fvTabViMYagGTr77MV4/cPSps1CmAXc
65X58e1Zup8oIZ8TnfiwD0YdF1Zd0Q==
=n5aj
-----END PGP SIGNATURE-----

--DzHhZA1J1wxDlr51--

