Return-Path: <devicetree+bounces-11829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0FD7D6C44
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:47:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 67E15281AE1
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:47:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACBF623778;
	Wed, 25 Oct 2023 12:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YATVW8Kq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91C6B266B9
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 12:47:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C9E5C433C8;
	Wed, 25 Oct 2023 12:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698238063;
	bh=CyqpQORDLu/59HchAbKGaMl6wNYR768sbZQ93p3rYeg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YATVW8KqlFBX1JZPFRjcCsvP4x4eJPNtjpD65YAuL8PazS+HeumlBZZokf3o5lwvd
	 iVMMaJNXaDKw6Z0oWv1eNeK6MyuMIdu/CpuQkrH5Y0HuaDlfNP/9QL6TWpgVF1eKay
	 V+iqAFkoR8sSqzeuv1DLzujhRFm9naJaPVFPzXwud+g4+Ozh7PuwF5p4zRibwCJtjE
	 UxQJbT8OQkzdMshisVf+9fHDgVAWtWtum5z6U16KPaDn+OwbfLVnHZH8ifXTOUQ6tP
	 7v4/sEW+PqMcgjWqQIRmaS9GIbJ0jGrwZ9QiG/4Q5vOSGVKDxQURd5grtWNBExk5B/
	 kw2MQo2ZKgAvw==
Date: Wed, 25 Oct 2023 13:47:38 +0100
From: Mark Brown <broonie@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/7] regulator: Handle system-critical under-voltage
 events
Message-ID: <c91e53ee-2054-49d0-b554-ab96a5f68b19@sirena.org.uk>
References: <20231025084614.3092295-1-o.rempel@pengutronix.de>
 <20231025084614.3092295-3-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mdxULxN83Uy27oHH"
Content-Disposition: inline
In-Reply-To: <20231025084614.3092295-3-o.rempel@pengutronix.de>
X-Cookie: There's no time like the pleasant.


--mdxULxN83Uy27oHH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 25, 2023 at 10:46:09AM +0200, Oleksij Rempel wrote:

> +	if (rdev->constraints->system_critical &&
> +	    event == REGULATOR_EVENT_UNDER_VOLTAGE)
> +		hw_protection_shutdown("System critical voltage drop detected",
> +				       REGULATOR_DEF_EMERG_SHUTDWN_TMO);
> +

This should probably be a switch statement for the event and also handle
REGULATOR_EVENT_FAIL, possibly other errors this would also be
appropriate handling but it's less immediately obvious and we can
always extend later.

--mdxULxN83Uy27oHH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmU5DmkACgkQJNaLcl1U
h9AQGwf/TfaVoP11UEL9ECg1F1JcTUxtIKKbV2e5h8+gGyu/nUdTL2RCcBm0xYbi
ngVCbCI0ei6qYIIgd0hfGwjxFk8+hOK9mQR1oUy3zJ2ICa+iQjXoH/6cYrRJ/8Hm
k6sI8toUJNpUsFRNpOcuvcGCd1oCAQPOH1Xd2h67ay133OnFdWPrU+se41uC8Vg7
6eLPt2hMB2MKyaDCon4JYnYl9ZmIsQUHJ2Ik/2xEhxdkAngx27nOrlpAGy9ADyWa
1CyJIkW0bQhXx3qVvaBbI3y/BTybwQdyixxuch+6EmTXSFR/3lnTAUHvlhgLY2ZX
tjH8WxzNCKXEw5I3UbM5/KZZ6t2TBw==
=Sbh1
-----END PGP SIGNATURE-----

--mdxULxN83Uy27oHH--

