Return-Path: <devicetree+bounces-315761-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9tYkJuVVPWog1ggAu9opvQ
	(envelope-from <devicetree+bounces-315761-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 18:23:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E34C36C76F7
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 18:23:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=nXnV4RWV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315761-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315761-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 74060300DF5D
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 16:22:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CD183DF01A;
	Thu, 25 Jun 2026 16:22:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581123E3D9F;
	Thu, 25 Jun 2026 16:22:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782404573; cv=none; b=l+VxYbpIRhkyAwSbbGHABk6lFhjk4IoxFMlnKjj9XcJLy2Sh+nrbTWXUhCX9u9EETK/eukgCWHSxfKshzTHMZFguB+rBQBaZM1vYq5oSPwIyYYNmykaF6ryjGpk88K+fCXoI5XKEiPjUEkKCysRjqplOpvI0fBga+Qkoe7Cz0n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782404573; c=relaxed/simple;
	bh=LGgFtg9jVS4GhMzavMNyBt9FDJxaR40jKV4yOVGIV/g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R5RtKOjjJxzma54S9k5Y232PSNmIg8TsapyY0cG1AiiHfcPhpCSz6q8Z9E/ULrMlPhqM2TYeM2orJgNYujQVIwNvW6s0Y+JH4hNgiVtJ27IOTs076d9tbXczLeuhDiHCy9FELxF8GIf2O+IT4y/gkiJzp2vyyFqzLu3WLJzdkyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXnV4RWV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 217B41F000E9;
	Thu, 25 Jun 2026 16:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782404572;
	bh=LGgFtg9jVS4GhMzavMNyBt9FDJxaR40jKV4yOVGIV/g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=nXnV4RWVzF6XZ5HHLjv9UMTwfl/DCoRbm2IWVcLkdXsym2EePqYLW3OnoKIIirsQp
	 PL9mhC1W9rWCWpFCEceq5K4K9OH4EDH3N2DpPO4RhLEyQwGss9CVa7GrgNyJSSWedZ
	 Vi6M8Aal7SMHDKdPrAQD0eAaQ+4nY6kqpwHA1KLXymPIuBjVefwDPXj8ZoKaNzMGWC
	 3qFPCc4ukr8ZgpU06ATN36RaFbX13bQRehkxKLfBGkztjhzz76VoDkxu1y7ih31osl
	 uSUb8k312vLSnvNqhDH2bhgL76Vo1qF8IbppgWnhEzA3IZEk9/ZelzbwEoW2a8pKuz
	 kvKeamNFn8rOA==
Date: Thu, 25 Jun 2026 17:22:48 +0100
From: Conor Dooley <conor@kernel.org>
To: Nathan Morrisson <nmorrisson@phytec.com>
Cc: nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, upstream@lists.phytec.de
Subject: Re: [PATCH 1/2] dt-bindings: arm: ti: Add bindings for PHYTEC AM67x
 based hardware
Message-ID: <20260625-pliable-dose-38419101d654@spud>
References: <20260625160214.4001298-1-nmorrisson@phytec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/ssOFjh6MDidAPni"
Content-Disposition: inline
In-Reply-To: <20260625160214.4001298-1-nmorrisson@phytec.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315761-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:nmorrisson@phytec.com,m:nm@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:upstream@lists.phytec.de,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,spud:mid,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E34C36C76F7


--/ssOFjh6MDidAPni
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--/ssOFjh6MDidAPni
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaj1V2AAKCRB4tDGHoIJi
0nq3AQCwiV+35/MQQs4CaxZUUDygIeQm11HT36LX1TAy3FQdfwEA8/Ow7EUXLXg7
6AudMx/BQBTw/DifXISY2cDThpX0EQI=
=2GgM
-----END PGP SIGNATURE-----

--/ssOFjh6MDidAPni--

