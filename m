Return-Path: <devicetree+bounces-317977-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id l6xNKm73Q2opmQoAu9opvQ
	(envelope-from <devicetree+bounces-317977-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:05:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3F06E6BDB
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:05:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=H+mUVYB6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317977-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317977-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C93AA3001CCE
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 17:05:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D55453DA5D8;
	Tue, 30 Jun 2026 17:05:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 782AD3749ED
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 17:05:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782839143; cv=none; b=eFzfMY2ZnL6mv+Lh4TrpH2tLMnRM6fe3sfcsMlh0rynds3Fi+JZ0q4Z3SlHR+qmTsAB5BeBGbvN+SHmaoU5QISTdTN7JMyvZEE9GNosEErC3Ozcb8J3FZyQ9npaCFnJCB2kXodlWXr2dZSsqM9ml6b2bdkStn7FYkYHnTKWjsGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782839143; c=relaxed/simple;
	bh=0Uwn5wLiQj3tJaPlnhF1tBnz5JBcvjeXN9cyOgQxkHc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q5mklSSP5Iy5rQobPL2U4QNRaacKsIkSZzDUOg5pa61DEJCCI/3QcqNjTJOV3mFGn0FxiQFc+kYCM3VkvkIpa2Xo4jIrbpDfq/2Ub+e2lMKVH+cPVkZr52fHs1ks5Wo+h/gVFy9yuVruboKy4oSBA4iSFMWNFH59/RNkVk2Y3Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=H+mUVYB6; arc=none smtp.client-ip=209.85.221.43
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-473dc4cf238so1535379f8f.3
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 10:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782839141; x=1783443941; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8dphnC8SKNiL5rCPN27FPOK3wkClI/SkKY0aFIfYvFE=;
        b=H+mUVYB6uD+L3jERIRs5EkLhBPlBwvmY3dqJCY+x00zCSiiJpx1kPiOJoHFn7of2Kp
         JFhtPYAtdHoi2AQtx4pUj7y4ApkSO2rzAkR8SgnXCEoc15ABoXMbZv6KDzMAydayGEbg
         JhKg/HfuFozups3qfgiEuquezC7Dhg2dtMGGYniFjuYa+BbnTMHWfgdW1XCe+/9qJhAS
         ju1lcacUitgWWFTCs+lXRUWnDUX4ps2n+6Hx+j/Z/4py/qj1yyOkUGHYdNGpbqKk7gua
         0fFWGFTfR0klfaKLNh2A1vfVXQqVnMakFTfAeHASqule8mqXkpDhbLLby84AF5D0EcV9
         aikQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782839141; x=1783443941;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8dphnC8SKNiL5rCPN27FPOK3wkClI/SkKY0aFIfYvFE=;
        b=SpZPRvMAxozDyvoxgtC+EDEGpJGguW1TJZsqMdSBcpVT0QqSUUJKlnnTD0IHr2NI9Y
         RCaxuli1OpqUUJb8dwNvOnknedhmtCOJzdhSq3TSDhkdfOTm8gjaKMhHC6kSXJ9SJGae
         HQQ1/uyWlMCZwcCcV6GSESVL0pboks2kcejJeh3v6lakACrfnoeBmMZjjCPQyXLQNI6m
         tB3kI8Fp1B6U7nFgywSPBVGkIKinbiGnMwVxoXm3nsqiO34Nbc9ldZ26h9oJgmI5ROTe
         8OZJV68yi61NCin/wlcDdcI6p0h7uvuiqovDJQBF2CWHYlQnZk8CamFDXxdFHXYrgJ8A
         xDZg==
X-Forwarded-Encrypted: i=1; AHgh+RpgDEBD5iEcNjWgZ9NnMco4kWyX+wnnlHWQIrDBWzD3WxRa6/IhMxhMw8kQ6NSp5boC+Bj0naFxOLlC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/ognjwdfKcpjUTJ+tM71O48cmZYk+GpDhBka0wbNLKmMDPvTQ
	P2BR5pVxi7GW8wVKUwZnmADAu4iIB0+WiPIQ85Kv5tjMnhh41cWvKD3JGbtfgRz4lyA=
X-Gm-Gg: AfdE7cnnw6Q0OqWdQ1DkB3ePYq24+7uDKm1e8kgryFEEhRKI4Gs/a9X936qsGDmnNSK
	2hhiegWBkVsgmXzobxtlfzcHU4wo72lfGB7FqCDsU5J/c8EEl3JfwZf6shJnr4x+YrupUOinFn2
	K8ty+8tNFeXgS1UvtFukg5OLhUGfbqSvju0HK5dPqpXGhWrtMNYg15QSuulBifR8YAxbdIQS/+Q
	f82xoTQfaTHH/tPEXs4WMPY1oa5tcAvZ6joeFHuLA2HrN60oafOfTqQZlesKbvtMlHDMvNzBhLF
	I4y0Bm/6zdDyKYBJHn557qKmE9KT+SAREpxBls7bjfIodeLnij9PuRWNGu9IvTmAvD7kmK6e/aO
	FKOOEx//lFoRoLcM9qzOmisG5ZGC6GL52e4j+JcQJRveQoJfq4ox6iT1s4vxf1kyJx8rx7el7Qp
	hKeQOBStNQi+gFQA2hrphSMo1OJhf/m+wga8R4p+oPuxbDhaNkphQJ7WCHhoqSdZh/6+Tq7FyvE
	uXinOABr/V/GTc=
X-Received: by 2002:a05:6000:26d3:b0:473:e22:e819 with SMTP id ffacd0b85a97d-475521c8722mr5818240f8f.29.1782839140964;
        Tue, 30 Jun 2026 10:05:40 -0700 (PDT)
Received: from localhost (p200300f65f47db042a9b551def0a6b94.dip0.t-ipconnect.de. [2003:f6:5f47:db04:2a9b:551d:ef0a:6b94])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-475643cd64bsm9939104f8f.14.2026.06.30.10.05.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 10:05:40 -0700 (PDT)
Date: Tue, 30 Jun 2026 19:05:39 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-leds@vger.kernel.org
Subject: Re: [PATCH v6 5/6 RESEND] mfd: motorola-cpcap: diverge configuration
 per-board
Message-ID: <akP3Izez9NIln7ER@monoceros>
References: <20260625081812.33474-1-clamor95@gmail.com>
 <20260625081812.33474-6-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ltaqrrercs4zhqmo"
Content-Disposition: inline
In-Reply-To: <20260625081812.33474-6-clamor95@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:clamor95@gmail.com,m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:lee@kernel.org,m:pavel@kernel.org,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-leds@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317977-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[u.kleine-koenig@baylibre.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u.kleine-koenig@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[monoceros:mid,baylibre.com:dkim,baylibre.com:from_mime,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AB3F06E6BDB


--ltaqrrercs4zhqmo
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v6 5/6 RESEND] mfd: motorola-cpcap: diverge configuration
 per-board
MIME-Version: 1.0

Hello,

On Thu, Jun 25, 2026 at 11:18:11AM +0300, Svyatoslav Ryhel wrote:
> -static const struct of_device_id cpcap_of_match[] = {
> -	{ .compatible = "motorola,cpcap", },
> -	{ .compatible = "st,6556002", },
> -	{},
> -};
> -MODULE_DEVICE_TABLE(of, cpcap_of_match);
> -
> -static const struct spi_device_id cpcap_spi_ids[] = {
> -	{ .name = "cpcap", },
> -	{ .name = "6556002", },
> -	{},
> -};
> -MODULE_DEVICE_TABLE(spi, cpcap_spi_ids);
> [...]
> +static const struct of_device_id cpcap_of_match[] = {
> +	{ .compatible = "motorola,cpcap", .data = (void *)CPCAP_DEFAULT },
> +	{ .compatible = "motorola,mapphone-cpcap", .data = (void *)CPCAP_MAPPHONE },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, cpcap_of_match);
> +
> +static const struct spi_device_id cpcap_spi_ids[] = {
> +	{ "cpcap", CPCAP_DEFAULT },
> +	{ "mapphone-cpcap", CPCAP_MAPPHONE },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(spi, cpcap_spi_ids);

Please keep the named initializers for cpcap_spi_ids[].

See https://lore.kernel.org/lkml/20260515103150.164887-2-u.kleine-koenig@baylibre.com/
for a rationale.

Best regards
Uwe

--ltaqrrercs4zhqmo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmpD92AACgkQj4D7WH0S
/k5/wgf/diCBfYdB8j8uFC1QHVGHgF5dNlMzGStyhWpcGPl1UoNYng77/aCjw7Hn
nhki9CD9CbxoX+rYpFKe9BT56YpJg6Nc3f4cQWreBuHJPQklpvFwR8Rkt4CcFEEq
VFXsKF9lDmLuZAbIC/BYGeD0AK18fq/HSWB3L1ScZa4i+tGPHGxzJlOI2CgZpRJj
f7dvbm90vj2mdPNnM/eiUccxWqK8b+CtUuAcxCx2bhMQab7ywTDL9zLUCvGzc2c0
X1L85lBeEbpW4VQf3bCaaHuNVFBwpeJ2CRNa3bG8Iz6IT+0hia7P2jv0qp2OJG6+
z3+uZrNyEwelyBZN7FBlATiKorwxgg==
=q6sW
-----END PGP SIGNATURE-----

--ltaqrrercs4zhqmo--

