Return-Path: <devicetree+bounces-111937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2985E9A0582
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 11:28:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 61B2828163B
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 09:28:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5453F205E0F;
	Wed, 16 Oct 2024 09:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="G6HdXwVK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89D80205159
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 09:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729070913; cv=none; b=LccxFgTMrTqLNWoAg3muSBt1WoXQT8reg+4K43UqhgySeq6ys55SurtBW+MFtR11MDmTFZCcV2q8zRzZ9K8DYaZmWdh3DzJ46Y5EwJ36cgN2xhy6WpC9nHPFPT75GT01lJ00Ynjtsx9FhTWn3kQnOyZ5fZoysYqR722mxDimHGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729070913; c=relaxed/simple;
	bh=2hITb7ixUCoaHstjOF7tqMWtrsncT1Me0VctcN60pTM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F07oPlidqeu2AJz9BiZspsTxX8Jtx0ABFb4gIBfkzLFFrOkYrMn3GpSD0DKn8yACqBSTNsUjYCeUTNIdCNopsS2ot/KzGHTTbqGtpPYIFW8Sc9cZ5ozZgH6FnrJV7xPZSykGseTtYJKlZvOeWilQSbC77Rcq/I5MW/J2+Q4sKxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=G6HdXwVK; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2fabb837ddbso80317041fa.1
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 02:28:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729070910; x=1729675710; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kaw9D/kIN1b9T3KHw5WABachNfPeN4gFtGnPwB52lsw=;
        b=G6HdXwVKWxCWrWDzKPglIUdb+3j+63/2sooSNtyb2HRnmJPomk6y3rms9QlsYIOdtn
         AyvNSP4sh2+QWwDklJkFt9Ho/T2fqdST7ZG+fMwsbLPZExCsk808M9T+b9mnu14GFMDF
         2qNK6GlA8RVXqp7hsrtGlyI6Bb5C+l1xDPzXVkke6sg6SHynzpGfUxZ526VSObm75+FO
         T09WvGYrtRqHl6nLbwUep5OGOdR2Hqfi7oMfrPxv2wbZYzSrEZm3Vpe56nzGMrwTCN7Z
         gsX7B4RwDad40CP07FIZZ19D3+ijZpVvcBruGU1+75lF1/cPZjZzl4nyx3ErYtY1ApnY
         mbww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729070910; x=1729675710;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kaw9D/kIN1b9T3KHw5WABachNfPeN4gFtGnPwB52lsw=;
        b=Ep3t8f2iPq9UoQzUGzZy6O0YGj+aEln4z4nz7yITyC2D5PGqcnfzy4ANoKh1WYF1FV
         V/peFk9aY4pEFuWJ/zjMPMDRzsFqdiSQdK7G5hef0hnerUt2USb7qzvGuICcLeevxDp5
         3Qlc2SFmgpJ8kEHZnKZhgVcIXEQLDR942GF8Bt7ewawoFqiuHbwxQRJFjuVhmmiOUcw6
         DqMYLTg+RFUzTs8UHZTCxYoqIXcEd4QU7IHVbT1VW9wwOIDfB4vcQt479krpC0m49BEz
         IgIYUPYJ7KmnH24cC/ZA9Z2yFgt4abdVrsXIkwUS5GRDyVVfrl/nCr3qDQ6rnKEOI3pe
         Dd2A==
X-Forwarded-Encrypted: i=1; AJvYcCV50GM9j+FIZ7rwJpRugtYXhIRMMLO5r6TUqzHfDbfw2NG8lK2WGUm/3yMsVjdO8/kuGX/poFYW3hVR@vger.kernel.org
X-Gm-Message-State: AOJu0Yzh1Tm5ODWXahS/YRNdqO9BWoa9mDffcVOQ5phuFcmYyYo8MPXA
	JEC+5GMQeStwxfHWv+7/5onKLG/IBypbaTEJ/gCtfHDXPxpe7cGjfAqWPVfyA94=
X-Google-Smtp-Source: AGHT+IEYMXVIC9kQZtbFQfvHujJ0M6Nwf6BwktePWGcoHKQTcxo7zOicGTDhPJBpQsGkrBNyf/BB/g==
X-Received: by 2002:a05:6512:1048:b0:533:4785:82ab with SMTP id 2adb3069b0e04-539e54d771fmr9704988e87.1.1729070909399;
        Wed, 16 Oct 2024 02:28:29 -0700 (PDT)
Received: from localhost (p200300f65f19e3002f38cf427133ca7b.dip0.t-ipconnect.de. [2003:f6:5f19:e300:2f38:cf42:7133:ca7b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a29844899sm163143966b.178.2024.10.16.02.28.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 02:28:29 -0700 (PDT)
Date: Wed, 16 Oct 2024 11:28:27 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Yassine Oudjana <yassine.oudjana@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Sam Shih <sam.shih@mediatek.com>, Daniel Golle <daniel@makrotopia.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Yassine Oudjana <y.oudjana@protonmail.com>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 2/2] clk: mediatek: Add drivers for MediaTek MT6735
 main clock and reset drivers
Message-ID: <vn466kmo2uqrf6ap54oat2bipj4lsfri7asnsrptrlthva6j5m@dop6xit2pzjk>
References: <20241010132659.81606-1-y.oudjana@protonmail.com>
 <20241010132659.81606-3-y.oudjana@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6bxbshljplwl4jbm"
Content-Disposition: inline
In-Reply-To: <20241010132659.81606-3-y.oudjana@protonmail.com>


--6bxbshljplwl4jbm
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v6 2/2] clk: mediatek: Add drivers for MediaTek MT6735
 main clock and reset drivers
MIME-Version: 1.0

Hello,

On Thu, Oct 10, 2024 at 04:26:57PM +0300, Yassine Oudjana wrote:
> +static struct platform_driver clk_mt6735_apmixedsys = {
> +	.probe = clk_mt6735_apmixed_probe,
> +	.remove_new = clk_mt6735_apmixed_remove,
> +	.driver = {
> +		.name = "clk-mt6735-apmixedsys",
> +		.of_match_table = of_match_mt6735_apmixedsys,
> +	},
> +};

After commit 0edb555a65d1 ("platform: Make platform_driver::remove()
return void") .remove() is (again) the right callback to implement for
platform drivers. Please just drop "_new".

Best regards
Uwe

--6bxbshljplwl4jbm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcPhzkACgkQj4D7WH0S
/k7bEQgArCTzD5wMQ0rkFmO4HdAGU33tE1m4k67OBzCAjqlOkLRUzTBNiue26/qP
myno/ZoWRk9VMaPetbpV2f72ZVg3dmDGe+DmF7Qhw+caPS6pJXYiM0NSeZUMjkBp
490i+X1spsTL+mCSI+9KNlAu9MiZXCqP2BIe8xErHkux7P4/O0kvTjik5vg4DDDv
hSLm4ZqhhV1jA0bi8TmmGpIo858UEKfRYCU3a9ahA52Clfn8zQO015ZDX6U2lMB0
LHrUU0ERRCY93AXylv6+kie1Ya8u/mNvxg8mmrvQehoeMErLnOw+LrJ8US+ZxXWz
CfQKArCVe6lrYB4VLK40QijGnf0V4A==
=LV0J
-----END PGP SIGNATURE-----

--6bxbshljplwl4jbm--

