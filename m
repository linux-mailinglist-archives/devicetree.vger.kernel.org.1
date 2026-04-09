Return-Path: <devicetree+bounces-286223-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AP5RI9zH12kjTAgAu9opvQ
	(envelope-from <devicetree+bounces-286223-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 17:38:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B7A3CCD3F
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 17:37:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BBCD4301052E
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 15:36:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1214E3DD532;
	Thu,  9 Apr 2026 15:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bl3HTEr+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35F1368946;
	Thu,  9 Apr 2026 15:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775748998; cv=none; b=ivWuG2plYTrWyvoDciNTBsa0ydMOtlKXFO8XNCSlEGn2Q2sEachmMLbYW0nfhb1muakXh9GGM8GTFRICn+P2LDrJm5AzZMvpj6g0OdmRfyuI+94EdV+TZHVC0A2SnYn0MuhdEDjeb1B7F5QYgDfgbdK42dyLkak0l0+/6Fw12Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775748998; c=relaxed/simple;
	bh=vgHNWQIVNQLVnmYjQa3phpy4f8LkLj4MRmL9b19wYtI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cT8UQ+ATpu3Xh+wpAftIbWfXUfUz9i4gHJ6Zo2XrRxT8HKvlTfW41vp8dWWNnrGiy+/unt33xKDm87wKbVGTvaKU1SLYlbociA5WqntPiCjk1kXxW916vn5LhR/LfPt9ClBbr6hUZLsgf1vUjeZDo/fcicP5SgZDILeUT4YA3Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bl3HTEr+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66950C4CEF7;
	Thu,  9 Apr 2026 15:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775748997;
	bh=vgHNWQIVNQLVnmYjQa3phpy4f8LkLj4MRmL9b19wYtI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Bl3HTEr+tRTCJMBfshW+D0LvT7+dVBTWHSVRPqwJg4GWRC1ZuqXeKWilLsfJAMsVk
	 NUN6t6sZeE1thBJbl2Kginnj0r/IxSLfPBkGtNKz9xYtpkPnUmtg2PB/qAtbv65/+9
	 3f2gf4qZaxr+kAIAi9OMoZtmY57x2HwVvNaRq8P7WgjnvgxhCPB/kki6hiGBz6Ol6w
	 lNP7TugPcnxA3T/T8vVT4NgWa3QzQUbN7s/bQ60y5NIMktwnD75TYzHUcZP/V3rg9j
	 W0J2hPaCl2AS/366YMN9Rlt1mtLsbQMqM0pg242CnTRb2Rku/de2xP6IPIeCLF+tYL
	 cC7KtRAboBOJQ==
Date: Thu, 9 Apr 2026 16:36:33 +0100
From: Conor Dooley <conor@kernel.org>
To: Colin Huang <u8813345@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	colin.huang2@amd.com
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: aspeed: add Anacapa EVT1 EVT2
 board
Message-ID: <20260409-foster-stability-f77b38c6f7a0@spud>
References: <20260409-anacapa-devlop-phase-devicetree-v2-0-68f328671653@gmail.com>
 <20260409-anacapa-devlop-phase-devicetree-v2-1-68f328671653@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="94RiNPJk8aF+VXXp"
Content-Disposition: inline
In-Reply-To: <20260409-anacapa-devlop-phase-devicetree-v2-1-68f328671653@gmail.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286223-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 12B7A3CCD3F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--94RiNPJk8aF+VXXp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 09, 2026 at 07:40:26PM +0800, Colin Huang wrote:
> Document Anacapa BMC EVT1 and EVT2 compatibles.
>=20
> Signed-off-by: Colin Huang <u8813345@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--94RiNPJk8aF+VXXp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCadfHgAAKCRB4tDGHoIJi
0lTBAQD3cz6MzoGwGp8mKC6FkE8r1DyqVtkBVRvjGhBwfipPqAEA62JE9BQgRbH1
0Zd5rQtyVO3BwX5MMW3LwT1FMuJtPwI=
=AvG8
-----END PGP SIGNATURE-----

--94RiNPJk8aF+VXXp--

