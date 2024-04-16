Return-Path: <devicetree+bounces-59834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 168B08A7232
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 19:25:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7D46283FBC
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 17:25:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AF8813280C;
	Tue, 16 Apr 2024 17:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1MQ0yXd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5786C1F956
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 17:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713288335; cv=none; b=BnJO44cnhl6w7IG6CeBT1unNqGoh8BdG6XlzwwT/HG+wns0EKLKje2rpMcTKzlf8uLmck5PxPeVrcwgkqtlrVhXsH/WqcMEvDRDSHP8dguutS+X3CoEHR0X4ZXdNHbP3Ge521ChKN2k/65ycHns7BUC3dErvaktEqmdYkgB7Yu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713288335; c=relaxed/simple;
	bh=SAa9s3VJpC0ue6WJQEp5gjjZX/3kAnQf4xSZ8MArlO4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uHWqNC4vlWkrA/NLz5ctFyhuFVgOJjbGBBe1+fhEufBdjyAbmq796kUW+wybmU30xhPv5J1XE1TQMARUqTAFVmYYhSVWbb0PgjKus4JKqrlfwhq0S8krUaj1HgvhuvhsUpgwTBN+Ruf+JMr4dtnPKFO7L7gk1l0DKi89vA5/c+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1MQ0yXd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64B64C32783;
	Tue, 16 Apr 2024 17:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713288334;
	bh=SAa9s3VJpC0ue6WJQEp5gjjZX/3kAnQf4xSZ8MArlO4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R1MQ0yXdgMP7a9GSZTNHVYo8piid3ASYxDLSjEJUL/kOnd24CQB4qd81mSGI2c8fj
	 nDB2W3o8qjhdPEoCD3Ws9AUpXM+HgXpVe3vz1hpWFoi+U/mFEHuoANJ67xxGKklrr9
	 WgOx0Q1EERTaV79CMuj+RlVdq4fflk5jFmYsdkmpe/tFAQgNavNRsqxEgE0P3IY7Sg
	 JCqE2Cmiw/X6PGbNFleYVa9OWgCYb7+Lv4FAAlI1bIvpE5tqvjiZf71x/7ml9Z9ONa
	 3QGPSq1eYpS1U+WjWNKic2PjbIPb7nsJJgGF2EQ1p5w4Rp5m/JZedSN+MdiDuqjslq
	 TLoE3V95zThGQ==
Date: Tue, 16 Apr 2024 18:25:30 +0100
From: Conor Dooley <conor@kernel.org>
To: Eddie James <eajames@linux.ibm.com>
Cc: linux-aspeed@lists.ozlabs.org, joel@jms.id.au,
	andrew@codeconstruct.com.au, devicetree@vger.kernel.org,
	linux-fsi@lists.ozlabs.org, robh@kernel.org, conor+dt@kernel.org,
	krzk+dt@kernel.org, jk@ozlabs.org, alistair@popple.id.au,
	lakshmiy@us.ibm.com
Subject: Re: [PATCH v2 1/3] dt-bindings: fsi: Document the IBM SBEFIFO engine
Message-ID: <20240416-askew-slapstick-994453ecbf73@spud>
References: <20240415153907.10051-1-eajames@linux.ibm.com>
 <20240415153907.10051-2-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MSKVpxQ0QimsDgBf"
Content-Disposition: inline
In-Reply-To: <20240415153907.10051-2-eajames@linux.ibm.com>


--MSKVpxQ0QimsDgBf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 15, 2024 at 10:39:05AM -0500, Eddie James wrote:
> The SBEFIFO engine provides an interface to the POWER processor
> Self Boot Engine (SBE).
>=20
> Signed-off-by: Eddie James <eajames@linux.ibm.com>
> ---
> Changes since v1:
>  - Chance "ody" to "odyssey"
>  - Fix typo in commit message
>  - Reword description to describe the hardware only
>=20
>  .../devicetree/bindings/fsi/ibm,sbefifo.yaml  | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/fsi/ibm,sbefifo.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/fsi/ibm,sbefifo.yaml b/Doc=
umentation/devicetree/bindings/fsi/ibm,sbefifo.yaml
> new file mode 100644
> index 000000000000..69521b1cfb25
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/fsi/ibm,sbefifo.yaml

Filename matching a compatible please.

> @@ -0,0 +1,39 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/fsi/ibm,sbefifo.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: IBM FSI-attached SBEFIFO engine
> +
> +maintainers:
> +  - Eddie James <eajames@linux.ibm.com>
> +
> +description: |

This | should not be needed, there's no formatting to preserve.

> +  The SBEFIFO is an FSI CFAM engine that provides an interface to the
> +  POWER processor Self Boot Engine (SBE). This node will always be a chi=
ld
> +  of an FSI CFAM node; see fsi.txt for details on FSI slave and CFAM
> +  nodes.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ibm,p9-sbefifo
> +      - ibm,odyssey-sbefifo
> +
> +  reg:
> +    items:
> +      - description: FSI slave address
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    sbefifo@2400 {

Per fsi.txt, the generic node name looks like it should be
"fsi-slave-engine"?

Cheers,
Conor.

> +        compatible =3D "ibm,p9-sbefifo";
> +        reg =3D <0x2400 0x400>;
> +    };
> --=20
> 2.39.3
>=20

--MSKVpxQ0QimsDgBf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZh60igAKCRB4tDGHoIJi
0riyAP9Y7YRTnsQXUck7bocG8d1Z6DOgkf6/GdAs2Q40yO93dQD/Ssb64e2hbTr4
L5rS5qThpe1oEpcgL5WCoik0TlQLeQ0=
=9qd6
-----END PGP SIGNATURE-----

--MSKVpxQ0QimsDgBf--

