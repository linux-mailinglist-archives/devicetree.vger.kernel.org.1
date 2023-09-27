Return-Path: <devicetree+bounces-3911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 470147B07CD
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:11:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 72FC51C20840
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:11:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03DF538F9D;
	Wed, 27 Sep 2023 15:11:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C4A1170F
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 15:11:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD3A5C433C7;
	Wed, 27 Sep 2023 15:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695827516;
	bh=G606I1kZ1AHBVrCZFavAu4e2HWTmXZXEIS63VWTx2Tc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lJJ83QwunOB4di5rQ/a7cD8ug3+iKjYHy4JuQC0Umtgk/2m08BIbRsmVOoJ5NJ5+y
	 lA/xaL/LiaY+pbAnkKHQyGNtENAAzMUBsk5apuw1PEiFCDCyWQb1XfPqJO2xm0IcYN
	 JJAE7Lt9VpntXDll//UNwkr1HNyOdWuwWIoPa2xQ2cpjIqGa7A+Fc5Pdmt6ciYBLXD
	 I/6NllSp1DdAJFnHrVlH9s2DXFRtLEGgXb/OHnbA2Lnb/XIuV45fv1GSs4wxF8X7VZ
	 jA+ZOgeaNwYunq0k4OM8yKuDTPbQu/UcuC/3EFRec5EposXrpnYhn7wrYunsy5qG8F
	 K8DRNGXB6Su8Q==
Date: Wed, 27 Sep 2023 16:11:52 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: nvmem: u-boot,env: Add missing
 additionalProperties on child node schemas
Message-ID: <20230927-junkie-custodian-04fddfb252ce@spud>
References: <20230926164529.102427-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="APJsmRLFDDhA8HqH"
Content-Disposition: inline
In-Reply-To: <20230926164529.102427-1-robh@kernel.org>


--APJsmRLFDDhA8HqH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 26, 2023 at 11:45:25AM -0500, Rob Herring wrote:
> Just as unevaluatedProperties or additionalProperties are required at
> the top level of schemas, they should (and will) also be required for
> child node schemas. That ensures only documented properties are
> present for any node.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>



Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--APJsmRLFDDhA8HqH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRRGOAAKCRB4tDGHoIJi
0hlJAQD+0BuNHiymSKAtlRbK1Is6k2KoM8IDxYLmBkoH04ajVAEA2Nx86fg+IoA6
+7rYdyEkrFJEnG8y8DuFNoG2IJ9MmwA=
=klf7
-----END PGP SIGNATURE-----

--APJsmRLFDDhA8HqH--

