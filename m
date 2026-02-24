Return-Path: <devicetree+bounces-268007-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6I50DyDmnWlDSgQAu9opvQ
	(envelope-from <devicetree+bounces-268007-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:55:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C69D18ACDB
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:55:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E276D30A7564
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 17:54:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF8723A1E95;
	Tue, 24 Feb 2026 17:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhrRjPkQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D13A23EAA0;
	Tue, 24 Feb 2026 17:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771955671; cv=none; b=CV6YaqhIj7V6hT/W22XrsPYFElgXwV9wMJ5wgV5RXx4q2Jp8E2mDoF2QnqQttqYYjhi6qgwjRKUNt5VglAtFT8Z8xm4KV7C217x0X1zC9TexdtAqitKPIWoFtcjIwz3KxlS1jkZh8O5g98fPL+69UmQRiE7JsZhZRb2E0SgeQyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771955671; c=relaxed/simple;
	bh=EvLaJN1Tn+8iYW6/4a8KvahA84Y7u9nnQFSiKO8sWL0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XuHHK/ujW4KyC1iobBNlgO6y734pBAO+a/wMdN9Oo2wX/jXpBclg5+uaqHvHMzPdFnf5z858Z7rSm3v8RrcybnZbFchqSk5WGKjzSAIHg69pEcqhtA2EiFUx3kc+fkKj2eubpRpq4tDm/bv3bNs5L/Q9LRI1ZA5CReAD8LrfRW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhrRjPkQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53B8EC116D0;
	Tue, 24 Feb 2026 17:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771955671;
	bh=EvLaJN1Tn+8iYW6/4a8KvahA84Y7u9nnQFSiKO8sWL0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jhrRjPkQ2DgKgkzhEBeMrZuToISV4pdf/ewsQDo69F2TVXgIrxygGuxwU07Ly53Wt
	 aCHmKQdKmNTtM9cb1mflvr5G2XwcyLdCLP7C8oAzjFQYlwwXjyJense9lc5tny+XtB
	 Ir25tRdRaPMGkYhDNHQtiyfI/FG94cRkRQmT0t+kRAmWQgWmVHeNrCjs1lb0A7lo4Y
	 47V+hgP/BJZ11dCpHLhhwKsEQJ+BonhYwi+QggDkv2Cu0GPYd7NEj3yWdEYvvEFBMM
	 BVrzXB2cUm31Kel9ySnMGCf8vlspkb42BILQpdK1bHcHvuyestT9ACigdrOwxo2Rn+
	 +vQp/wDqk9B2A==
Date: Tue, 24 Feb 2026 17:54:27 +0000
From: Conor Dooley <conor@kernel.org>
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
	Matti Vaittinen <matti.vaittinen@linux.dev>,
	Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: bd72720: Add ROHM BD73900
Message-ID: <20260224-cosponsor-freestyle-4333de8c1abb@spud>
References: <6eaa9f08848c27c462e156e31ae5bdfd33bf2fe7.1771938507.git.mazziesaccount@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BQDk/u9vlzXZx/Dh"
Content-Disposition: inline
In-Reply-To: <6eaa9f08848c27c462e156e31ae5bdfd33bf2fe7.1771938507.git.mazziesaccount@gmail.com>
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-268007-lists,devicetree=lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 8C69D18ACDB
X-Rspamd-Action: no action


--BQDk/u9vlzXZx/Dh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--BQDk/u9vlzXZx/Dh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaZ3l0gAKCRB4tDGHoIJi
0n5zAQCLksDfZsqlMg66v6FQQ9mMvNyi6ynAcPaDVX6hEfFMGwEApXznPG5Q9XGW
xtjzgAvDX3chjv/AftsrsuT3P0SZIw4=
=5hue
-----END PGP SIGNATURE-----

--BQDk/u9vlzXZx/Dh--

