Return-Path: <devicetree+bounces-111942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C9C9A05B6
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 11:38:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8BB51F2631A
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 09:38:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61CE020695F;
	Wed, 16 Oct 2024 09:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="mYfuaNcB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E7120606D
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 09:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729071452; cv=none; b=VXflGCQOiMZNZRKCa4mrZRhXC32c0ZWYb17e+/gOaC3Na0O3Ep9O6ttGCU96A15IXyIVSXJbN+z/JjKb0BMGrhiTpjnomkoy3xLYom0Uo/kdFYmMJZcftWaw68O5uhqC5MkGeImI5LKaNBYchJUfzUQUMMQvhzgOph3el1SQOtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729071452; c=relaxed/simple;
	bh=D4zI+rQlQEVVZMvQWRLpn6/tR3p1GCpBgzi5LDRp5vM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kLFE742X/Je/oVpLBFUjT0hohgfBwnESSmiNIw9DZ73WHKdDWoAuWDeuTg2cKiNdHJ7ZVPDZGBrX2oghs2+56al33h1xQIk7BlBf/GNoo9Tg7R07y/fEjdsVA8S13Shf+hqTFjWhifQqeIfpog5V5q5RoGyez7kF4mwLtmhsxG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=mYfuaNcB; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4305724c12eso48485475e9.1
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 02:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729071449; x=1729676249; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WuNBRxUMporUa0FNsiiNZn9Rv9n9DRUgpvNg4YbFQvM=;
        b=mYfuaNcBN2vQrnDi3jehOXsbqM2D8lZrgoWN8KPga2sd1oquNA10yB6FfEKjxze2nx
         +5mUmLGshZOxmmAz9v3M6IpATenGhhdF7khQSgOWjgK4u5Y59fly+aPzF3idwJcLVcM1
         9tJFKfT0j319DGco4GMvIq7Qy6kYyKfRYMxg0hK5woAp4r3qTrj+73knm48x/BCsbhvR
         feGBKyP+dFI8WnBLNXeak1tbRKhyxXfoiY35/7lFSIL6VskD0KYrruVa4KI97nBAfGiH
         xhbZgoEsBX61lbisNEX3GUCNYBxVbG+yKPs+3zZA5l2q3jaRA+YBQP9CQxsmgPz2oG1U
         yb/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729071449; x=1729676249;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WuNBRxUMporUa0FNsiiNZn9Rv9n9DRUgpvNg4YbFQvM=;
        b=R23dfMTq2pMMth9Yg9OHBA4kx0C+UPnY/WILndi+ljhbZV1Z5VbpL8hEPW4EBT7Uvf
         4bOJoTy/WD8j5gewUDvT8mZzxvUXNI02FFRjAGKOH5p4YmqutQGK0t98/oO8GPnNHLIf
         wDLdaiDEgLejEeK6KTIIA7AYxUPdM8+bKr10u3AZY0WXQYeFn0cWeFgdAGGlA+CatjtI
         dR+Fpj0p507+DEIsf6XfKYiAzK+YkxhrR6B2WLh39hJ8PG8Ap2fQrZxBTKdFEkHex9ZE
         ip/hJ1p5xSVUwMIFvwjeYeJzpho1HEuLVnFgUEa85ZrAU4JceUdxxCgz+A5+zI/oU4ac
         41ow==
X-Forwarded-Encrypted: i=1; AJvYcCXRaE8ZKBJ6/dy9fgzagtBC8EnGwfcI2iOFwf4LwqpYVYDZHed++3ZL+AuKyQkjpV0n1XDg9P7wP6ma@vger.kernel.org
X-Gm-Message-State: AOJu0YyjGBu4PZYPtKzM1bSwRXPsHT/7ze11+wYR0lWWp1ioJsb3pJZi
	zgyawbENjXKxnkDJJmOdmpD8qhyDtEiJh3lQ81wCq/sPCu4FFAA7Io+5qyagFb0=
