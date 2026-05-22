Return-Path: <devicetree+bounces-301774-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMtdM5RIEGrzVgYAu9opvQ
	(envelope-from <devicetree+bounces-301774-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 14:14:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1285B3AD0
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 14:14:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 315F33059F87
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 12:02:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 116D2370AD6;
	Fri, 22 May 2026 12:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ah0zfKYh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E77B536AB54;
	Fri, 22 May 2026 12:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779451279; cv=none; b=rtFXI/RSbxsbAhVkd2OakRyT8xrQDd1RIEgi/6mtBO24UqYfVj0bS8IJM+hz1/z8dKU06vuzvFVBY22k8pD5c+ra1HjuQo71z9TmJgzeeociGT3EOQc8l1CaFJyqA80whN3DnUKY2XdeidBYPNHsKu9CRA5kD7Uo+WwbT3zAjoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779451279; c=relaxed/simple;
	bh=BFiPANneCVeAt8GPV/X3VXJdN0Wjj6gY3eGImz6UQ9s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mQhfRGUczJ/T9uZ3/sNXXTRKsvQFwr58/eVTfsAB49ycz87X2JYHaVJcOC3RbUyLSR5nGY64LVVQPiY5oitZls9o2RRtWLuevzz9R8ZprnZSUG+rR4jCi9ddEtdWJILqmlAgxr1YMAUE4TWI4TF7CYYqmI4ijDFs3vqM9qAFovU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ah0zfKYh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCACA1F000E9;
	Fri, 22 May 2026 12:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779451277;
	bh=pOYGhlgiAGuPggI6pSrYAlA0acBLZaAn2+zncHvls/s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Ah0zfKYh2JYCKvm+JkLAkVgSypzzSaAJ5KBThBxZzXbbVcRJuyCQTo0XlXj7Q+7YB
	 +67FQdZhFZliPvr2z5AOCyCX3mzMTNRlHw5x5wcVd7s8MUKSwR4rJ6sZ0ZPNes6HR2
	 xTwm5nRbRCUBwqSy+SSJccoebHvis6SS2nZtOvuVTfAPSIqjsbXTXhgH3+1Rk6R7+e
	 gsNWhQnc+8GDRXNZNllMPlmJIZY80AvpYF/T/xi3sOgwPMqXZAPxhEFlbJwr+00G8y
	 eHbM3CcUiv2Yboig6MX+SPBGUVo8fb2OhIoc6a+slbfx/8+JEREwx0+4In+NtrSjN2
	 T/ZI16I/1OugQ==
Date: Fri, 22 May 2026 13:01:13 +0100
From: Mark Brown <broonie@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, KancyJoe <kancy2333@outlook.com>
Subject: Re: [PATCH v4 2/2] regulator: add SGM3804 Dual Output driver
Message-ID: <8916f45b-3a97-4a5e-b608-5feaea40f2b2@sirena.org.uk>
References: <20260506-topic-sm8650-ayaneo-pocket-s2-sgm3804-v4-0-7495e7905693@linaro.org>
 <20260506-topic-sm8650-ayaneo-pocket-s2-sgm3804-v4-2-7495e7905693@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4EC8Aj0qfw+omTw2"
Content-Disposition: inline
In-Reply-To: <20260506-topic-sm8650-ayaneo-pocket-s2-sgm3804-v4-2-7495e7905693@linaro.org>
X-Cookie: Celebrity voices impersonated.
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-301774-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,outlook.com];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sirena.org.uk:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: CB1285B3AD0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--4EC8Aj0qfw+omTw2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 06, 2026 at 09:34:07AM +0200, Neil Armstrong wrote:

> +config REGULATOR_SGM3804
> +	tristate "SGMicro SGM3804 voltage regulator"
> +	depends on I2C && OF
> +	select REGMAP_I2C
> +	help
> +	  This driver supports SGMicro SGM3804 dual-output voltage regulator.
> +

The GPIO usage in the driver looks non-optional so we should have a
GPIOLIB dependency shouldn't we?

> +static int sgm3804_sync_regcache_state(struct sgm3804_data *ctx)
> +{
> +	guard(mutex)(&ctx->lock);
> +
> +	/* If both GPIOs are down, IC is powered down and I2C writes will fail */
> +	if (!gpiod_get_value_cansleep(ctx->gpios[SGM3804_POS_RAIL]) &&
> +	    !gpiod_get_value_cansleep(ctx->gpios[SGM3804_NEG_RAIL])) {
> +		regcache_cache_only(ctx->regmap, true);
> +		regcache_mark_dirty(ctx->regmap);
> +	} else {
> +		/* At least a GPIO is up, we can write registers */
> +		regcache_cache_only(ctx->regmap, false);
> +		return regcache_sync(ctx->regmap);

This should really put the regmap back into cache only mode if the sync
fails.

> +static const struct regulator_desc sgm3804_regulator_desc[] = {
> +	/* Positive Output */
> +	{
> +		.name = "pos",
> +		.of_match = "pos",
> +		.supply_name = "vin",
> +		.id = SGM3804_POS_RAIL,
> +		.ops = &sgm3804_ops,
> +		.type = REGULATOR_VOLTAGE,
> +		.linear_ranges = sgm3804_voltages,
> +		.n_linear_ranges = ARRAY_SIZE(sgm3804_voltages),
> +		.n_voltages = SGM3804_VOLTAGES_COUNT,

n_voltages is misnamed and should really be maximum selector, for a
device like this with sparse selectors it doesn't do what you'd expect
unfortunately.

--4EC8Aj0qfw+omTw2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmoQRYgACgkQJNaLcl1U
h9Calwf6A8IMxdZKrZxzrfZvZzJnabcdm2wNlnmam4upSSxb8ZC9QBD9aC4DibCk
Td2Pa+rj85fObFhw4zyWOzlLXHG50R/9meZwVHXTnDrjLSLji0rpR3HXGT2IfgvD
kj1P97L4aqnn8Open2NPCbVGLfBjyXbn7kQonWOCvABJTe54JKcSmUfENvFWuUDo
61AtUL2f9hWm8KWsPhmNfqprLaJkMdkaP9KAV3Pvg0bEdqCXI+axn5BwoWt1LZxG
+4LWe+zrzBlgfB/Wg5/4RO5vIGXXGfRJs/OvZVdDWExTRHWyQ86zrDKSq7+We3F9
KDwoS80I+XWdruKD3ULaYOEFRCf3tw==
=dXEl
-----END PGP SIGNATURE-----

--4EC8Aj0qfw+omTw2--

