Return-Path: <devicetree+bounces-63639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC168B5B7D
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 16:37:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1B5E6B25301
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 14:37:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 196167E103;
	Mon, 29 Apr 2024 14:37:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B10E7E0F2
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 14:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714401429; cv=none; b=Exnj+ty86LsPBwFv7IgnnJHmugVkOSB0fLYNCHlK8iUyK/ImXnCu57u7uRIFnwAg0nAqcyQa0jsEmMwwbM6piPQsL2l6HucYeM6m4vajpWxPEbzITKzIoaJezKLWVRmxWiMmpvkvec5W6HAvE8arRX4s9J7JUvV2CwzvjduCZys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714401429; c=relaxed/simple;
	bh=nB3lm5LGvKV9XqkrnYtTkE3fYv9JWWTBzsV7krSTC2U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lfzrwlmWbKNuOeSelpF9lR7pqwnSSL35PP8csA9KCl0cS0kWWsklMtizor2z8Wo5FgIxfb6YR7paq/D6wkdnhVfGt2ixQe870VAvha7+/Lj7Iv+De5LxjWLNL88fEXk6URKDtc7m7Z/WXUFmUSaB2vAA4updcfjkTD+LjAUIGRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1s1S7m-0002gk-Gd; Mon, 29 Apr 2024 16:36:58 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1s1S7l-00EzxD-S7; Mon, 29 Apr 2024 16:36:57 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1s1S7l-00BVIe-2V;
	Mon, 29 Apr 2024 16:36:57 +0200
Date: Mon, 29 Apr 2024 16:36:57 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: nikita.shubin@maquefel.me
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Sverdlin <alexander.sverdlin@gmail.com>, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v9 12/38] dt-bindings: pwm: Add Cirrus EP93xx
Message-ID: <qfydt2yyc7ao62qgqqfwc5e6h3bzlil32k7sqfcnphlpbjk4fp@65lcb7ggqpsj>
References: <20240326-ep93xx-v9-0-156e2ae5dfc8@maquefel.me>
 <20240326-ep93xx-v9-12-156e2ae5dfc8@maquefel.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7kuxxtmkh4tc37qi"
Content-Disposition: inline
In-Reply-To: <20240326-ep93xx-v9-12-156e2ae5dfc8@maquefel.me>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--7kuxxtmkh4tc37qi
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 26, 2024 at 12:18:39PM +0300, Nikita Shubin via B4 Relay wrote:
> +examples:
> +  - |
> +    #include <dt-bindings/clock/cirrus,ep9301-syscon.h>
> +    pwm@80910000 {
> +        compatible =3D "cirrus,ep9301-pwm";
> +        reg =3D <0x80910000 0x10>;
> +        clocks =3D <&syscon EP93XX_CLK_PWM>;
> +        #pwm-cells =3D <3>;
> +    };

I considered taking this patch via my pwm tree for v6.10-rc1, but there
is a dependency on another patch from this series because of the
#include in the example that maeks dt_binding_check fail.

So I won't apply the patch for now.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--7kuxxtmkh4tc37qi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmYvsIgACgkQj4D7WH0S
/k5U/wf/YhSADpxczwrguNSREeaMRJwPUDspvnf/1s/wsr2IEbezgRpf4xrlbvi6
Znv/O/k0w8JI0oJT+JocLeMVEddb/MggKRZ1utP52BhS1x4v814fZUKlJXx81bue
esuaq3XMHOegVIEdELOZAWH5vCfJykRlgxzblCnYIaAna/PWj8A24OJYS62wWPnl
8NhseEbffwyZHtiA82l3aAdn6o2W2vo98808c+8Opa6+GQ5tdJcKZC94cz/WLcHg
gNoaY7WsZKDDxIS4WoMGuiPFFus7qGzee5RYLaWoPy//6uJZQ5aSgT1PI4FQm0vw
TqEk6yFlBswL3jWeYqJ9ikKmYM+ziw==
=h7YV
-----END PGP SIGNATURE-----

--7kuxxtmkh4tc37qi--

