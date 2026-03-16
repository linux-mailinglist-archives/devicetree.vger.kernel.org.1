Return-Path: <devicetree+bounces-276119-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PykC4zot2mzWwEAu9opvQ
	(envelope-from <devicetree+bounces-276119-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:25:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A88298A03
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:24:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C425305FFC4
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:22:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F01142848BE;
	Mon, 16 Mar 2026 11:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTLVCK+C"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB58F1A9FBA;
	Mon, 16 Mar 2026 11:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773660141; cv=none; b=QrPLSAe2GsRQ6xobdiOU+nNqrR3KWCvxdGR5WMoHdferTVxvKzCGGjxooYYDVmmiTss4DHXrCPg/gkPoFEee4GEDWIM5/94DtJhm5Ss4bL3kMkU6A5cEIpcxInQ3MID3pSZFf2q9ehHweTIRGLfXJDIMuO96UORvOQOBDbRSHbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773660141; c=relaxed/simple;
	bh=hZ7HCxXZH+KCGvedYMF3TeE2GVqJXuozWkiILmg+dJE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RF4POcZYNkuqVtXW8OksYjpeiDX86IH38stmarYk/grdDeUbUBDGYjXTQ/hFX7ezcULPM2Q2f01aupGyffV24RlJZ2SqZVBpLIahqzF3Je8ntFAwYdwFH/3vIvz420rO64NX2QrMU7MTfGudA6rjCrmHZdmet9Jx7IXL3MJZKnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTLVCK+C; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44A30C19421;
	Mon, 16 Mar 2026 11:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773660141;
	bh=hZ7HCxXZH+KCGvedYMF3TeE2GVqJXuozWkiILmg+dJE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LTLVCK+CdnGJygYTinaAMAF+FIIYL1H+vkvjx8oYuQMjaVC+XjhnpZuf0TKwRPYnp
	 EMQuwlvUtIOb2UNxDoZABKAQch6s07FeBfppJPxUZPmzGRqVpHKqGmTY1Rzuqk7Xpo
	 uAjB17JcB4VVqReeg+d+nj2pQ2HWKBSSSMD9VFG7kqkwFxN3pniM7EsbGrWcegbw2/
	 yJ7XW6MH65V4cSG+kN2ei+u2NoWi7l8ql/GGjh9KVbMftwNBvhCYMRHCXm1AUINn0J
	 UW+8CozvVuszS0aKonYx7vohj6tRK/BnnPklcg2Ugjv+5JXh6pmbQrcrFPOWXAYSOA
	 eG87AInFdt4lA==
Date: Mon, 16 Mar 2026 11:22:16 +0000
From: Conor Dooley <conor@kernel.org>
To: Jia Wang <wangjia@ultrarisc.com>
Cc: Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	Zhang Xincheng <zhangxincheng@ultrarisc.com>
Subject: Re: [PATCH 1/2] riscv: ultrarisc: 8250_dw: support DP1000 uart
Message-ID: <20260316-frayed-pretended-eba059554dcc@spud>
References: <20260316-ultrarisc-serial-v1-0-c464f3e933a5@ultrarisc.com>
 <20260316-ultrarisc-serial-v1-1-c464f3e933a5@ultrarisc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1+Bm8qKmqRdbiva4"
Content-Disposition: inline
In-Reply-To: <20260316-ultrarisc-serial-v1-1-c464f3e933a5@ultrarisc.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276119-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ultrarisc.com:email,infradead.org:email,infradead.org:url]
X-Rspamd-Queue-Id: A5A88298A03
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--1+Bm8qKmqRdbiva4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 16, 2026 at 09:36:18AM +0800, Jia Wang wrote:
> From: Zhang Xincheng <zhangxincheng@ultrarisc.com>
>=20
> The UART of DP1000 does not support automatic detection of
> buffer size. skip_autocfg needs to be set to true
>=20
> Signed-off-by: Zhang Xincheng <zhangxincheng@ultrarisc.com>
> Signed-off-by: Jia Wang <wangjia@ultrarisc.com>

