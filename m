Return-Path: <devicetree+bounces-5098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E68157B5348
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 14:33:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9AB64285159
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 12:33:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EFF063A0;
	Mon,  2 Oct 2023 12:33:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7013B323D
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 12:33:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC60EC433C7;
	Mon,  2 Oct 2023 12:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696250000;
	bh=zfM1FqvsBwWNXsM+SVd6ihu1DKnhV/P5iAlzz0qeemA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m2RSUZGpGw9lATIoLt4u3m/ZV8mhpV8IrIGxhGHrXCRX+Nd0hyaWxSivGnZOAAQZG
	 jjkPr8+uLuYIAEx8otwRk/IkYJJGZaY/frffJsC4Q6KRjfdxib+tscwOVtNdfsdWU8
	 qtvyv6Oj+2wELOc7F9hK0Y9wZCE42R3wnndkMH23+jwyznYbIb00XIbsNJaoxIwSF4
	 NGsWPFmp2mwiz6vp9A0rpIqbH2QiQqH0eNZFAMPKW/reuC90k1itfL5zrho6DYjRm0
	 h9QqbeQI427K9AcqWyZOti50by70FXRLJjV/XScTmXnYWm3pdCOFCCBWsXqap6rYsZ
	 SKfV1aUa6vNAg==
Date: Mon, 2 Oct 2023 13:33:16 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Jason A. Donenfeld" <Jason@zx2c4.com>,
	Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
	Vincent Huang <vincent.huang@tw.synaptics.com>,
	linux-input@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: input: syna,rmi4: Make
 "additionalProperties: true" explicit
Message-ID: <20231002-reluctant-justice-0c3f63a12ac3@spud>
References: <20230926144249.4053202-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ofFuOQomLN1dqN2A"
Content-Disposition: inline
In-Reply-To: <20230926144249.4053202-1-robh@kernel.org>


--ofFuOQomLN1dqN2A
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 26, 2023 at 09:42:44AM -0500, Rob Herring wrote:
> Make it explicit that the not yet documented child nodes have additional
> properties and the child node schema is not complete.

Guess I missed this patch while reviewing the other additional property
stuff. Seems like an odd binding with the "Other functions, not
documented yet", but seems to be a relic of the original text bindings?
Patch seems reasonable in that context..
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

>=20
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/input/syna,rmi4.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/input/syna,rmi4.yaml b/Doc=
umentation/devicetree/bindings/input/syna,rmi4.yaml
> index 4d4e1a8e36be..b522c8d3ce0d 100644
> --- a/Documentation/devicetree/bindings/input/syna,rmi4.yaml
> +++ b/Documentation/devicetree/bindings/input/syna,rmi4.yaml
> @@ -164,6 +164,8 @@ patternProperties:
> =20
>    "^rmi4-f[0-9a-f]+@[0-9a-f]+$":
>      type: object
> +    additionalProperties: true
> +
>      description:
>        Other functions, not documented yet.
> =20
> --=20
> 2.40.1
>=20

--ofFuOQomLN1dqN2A
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRq4jAAKCRB4tDGHoIJi
0i7xAP4h0c0cCWdV4Op0A+o6eLbX18g5HkRKL/jiSzOzCzfMpgD9Gls2PjWYu+b2
H9lHe1cmUy4dpxo4eaoB8nVVK0fatQk=
=EiZ4
-----END PGP SIGNATURE-----

--ofFuOQomLN1dqN2A--

