Return-Path: <devicetree+bounces-259641-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMZHD0vOd2mxlQEAu9opvQ
	(envelope-from <devicetree+bounces-259641-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 21:27:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0AA8D101
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 21:27:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A22C23017385
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:27:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C3D72D6611;
	Mon, 26 Jan 2026 20:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mo1sJUtm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6789F2D5A01;
	Mon, 26 Jan 2026 20:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769459272; cv=none; b=D3f3V0XIk3XupPAxn+YHPur1AlTc+t0cbYww5jGl053CPjuATNMzTI7fuIX+ULwa7+UDMJcn/YNYCrNURkseapZ7CMikHFXIoRZah04PX7mxHDWV57qOzlXiTC0r2MtobpS7Co/Ze2ul2EqllTuRWDXR+wcswI1tA9D6RxhxZfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769459272; c=relaxed/simple;
	bh=Hjv2Yw081h0FcjvO4Kz0wydsExKWm01KIMGvO/zJ5bs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TyKKCNDWd9RoIpsWRbak5i+bSK6AHVW++d77NmXO0PBBEp5QKElniLmPkyNR5cv6YIL7qm1m5wDYwjbeornEeE5HfHtVG2YaOz5mWc3TtUa8Hm7D2YD08IWNT+/T5M6ANM5KLI92qDUVqCCyN2cjTn9jbeb9o1SJSTZeiqVWNj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mo1sJUtm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A67FDC116C6;
	Mon, 26 Jan 2026 20:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769459272;
	bh=Hjv2Yw081h0FcjvO4Kz0wydsExKWm01KIMGvO/zJ5bs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mo1sJUtmjHplBsBqIDimM0EW/wY6WhOptg2ueMr+ntA9Q7hGkT5A1f+vnFrgI5XT6
	 wOkj+yInJBM0sQ7fJPRYRFyJR7yCmmqO8QEpaRu2WZiJQSI8q0oYTesOq8GyyxFDfi
	 TUB9ymWpvRDG14fkpUO3BpGJUddyOragqweVeheOUIPw32jf9jIAoc9UrFTzXkGO/2
	 pzXS76Djqqo97qz6Q88x98hRLomo96CbR8sfX3uyjiQ9E3ffC1d+je28/0gfNoFKlf
	 nghdJxzLb1qsIKZ5Z+c4+YcfjBaZH88/UiCIBsr2usH4exbiwVx95h32nDpJS2BnRN
	 T4PSLf81G6bAQ==
Date: Mon, 26 Jan 2026 20:27:47 +0000
From: Conor Dooley <conor@kernel.org>
To: Anirudh Srinivasan <anirudhsriniv@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	Zev Weiss <zev@bewilderbeest.net>, Renze Nicolai <renze@rnplus.nl>
Subject: Re: [PATCH 1/2] dt-bindings: arm: aspeed: Add Asrock Paul IPMI card
Message-ID: <20260126-broadness-usual-bec523f5168d@spud>
References: <20260125-asrock-paul-v1-0-956085a4bd06@gmail.com>
 <20260125-asrock-paul-v1-1-956085a4bd06@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KuxEHiadtSP7EwGa"
Content-Disposition: inline
In-Reply-To: <20260125-asrock-paul-v1-1-956085a4bd06@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259641-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2600:3c04:e001:36c::12fc:5321:from];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[100.90.174.1:received,10.30.226.201:received];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AA0AA8D101
X-Rspamd-Action: no action


--KuxEHiadtSP7EwGa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--KuxEHiadtSP7EwGa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXfOQwAKCRB4tDGHoIJi
0s5JAPoDcAVSN9xAbbUSLCIDny7M/EexK6qJHdf3IOAmst9B/gD/dULizOHoJ6Xj
fCB5mk29go1dluF1geo6mBCrUvOZoQo=
=33yJ
-----END PGP SIGNATURE-----

--KuxEHiadtSP7EwGa--