$subject: riscv: ultrarisc: 8250_dw: support DP1000 uart

Please update this to match other modifications to this file.
"riscv: ultrariscv" doesn't belong at the start.

> ---
>  drivers/tty/serial/8250/8250_dw.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/drivers/tty/serial/8250/8250_dw.c b/drivers/tty/serial/8250/=
8250_dw.c
> index db73b2ae17fa..6a2acf173331 100644
> --- a/drivers/tty/serial/8250/8250_dw.c
> +++ b/drivers/tty/serial/8250/8250_dw.c
> @@ -56,6 +56,7 @@
>  #define DW_UART_QUIRK_IS_DMA_FC		BIT(3)
>  #define DW_UART_QUIRK_APMC0D08		BIT(4)
>  #define DW_UART_QUIRK_CPR_VALUE		BIT(5)
> +#define DW_UART_QUIRK_FIXED_TYPE	BIT(6)
> =20
>  struct dw8250_platform_data {
>  	u8 usr_reg;
> @@ -514,6 +515,11 @@ static void dw8250_quirks(struct uart_port *p, struc=
t dw8250_data *data)
>  		data->data.dma.prepare_tx_dma =3D dw8250_prepare_tx_dma;
>  		data->data.dma.prepare_rx_dma =3D dw8250_prepare_rx_dma;
>  	}
> +	if (quirks & DW_UART_QUIRK_FIXED_TYPE) {
> +		p->flags |=3D UPF_FIXED_TYPE;
> +		p->type =3D PORT_16550A;
> +		data->skip_autocfg =3D true;
> +	}
>  	if (quirks & DW_UART_QUIRK_APMC0D08) {
>  		p->iotype =3D UPIO_MEM32;
>  		p->regshift =3D 2;
> @@ -789,6 +795,11 @@ static const struct dw8250_platform_data dw8250_skip=
_set_rate_data =3D {
>  	.quirks =3D DW_UART_QUIRK_SKIP_SET_RATE,
>  };
> =20
> +static const struct dw8250_platform_data dw8250_ultrarisc_dp1000_data =
=3D {
> +	.usr_reg =3D DW_UART_USR,
> +	.quirks =3D DW_UART_QUIRK_FIXED_TYPE,
> +};
> +
>  static const struct of_device_id dw8250_of_match[] =3D {
>  	{ .compatible =3D "snps,dw-apb-uart", .data =3D &dw8250_dw_apb },
>  	{ .compatible =3D "cavium,octeon-3860-uart", .data =3D &dw8250_octeon_3=
860_data },
> @@ -796,6 +807,7 @@ static const struct of_device_id dw8250_of_match[] =
=3D {
>  	{ .compatible =3D "renesas,rzn1-uart", .data =3D &dw8250_renesas_rzn1_d=
ata },
>  	{ .compatible =3D "sophgo,sg2044-uart", .data =3D &dw8250_skip_set_rate=
_data },
>  	{ .compatible =3D "starfive,jh7100-uart", .data =3D &dw8250_skip_set_ra=
te_data },
> +	{ .compatible =3D "ultrarisc,dp1000-uart", .data =3D &dw8250_ultrarisc_=
dp1000_data },
>  	{ /* Sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, dw8250_of_match);
>=20
> --=20
> 2.34.1
>=20
>=20
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

--1+Bm8qKmqRdbiva4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabfn5wAKCRB4tDGHoIJi
0v45AQD3hFtUbi/xAvY2OzMR5EdszsS2CzI9H3nNfQnqWUuVywD8CJ+C7OenjQXS
FCfdsrcoF8ZN3KYfs+EfK29lh/SHYgs=
=8Hwm
-----END PGP SIGNATURE-----

--1+Bm8qKmqRdbiva4--

