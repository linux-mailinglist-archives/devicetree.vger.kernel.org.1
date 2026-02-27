Return-Path: <devicetree+bounces-269381-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oG3qB57WoWlcwgQAu9opvQ
	(envelope-from <devicetree+bounces-269381-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:38:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB141BB89C
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:38:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 98A623048578
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:34:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0670A3ED133;
	Fri, 27 Feb 2026 17:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmKonAu1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79C7346AC2;
	Fri, 27 Feb 2026 17:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772213673; cv=none; b=pLD7jgdzI1omjXQcD/5AoCWCzNi2deEQEnFQJB5zxrBzGKCmAhPC71nYjjU9uNUQPCWH9rDa05NXqKunXfZJtEOnSxh6en+pdCdXnqjiVBrxxgtbeaJUwPxp2BxZr/DU0kkRaVdkSRL3VKVc81mA+Dj/t4kGb2D2DN5uMDOg7l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772213673; c=relaxed/simple;
	bh=wLLZ0paeq/fuklwkgre95bDIsXxSXmcW8nRTjbuWQeo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Zn387HqZLjb6HPOj2uE1vxc4I3u0DQgWENP05mOK0FfKKoJ5deegjGKuLSUxdL/xpOdxHRamGN+PierpFhNDwxc8EGy+x8QDdK5oFFGQ1Qq3OjcZLSMiD+y0MM/zW2Z0FnZnSrLW7BcXmBxiYvT0uu2LuGtSkaK9oogDdgJvpwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmKonAu1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 914E7C116C6;
	Fri, 27 Feb 2026 17:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772213673;
	bh=wLLZ0paeq/fuklwkgre95bDIsXxSXmcW8nRTjbuWQeo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NmKonAu16sV2qROCRaEfTBOM8soKfnF3oHOGYJbtHesaQWKHc4PqAyJv6LS7FoYT+
	 2b/QxaK2poGNykK4Y2euG1nfibvmqWKodofpNWnPvg52G8cVPQB2qHg/QUSM2F/OWl
	 k4m9wPpep7+3jbcDOcygTAYF1fc+ANO0AF7GSFz4ozOTsosn797/++6Zp35vSKzpyL
	 TlyYIzor4GYXinpNn/UnYdCHuG5kGydJWrLUwlRDk+tgLi+f/rWegVm3q2Y0He1kOe
	 NvZMp3zH+k8OvhxGA/KvhC9Vc95G++TgbxHwaabOf4dI0crG83x5zeMxJdhR3c3Pwj
	 E1bqfGxURVg2w==
Date: Fri, 27 Feb 2026 17:34:29 +0000
From: Conor Dooley <conor@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 5/5] dt-bindings: arm: atmel,at91rm9200-sdramc:
 convert to DT schema
Message-ID: <20260227-consonant-marbled-f6b1d09afb40@spud>
References: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
 <20260227-arm-microchip-v4-5-7e2ae1c5b5d6@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fmUJDYSH5bgLM2lG"
Content-Disposition: inline
In-Reply-To: <20260227-arm-microchip-v4-5-7e2ae1c5b5d6@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269381-lists,devicetree=lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 8BB141BB89C
X-Rspamd-Action: no action


--fmUJDYSH5bgLM2lG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--fmUJDYSH5bgLM2lG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaaHVpQAKCRB4tDGHoIJi
0jk3AP9tCw061KSaSLckgp/Nwi4l4L4Rz0Oq2E71WmBk5v5SVQEAps3quoV60bby
9R41LAb5a1fUS/C/24CRTHMJ8yNQAQc=
=/S6e
-----END PGP SIGNATURE-----

--fmUJDYSH5bgLM2lG--

