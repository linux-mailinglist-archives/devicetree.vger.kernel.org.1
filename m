Return-Path: <devicetree+bounces-258616-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Pf1NDFycmlpkwAAu9opvQ
	(envelope-from <devicetree+bounces-258616-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:53:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BAD6CBE7
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:53:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D317530054F2
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:53:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1ADC388846;
	Thu, 22 Jan 2026 18:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rC3oc/Bc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B57F43803EE;
	Thu, 22 Jan 2026 18:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769108012; cv=none; b=dRCZlCvfNz2aLJfuHobGVxluswiwyTk/bt04t2FmSkjb4nrhB7ClLawg+BkD78FHP2zUY4irVcSCtgkE/7oBJ6+Y1UzQx5HJ0GS4u0VG7lqhr2H6SiFBZwz21RssOruYB+brNCOJbAhcCSLUJjH58hY+eMPG7y9yufVi9lQ6cgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769108012; c=relaxed/simple;
	bh=VmJ9sqj17xV5Zbk4rgoIv/RmlLU7TZGxf6/Oa0sRVn4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K745vba62fOrGWm5SOq7Feaf8lsEk3PXR9ThwWFHPj1QOpI1TPlxj5chr/O5JVMVg0izviJ2IhYZmbGUduqIL9Xu+GdQM/v4TpZzFNVj3PynUYnImGp4M2nRAMPuxPZsrjHrDUHaFKnoNsg1ZYpss18b5Re0UL11Ns/1yEoVCx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rC3oc/Bc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 513D2C116D0;
	Thu, 22 Jan 2026 18:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769108011;
	bh=VmJ9sqj17xV5Zbk4rgoIv/RmlLU7TZGxf6/Oa0sRVn4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rC3oc/BcatVYpQtoUSMa8C0YHABf6BP7726gpuhvH4K4BvNbwsaBtaXstFce8inCj
	 yI7hscCYhaMQga9ow1edE1N7Hi0Ln75zY5OGbhU60Gu85y/+yGk6WGRMzehDqV8djD
	 hppMJu9mRS73SgHzAcv7PmzSMK480oSHLXXeOpaw+MQ7njKs6yqgA9DGDTm0dO3V9L
	 iF0jtVVwk7zk9vjX+GNicOrBR/+2TGUZWCOFfmxXFK8UWFp3Db9SdUHWgRd0Q0W8iR
	 dfRALyfBu33qjqoR8c4izAbydHzftG+95Xooe2o2jaZSysJK2R/A9MuXQOb4mpoH96
	 SUKbEavvA4rbA==
Date: Thu, 22 Jan 2026 18:53:26 +0000
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
Subject: Re: [PATCH 2/3] riscv: cpufeature: Add ISA extension parsing for Supm
Message-ID: <20260122-brethren-overeager-fa3d3b6fb0cf@spud>
References: <20260116-supm-ext-id-v1-0-5fcf778ba4a6@riscstar.com>
 <20260116-supm-ext-id-v1-2-5fcf778ba4a6@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nFzC1n/eaWCMm4yj"
Content-Disposition: inline
In-Reply-To: <20260116-supm-ext-id-v1-2-5fcf778ba4a6@riscstar.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258616-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,microchip.com:email,riscstar.com:email]
X-Rspamd-Queue-Id: 71BAD6CBE7
X-Rspamd-Action: no action


--nFzC1n/eaWCMm4yj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 16, 2026 at 10:10:32AM +0800, Guodong Xu wrote:
> Supm has been ratified in the RISC-V Pointer Masking specification
> (Version 1.0, 10/2024) and is mandated in RVA23 Profiles (Version 1.0,
> 2024-10-17) for RVA23U64. Supm indicates userspace pointer masking
> support.
>=20
> Remove the previous macro aliasing of Supm to Ssnpm/Smnpm in hwcap.h,
> treating Supm as a distinct RISC-V ISA extension ID.
>=20
> Add ISA parsing logic for Supm, and implement a validator to ensure
> that Supm is only reported as available if Kconfig allows it and the
> underlying Ssnpm (for supervisor mode) or Smnpm (for machine mode)
> extension is present. Supm relies on Ssnpm or Smnpm to provide the
> underlying hardware implementation.
>=20
> With this change, "supm" will be reported (when available) in
> /proc/cpuinfo as part of the "isa" and "hart isa" string.
>=20
> Link: https://lore.kernel.org/lkml/20260101-legume-engraved-0fae8282cfbe@=
spud/#r [1]
> Link: https://lore.kernel.org/all/4ebbe14b-2579-4ba6-808d-d50c24641d04@si=
five.com/#r [2]
> Signed-off-by: Guodong Xu <guodong@riscstar.com>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>


--nFzC1n/eaWCMm4yj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXJyJQAKCRB4tDGHoIJi
0vxhAP98emYlV/YPlTwFITYQlict8vtx331zGKNy8TAOE/EJ6AD/SHI7LdDv0iri
frFLLIWZ2Fxk/eX/8IRmBqeBsryTtAs=
=ZsAJ
-----END PGP SIGNATURE-----

--nFzC1n/eaWCMm4yj--

