Return-Path: <devicetree+bounces-277927-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCHbKmgwvGnxuQIAu9opvQ
	(envelope-from <devicetree+bounces-277927-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:20:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 083C62CFD1F
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:20:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45FD53297532
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:13:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0DE93ECBE1;
	Thu, 19 Mar 2026 17:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sxc5EeRK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7A73ECBDB;
	Thu, 19 Mar 2026 17:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773940406; cv=none; b=FswjlqD/bmrxc0A7DAH3pWN7OYuL/CmUoM7fSPNetsotA/fay2EPTqoRq3zPCX+F+ovhSW3FFRj7+SPkIiHFxtfRLFllnk2kPS1Ej2omFt6QYtQ7E5rr05U3DOJsag9+Ran6ByrOjTo55Ia9zn00QVEl8lrk7i/YQ2niEFVgMIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773940406; c=relaxed/simple;
	bh=M8GZbHUIj3Y/6Oe1KjBzpKCejXEtNxOlN7IxJAzIK6I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UDHZH2oPCQmgLL/UPXjRbs2YPO/QKOK1yjObHkzG7nxyZV7nYM+5Cd+BO9/w4kTaPRH2dkTZ1QGgE5C8neRmcCPBItrRGfEpJIvUi189PIJyVjaaPtOdMtPeDM8M2iapRvB45MDRKfLbIE8cLVQfrsJ+KTa0/KWY04U4gMCTB80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sxc5EeRK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CDD9C19424;
	Thu, 19 Mar 2026 17:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773940406;
	bh=M8GZbHUIj3Y/6Oe1KjBzpKCejXEtNxOlN7IxJAzIK6I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Sxc5EeRKYEVN1/A7GFpVO0aQn9D5SKSkzzLWm0iuEEQVCHehSMUzoECwJtxwMBwZB
	 gsthkr54G70IzCRCbHh8NkcGefvZgd6jyL8Ir7cb5G9SmOt/b0kxUf/WRrOlAuSTJI
	 Z+DXTsq67pTpBxjyCzuI5nMb7HYLHQ2F/KkKg/vahYgqDBvYHU58bFUw9/3p9YOLwc
	 hblX9FgB/dQarfekDfGBwOiZ2S7B6EiGR2dwF0lZ/AfdHEHZjDGMfH1+evtNT6Ww47
	 BZRnUjXpEWnL+185d7Pymh/Ne52UIEL85vEL5TOGveS7TrAbH2oPUyBW4YVpYfdDXR
	 6UqHC5Phkx5Gg==
Date: Thu, 19 Mar 2026 17:13:20 +0000
From: Conor Dooley <conor@kernel.org>
To: Joy Zou <joy.zou@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Ye Li <ye.li@nxp.com>,
	Jacky Bai <ping.bai@nxp.com>, Peng Fan <peng.fan@nxp.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: add i.MX91 9x9 QSB board
Message-ID: <20260319-unranked-bakery-8b735814b907@spud>
References: <20260319-b4-imx91-qsb-dts-v1-0-2eedc01d8af0@nxp.com>
 <20260319-b4-imx91-qsb-dts-v1-1-2eedc01d8af0@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RTIVsBf3wxPgv8L7"
Content-Disposition: inline
In-Reply-To: <20260319-b4-imx91-qsb-dts-v1-1-2eedc01d8af0@nxp.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277927-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.973];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 083C62CFD1F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--RTIVsBf3wxPgv8L7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--RTIVsBf3wxPgv8L7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabwusAAKCRB4tDGHoIJi
0nTEAQDbMCOrg64/o0losQs0rt/kE/TFy9uriXfqdjBLNgK4pQD+O/hOqrhmlk3E
dxsw54Rmx+qQaMs7yj48y2N0Sey4QgY=
=HmHV
-----END PGP SIGNATURE-----

--RTIVsBf3wxPgv8L7--

