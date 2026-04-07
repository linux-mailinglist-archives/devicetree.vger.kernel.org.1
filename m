Return-Path: <devicetree+bounces-285415-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AD2fCgMx1WmU2AcAu9opvQ
	(envelope-from <devicetree+bounces-285415-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 18:29:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D533B1DB9
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 18:29:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 231E13041486
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 16:24:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F9713C6A56;
	Tue,  7 Apr 2026 16:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vEvCwgpy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6603A5454;
	Tue,  7 Apr 2026 16:24:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775579073; cv=none; b=ko50xhy30mTKoxktIM8U/IXZIVvYYrOtqdJywze8Q27oK50kk0pcJGNtNGMKTc1NCYOsVQmSFB3Ew8sKHZEN3jzW9b5fkNB8M0WeRMakA0zHc5ArMWpvHBNW5yR1NiTAW8YycJ1Ro8NiYWBlwr5/rukYUdHYJ++Rwc7TOSJCOVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775579073; c=relaxed/simple;
	bh=o9DC/66a6TOdtJSnCHuCS52vHEWR8k1Q6WvjgfJR1HU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HARniY5ntl1Avx+uil9puzDxOvvS9xfqcSTnkMkzKJG/mi5gU8/qMm1hWguZjRT941MLnhGzdg/JWMLJwVAfoin9kbIIcotBaDa1mtmMCg9xCPaSoWbKG0K4wdKX2n1I9f9B+EmLP7xF1vKyafZJNT/TSA963yNNJYiXUo5TgvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vEvCwgpy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90026C116C6;
	Tue,  7 Apr 2026 16:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775579072;
	bh=o9DC/66a6TOdtJSnCHuCS52vHEWR8k1Q6WvjgfJR1HU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vEvCwgpyjgqztS5e80fWsAM89d903AKGOJQBGpF+rfq19AMU1e/+cplPKjDvZzJ+l
	 C6SwPLylWcakva/HmNfaEStVuIwC7iNCHT1KaBCMUiDb6Afvo/v/wc7bi44Hqe1PVq
	 K/1wNDULzu3q5BdzQ+4k1fa3Uh0uL+XywCBj3ihPyhFoEBEc1ymbAFHCH+Isa6fRpw
	 G4lO6xLmCLA8ujKC440k+A0GwEKzFpPkCdH4pd1J2FULlPXCLLzkJaxP5O6cOWmxVZ
	 oMkLMDXKiBci88ZQqy7z+nuQB1zdypdFsE3y6P7WeW5VlLVA072oJP3Mx/UOFbWSbb
	 KCM4/Zb53R7PQ==
Date: Tue, 7 Apr 2026 17:24:28 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: thermal: idle: Complete the example code
Message-ID: <20260407-residue-bobtail-85ebe50cb3f4@spud>
References: <20260407053957.10508-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eOvk/6SVQiF4ZCsQ"
Content-Disposition: inline
In-Reply-To: <20260407053957.10508-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-285415-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E0D533B1DB9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--eOvk/6SVQiF4ZCsQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--eOvk/6SVQiF4ZCsQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCadUvvAAKCRB4tDGHoIJi
0uDNAQCx23wzZBulyTiE/71PVX4ypdRt6DsW2iwjxbGOFL/+pgEAmJXOyMuUX/NI
GkCHcf6WwatbOAxh3AXMnv6ErxOuJwo=
=9+fe
-----END PGP SIGNATURE-----

--eOvk/6SVQiF4ZCsQ--

