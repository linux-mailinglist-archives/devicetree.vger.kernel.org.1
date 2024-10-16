Return-Path: <devicetree+bounces-111945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C0B9A05C5
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 11:39:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3C0C6B26D1A
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 09:39:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B93C9206068;
	Wed, 16 Oct 2024 09:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="eBWo52dt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A04E205E31
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 09:39:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729071547; cv=none; b=F7aQ6epzIE07AbS7jn/tWZEATFs3t47+7ULJWuI+rqD8SVdyfPjFLeRedG+EnGnsNCWSGALN8ydEfyCi4yQP6RIHZU/kdwltmNcnHoI0dh7I6yHbR3ixCzGJjLhJ37kSYHBTnfsoZ0NjfqCjN9vnq0+Ha5hEqOwMZTnMKqS8sbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729071547; c=relaxed/simple;
	bh=Sml1c5XDkf+mM5ny5E0zAYRNjdhQVmFu66yPnXdTWvw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FmOb7ml+NbWPaeJiBm/IFAnw9LlrJX57VzMKmX2PZlcueFnEP5wtab9g0Phedb9cI88umFmjKrNaPddLd3xFiyp3Cr4wtxVSmpieDpjwmc4104tcbzkCbj3FKeCOhmO3vSkaS3aMjTvrMNblYcrab/gul9H4pEhk+ZX/RRDBtk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=eBWo52dt; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5c95a962c2bso5484224a12.2
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 02:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729071544; x=1729676344; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R56RTRK8R0JS74gooTrJuXXRYhqgjTbDD/DtXS6D0cs=;
        b=eBWo52dtmmhMWQU4hd/r9rc942jCMXkSa09xE3BBy8zwIOMu/WzijohIB+b7JMCbNw
         DlQ4yxb6p8of87QbWqYqqm4qcHIIpLtg+iODFJ76rY9LMd94FGp+xuII0ShTGWDfEdrx
         //DoVZTn3kUpQr9cPMUNrA98yEQ/HBeNU9+Kv+z+A/RJFNXb4jJ5jC1o68bmkFYbEtBk
         MTCJ2epGxcIu9EPW+pET0tTaz9R9PsY6qQhr4faoVS66OTv74Y9pT0+1/keIWRACvQPo
         fDS28zb6fu8+P0O9DyZo1gB42TTsnmao+B2c4/BYje55JCqspYLFaghhvpbRQALPgWXn
         4mNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729071544; x=1729676344;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R56RTRK8R0JS74gooTrJuXXRYhqgjTbDD/DtXS6D0cs=;
        b=PdXfW1wmZf/7J/ZMhr+tbf6B3NE/PlImJmi7IsznaNYoXbKrgt43e3WiLFqA5cf1gT
         mwq+rJDuv8gG79Eb1rF/qbHgnrYjkWdxp7I/uq3frPTVSGA6/HPB5CeOq+DJtgrOH6aP
         mmvRf9inCBy7i4FZjZJQVqsx+sA8AQ9LkS0TRhn8dPZkLUrJA5IkCJoeiHQE4TD4uyVK
         2A1qtN7t/2ZDCwctQCScVFC2TF18WsgM1YY8/Tq0vorkU149ukiuxtjkNEwuo9DbVq0q
         V4xi+PCgwPPj/x5HuQxuQx9bO1HESs2PV0Kt/igf6/yyGZJjoAEoVYc6v5qwKMwwRfRc
         P0BA==
X-Forwarded-Encrypted: i=1; AJvYcCW7LRy4kYHZ+EikYqa/Eaav7XdU1juwVpZdQwlfFNMU4xLnY+9XPgMMKhVmWinWGjJ3H5RsRKoICq7K@vger.kernel.org
X-Gm-Message-State: AOJu0YytASxeb0O0F0VyEdfwNSD9uTyrzgqjzCo76RaMpJoNbkV0np8c
	cmlIHUfjii+cRFMouYjT3UnpVeBbcrkmbwYUj92A4Mu0Pj39tvwNHKi+O7jRKhw=
X-Google-Smtp-Source: AGHT+IGH8j9J1p1V+0p6VYNvYKS3XvbMhuBSrfG3O3EqpFwB3u+q2ZIqYvOcQdINSE89pTy+3D+8VA==
X-Received: by 2002:a17:907:743:b0:a9a:20f9:a402 with SMTP id a640c23a62f3a-a9a20f9a6f7mr631946366b.13.1729071544474;
        Wed, 16 Oct 2024 02:39:04 -0700 (PDT)
Received: from localhost (p200300f65f19e3002f38cf427133ca7b.dip0.t-ipconnect.de. [2003:f6:5f19:e300:2f38:cf42:7133:ca7b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a298169a8sm164063066b.134.2024.10.16.02.39.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 02:39:04 -0700 (PDT)
Date: Wed, 16 Oct 2024 11:39:02 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Troy Mitchell <troymitchell988@gmail.com>
Cc: andi.shyti@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] i2c: spacemit: add support for SpacemiT K1 SoC
Message-ID: <bfik6iry4t6udp2zpmg2nduwt665cykbw2nr6coin5yutkuinb@cixoybdfxfgo>
References: <20241015075134.1449458-1-TroyMitchell988@gmail.com>
 <20241015075134.1449458-3-TroyMitchell988@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jegoz4amhyeksf4q"
Content-Disposition: inline
In-Reply-To: <20241015075134.1449458-3-TroyMitchell988@gmail.com>


--jegoz4amhyeksf4q
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v1 2/2] i2c: spacemit: add support for SpacemiT K1 SoC
MIME-Version: 1.0

Hello,

On Tue, Oct 15, 2024 at 03:51:34PM +0800, Troy Mitchell wrote:
> +static struct platform_driver spacemit_i2c_driver = {
> +	.probe = spacemit_i2c_probe,
> +	.remove_new = spacemit_i2c_remove,
> +	.driver = {
> +		.name = "i2c-k1",
> +		.of_match_table = spacemit_i2c_dt_match,
> +	},
> +};

After commit 0edb555a65d1 ("platform: Make platform_driver::remove()
return void") .remove() is (again) the right callback to implement for
platform drivers. Please just drop "_new".

Best regards
Uwe

--jegoz4amhyeksf4q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcPibQACgkQj4D7WH0S
/k7nEwgAoSBNeH8rDa6GBUUCD1KvzeMq+gN65TzpKxPGHAu9sTNUt6ikWhH2IkdG
cbEVO46wcK0KYwAiKbV8DF3u8YGlrksR6DxCDOHBi6fA9a01PgIoz4H2ysV/9iuw
xejOv+WpPV6DHoeh1k4kAKRCyXxIdVuLjixKlJmGOrGxgA3WF2O32SdfhQ/MHPkC
g2K3YuzPLUv5pwP4uB+bqv7XP2MVGzRe5n00+XX2U9L4mnhp54GPObRNl/+aumha
pVcdeDQ2FBkAWchsLYgPxQLu39lZyydNEFkQNHAUAZDNr45zbA8f3dRrXF5Y8hGo
owG5a5xoDQfeGOMsVqGrgwFlY7CQyQ==
=n93/
-----END PGP SIGNATURE-----

--jegoz4amhyeksf4q--

