Return-Path: <devicetree+bounces-292945-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MO0BO9G8+WmTCwMAu9opvQ
	(envelope-from <devicetree+bounces-292945-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 11:48:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DA14CA173
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 11:48:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D6078301588F
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 09:47:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA811320CD9;
	Tue,  5 May 2026 09:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gy/34Rul"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C349931E85A;
	Tue,  5 May 2026 09:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777974476; cv=none; b=uxDPg+Za8A31R4E7yftUgvYSH7K0Nc3RRc9f8p32uDZd85imgKSzYTEPxGRCSn6nMQY6P7H2SLKhB++FeGAO7q5jEMLBXeNOcvzPBhAt/ZgscEGxjGOFejV8aDBHXwHvQ6u5VmaKovRj77Gr5cKDSWkVW1NDTS+ZrvU0EvSubxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777974476; c=relaxed/simple;
	bh=rgsC7Th5Xw5EDH8D04pUW8olV6c3tFld3eIVw0s7rDY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HDv9S33z8zMkvvEwhHybD+xn3X6yXE26Y/8uHWPNyKWB7PXsfVxxQuPMqYVdBD7RFj4lxRGxswlfMgs+21WwJQ2H6BXNJz7pmQd3IR2YSQ+KQ6ksabPFYJg4VxcLlGzR8XhbuMJTvYs1i7Zdfs8Va7BP/3XAcH7dAwnqR2Z0Zwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gy/34Rul; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96DD7C2BCB4;
	Tue,  5 May 2026 09:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777974476;
	bh=rgsC7Th5Xw5EDH8D04pUW8olV6c3tFld3eIVw0s7rDY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Gy/34RulvKDsuv0MnjSMnn84Ge7/lJvLURQAMdLckeXNxEzaW+Uu/NZ0MFB09oIMP
	 zlm12fLkF/m7QdQ/MRto18gRnVnDVhzyTfWyGI8/FJQuO5KQg/QatrAupbMuseuJLl
	 dvXRqbK7EM8Z3SNxbqYUHKENijNJIL56+KP7lwACqeOBL3GPqEQY0Zci8jLcchRRVP
	 UcWNtZVC2nb1uwZ8C0frs4DhrrJdrdniLfIwYFwOVoNido4p21j1fYaCFaui/9zsw+
	 U/Y4QT5HmOv7VFmALSXYuwnYrabomm4OC4dX6x2yi+tOxK9VjxfxZuMpjPDhkKW8nI
	 ArAc3DtB89Sdw==
Date: Tue, 5 May 2026 10:47:52 +0100
From: Conor Dooley <conor@kernel.org>
To: linux-riscv@lists.infradead.org
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Valentina.FernandezAlanis@microchip.com, Brian.Burke@microchip.com,
	cyril.jean@microchip.com
Subject: Re: [PATCH v1 0/5] riscv: dts: minor beaglev-fire improvements
Message-ID: <20260505-equinox-overeager-a0d7a3d84394@spud>
References: <20260319-outsell-hypnotic-94b480408ad4@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ah00lo09AlTLcpDr"
Content-Disposition: inline
In-Reply-To: <20260319-outsell-hypnotic-94b480408ad4@spud>
X-Rspamd-Queue-Id: 93DA14CA173
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-292945-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:email]


--Ah00lo09AlTLcpDr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 19, 2026 at 04:31:14PM +0000, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
>=20
> Yo,
>=20
> Some minor improvements etc for the BeagleV Fire, spotted while updating
> our downstream stuff to the latest lts.
>=20
> Produces errors at the moment, as it depends on changing the
> interrupt-cells in the gpio binding.

This has been merged as part of 7.1-rc1, so I've applied this series.

--Ah00lo09AlTLcpDr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCafm8xQAKCRB4tDGHoIJi
0nH4AQDy2OTEZDNa2wkD6s3rmRk9pjUYRxbDgbDYkLeWpMnKrQEAj0kwU8VpeDcE
UOyR3XRxp3oX0OfWILtiePr0jnH6CgE=
=sbCY
-----END PGP SIGNATURE-----

--Ah00lo09AlTLcpDr--

