Return-Path: <devicetree+bounces-8231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA0E7C73F6
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 19:18:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 35074282B55
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 17:18:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B23B43418E;
	Thu, 12 Oct 2023 17:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kl8LkNA5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 958253219A
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 17:18:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13BACC433C7;
	Thu, 12 Oct 2023 17:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697131108;
	bh=8WQ9WakSvt0JZ1o1r9TPQaTSax9+Eye313WbhUWk1EQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Kl8LkNA5ef1H6uTBtWbtzIF1HUfk2o9uojzT2FId2a0LPq4wUbg5HLCCBup4tqfg3
	 MgfZd3BZLPSnF4AYYvsuiwsHT4fnhks+zBnlj89BPB/jmVRJKNegXtoLVwhGK44Tqt
	 IrmI9JAz96wnyYR3HK2KZLH/j/t68ZgSAMlBN6sE0vymx/6uA+jfs3CEPKeqfZTYlO
	 8dLFdcN5bD5MvkuTn+vOS7lXjuVuYE5rpDjmKjEhMF8WfRqSmPmVQQcb0GY8+zokJH
	 wKTPe0+CblOGkNsXx97tn/lnGjiL4tHnnwQ+vidKTT4MSnrEnvOpm7825WAoQFTdbK
	 KSfPvXbTIq/WA==
Date: Thu, 12 Oct 2023 18:18:23 +0100
From: Conor Dooley <conor@kernel.org>
To: Nik Bune <n2h9z4@gmail.com>
Cc: wim@linux-watchdog.org, linux@roeck-us.net, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	skhan@linuxfoundation.org, stwiss.opensource@diasemi.com,
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [v2 PATCH] dt-bindings: watchdog: da9062-wdt: convert txt to yaml
Message-ID: <20231012-flaky-humvee-0a0532621940@spud>
References: <20231010211439.98458-1-n2h9z4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rTv/DG15mkuu5z6g"
Content-Disposition: inline
In-Reply-To: <20231010211439.98458-1-n2h9z4@gmail.com>


--rTv/DG15mkuu5z6g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 10, 2023 at 11:14:39PM +0200, Nik Bune wrote:
> Convert txt file to yaml.
> Add a mainterner block. Took a value from dlg,da9063 PMIC.
>=20
> Signed-off-by: Nik Bune <n2h9z4@gmail.com>
> ---
>=20
> Changes in v2:
> - Updated filename to be equal to compatible value.
> - Removed ">" in description fields.=20
> - Added optional properties to the example.=20
> - Removed reg property, as it is not present in the txt version.=20
>=20
>=20
>  .../bindings/watchdog/da9062-wdt.txt          | 34 -------------
>  .../watchdog/dlg,da9062-watchdog.yaml         | 49 +++++++++++++++++++
>  2 files changed, 49 insertions(+), 34 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/da9062-wdt=
=2Etxt
>  create mode 100644 Documentation/devicetree/bindings/watchdog/dlg,da9062=
-watchdog.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/watchdog/da9062-wdt.txt b/=
Documentation/devicetree/bindings/watchdog/da9062-wdt.txt
> deleted file mode 100644
> index 354314d854ef..000000000000
> --- a/Documentation/devicetree/bindings/watchdog/da9062-wdt.txt
> +++ /dev/null
> @@ -1,34 +0,0 @@
> -* Dialog Semiconductor DA9062/61 Watchdog Timer
> -
> -Required properties:
> -
> -- compatible: should be one of the following valid compatible string lin=
es:
> -	"dlg,da9061-watchdog", "dlg,da9062-watchdog"
> -	"dlg,da9062-watchdog"
> -
> -Optional properties:
> -- dlg,use-sw-pm: Add this property to disable the watchdog during suspen=
d.
> -	Only use this option if you can't use the watchdog automatic suspend
> -	function during a suspend (see register CONTROL_B).
> -- dlg,wdt-sd: Set what happens on watchdog timeout. If this bit is set t=
he
> -	watchdog timeout triggers SHUTDOWN, if cleared the watchdog triggers
> -	POWERDOWN. Can be 0 or 1. Only use this option if you want to change the
> -	default chip's OTP setting for WATCHDOG_SD bit. If this property is NOT
> -	set the WATCHDOG_SD bit and on timeout watchdog behavior will match the
> -	chip's OTP settings.
> -
> -Example: DA9062
> -
> -	pmic0: da9062@58 {
> -		watchdog {
> -			compatible =3D "dlg,da9062-watchdog";
> -		};
> -	};
> -
> -Example: DA9061 using a fall-back compatible for the DA9062 watchdog dri=
ver
> -
> -	pmic0: da9061@58 {
> -		watchdog {
> -			compatible =3D "dlg,da9061-watchdog", "dlg,da9062-watchdog";
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/watchdog/dlg,da9062-watchd=
og.yaml b/Documentation/devicetree/bindings/watchdog/dlg,da9062-watchdog.ya=
ml
> new file mode 100644
> index 000000000000..9b7ffdb01da0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/dlg,da9062-watchdog.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/dlg,da9062-watchdog.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Dialog Semiconductor DA9062/61 Watchdog Timer
> +
> +maintainers:
> +  - Steve Twiss <stwiss.opensource@diasemi.com>
> +
> +allOf:
> +  - $ref: watchdog.yaml#
> +
> +properties:
> +  compatible:
> +    enum:=20
> +      - dlg,da9061-watchdog
> +      - dlg,da9062-watchdog
> +
> +  dlg,use-sw-pm:
> +    type: boolean
> +    description:
> +      Add this property to disable the watchdog during suspend.
> +      Only use this option if you can't use the watchdog automatic suspe=
nd
> +      function during a suspend (see register CONTROL_B).
> + =20
> +  dlg,wdt-sd:
> +    type: boolean

This property is a boolean...

> +    description:
> +      Set what happens on watchdog timeout. If this bit is set the
> +      watchdog timeout triggers SHUTDOWN, if cleared the watchdog trigge=
rs
> +      POWERDOWN. Can be 0 or 1.

=2E.. but you say "can be 0 or 1". Does this refer to the bit value, or
the property? There are no in-kernel users of this property as far as a
quick grep shows so it is a bi hard to tell.

Otherwise, I'm happy with this.

Thanks,
Conor.

> Only use this option if you want to change the
> +      default chip's OTP setting for WATCHDOG_SD bit. If this property i=
s NOT
> +      set the WATCHDOG_SD bit and on timeout watchdog behavior will matc=
h the
> +      chip's OTP settings.
> +
> +required:
> +  - compatible
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    watchdog {
> +      compatible =3D "dlg,da9062-watchdog";
> +      dlg,use-sw-pm;
> +      dlg,wdt-sd;
> +    };
> --=20
> 2.34.1
>=20

--rTv/DG15mkuu5z6g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSgqXwAKCRB4tDGHoIJi
0ggqAQCkoZx9c6Yh77TrRv7mNju5mBSXOD4Jza5NVnKIvTQlxAD/Tquzix7jblNL
/bhL9kUfDSrutdB3WihQbqRy+mYzuQ4=
=tJk+
-----END PGP SIGNATURE-----

--rTv/DG15mkuu5z6g--

