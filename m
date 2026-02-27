Return-Path: <devicetree+bounces-269382-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6M26DK/XoWlcwgQAu9opvQ
	(envelope-from <devicetree+bounces-269382-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:43:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A72C1BB918
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:43:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D1383032CEC
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:41:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F7D944B668;
	Fri, 27 Feb 2026 17:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBWsoR/l"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414BA35F8D2;
	Fri, 27 Feb 2026 17:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772214088; cv=none; b=hbd5PErjhPOOcW1NeQ0CbTIuaTQgtgMzFSfp9X+QTGRMVlchqG+4P1iZpxWidnVE2NZAI5fS7DLooFb58p4IP+4vYmMgY6+nCPCkn0V2r7/e91mJbNBT0tbC+peff48vBRZJjyWXZlOrryuVeWqqErlAsxKzLWZTriYU0Epzr0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772214088; c=relaxed/simple;
	bh=op1ZO811gMS5ZJ/a2dRTLFSEvS8j9DhKD2BZDCTWA+E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mL/MOxeeQ7SgY8rrJ2Yp8+ioVlNTL2Sne9BudSmmDZw3Gp0V9aUi3VS/tbPtxV1Q9bHaXgND8CyBKnWqd9mMT6mllme3fTTRX2gRx5CLIy9J++o1/KElN7uYq9ifu8jEKirCZbeG8oXnYSPPJc945IHwHZdVlseiKESWYRYPZ+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBWsoR/l; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F6F2C116C6;
	Fri, 27 Feb 2026 17:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772214087;
	bh=op1ZO811gMS5ZJ/a2dRTLFSEvS8j9DhKD2BZDCTWA+E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pBWsoR/lMDMDZNAVYslI2mK0uQajRldFJ37nGZdHO4HZJi2yuOj44v3204QjdlN9S
	 eOZD5ayy0a3VxTUfYE0fR1sPX4kl/BsX7/j5Op5MjhUWt6TDWhKtRZHoft6vDd5I9D
	 t0KF9k8LbufBOueVf/73kY9vqszbHkr/BQ4C0piV/ng42MABP38dA7McupishokXod
	 wMPSdhKr5AjFaGbeo6lp3SxZOR6fGGhxAQXQ4554PTpSxqF2nMb8A3batd1ESArWaP
	 bRJw5+CJzxnv5yzMXLQbncQBC5X6efLY6r3XRTWCVBLCFjLxpCgPLcpvy+DRNzeTzf
	 rOI15Ts1tK0mw==
Date: Fri, 27 Feb 2026 17:41:24 +0000
From: Conor Dooley <conor@kernel.org>
To: Lucas Faria Mendes <lucas.fariamo08@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	jacobsfeder@gmail.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: misc: add schema for xlnx,axi-fifo-mm-s
Message-ID: <20260227-unboxed-customary-7ce6eda1858c@spud>
References: <20260227173048.29174-1-lucas.fariamo08@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1PRw7Wv4wTde9DPP"
Content-Disposition: inline
In-Reply-To: <20260227173048.29174-1-lucas.fariamo08@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269382-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,43c00000:email]
X-Rspamd-Queue-Id: 8A72C1BB918
X-Rspamd-Action: no action


--1PRw7Wv4wTde9DPP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 27, 2026 at 02:30:44PM -0300, Lucas Faria Mendes wrote:
> Add a proper YAML devicetree binding schema for the Xilinx AXI-Stream
> FIFO IP core, documenting the three supported compatible strings:
> xlnx,axi-fifo-mm-s-4.1, xlnx,axi-fifo-mm-s-4.2, and
> xlnx,axi-fifo-mm-s-4.3.
>=20
> This resolves the checkpatch warnings about undocumented DT compatible
> strings.
>=20
> Signed-off-by: Lucas Faria Mendes <lucas.fariamo08@gmail.com>
> ---
>  .../bindings/misc/xlnx,axi-fifo-mm-s.yaml     | 102 ++++++++++++++++++
>  1 file changed, 102 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/misc/xlnx,axi-fifo-=
mm-s.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.ya=
ml b/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
> new file mode 100644
> index 000000000000..dbb5425e39d6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
> @@ -0,0 +1,102 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/misc/xlnx,axi-fifo-mm-s.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Xilinx AXI-Stream FIFO IP core
> +
> +maintainers:
> +  - Jacob Feder <jacobsfeder@gmail.com>
> +
> +description: |
> +  The Xilinx AXI-Stream FIFO IP core has read and write AXI-Stream FIFOs,
> +  the contents of which can be accessed from the AXI4 memory-mapped inte=
rface.
> +  This is useful for transferring data from a processor into the FPGA fa=
bric.

