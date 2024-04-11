Return-Path: <devicetree+bounces-58247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FB98A1068
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 12:35:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CBD051F2B85A
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 10:35:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF410148312;
	Thu, 11 Apr 2024 10:33:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738EF657AE
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 10:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712831591; cv=none; b=WnutWFcVnibBH1Id7G/0czq+8x7MtHsLuQPVMETidXjs461Tn4sLiIUE9nfuHTXebjFxbDWv1CQ43CEEVQnHVu0mJe1K+GlZLnDDpZ8jtRrRD9gZ6Bw4yTi+t2O3yvSoAlXBdQayZn8h1PQ6B8WKOLCYSNLCLFJLg2Jo16RrJ60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712831591; c=relaxed/simple;
	bh=ElzZYBWp8AdV3akV5K/BdGLPBZ2CfJ06aMF+txcml6g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DZ+Js/R4DnoHfI4kf+VpbjJSud7IYZXGHE02vqiplO+nclqUZwgceqftqoz01t8tnudMKRAHQ/YCdzBXdgZyeUql+Ws6zZfYDBfCazobfvNVXUWLxtFX7UfXGh0nkF0spmWmMDjeZ8tnr8e6LZGOHjuPSODrIudW7VKaDvL9U5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rurjo-0008My-Fg; Thu, 11 Apr 2024 12:33:00 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rurjn-00BfUW-93; Thu, 11 Apr 2024 12:32:59 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rurjn-000V0G-0a;
	Thu, 11 Apr 2024 12:32:59 +0200
Date: Thu, 11 Apr 2024 12:32:53 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Trevor Gamblin <tgamblin@baylibre.com>
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	michael.hennerich@analog.com, nuno.sa@analog.com, devicetree@vger.kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	dlechner@baylibre.com, Drew Fustini <dfustini@baylibre.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/2 v4] dt-bindings: pwm: Add AXI PWM generator
Message-ID: <mf3riwux5cwr63w6i3n5mh4g2yrn4xeywbhce3izldahrb7lw6@4tvyt6pkfixr>
References: <20240301173343.1086332-1-tgamblin@baylibre.com>
 <20240301173343.1086332-2-tgamblin@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pm7r5yegshksrs7t"
Content-Disposition: inline
In-Reply-To: <20240301173343.1086332-2-tgamblin@baylibre.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--pm7r5yegshksrs7t
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Fri, Mar 01, 2024 at 12:33:41PM -0500, Trevor Gamblin wrote:
> From: Drew Fustini <dfustini@baylibre.com>
>=20
> Add Analog Devices AXI PWM generator.
>=20
> Link: https://wiki.analog.com/resources/fpga/docs/axi_pwm_gen
> Signed-off-by: Drew Fustini <dfustini@baylibre.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Co-developed-by: Trevor Gamblin <tgamblin@baylibre.com>
> Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
> ---
> v4 changes: None (rebased, added maintainer's previous Reviewed-by)
> v3 changes: None (rebased, added maintainer's previous Reviewed-by)
>=20
> v2 changes:
> * Address feedback for driver and device tree in v1:
>   * Relocate "unevaluatedProperties" in device tree binding
>   * Remove redundant "bindings for" in description
>=20
> ---
>  .../bindings/pwm/adi,axi-pwmgen.yaml          | 48 +++++++++++++++++++
>  MAINTAINERS                                   |  8 ++++
>  2 files changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.=
yaml
>=20
> diff --git a/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml b/=
Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
> new file mode 100644
> index 000000000000..63461920a362
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
> @@ -0,0 +1,48 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pwm/adi,axi-pwmgen.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices AXI PWM generator
> +
> +maintainers:
> +  - Michael Hennerich <Michael.Hennerich@analog.com>
> +  - Nuno S=E1 <nuno.sa@analog.com>

Would be great to get an ack from these two.

Otherwise looks fine to me.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--pm7r5yegshksrs7t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmYXvFEACgkQj4D7WH0S
/k7KVAf/Z0guDznNwA2cSzUP47biZHg+GawkqjrLVYRoLLtUQPWXYf1NVKFtzoU1
d7ksQAw7z8T45ozh4Msyzv+aYkM5HzHAdJ785KEUgQCNOOr2LGa2Dz1gaFkISF8N
dmRcnqOlKA0yYHnMnV0VTHe0YJW9tJ9YZNR15Qwb3npq9Egd4JvgLqifCFV3hiE1
3vEjhvmB8Mfjz98Kao4nudm20MQUxSiW2s8c5iTgNR4LE47vIelpotoHAiU2hLIx
DRYaLd4Ij0W2vWfriJWUI/G4xOAWaUgPAp476vdIQlLzNAnQ/k4qra4RFwlktEkS
mcWWgAYXXEgSz+dXHPY4LQIqzMTxRw==
=VpiI
-----END PGP SIGNATURE-----

--pm7r5yegshksrs7t--

