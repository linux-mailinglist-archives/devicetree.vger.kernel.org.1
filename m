Return-Path: <devicetree+bounces-285418-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EE4ZGrox1Wly2QcAu9opvQ
	(envelope-from <devicetree+bounces-285418-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 18:32:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A5C3B1E31
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 18:32:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 70F8C30056FA
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 16:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D7343C457A;
	Tue,  7 Apr 2026 16:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVjJ6aLB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8E43A4F3B;
	Tue,  7 Apr 2026 16:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775579397; cv=none; b=uQspyAKAkrAbzmyklVuTtU9a8Jrc6EJAHfZSHJ3M11hySZwRb8yWUpBFIhI16nGIy3ziLh3JWfAtNAY9d8DxOlqfB8ydUX6eBo9zsw9wQFHcm2WT9PzfisQdg9jiIcvZB5fVyhG/0AzMhTqzReUP4cQ8VOQjjKx0NrrwbtWmvxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775579397; c=relaxed/simple;
	bh=Dm2vtAxO4d+eJhE657w6ZbaNu/kszM+d1xpoMi3ShtM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ok26ZYqEPRrHwOdC8VwP57ypnvhybRj6FSwdJYB1AAvjhByXXMWB3vF7oKw2+Zqp2rVaQ+xn095oMEaRC2hUmNjQSnLkjwgDl//mwmkTKppIQ+KJJkGBgXmcNJO7UNdyIBYO03Ntgpkai1aojmOqXs4HIbQ2v+sArxDvGcb7elk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVjJ6aLB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8963AC116C6;
	Tue,  7 Apr 2026 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775579396;
	bh=Dm2vtAxO4d+eJhE657w6ZbaNu/kszM+d1xpoMi3ShtM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OVjJ6aLB8LWYHohyrDKlzVQD9KCJ8rXEAt0/xlPLCMEFr0NSJwDW9Luabd1etR6q2
	 d6fD5EBGRqvq9rvimcSVgvBVyMpqp8z2q6Ylnj5Cygaa70FjcvSyGluD9z2qvYRwtY
	 zH1z4RbFgL4sQazZgIjqm4wV0Hr2g/EQvnnqX120lSL0X7k8yhWNVIukt86j72ME0M
	 bpN3+UpPLGhZD/C+gmSIG/KVER1r1a7bThyw3q2uTXMM1h53x5uSqKesiNtFYyoUKK
	 Lu5rzc+UT6pz75/aXHxkXGPQ+I8pPJ7ZF6jDxCqXOLNVUYBOJLUv/ag6guWSjEgyTc
	 wJwiw9UfouBjQ==
Date: Tue, 7 Apr 2026 17:29:51 +0100
From: Conor Dooley <conor@kernel.org>
To: Jia Wang <wangjia@ultrarisc.com>
Cc: Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Xincheng Zhang <zhangxincheng@ultrarisc.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/4] riscv: add UltraRISC SoC family Kconfig support
Message-ID: <20260407-shown-guileless-5c8b8d94f5e5@spud>
References: <20260407-ultrarisc-pcie-v2-0-2aa2a19a7fb3@ultrarisc.com>
 <20260407-ultrarisc-pcie-v2-1-2aa2a19a7fb3@ultrarisc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ipgBr6m3SknQlqBO"
Content-Disposition: inline
In-Reply-To: <20260407-ultrarisc-pcie-v2-1-2aa2a19a7fb3@ultrarisc.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285418-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,google.com,gmail.com,ultrarisc.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ultrarisc.com:email]
X-Rspamd-Queue-Id: C0A5C3B1E31
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--ipgBr6m3SknQlqBO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 07, 2026 at 10:40:52AM +0800, Jia Wang wrote:
> The first SoC in the UltraRISC series is UR-DP1000, containing octa
> UltraRISC C100 cores.

Not gonna lie, I find it odd that pcie is where this platform starts
off, but sure. What's the plan for adding the rest of the platform?

>=20
> Signed-off-by: Jia Wang <wangjia@ultrarisc.com>
> ---
>  arch/riscv/Kconfig.socs | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index d621b85dd63b..98708569ec6a 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -84,6 +84,15 @@ config ARCH_THEAD
>  	help
>  	  This enables support for the RISC-V based T-HEAD SoCs.
> =20
> +config ARCH_ULTRARISC
> +	bool "UltraRISC RISC-V SoCs"
> +	help
> +	  This enables support for UltraRISC SoC platform hardware,
> +	  including boards based on the UR-DP1000.

> +	  UR-DP1000 is an 8-core 64-bit RISC-V SoC that supports
> +	  the RV64GCBHX ISA. It supports Hardware Virtualization
> +	  and RISC-V RV64 ISA H(v1.0) Extension.

Delete this section IMO, doesn't provide any real value. Don't need nor
want the marketing brochure in the help text. The first sentence is
sufficient.

> +
>  config ARCH_VIRT
>  	bool "QEMU Virt Machine"
>  	select POWER_RESET
>=20
> --=20
> 2.34.1
>=20

--ipgBr6m3SknQlqBO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCadUw/wAKCRB4tDGHoIJi
0g3sAQDKM8tn3rM8CF+DMNJlgNPn86ka5IW9BtrvktQVr1oD6AD/f8aJJQZJ85Fw
jSDClR3qKh41KzPRHZo0gA2ipUKQjgU=
=TUrq
-----END PGP SIGNATURE-----

--ipgBr6m3SknQlqBO--

