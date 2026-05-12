Return-Path: <devicetree+bounces-296378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIbNMo9lA2oq5gEAu9opvQ
	(envelope-from <devicetree+bounces-296378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 19:38:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2CA525EC5
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 19:38:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 72EE23021EA3
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 17:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4CF33D5C1E;
	Tue, 12 May 2026 17:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wo/zLK2t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1B403603CA;
	Tue, 12 May 2026 17:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778607213; cv=none; b=jM9VQM80WMmR8LI8UGPPsx1IDi9PdC148TFCqWRDQ5MLKHJHVxnESFFml11fwHlDNrRtAzRhUk0ZQelmQ8YjydNo7P38V/63ZwRvAsGcU6qkE2GhfCOsvw5Et2/EO3/oXKyHH/mNnJR6Ll6n92QlkZdGXZJ9nCqI4lPXNZVwn9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778607213; c=relaxed/simple;
	bh=VRQfVzFAwkCiM35VAMe22qTXV49SrhOXjukzQSzpJos=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QdzzSEVQWhBD6yzJaeTmBcRbuJK2Om4TF6ZT28+2dM5O6pJWFHxoBqJCC30up4MPZw9AfoHgiZBTgqKaM6RGgxxvOFGIYy207RT6QzBEsfkjdtWqayYLvLECmB2PehLcPqohJtFNEMXiFPOaaBlTudoYCJMeMhWa9gDre3lsLWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wo/zLK2t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79E8EC2BCB0;
	Tue, 12 May 2026 17:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778607213;
	bh=VRQfVzFAwkCiM35VAMe22qTXV49SrhOXjukzQSzpJos=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Wo/zLK2t0d0E15aTa/xMdrS5sre5iXcVieH3Jt3MkN3hVydWUFw4QG/N++n2DNItd
	 i2Oh/uw8v1/HZra6uRBvWsJ1nSJWmZpdRoD7VWHVcegNDryMME4gsQEmPAaQ87r2cT
	 hCC/d+/GoGRXFQ4hwIAkXUc8Rl8iVsMaF/PBBhcYhNS6CId/eMD/ssz0j7aUxyXxKU
	 SglcVlxP8a2Ke6zOUrtbSfEGff8zjKSRgAKq++8LDAMYoysy9pfvf2qpv+zeZm9tKU
	 leBhB+Yxw0uQy+Jx35zIwUYcZhA7+vFyZ9c4j+N/SoBteZZsfspaHNIMDSRwpNlv4j
	 BSGCV5FNiGaRA==
Date: Tue, 12 May 2026 18:33:29 +0100
From: Conor Dooley <conor@kernel.org>
To: Tanmay Kathpalia <tanmay.kathpalia@altera.com>
Cc: linux-mmc@vger.kernel.org, ulf.hansson@linaro.org,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/9] dt-bindings: reset: altr: add COMBOPHY_RESET for
 Agilex5
Message-ID: <20260512-avenue-tasting-e1a731a42d3b@spud>
References: <20260511202132.5597-1-tanmay.kathpalia@altera.com>
 <20260511202132.5597-2-tanmay.kathpalia@altera.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jGvB1wNON2cbN4M/"
Content-Disposition: inline
In-Reply-To: <20260511202132.5597-2-tanmay.kathpalia@altera.com>
X-Rspamd-Queue-Id: BD2CA525EC5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296378-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,microchip.com:email,altera.com:email]
X-Rspamd-Action: no action


--jGvB1wNON2cbN4M/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 11, 2026 at 01:21:23PM -0700, Tanmay Kathpalia wrote:
> Add COMBOPHY_RESET definition at index 38 for the combo PHY reset
> control on Altera Agilex5 SoCs. This reset is used by peripherals
> such as the SD/eMMC controller that share the combo PHY.
>=20
> Signed-off-by: Tanmay Kathpalia <tanmay.kathpalia@altera.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--jGvB1wNON2cbN4M/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagNkaQAKCRB4tDGHoIJi
0iEOAP9Zcji9WJLENYoxvQXwLztnLnopbThNIS+4FvzQrG+VPQD/euf95+Ud7hv6
TuzTpaEnj3RsYOoSg2LpZoLsqLB7Dwc=
=PCV9
-----END PGP SIGNATURE-----

--jGvB1wNON2cbN4M/--

