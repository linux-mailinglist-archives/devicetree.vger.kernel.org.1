Return-Path: <devicetree+bounces-253868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F3FD122A8
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:07:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A0BE30FB4D0
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:02:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8E52290D81;
	Mon, 12 Jan 2026 11:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Xv34hKla"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1CB526CE2C;
	Mon, 12 Jan 2026 11:02:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768215764; cv=none; b=i+P9cmNFmWZWaut9RjdRXwPJeoh8K66g64eYQMUY+We+9mTuM2y94fZRu6qNBqU9QDd2w7ExplXlAkH0pNOVaFi8vBPlV3yAiDUWcNvWYBHqy/LoNn4KcSh7GWBZZYLbn86uqevj2LyBFVge1mTV4A9dKs8Zpcm0UzV9R5m+xfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768215764; c=relaxed/simple;
	bh=QY7qJIHK3u/vwTBdYuxbQk3b3sWdxAfCGdCuAweP/kA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=d4zd8x3znQ30hshdqAnNacxgrKsHH/wdkd4I+MQlZbQHMxshe3XZ8KmrmOWpKxqJ6bdWI3qP0wyAzFS6sg8lSS3k3a8fIxPnvRLR6o1YiHrsYTYT0HDT8K3SJOLnsFBYWitJ5IILyTgfn5Dr71tjgqjsfmDqO2Z9w7KEugkigB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Xv34hKla; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=DWNPGMqaJKT2DTVjAZ8virInZYZelttbbbD/egipkf8=; b=Xv34hKlaaHbXVbZ1UG4gQg6bNI
	br6j8JxjmqssQQ91yiCYo9mrQWQSUln1AMH9KAB4TsARXI6SPRioylSyGp6v02G/8CD5co8bCCwtK
	b5DfISjQVKQEjUkLifa4DO65NYNqsJUvGdy5JmEMAoroY4nUNPpI38dDgRRYjoTHsnPHvKWW5rrHP
	gzWo65TeIr7HBUgkHICRJNd4cNLM7NNqpuYrwNUqpCvsQUZsxZ0H/LI4hQX4JdhtweNbkd1gZnQF4
	mbO01PhwlUpZK49RlHcMF8XLApeAOfE81/CErNpKWNtfj2ksKDae1S6ORIiXmH1JvLpRSQ0weWVXH
	bJSjBA9Q==;
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vfFgx-001wKN-TA; Mon, 12 Jan 2026 12:02:36 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Joseph Chen <chenjh@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Joseph Chen <chenjh@rock-chips.com>
Subject: Re: [PATCH v2 2/3] mfd: rk8xx: Add RK801 support
Date: Mon, 12 Jan 2026 12:02:35 +0100
Message-ID: <1980810.GKX7oQKdZx@diego>
In-Reply-To: <20260112102849.1479-3-chenjh@rock-chips.com>
References:
 <20260112102849.1479-1-chenjh@rock-chips.com>
 <20260112102849.1479-3-chenjh@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Joseph,

Am Montag, 12. Januar 2026, 11:28:48 Mitteleurop=C3=A4ische Normalzeit schr=
ieb Joseph Chen:
> The RK801 is a Power Management IC (PMIC) for multimedia
> and handheld devices. It contains the following components:
>=20
> - 4 BUCK
> - 2 LDO
> - 1 SWITCH
>=20
> Signed-off-by: Joseph Chen <chenjh@rock-chips.com>
> ---
>  drivers/mfd/Kconfig                 |    6 +-
>  drivers/mfd/rk8xx-core.c            |   81 ++
>  drivers/mfd/rk8xx-i2c.c             |   33 +-
>  drivers/regulator/rk808-regulator.c | 1963 ---------------------------
>  include/linux/mfd/rk808.h           |  118 ++
>  5 files changed, 234 insertions(+), 1967 deletions(-)
>  delete mode 100644 drivers/regulator/rk808-regulator.c
>=20
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index 6cec1858947..5405e8633aa 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -1355,15 +1355,15 @@ config MFD_RK8XX
>  	select MFD_CORE
> =20
>  config MFD_RK8XX_I2C
> -	tristate "Rockchip RK805/RK808/RK809/RK816/RK817/RK818 Power Management=
 Chip"
> +	tristate "Rockchip RK801/RK805/RK808/RK809/RK816/RK817/RK818 Power Mana=
gement Chip"

nit: I think at some point it'd be time to make that
	"Rockchip RX8xx Power Management Chips"
The config entry is already named that way, and that list of individual
supported chips gets way too long.

Also the individual supported chips _are_ listed below, so the unwieldy
entry headline can be shortened.

>  	depends on I2C && OF
>  	select MFD_CORE
>  	select REGMAP_I2C
>  	select REGMAP_IRQ
>  	select MFD_RK8XX
>  	help
> -	  If you say yes here you get support for the RK805, RK808, RK809,
> -	  RK816, RK817 and RK818 Power Management chips.
> +	  If you say yes here you get support for the RK801, RK805, RK808,
> +	  RK809, RK816, RK817 and RK818 Power Management chips.
>  	  This driver provides common support for accessing the device
>  	  through I2C interface. The device supports multiple sub-devices
>  	  including interrupts, RTC, LDO & DCDC regulators, and onkey.

[...]

> diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk80=
8-regulator.c
> deleted file mode 100644
> index 1e814247965..00000000000
> --- a/drivers/regulator/rk808-regulator.c
> +++ /dev/null

Looks like something did go wrong here, as you're removing the whole
drivers/regulator/rk808-regulator.c file from the MFD patch.


Thanks
Heiko



