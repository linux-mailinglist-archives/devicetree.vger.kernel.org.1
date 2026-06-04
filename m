Return-Path: <devicetree+bounces-307001-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7AqYIuqxIWrULQEAu9opvQ
	(envelope-from <devicetree+bounces-307001-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 19:12:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FBF6423B4
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 19:12:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HgWfs5Et;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307001-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-307001-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1468D3074AF9
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 16:47:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE5E349252A;
	Thu,  4 Jun 2026 16:47:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A328481A82
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 16:47:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780591675; cv=none; b=ZYFCznlpd1EGVPJpqa8+rBCSVIuxox9Q/nvYpup8CoRlGhX98ygCoAJa1/XP5+S5EA9K3nI7M8x0bXszbDMpN3acyKdlBYqrxv2A+PzIjEAvDsMJV8n6TboFXP8X1lDCzC+nYuAYHtFHcNtmSneh+UTu8+ZfqId8ZMjz83q6Ygc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780591675; c=relaxed/simple;
	bh=2UQDoiib3864P9l16CxKK15Me14wqk0CVQeYnQybbvg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LtYOL6yHb2Mcj148gcrqz5YDCDLoxYXeZB4klT0Q8XzgHFOJgPCoMGroeu5aprCpg96H3x2rnd60fxkz1dwoL5GA8w5UE1Q/kR27f0i9H6jJrXXDu/vorNFoJ+k+ixWStjYzAuczJwBTDVDLEqsgpDcoarJjxpY0VGCNK6/J6Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgWfs5Et; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 976151F00893;
	Thu,  4 Jun 2026 16:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780591674;
	bh=nasvWE4HN6FoYWPjRuasq47sL/PqP5x+XqWIasfwnkI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HgWfs5EtBRK3Zvzs3hNPbxFaPrdIqthSWJg27cbrhryRmcLyxQ07Trc46m973UL9h
	 MeBnnHcPgMdWGdfRjgVJQImhLInOl+8PE96XrEHLQpKLKlUR5Y4cWDf9ma2tNjXUwi
	 NehfmOM4cKVdZzPG5isbSZ2OzgX/mEIg6LpX3moOBFNZa/pKjZlxU/8LOYHXF+Akap
	 HX8yy0XE5pCfypTZ80wtSuzQRJ0z68WL6h77gR5BP4fUrC/rpXhseLibj7IK+58KwC
	 62PLLswizXoGdarT6JuXzTTiWUZuL/i+ODBXqf5bK2ltqHzae9PttvwLfMDTYFksum
	 036BEUSDCZrWQ==
Date: Thu, 4 Jun 2026 17:47:49 +0100
From: Conor Dooley <conor@kernel.org>
To: Joel Stanley <joel@jms.id.au>
Cc: Paul Walmsley <pjw@kernel.org>, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>,
	Anup Patel <anup@brainfault.org>, Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Nicholas Piggin <npiggin@gmail.com>,
	Michael Ellerman <mpe@kernel.org>,
	Drew Fustini <fustini@kernel.org>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 7/7] riscv: dts: tenstorrent: Add Atlantis platform
Message-ID: <20260604-pacifier-sludge-196f47ab3c11@spud>
References: <20260604143957.668047-1-joel@jms.id.au>
 <20260604143957.668047-8-joel@jms.id.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7nOzAiGyNegD+Wr6"
Content-Disposition: inline
In-Reply-To: <20260604143957.668047-8-joel@jms.id.au>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307001-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:joel@jms.id.au,m:pjw@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:palmer@dabbelt.com,m:asrinivasan@oss.tenstorrent.com,m:anup@brainfault.org,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:npiggin@gmail.com,m:mpe@kernel.org,m:fustini@kernel.org,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,oss.tenstorrent.com,brainfault.org,eecs.berkeley.edu,ghiti.fr,gmail.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 83FBF6423B4


--7nOzAiGyNegD+Wr6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 05, 2026 at 12:09:53AM +0930, Joel Stanley wrote:
> Add initial support for the Tenstorrent Atlantis platform, based on the
> Atlantis SoC featuring 8x RVA23-compliant Tenstorrent Ascalon-XG cores.
>=20
> The evb machine represents an internal bringup vehicle with just the
> interrupt controllers and a UART. This will be replaced in time with a
> full featured machine once details are available.
>=20
> Co-developed-by: Drew Fustini <fustini@kernel.org>
> Signed-off-by: Drew Fustini <fustini@kernel.org>
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
> v2:
>  - Update mtimer compatible
>  - Add Drew's co-developed-by
>  - Correct aplic num-sources count
> ---
>  arch/riscv/boot/dts/tenstorrent/Makefile      |   1 +
>  .../boot/dts/tenstorrent/atlantis-evb.dts     |  33 ++
>  .../boot/dts/tenstorrent/atlantis-soc.dtsi    | 471 ++++++++++++++++++
>  3 files changed, 505 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/tenstorrent/atlantis-evb.dts
>  create mode 100644 arch/riscv/boot/dts/tenstorrent/atlantis-soc.dtsi
>=20
> diff --git a/arch/riscv/boot/dts/tenstorrent/Makefile b/arch/riscv/boot/d=
ts/tenstorrent/Makefile
> index 2c81faaba462..92d8bb1a683f 100644
> --- a/arch/riscv/boot/dts/tenstorrent/Makefile
> +++ b/arch/riscv/boot/dts/tenstorrent/Makefile
> @@ -1,2 +1,3 @@
>  # SPDX-License-Identifier: GPL-2.0
>  dtb-$(CONFIG_ARCH_TENSTORRENT) +=3D blackhole-card.dtb
> +dtb-$(CONFIG_ARCH_TENSTORRENT) +=3D atlantis-evb.dtb
> diff --git a/arch/riscv/boot/dts/tenstorrent/atlantis-evb.dts b/arch/risc=
v/boot/dts/tenstorrent/atlantis-evb.dts
> new file mode 100644
> index 000000000000..06259cca8357
> --- /dev/null
> +++ b/arch/riscv/boot/dts/tenstorrent/atlantis-evb.dts
> @@ -0,0 +1,33 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/dts-v1/;
> +
> +#include "atlantis-soc.dtsi"
> +
> +/ {
> +	model =3D "Tenstorrent Atlantis development platform";
> +	compatible =3D "tenstorrent,atlantis-evb", "tenstorrent,atlantis";
> +
> +	#address-cells =3D <2>;
> +	#size-cells =3D <2>;
> +
> +	memory@0 {
> +		device_type =3D "memory";
> +		reg =3D <0x0 0x00000000 0x0 0x80000000>,
> +		      <0x1 0x80000000 0x0 0x80000000>;
> +	};
> +
> +	aliases {
> +		serial0 =3D &uart1;
> +	};
> +
> +	chosen {
> +		bootargs =3D "earlycon console=3DttyS0";

FYI, this should not be in here.

> +		stdout-path =3D "serial0";
> +	};
> +};
> +
> +&uart1 {
> +	/delete-property/ clocks;

Why are you doing this? Looks kinda suspect!

> +	clock-frequency =3D <5000000>;
> +	status =3D "okay";
> +};

--7nOzAiGyNegD+Wr6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiGsNQAKCRB4tDGHoIJi
0k11APoC9uyXuvUKHUahGQCA8rahOvHmjS5NyUcgIE0C3qEMzQEAh+rjnggmJGjZ
X3am5MjUhIm+dr8M92IwCqWuPfr+7gA=
=PLbm
-----END PGP SIGNATURE-----

--7nOzAiGyNegD+Wr6--

