Return-Path: <devicetree+bounces-295685-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIDBNkAGAmpEnQEAu9opvQ
	(envelope-from <devicetree+bounces-295685-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 18:39:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B6F512602
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 18:39:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 72B4231B7DF6
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 16:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5E514218BB;
	Mon, 11 May 2026 16:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkhqiEeN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2FB44218A9;
	Mon, 11 May 2026 16:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778516065; cv=none; b=DqGtjdUEhUOkBhQdST0o+oRLEdMQUovBzUzXjzWLe7nj3CbedzPolHde0Yp8SU2ryXqtqRCvHHEiAXceelCNO7TTcUSjDuywkFWM9sTtt1yPdM1DiKWX8Z8PVkVMh9xNWc41TJo373niIJCMqOyVLHzf1d2v68kEdCAkSFeQU2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778516065; c=relaxed/simple;
	bh=m6zAZscrc1Hf+YvchwhSgyuOwcjZU9vQPxlnr0nADek=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pWVxmPdZzYJ5aKZ1DGzun0AGl5uZvx0e6hc0J/w4WfWyRFFXDOQJ5CxgHjbjeBrgIP/YG9OOsgrmRy5uSqxNY5b3SpNN/yp2N/NYC5b0ln5f4305MqQhCOEJnGhwTRG4uwhMGRD6y6WOgyy/zBLHx1VMUEXiTofWBHiTwJ7I0Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkhqiEeN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4569C2BCC9;
	Mon, 11 May 2026 16:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778516065;
	bh=m6zAZscrc1Hf+YvchwhSgyuOwcjZU9vQPxlnr0nADek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HkhqiEeNkcLql6NIL62UAzMeYvhsDThXROBktIzqwFjt6FYIOax+HuSAiSwmUp3a7
	 ifR0tSFcx/y5jlcKd+y6awOnWLCvHHmKUbmYDhEKjjQr9/a2CGYD7gbqxKmcU6/Leu
	 OBasRSwL9go7qAlPO30chm9aLWyEB+vOpoF1nFpVKbne8BU7C85DEl/wP8pgCnF958
	 g1H5ufQGObwgsL550GyLhmhpS7HKDAZobKxXLvuuZmprtQTnDi1cEtaJe44DMrn2XM
	 Q9bx8ZjLUr0fmGZy6H6B3JZOdNowgCHMxXQn4HbTpLIcmSMpYhtI1fbvfPspOnBPyz
	 EHsXmstm1bqCg==
Date: Mon, 11 May 2026 17:14:21 +0100
From: Conor Dooley <conor@kernel.org>
To: Kartik Nair <contact.kartikn@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	christian.gromm@microchip.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Subject: Re: [PATCH] dt-bindings: misc: add documentation for MediaLB DIM2
 controller
Message-ID: <20260511-saint-amiss-14b925a7f87c@spud>
References: <20260510184419.98043-1-contact.kartikn@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oWwS+pfMKe5c5jwQ"
Content-Disposition: inline
In-Reply-To: <20260510184419.98043-1-contact.kartikn@gmail.com>
X-Rspamd-Queue-Id: 52B6F512602
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295685-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,2b600000:email]
X-Rspamd-Action: no action


--oWwS+pfMKe5c5jwQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Greg, Rob,

On Mon, May 11, 2026 at 12:14:19AM +0530, Kartik Nair wrote:
> Add device tree binding documentation for the MediaLB DIM2 hardware
> dependent module. This documents the compatible strings used in
> drivers/staging/most/dim2/dim2.c which were previously flagged as
> undocumented by checkpatch.

Are we actually meant to be taking bindings for things in staging?

I thought half the point of things being in staging that the state they
were in was poor at best, and that changing properties etc may be
required as part of destaging them.

Greg? Rob?

Cheers,
Conor.

>=20
> Documented compatible strings:
> - fsl,imx6q-mlb150 (Freescale i.MX6Q)
> - renesas,mlp (Renesas Gen2)
> - renesas,rcar-gen3-mlp (Renesas Gen3)
> - xlnx,axi4-os62420_3pin-1.00.a (Xilinx 3-pin)
> - xlnx,axi4-os62420_6pin-1.00.a (Xilinx 6-pin)
>=20
> Signed-off-by: Kartik Nair <contact.kartikn@gmail.com>
> ---
>  .../bindings/misc/microchip,most-dim2.yaml    | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/misc/microchip,most=
-dim2.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/misc/microchip,most-dim2.y=
aml b/Documentation/devicetree/bindings/misc/microchip,most-dim2.yaml
> new file mode 100644
> index 000000000..213078811
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/misc/microchip,most-dim2.yaml
> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/misc/microchip,most-dim2.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaLB DIM2 Hardware Dependent Module
> +
> +maintainers:
> +  - Christian Gromm <christian.gromm@microchip.com>
> +
> +description:
> +  The DIM2 is a MediaLB (Media Local Bus) interface controller that
> +  provides high-speed communication between devices. It supports
> +  synchronous, asynchronous, control, and isochronous data channels.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx6q-mlb150
> +      - renesas,mlp
> +      - renesas,rcar-gen3-mlp
> +      - xlnx,axi4-os62420_3pin-1.00.a
> +      - xlnx,axi4-os62420_6pin-1.00.a
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 2
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: mediaLB_int
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    mlb: most@2b600000 {
> +        compatible =3D "fsl,imx6q-mlb150";
> +        reg =3D <0x2b600000 0x4000>;
> +        interrupts =3D <0 53 4>, <0 117 4>;
> +        clocks =3D <&clks 218>;
> +        clock-names =3D "mediaLB_int";
> +    };
> --=20
> 2.50.0
>=20

--oWwS+pfMKe5c5jwQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagIAXQAKCRB4tDGHoIJi
0iBNAQCk3ntHcl/DSPi9nfXD8l1b//Sweylol88yWCe5KVN6EQD/XAFmJBjPgAHi
nUx2zIkvEu0Y9/5WE+CSR5Jb7U7TqgI=
=OwBD
-----END PGP SIGNATURE-----

--oWwS+pfMKe5c5jwQ--

