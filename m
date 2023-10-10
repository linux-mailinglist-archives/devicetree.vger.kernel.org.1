Return-Path: <devicetree+bounces-7209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A817BFB19
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:19:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF8AB281C40
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 12:19:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 626251947E;
	Tue, 10 Oct 2023 12:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdPOSZBs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F6119464
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:19:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72D09C433C7;
	Tue, 10 Oct 2023 12:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696940382;
	bh=sEVlrLrAZSdHFXAv0vW7xg1SHdyTN9p2QBUnItRsFbA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BdPOSZBsPAHmivXoJZBs36ei4YrGgNB9IRansk+2wIAaxEghTX8MvO25Q58xFyO92
	 d43t6B/xohkgGgBQWIrA9u4Tao5p2A1mauEfueMjXw9pso+WKeDgtSJRFtwbZH4TZz
	 ouSIKuYC3pVM0jfOCqidRrClgel+isHmjicigarZeC7rIL6sPsUhhQ9+qS4McGqMBO
	 IEwArTTsreKIt36wR5Rfbq6bITZ9EbPMSCTfWx3q1j4KYUOTBR6+17SztT6xLwETEk
	 /fQKivkWkDRwM450ZxVn9+5OZ49i8g2UH8fK6cyugwYOhOPZT60OSftZ4i5FJvo+Oy
	 PtktLz45TyFVw==
Date: Tue, 10 Oct 2023 13:19:36 +0100
From: Mark Brown <broonie@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v1 3/3] regulator: fixed: forward under-voltage events
Message-ID: <5e51792a-cc93-4364-a51b-c2b116d89369@sirena.org.uk>
References: <20231010085906.3440452-1-o.rempel@pengutronix.de>
 <20231010085906.3440452-3-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sc4/D+hultAuc0Xk"
Content-Disposition: inline
In-Reply-To: <20231010085906.3440452-3-o.rempel@pengutronix.de>
X-Cookie: I feel partially hydrogenated!


--sc4/D+hultAuc0Xk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 10, 2023 at 10:59:06AM +0200, Oleksij Rempel wrote:
> Add handler to forward under-voltage events.
> On systems for more or less complicated regulator chains we need to
> forward under-voltage events to actual driver which need to react on
> them.

It isn't clear to me why this would be implemented in one specific
driver, nor why this would be done unconditionally.  Could you provide
some information on the problem you're trying to solve here?  This feels
like something that should be a core feature.

> +static int reg_fixed_regulator_notifier(struct notifier_block *nb,
> +					unsigned long event, void *data)
> +{
> +	struct fixed_voltage_data *priv =
> +		container_of(nb, struct fixed_voltage_data, nb);
> +	struct regulator_dev *rdev = priv->dev;
> +
> +	if (event != REGULATOR_EVENT_UNDER_VOLTAGE_WARN &&
> +	    event != REGULATOR_EVENT_UNDER_VOLTAGE)
> +		return NOTIFY_OK;
> +
> +	regulator_notifier_call_chain(rdev, event, NULL);

This would be better written as a switch statement for extensibility,
and it's not clear why the filtering?

--sc4/D+hultAuc0Xk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUlQVgACgkQJNaLcl1U
h9BzmQf8DlvDTySkrhtUhIgfciqU+pjEPtHsKQqoDt7De9vv7WBpPjMCs9c8j27a
Bh1J0WSWgde+2u39XUSddSwJyWnNwUdJSM0CeZKXd0bEYPfsVHpCrxVbq3RGes83
sr+3cD6QylEJmNwtmvqiMKfrzfRWZIZIAAJb6a/o1hYY+OgrY1ddK+KAJTIP195t
azfhhfMmHANcCAqqsdIJX3++16Wg+fI+XuntB4nb4LKQFfDtOdtuK29rh0Vd3ox6
hODpV3nf4yF2h/QugxX/neL4Cjg8Xi/Tkgq90E557WcMH2MRzYchNfgwFjztfHzK
JQWDqvRIw/+u3TdwWkTYuxLw2LlsQg==
=K/BW
-----END PGP SIGNATURE-----

--sc4/D+hultAuc0Xk--

