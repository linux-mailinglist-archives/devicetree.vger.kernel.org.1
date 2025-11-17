Return-Path: <devicetree+bounces-239525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D17C65EE4
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 20:19:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DD5AA4EB28B
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 19:17:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20BA633E350;
	Mon, 17 Nov 2025 19:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRkqCpOT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E68FF2D193F;
	Mon, 17 Nov 2025 19:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763406914; cv=none; b=ZkLbY8SAmt5heFB90uafle154wUN2GiS33ySDy8It5ZmJspkFejAQXdc9Iwcqt2qKqnc3/Hv7b675h9OTYh8/9A2AEYAJVLU0OAWTld2qB7vdmUMgqecqY+1G7tl1Ub5xF7Hz8X8bHpuwCny4Tid9DyX9BbRkWiFB4X68DH1Tak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763406914; c=relaxed/simple;
	bh=RQCrLIPIyo6xf+SHGNYbmeGbW+DDG/w7n7p9maN/Rl8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iCpmWQ73/OWDbNXHX9hcB2Yv6qWUIrXIesLUsVhtSE2auGobzoqvzruJsmZRsgNC9VXVutnO0XFepiWNAey+4fZPYYY1eqA1diefl4CTm0NcuDSW3XfAtagt2f61UksIXDPQLu/PssIYQHxLhHav6y6+xxbZxYKuuKtRUGFrheg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRkqCpOT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACC85C2BC86;
	Mon, 17 Nov 2025 19:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763406912;
	bh=RQCrLIPIyo6xf+SHGNYbmeGbW+DDG/w7n7p9maN/Rl8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DRkqCpOTsBlWMcXIjJ8pVSuTy6gwHoNRsmJesNU4vLl8nrtUyscjuk43WBNhxmCDf
	 N7pWssq6xFit2pMj5sh3c5L1JvdGPfuOE66zcQAaFajBy1G3PaR7QevJygdteBZi3e
	 4iN9ORZKt6glmaJ8nA0XOGifn5whX3LGlrwwr5O7spZjxaJ7wkgcf33/7X9+ydGW3S
	 RciB95FNibPFqp0XqGzKJMuin8s9oEsKyFK0DhJcaWe0GUdNKgyxMqQNmbx8DXlHk5
	 OBgLEt05Blmp/Eb/xVQGYMhB/FrpeSuToDMd/rK0Tazu2AB99QUVRh6MlHrN69fiOw
	 Yuhosucc0TvNA==
Date: Mon, 17 Nov 2025 19:15:07 +0000
From: Conor Dooley <conor@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alejandro Enrique <alejandroe1@geotab.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: gnss: u-blox: use open-drain reset and
 safeboot in example
Message-ID: <20251117-registry-headstand-9c87a7449d28@spud>
References: <20251114155413.11949-1-johan@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DH3GlMP1KfnNn2Ub"
Content-Disposition: inline
In-Reply-To: <20251114155413.11949-1-johan@kernel.org>


--DH3GlMP1KfnNn2Ub
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 14, 2025 at 04:54:13PM +0100, Johan Hovold wrote:
> The RESET_N and SAFEBOOT_N pins should typically be left open and only
> be connected to ground in rare cases where a device is misbehaving.
>=20
> Specify GPIO_OPEN_DRAIN in the example as this is what should generally
> be used.
>=20
> Note that the current Linux driver implementation depends on these pins
> being declared open-drain so that they are not driven while the main
> supply is off.
>=20
> Signed-off-by: Johan Hovold <johan@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable


> ---
>=20
> Changes in v2:
>  - declare the pins as both active-low and open-drain (as the former is
>    no longer implied by the latter)
>=20
>=20
>  Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml b/=
Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
> index 9f14cfe7efd1..d016808f65cb 100644
> --- a/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
> +++ b/Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
> @@ -67,7 +67,7 @@ examples:
>              compatible =3D "u-blox,neo-8";
>              v-bckp-supply =3D <&gnss_v_bckp_reg>;
>              vcc-supply =3D <&gnss_vcc_reg>;
> -            reset-gpios =3D <&gpio 1 GPIO_ACTIVE_LOW>;
> -            safeboot-gpios =3D <&gpio 2 GPIO_ACTIVE_LOW>;
> +            reset-gpios =3D <&gpio 1 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)=
>;
> +            safeboot-gpios =3D <&gpio 2 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRA=
IN)>;
>          };
>      };
> --=20
> 2.51.0
>=20

--DH3GlMP1KfnNn2Ub
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaRt0OwAKCRB4tDGHoIJi
0gp8AP9WKoWvPIdxv1GV3u9ICZI1lfj4KrS001Q0GLH7gu0EpgEArridNEFIH114
HOCB2B32FTD2hGOVckZzLxBFxh1UqQE=
=7M8e
-----END PGP SIGNATURE-----

--DH3GlMP1KfnNn2Ub--

