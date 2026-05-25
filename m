Return-Path: <devicetree+bounces-302794-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMcXLV+CFGqnNwcAu9opvQ
	(envelope-from <devicetree+bounces-302794-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 19:09:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D72D5CD291
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 19:09:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6071E3003D23
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 17:09:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 303883F5BF7;
	Mon, 25 May 2026 17:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqfoiliK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E30F345CB2;
	Mon, 25 May 2026 17:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779728988; cv=none; b=pUvZBFRwjboQsvlYkf70AjvucLoFM4y4+ZtNcJmVgvQ3sthsgcjHeDvFapHklShXX0UwMc+qw9yg3b37tSXP2QwyVWzr6JW820f7572NdLm3AmWBtoDsYW3+P60XwMwbhjqneCQ8mtB8zpqeM/OCo3xUG1ted6gztqJNss2PuoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779728988; c=relaxed/simple;
	bh=776gli8nBCsvSUpsl2DeMe+PlKQIK0wqxLkm39lKFuk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EKAQ/tq4Gez8rRyOyGmCB8iGE60YGI6xs1q6gLhMnTv3m893R1Nzjo3+ETh1tgMjf+KgSm9QxTh3sz/8uRyHChJM0EK1JIzpnslebJbpxeysf2q6vn7XwNy65C+SkGLCSL+6gTzHEi6hsTTScXP+R+HK1a5Ch4sqEwkvv/P7UD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqfoiliK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B26681F000E9;
	Mon, 25 May 2026 17:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779728986;
	bh=keLBe3JO12ACIaqgkIDEU1i71fxDUP4mnJ3l8xXe9D8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HqfoiliKDmIa0DIyn1CBrX5FQXFSrVlW6UfhqrPO77JtTrsHn49bVoufMX0US909n
	 3JgJI7yPcDKCZ4VK+WGka5t9t8awRWouATkoCAvMTMkHIkNOeKS9Ht23Ib40os6Exa
	 V4a0yJ2T6bT1a9XBsgmPOVRPjpINK142WwuOtcHssOcdqCEYw/tsFJwonsaJqNNYN+
	 SPmybYcBc7cpAmQovR3QTBp1hQ4qdVfQchHXjznx7AJjmBJISAnY3rQWj6MlKRLBKG
	 NwME9irZdu8AAmtH0e4JzOzT+S+uJLcUd59cdqfu33A5SK2ltIBMGOEhtelPjNUQ1J
	 ilm/KF/xJmi1A==
Date: Mon, 25 May 2026 18:09:42 +0100
From: Conor Dooley <conor@kernel.org>
To: Wadim Mueller <wafgo01@gmail.com>
Cc: wbg@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
	conor+dt@kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/3] dt-bindings: counter: add gpio-counter binding
Message-ID: <20260525-register-bogus-b198545b69a8@spud>
References: <20260515153616.157605-1-wafgo01@gmail.com>
 <20260524193846.19216-1-wafgo01@gmail.com>
 <20260524193846.19216-2-wafgo01@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FCkyTi3LdI/ouxrU"
Content-Disposition: inline
In-Reply-To: <20260524193846.19216-2-wafgo01@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-302794-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Queue-Id: 2D72D5CD291
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--FCkyTi3LdI/ouxrU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 24, 2026 at 09:38:44PM +0200, Wadim Mueller wrote:
> Add a binding for a generic GPIO-based counter.  Two GPIOs (signal-a,
> signal-b) drive the counter; an optional index GPIO loads a preset.
> The counter function (quadrature, pulse-direction, increase/decrease)
> is choosen at runtime through the counter sysfs interface.
>=20
> Signed-off-by: Wadim Mueller <wafgo01@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--FCkyTi3LdI/ouxrU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCahSCVgAKCRB4tDGHoIJi
0ggEAP4nAFWuNqj5L0YpDvZXpghRId9SVSALoSAKoAfz3qHHbAD/XZCTl79Rjuwo
3Qy+Wi5V5ziiw6YQ+CmdKVuDJOsviQQ=
=pXLa
-----END PGP SIGNATURE-----

--FCkyTi3LdI/ouxrU--

