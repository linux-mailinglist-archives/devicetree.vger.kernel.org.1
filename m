Return-Path: <devicetree+bounces-5076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F1E7B5106
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 13:17:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 07CAE1C204F7
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 11:17:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E357610783;
	Mon,  2 Oct 2023 11:17:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A309CA74
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 11:17:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E1B8C433C8;
	Mon,  2 Oct 2023 11:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696245424;
	bh=RE4FBlHyO/zfPZlZLM/Jo+wd0nETiNEbLPtdhiy7h3E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jOPkb9ZbcogOmm4h1gRsBa+K6JijVCLmXOiwo5eBMoQHrMh9lZ5B8XLSKTh7pEurw
	 IvXpcaCd0ycX+k1pcMrQcBxs9oknb6F0s02BqlJkKqn7M1T9m9MZGBUxbDpYNxZWqH
	 /2SmJdTA0ZsPDFnibJABildeb1sqvP3qfJhHxRYTCIBSE+zFS4UVN6fVEGFMEQYRD8
	 c4tUZq7EFvuyT3p7kqfKsqVG78536BwdonuSgcHSGwxBY2sS2SkEajaILMOLgVqPnD
	 NIqPiYkDUZNLUqE2/sFTQb9AA0JOvxZBWyocqp4rv2zI7/BBZ4BLv3u6P9Kjqi+/Sp
	 k3M2dYJS2vFtw==
Date: Mon, 2 Oct 2023 12:16:59 +0100
From: Conor Dooley <conor@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: mfd: qcom,spmi-pmic: Drop unused
 labels from examples
Message-ID: <20231002-unmolded-petition-d2ee6a725c31@spud>
References: <20231002-pm7250b-gpio-fixup-v2-0-debb8b599989@fairphone.com>
 <20231002-pm7250b-gpio-fixup-v2-1-debb8b599989@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="KTUTVgcFE5gHKHtM"
Content-Disposition: inline
In-Reply-To: <20231002-pm7250b-gpio-fixup-v2-1-debb8b599989@fairphone.com>


--KTUTVgcFE5gHKHtM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 02, 2023 at 09:00:11AM +0200, Luca Weiss wrote:
> There's not much point in having unused labels in the binding example,
> so drop them.
>=20
> This patch was originally motivated by ea25d61b448a ("arm64: dts: qcom:
> Use plural _gpios node label for PMIC gpios") updating all dts files to
> use the plural _gpios label instead of the singular _gpio as label but
> this example wasn't updated. But since we should just drop the label
> alltogether, do that.
>=20
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/=
Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
> index 55e931ba5b47..9fa568603930 100644
> --- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
> +++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
> @@ -239,13 +239,13 @@ examples:
>          interrupt-controller;
>          #interrupt-cells =3D <4>;
> =20
> -        pmi8998_lsid0: pmic@2 {
> +        pmic@2 {
>              compatible =3D "qcom,pmi8998", "qcom,spmi-pmic";
>              reg =3D <0x2 SPMI_USID>;
>              #address-cells =3D <1>;
>              #size-cells =3D <0>;
> =20
> -            pmi8998_gpio: gpio@c000 {
> +            gpio@c000 {
>                  compatible =3D "qcom,pmi8998-gpio", "qcom,spmi-gpio";
>                  reg =3D <0xc000>;
>                  gpio-controller;
> @@ -330,7 +330,7 @@ examples:
>              };
>          };
> =20
> -        pm6150_gpio: gpio@c000 {
> +        gpio@c000 {
>              compatible =3D "qcom,pm6150-gpio", "qcom,spmi-gpio";
>              reg =3D <0xc000>;
>              gpio-controller;
>=20
> --=20
> 2.42.0
>=20

--KTUTVgcFE5gHKHtM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRqmqgAKCRB4tDGHoIJi
0sxtAP95+mFfGC9hHntWipbprg+ek4xNlhEbpKWWHfDq4/DL6gEAni6Hhoqt30DV
oh45HivEaiwndosjW1G+4bCpCmle2AA=
=2/vd
-----END PGP SIGNATURE-----

--KTUTVgcFE5gHKHtM--