X-Google-Smtp-Source: AGHT+IFl01Hs8Y2oPgUjtWeCz06Ma1XKh0Ko3SybFFsK9UgNIKR54kvBgw8mfSI2xW39eatk07bhcw==
X-Received: by 2002:a05:600c:3b07:b0:431:537d:b3b4 with SMTP id 5b1f17b1804b1-431537db5d4mr7539275e9.11.1729071448643;
        Wed, 16 Oct 2024 02:37:28 -0700 (PDT)
Received: from localhost (p200300f65f19e3002f38cf427133ca7b.dip0.t-ipconnect.de. [2003:f6:5f19:e300:2f38:cf42:7133:ca7b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4313f6c606esm43580235e9.44.2024.10.16.02.37.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 02:37:28 -0700 (PDT)
Date: Wed, 16 Oct 2024 11:37:27 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: jan.petrous@oss.nxp.com
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Jose Abreu <joabreu@synopsys.com>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Richard Cochran <richardcochran@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Emil Renner Berthing <kernel@esmil.dk>, Minda Chen <minda.chen@starfivetech.com>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Iyappan Subramanian <iyappan@os.amperecomputing.com>, Keyur Chudgar <keyur@os.amperecomputing.com>, 
	Quan Nguyen <quan@os.amperecomputing.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org, 
	NXP S32 Linux Team <s32@nxp.com>
Subject: Re: [PATCH v3 14/16] net: stmmac: dwmac-s32: add basic NXP S32G/S32R
 glue driver
Message-ID: <urxfash5qmvahjubhk5knrt53j2tw7hje35qyst3x3ltg4mpgo@dw73m73o36b3>
References: <20241013-upstream_s32cc_gmac-v3-0-d84b5a67b930@oss.nxp.com>
 <20241013-upstream_s32cc_gmac-v3-14-d84b5a67b930@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3rgewbnae3w46mrf"
Content-Disposition: inline
In-Reply-To: <20241013-upstream_s32cc_gmac-v3-14-d84b5a67b930@oss.nxp.com>


--3rgewbnae3w46mrf
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v3 14/16] net: stmmac: dwmac-s32: add basic NXP S32G/S32R
 glue driver
MIME-Version: 1.0

Hello,

On Sun, Oct 13, 2024 at 11:27:49PM +0200, Jan Petrous via B4 Relay wrote:
> +static struct platform_driver s32_dwmac_driver = {
> +	.probe		= s32_dwmac_probe,
> +	.remove_new	= stmmac_pltfr_remove,
> +	.driver		= {
> +			    .name		= "s32-dwmac",
> +			    .pm		= &stmmac_pltfr_pm_ops,
> +			    .of_match_table = s32_dwmac_match,
> +	},
> +};
> +module_platform_driver(s32_dwmac_driver);

After commit 0edb555a65d1 ("platform: Make platform_driver::remove()
return void") .remove() is (again) the right callback to implement for
platform drivers. Please just drop "_new".

Best regards
Uwe

--3rgewbnae3w46mrf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcPiVMACgkQj4D7WH0S
/k5nvwgAuwyNlZ0+t4WBDYiT5Gz/XG+UlD8Gxq09jGYiM7ZQuaUMVhaZX2EGtw4j
d+a7PY7H1Q8CSSzlRd8slK6qfFH3k/wg11NO0xOi/lW7uY+2Mou/nKFAa8HitBw3
ciZmWaiBmTaeer34RvNqwit6OIs16tHjlcWE4Ls+BqHzjXLKRw4ME0G5CHih3NeH
dG9mrc9d8yY9ufokGwyutKBMwgesxuK9Rm6q2/BFS9l3jkQwB95bfnuc7EY6Z/lt
Yg0td4KQmT3hHNnQ/NBIyp59RUoPddmazMhl3BvN3BkQa/0VKeoXlEfIO2Y6QsB4
czW2X/X5vQl1CM4TOIf7BSHZyRkOMg==
=npHo
-----END PGP SIGNATURE-----

--3rgewbnae3w46mrf--

