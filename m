Return-Path: <devicetree+bounces-258617-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCe/MVhzcmlpkwAAu9opvQ
	(envelope-from <devicetree+bounces-258617-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:58:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 009056CCC4
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:58:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 82C763002747
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:56:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 793AE3815DF;
	Thu, 22 Jan 2026 18:56:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZlrhcOMW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDC63876AF;
	Thu, 22 Jan 2026 18:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769108208; cv=none; b=bVT7HXAkSjS7msICV5S50CmOwOuK3G7LNfylvKdmIBDQOLunwwX7sKQD/o3P7wHgRFqFxy5m7KLFPxWb5MNrERH+QhlnAr5VjGUI2N9dzvAGESmJ/FAI9tivEgxmN3MpxxAabS9DTaFDcBAL4QrXwikuvrUZ5swqXhTkOrh9ntk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769108208; c=relaxed/simple;
	bh=oCi/oH51C/qp0hpknnsS4CRAoHyQKTcSRvqI35qDL4U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TdN94oAbM5yvBiFTTUTqSqNkHqsOTnpKwQfwF9qHyaZOzut95DZLBLN280OTL2yJ1CY/V9kpFB4iUqvofXeABNdaLl2kpkvm0nF6ugBV13D+WAoHw4OFJvONGK3qJOGBDi1zVplBMjVxV9SAHzpUlXiERfxK+MeI5HY1sJL7BT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZlrhcOMW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F6A3C116D0;
	Thu, 22 Jan 2026 18:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769108207;
	bh=oCi/oH51C/qp0hpknnsS4CRAoHyQKTcSRvqI35qDL4U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZlrhcOMWjNGvqkxA4yehKNUJ6D2c/2bi5Go5Tk1Pe2h9MOwIM7GpZLXFhlfZ/r2c6
	 p/OZ6FvP17ClccioURc3O0ZMxSPM1apU4fE50/RPD8mf6Dw4Jukr1iyhusMrY8KX3v
	 d1dcAdigp8DALkB2mNZqaW2scIal8wvc6jzogXLpZYlDgOWpAT4HmMsWaCsdZC2QRL
	 TlYMui+GmjAZeZw5KY/WLr5Uvs47fvYqae9c6oEKZ5hLrMqgV9uunbOAC4eihwp76A
	 8B9r/Cv2QW2SWOduhl40zBbVsEb4653Gs9ZrHpkZKCq5+ImPvoPPm06NUXyERWy7CA
	 PlZNQSfwfcG8A==
Date: Thu, 22 Jan 2026 18:56:42 +0000
From: Conor Dooley <conor@kernel.org>
To: Guodong Xu <guodong@riscstar.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Evan Green <evan@rivosinc.com>,
	Andrew Jones <ajones@ventanamicro.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] riscv: cpufeature: Clarify ISA spec version for
 canonical order
Message-ID: <20260122-arrive-undertook-413b9b9491fb@spud>
References: <20260116-supm-ext-id-v1-0-5fcf778ba4a6@riscstar.com>
 <20260116-supm-ext-id-v1-3-5fcf778ba4a6@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dZQChMsFso20z+6+"
Content-Disposition: inline
In-Reply-To: <20260116-supm-ext-id-v1-3-5fcf778ba4a6@riscstar.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258617-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[riscstar.com:email,microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 009056CCC4
X-Rspamd-Action: no action


--dZQChMsFso20z+6+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 16, 2026 at 10:10:33AM +0800, Guodong Xu wrote:
> Specify that chapter 27 refers to version 20191213 of the RISC-V ISA
> Unprivileged Architecture. The chapter numbering differs across
> specification versions - for example, in version 20250508, the ISA
> Extension Naming Conventions is chapter 36, not chapter 27.
>=20
> Historical versions of the RISC-V specification can be found via Link [1].
>=20
> Link: https://riscv.org/specifications/ratified/ [1]
> Fixes: 8135ade32c0db ("RISC-V: shunt isa_ext_arr to cpufeature.c")

I don't think that's the right fixes tag, if a fixes tag is even
appropriate. If a fixes tag is to be used, it should actually be
Fixes: 99e2266f2460 ("RISC-V: clarify ISA string ordering rules in cpu.c")

Acked-by: Conor Dooley <conor.dooley@microchip.com>

> Signed-off-by: Guodong Xu <guodong@riscstar.com>
> ---
>  arch/riscv/kernel/cpufeature.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeatur=
e.c
> index 39680280f858..629984df1e7b 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -461,7 +461,8 @@ static const unsigned int riscv_supm_exts[] =3D {
> =20
>  /*
>   * The canonical order of ISA extension names in the ISA string is defin=
ed in
> - * chapter 27 of the unprivileged specification.
> + * Chapter 27 of the RISC-V Instruction Set Manual Volume I Unprivileged=
 ISA
> + * (Document Version 20191213).
>   *
>   * Ordinarily, for in-kernel data structures, this order is unimportant =
but
>   * isa_ext_arr defines the order of the ISA string in /proc/cpuinfo.
>=20
> --=20
> 2.43.0
>=20

--dZQChMsFso20z+6+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXJy6gAKCRB4tDGHoIJi
0lTWAP0ag87CQ1VmquoDQR4H77Sy+9Tpxpnx4KhUDZXuEn3VsAEAvfAosr36UrVA
4QZq7Aqn2cTA12oyQdZaQkInlDEtTgk=
=AXpm
-----END PGP SIGNATURE-----

--dZQChMsFso20z+6+--