Isn't this basically a dma controller?

> +  The driver creates a character device that can be read/written to with
> +  standard open/read/write/close.

This has nothing to do with the binding. I went looking for the driver
and realised it is in staging, and there's a text binding in staging
which this patch should be deleting!
Are you trying to get this out of staging? I don't know how much value
there is in trying to convert the binding if the driver isn't going to
be moved out.

> +
> +  See Xilinx PG080 document for IP details.
> +
> +  Currently supports only store-forward mode with a 32-bit AXI4-Lite
> +  interface.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - xlnx,axi-fifo-mm-s-4.1
> +      - xlnx,axi-fifo-mm-s-4.2
> +      - xlnx,axi-fifo-mm-s-4.3

I find it kinda suspect that minor version changes cause incompatible
changes in the programming model.

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  interrupt-names:
> +    items:
> +      - const: interrupt
> +
> +  xlnx,axi-str-rxd-tdata-width:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    const: 32
> +    description:
> +      AXI-Stream RX data width in bits. Only 32-bit is supported.
> +
> +  xlnx,axi-str-txd-tdata-width:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    const: 32
> +    description:
> +      AXI-Stream TX data width in bits. Only 32-bit is supported.

Why do these need properties if they are only 32-bit always? Is that
limitation on the driver? If so, the binding should permit what the
hardware can do.

> +
> +  xlnx,rx-fifo-depth:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Depth of RX FIFO in words.
> +
> +  xlnx,tx-fifo-depth:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Depth of TX FIFO in words.
> +
> +  xlnx,use-rx-data:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1]
> +    description:
> +      1 if RX FIFO is enabled, 0 otherwise.

These two should be booleans.

> +
> +  xlnx,use-tx-data:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1]
> +    description:
> +      1 if TX FIFO is enabled, 0 otherwise.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - xlnx,axi-str-rxd-tdata-width
> +  - xlnx,axi-str-txd-tdata-width
> +  - xlnx,rx-fifo-depth
> +  - xlnx,tx-fifo-depth
> +  - xlnx,use-rx-data
> +  - xlnx,use-tx-data

And if the properties become boolean, they aren't required any more.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    axi_fifo_mm_s@43c00000 {

I think this should be "dma-controller".

> +        compatible =3D "xlnx,axi-fifo-mm-s-4.1";
> +        interrupt-names =3D "interrupt";
> +        interrupt-parent =3D <&intc>;
> +        interrupts =3D <0 29 4>;
> +        reg =3D <0x43c00000 0x10000>;

reg should be after properties.

pw-bot: changes-requested

Thanks,
Conor.

> +        xlnx,axi-str-rxd-tdata-width =3D <0x20>;
> +        xlnx,axi-str-txd-tdata-width =3D <0x20>;
> +        xlnx,rx-fifo-depth =3D <0x200>;
> +        xlnx,tx-fifo-depth =3D <0x8000>;
> +        xlnx,use-rx-data =3D <0x0>;
> +        xlnx,use-tx-data =3D <0x1>;
> +    };
> --=20
> 2.53.0
>=20

--1PRw7Wv4wTde9DPP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaaHXQwAKCRB4tDGHoIJi
0uVHAP95mN5yyzaHS+oQd17w2T3cDLJ2gXSPptAYVPKt7p6HhAEAuhnIDEW76wbx
GKIW7j+aNTxxCSKOE48vmfo8h78/1wA=
=cJRB
-----END PGP SIGNATURE-----

--1PRw7Wv4wTde9DPP--

