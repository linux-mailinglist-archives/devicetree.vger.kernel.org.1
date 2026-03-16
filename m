Return-Path: <devicetree+bounces-276118-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOjwGz7ot2mzWwEAu9opvQ
	(envelope-from <devicetree+bounces-276118-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:23:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B7D2989CE
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:23:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 074F73007F64
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B6DD282F03;
	Mon, 16 Mar 2026 11:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkqMEwZl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBF9B2494FF;
	Mon, 16 Mar 2026 11:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773660027; cv=none; b=f3ZNQBcr4UQ0RcvCK++whFkRKI8RaY/KOEgrYVdwAFqims8FQMUypEL9Ce8MifBp4KYfLyx5j/Ucub2Vzr0VsM7N3vKT6xn/1NMkxeH6ATciHh2AtbTAatiTmgy63lwUN1hcETTGQkU2oWpctri+tCHSpJCAFYSCjNmpq6GNoOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773660027; c=relaxed/simple;
	bh=dVJUwMYfXrWl+hL9SCPmas+DDb5aN/lmBHb0o8Zc6jo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WicbomUOyzDIAqZ1ZWQOhW/lsgJ6iu6OBaQAzhDNOuqx92+jQkHEcWBiHRjvp2sFqhWkLdehO2NyHFJVcybNVuxFbf/DjyumxavLiRh0Xg4p4dPTNtFn90KD13kAwpH5J7b1gv75Cj7ksnx4fL8xxHiojmYPRzFZdLlSHK6k8eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkqMEwZl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72A34C19425;
	Mon, 16 Mar 2026 11:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773660027;
	bh=dVJUwMYfXrWl+hL9SCPmas+DDb5aN/lmBHb0o8Zc6jo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VkqMEwZlCJcDEb1xxK7FugSdj93w6hg2H0ZN+yuW4vy/upw9kOs4g7WL7aIWNMg04
	 q/3UXV63GjQbZab1BpB+cIaVvqFj2FE4acIZ6YQEDkHPV8lps52oPUvU3PsXTNBbl9
	 6G6NPsWkhe5lrsJPxDVWOZdWLLEpRmRuLQbozaQbDYuYj9coPI7tfk66d6yx1EnOrN
	 AlnCSCqd+ewdIN1v00xmBCYzTCXuRudXHcYG3nb6pskoh5FXVdUlbydUan4xXPdf1S
	 HUsEu9ktebdjF6I/0xa9XSHk4Btpv3O0t/4T9PvJ6Iwt4N2yp4d5++4lB5Jg8XqAIf
	 Yg9BDgDZ/mYHw==
Date: Mon, 16 Mar 2026 11:20:22 +0000
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
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: serial: update bindings of ultrarisc
 dp1000 uart
Message-ID: <20260316-emit-garter-292687076ee3@spud>
References: <20260316-ultrarisc-serial-v1-0-c464f3e933a5@ultrarisc.com>
 <20260316-ultrarisc-serial-v1-2-c464f3e933a5@ultrarisc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wdBWOCsNzigriQdV"
Content-Disposition: inline
In-Reply-To: <20260316-ultrarisc-serial-v1-2-c464f3e933a5@ultrarisc.com>
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
	TAGGED_FROM(0.00)[bounces-276118-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ultrarisc.com:email]
X-Rspamd-Queue-Id: 09B7D2989CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--wdBWOCsNzigriQdV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 16, 2026 at 09:36:19AM +0800, Jia Wang wrote:
> Add UltraRISC vendor-prefix information
> Add DP1000 UART compatible information

$subject: update bindings of ultrarisc dp1000 uart

You're not updating, you're adding it.

>=20
> Signed-off-by: Jia Wang <wangjia@ultrarisc.com>
> ---
>  Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.ya=
ml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> index 6efe43089a74..0040ed28e35b 100644
> --- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> +++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> @@ -78,6 +78,8 @@ properties:
>                - starfive,jh7100-uart
>                - starfive,jh7110-uart
>            - const: snps,dw-apb-uart
> +      - items:
> +          - const: ultrarisc,dp1000-uart
>        - const: snps,dw-apb-uart


This doesn't look right to me. An items list with one const is just the
same as having "const", like the snps,dw-apb-uart entry below it.

--wdBWOCsNzigriQdV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabfndgAKCRB4tDGHoIJi
0qccAQD6zlH0epUiaLIDo8zyA3e+UoE4noDoNHVS35rkUmynkgD+IicJiFQ3eOUm
4bBJEucTGH6R8VgSxm3CAkkSqP7SNwA=
=dVh4
-----END PGP SIGNATURE-----

--wdBWOCsNzigriQdV--

