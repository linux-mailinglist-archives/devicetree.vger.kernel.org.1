Return-Path: <devicetree+bounces-278425-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iI/MIIGHvWnQ+gIAu9opvQ
	(envelope-from <devicetree+bounces-278425-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 18:44:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A3D2DEDB6
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 18:44:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 30FAC3081BC5
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:39:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C91B13D0906;
	Fri, 20 Mar 2026 17:39:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuNz7bzh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BE7D3B19C8;
	Fri, 20 Mar 2026 17:39:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774028364; cv=none; b=h42ZqqvjEhFqxO5RKvtbgAinNmYoKPhTIZdMYFvf0saAs+GFIXzZPGaJwOS1OSy1twpBdcOCqcs6ancuJvfucbJiwDZbnHi5hZQUgPBgjlox3SdABV/E9t/ROw9bvPJqyoZ8pBVvvNXiF2aol+Sjc5Y1H4blLAN9ZlgwqQLN4lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774028364; c=relaxed/simple;
	bh=EmC83LvhVJvYi3xuGFTcrFTglNSFltf0KMf7Ig8lPtU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A1UYBmqwvGSosXPfaAfG/rKBOGvOqhr2mWxtSu620YcUDM5H4yx5IAoiE9vWtgU6+cNQ5NRJ49T0C4wBfpGxSP3BcPC9svkvb9Vu2iendkwghH78uGqz87B19FHk+7bfgOlNOMuwO7J341U48qLEnUSE12xOhI8IICNXzWP3EAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuNz7bzh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B35E9C4CEF7;
	Fri, 20 Mar 2026 17:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774028364;
	bh=EmC83LvhVJvYi3xuGFTcrFTglNSFltf0KMf7Ig8lPtU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JuNz7bzhidytfCq09kZKJwyJBYvyYes9xox3rnttDS0EG7HYV+aZWVNhJ2MMHjugV
	 UgxKzyFi4ZnvNG8+sEUDFGqBNwTDW3msGJxrIw9u42xAPc9C0kyufBdGv0zO5vowdT
	 1Lij6usCBGSv5b7Ay1RLCztXcmmmf7JzFf16rUjfrvM9Qj/qzuhQqRIzKHKn8ef9Mg
	 ceWH+RopObuNAJ4bimSbSCDWC1PPPCBgvK7LHR1bbtQxXfp64ZPow79gmBBzwXMp8O
	 4LIZOIMEBnzM4BTbC/X/Kf8ypKcCxFB50EHggzEB8+E9rV+lIUfVP42G8iL+GG8TZJ
	 AuX1X47T5xX/w==
Date: Fri, 20 Mar 2026 17:39:19 +0000
From: Conor Dooley <conor@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 1/5] dt-bindings: iio: imu: add icm42607
Message-ID: <20260320-carless-puppet-995866998b8a@spud>
References: <20260319182956.146976-1-macroalpha82@gmail.com>
 <20260319182956.146976-2-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aTCYQb8hepuZFpMC"
Content-Disposition: inline
In-Reply-To: <20260319182956.146976-2-macroalpha82@gmail.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278425-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.972];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,intel.com,hotmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E9A3D2DEDB6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--aTCYQb8hepuZFpMC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--aTCYQb8hepuZFpMC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCab2GRwAKCRB4tDGHoIJi
0n+2AQDOoSl2g8nQdYhadOyLnaeDez9zFjMDbF9Zq3NrhrkC6wEAlg3H0iNaDpQY
qvxM143+V4mX/Pk/IhhYY/lb/2LBOQ4=
=RDUK
-----END PGP SIGNATURE-----

--aTCYQb8hepuZFpMC--

