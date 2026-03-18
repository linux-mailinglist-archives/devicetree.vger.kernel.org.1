Return-Path: <devicetree+bounces-277406-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GONGIubquml0dAIAu9opvQ
	(envelope-from <devicetree+bounces-277406-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:11:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D83BE2C10A4
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:11:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 119063430C13
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 17:40:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D041313558;
	Wed, 18 Mar 2026 17:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OD1Zf8WY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398462F6922;
	Wed, 18 Mar 2026 17:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773855631; cv=none; b=COJwqPSySeXBxMcWeGCA4pzgiO9QYzeEPsAOYgmkhw2a/3WSEUzsHCBcIk9qHkeiQ71q0b/bJYh/KnGNK8amPPNGv4xVMsh2BbtPKbPa8Imx1aM1PxyyWjecQren6BEfysQZvyItzgh/4TogGvxrno9+2Ssqe3eZvkhScHy9sQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773855631; c=relaxed/simple;
	bh=hjAkPnsHnWTXDYcVI0I8Ml+aGua6YrRDZNsT0AYKBTw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sO24EQhKrO4F5KoiNpTMqJ9T/js3g6RXyCN26aKkDfucqhYHEGBEFzkl6jRWJXq30H+byuTPtADOG9Jkv7UYjgBhBeGv6R5UYauy5hLNpWVE7HNefxM/3ug8HAsIr8N3E1u7DOYneFhOreo6LJxXpl0OglCnEEgZYq34vBrpC3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OD1Zf8WY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D674C19421;
	Wed, 18 Mar 2026 17:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773855630;
	bh=hjAkPnsHnWTXDYcVI0I8Ml+aGua6YrRDZNsT0AYKBTw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OD1Zf8WYrBpYSlJx7HXMUzUUklqymfiVUfvaDc8Mbj/Iv3npTFtS8jMsMtZI4WCqS
	 86YqVPaIYHoYkF0BHVlXNRGYGpUcrKtzKJPALdLSjUdkxWVv+usf3JmQlGrg2xKRpP
	 zLg0VOnwwfPRlVpP6XIWvvGsoJxEFlNLLIDjI2VBb3fWdb0MwJs8HY33/Dr2wjrpcP
	 YZob83pHV8s8xA8xWNwKhyk8Qn0flanoNE/x+JpoJCF2MOPrR2ecN1gmrHsi+J0NR9
	 fwusQzSkHaRPoEoQIJzNkcjdndhVvI9rO9CX+7WHKwbB/DUeQEGwHFisvx1QukPiqD
	 hHcltFEQXVsyA==
Date: Wed, 18 Mar 2026 17:40:26 +0000
From: Conor Dooley <conor@kernel.org>
To: Bruno Thomsen <bruno.thomsen@gmail.com>
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
	Lars Alex Pedersen <lapeddk@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Roger Quadros <rogerq@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Andreas Kemnade <andreas@kemnade.info>,
	Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: [PATCH 2/2] dt-bindings: omap: add kamstrup am335x emperor
 platform
Message-ID: <20260318-severity-vitality-4d8ed4849011@spud>
References: <20260318085420.7680-1-bruno.thomsen@gmail.com>
 <20260318085420.7680-2-bruno.thomsen@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BWk7Hb/zNU+DT/M+"
Content-Disposition: inline
In-Reply-To: <20260318085420.7680-2-bruno.thomsen@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-277406-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.973];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,kernel.org,atomide.com,baylibre.com,kemnade.info,iki.fi];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: D83BE2C10A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--BWk7Hb/zNU+DT/M+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--BWk7Hb/zNU+DT/M+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabrjigAKCRB4tDGHoIJi
0gr3APwOyEtyxKQLZRJ/9imWFq/XeUSrTgA74mM7mSGqfjd8QQEA3q0BV1p8wsPX
E6mr4rTKdCKEnVsO58UxDkDmvCPk2w0=
=+5D2
-----END PGP SIGNATURE-----

--BWk7Hb/zNU+DT/M+--

