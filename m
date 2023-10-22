Return-Path: <devicetree+bounces-10587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5A97D2271
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 12:00:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 913BE1C2091A
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 10:00:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88F611C30;
	Sun, 22 Oct 2023 10:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLa/vHW7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D352A51
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 10:00:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48913C433C7;
	Sun, 22 Oct 2023 10:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697968813;
	bh=7PsMWbaVMedcFn6pPH+/OzV5PSechVS/ScQduga9eQk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FLa/vHW7t8aqno59J8dt7ReYX8iDpAuNnwvWrlchV/dNSytiLmDRXjqasn6wdZfhk
	 hV+jNBGwOT+sXnjm7yMLdAhMCFi2vfSikzVUwjp+xu5F+lDFKAo/1xhHbJG19yBCCT
	 u5dBv5n7TsQlKrPbV3q/oNx4XbKb7cpayC7x9noJCcJGUV8bE4EUX+lZh+Z1kmiL+J
	 DyxNt3kT5d0Qh6rkMpm4BkWKjPFwdfsRUV2a6vtfbXTkfgrDjGAEXbMeirAqIStS9z
	 dUYV6L9LMJdnG0eujR0GuqeINj+D3/pHBDG+fz+zbbL3ozNoHFnYSqVzK8rYU+3eqv
	 T7FKjtPcjtZIA==
Date: Sun, 22 Oct 2023 11:00:07 +0100
From: Conor Dooley <conor@kernel.org>
To: Nikita Travkin <nikita@trvn.ru>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Banajit Goswami <bgoswami@quicinc.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	jenneron@postmarketos.org, linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org, linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: qcom,sm8250: Add
 sc7180-qdsp6-sndcard
Message-ID: <20231022-snowy-flashily-0c814247e557@spud>
References: <20231020-sc7180-qdsp-sndcard-v1-0-157706b7d06f@trvn.ru>
 <20231020-sc7180-qdsp-sndcard-v1-1-157706b7d06f@trvn.ru>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nNQF1DonWtR70u/D"
Content-Disposition: inline
In-Reply-To: <20231020-sc7180-qdsp-sndcard-v1-1-157706b7d06f@trvn.ru>


--nNQF1DonWtR70u/D
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 20, 2023 at 08:33:46PM +0500, Nikita Travkin wrote:
> sc7180 can make use of the adsp-baked soundcard, add relevant compatible
> to the documentation.
>=20
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
COnor.

> ---
>  Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/D=
ocumentation/devicetree/bindings/sound/qcom,sm8250.yaml
> index 262de7a60a73..e082a4fe095d 100644
> --- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> +++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
> @@ -25,6 +25,7 @@ properties:
>            - qcom,apq8016-sbc-sndcard
>            - qcom,msm8916-qdsp6-sndcard
>            - qcom,qrb5165-rb5-sndcard
> +          - qcom,sc7180-qdsp6-sndcard
>            - qcom,sc8280xp-sndcard
>            - qcom,sdm845-sndcard
>            - qcom,sm8250-sndcard
>=20
> --=20
> 2.41.0
>=20

--nNQF1DonWtR70u/D
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTTypwAKCRB4tDGHoIJi
0gl5AP0X+bwFzAyHiu5r1O6UFDt6fXJWOpKG7KiyYT2H/ADLfQEAv0d2OZNJEAOh
3R4ScbuFOliRrkzghDPBebpGO59z+A0=
=XI4e
-----END PGP SIGNATURE-----

--nNQF1DonWtR70u/D--

