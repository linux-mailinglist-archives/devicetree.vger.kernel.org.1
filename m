Return-Path: <devicetree+bounces-280717-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aGrJDhkqxGmZwgQAu9opvQ
	(envelope-from <devicetree+bounces-280717-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 19:31:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EE532A9A7
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 19:31:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B78443047506
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 18:22:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C75F31F989;
	Wed, 25 Mar 2026 18:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2B4ZUWZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194D831F983;
	Wed, 25 Mar 2026 18:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774462923; cv=none; b=tQoFiJyGMjqj8ZYlEBTExy8gavRJGuzpN3YSOxc9HSuQuSienFtbWu+nttgjHPxa/dfGIIIgJKBRMKpx8ipefEgbguZZ9P4mFv/B3vqnxuUV3GvrmyL9yzkpnFSSn26uRE78oDfbRmg0nyUlao8CZZOylvbf2wiCZSHzU5VGje4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774462923; c=relaxed/simple;
	bh=YHNgcFIO6hQV4oLncfHbHayJjWhyYTZ7VYKpJ48Ex5w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ipv19xjp37/Qox4dMD0PTxhg9shqhD02M9vuuixhqhbv/R/NGR6qPswRO7Mb1k4HX2b46/J7pbU59c1yAMxtYn5GN20ggPSNAnVx++tiVteR9KOki4v9zPH1g3pTJ0xeQp/WxzGiSJv7oNnWc7JtlpniJCwqZ7ZBqD0TzPgC5fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2B4ZUWZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5075DC4CEF7;
	Wed, 25 Mar 2026 18:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774462922;
	bh=YHNgcFIO6hQV4oLncfHbHayJjWhyYTZ7VYKpJ48Ex5w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y2B4ZUWZk/fZPOrzid/tq7Mm1EDIpGuOE11AQRY8S6NJNvOJwzqzpf0qrw1dYutFa
	 siGnlKv3+I/w4ynBugQkJ9sAmTFyGYQiPwA8EgEwSfORV13iixtK7i1LfVyvRP4jDN
	 cvs0PmMM5Yn3LrYWX1CHy7oLmEl3IVcLGsIvbNClqDFnPI8Gzx+QIlLlXAsoAWN4bc
	 u2IoHN3JtdJdWiAiBjLRrmBiS9SYRTxF5Be1V4oU3YWoxlHFIhmA96vG1lGqij8N5W
	 BjPZqwOueFAFsZWMfjFftOG/EGmwnwZ2nkQtSskRTaZyKRKjeTNKOth/VCevoIYbAW
	 k9sfiJ+QN+mnQ==
Date: Wed, 25 Mar 2026 18:21:56 +0000
From: Conor Dooley <conor@kernel.org>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>, Shawn Guo <shawnguo@kernel.org>,
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/4] dt-bindings: arm: fsl: add compatible for new Skov
 I.MX8MP variant
Message-ID: <20260325-trouble-dispersed-06a77ad41a90@spud>
References: <20260325-v7-0-topic-imx8mp-skov-dts-jutouch-7inch-v1-0-10255d236439@pengutronix.de>
 <20260325-v7-0-topic-imx8mp-skov-dts-jutouch-7inch-v1-3-10255d236439@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PZTvQgnWwJ6KjtKN"
Content-Disposition: inline
In-Reply-To: <20260325-v7-0-topic-imx8mp-skov-dts-jutouch-7inch-v1-3-10255d236439@pengutronix.de>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_FROM(0.00)[bounces-280717-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,ravnborg.org,nxp.com,pengutronix.de,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 89EE532A9A7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--PZTvQgnWwJ6KjtKN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--PZTvQgnWwJ6KjtKN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCacQnxAAKCRB4tDGHoIJi
0o9CAQDXdpBhuEh7kTCcbiLCc1nFZHZqEImPwNnhaFu9T/buAQD+NTlLTJTRZ9pI
VxCTB/9AJtJtngY3mjOl2Q5qx7idhgA=
=BVDg
-----END PGP SIGNATURE-----

--PZTvQgnWwJ6KjtKN--

