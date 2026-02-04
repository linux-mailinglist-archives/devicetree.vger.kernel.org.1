Return-Path: <devicetree+bounces-262778-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHGfCLWLg2lWpAMAu9opvQ
	(envelope-from <devicetree+bounces-262778-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:11:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 919E0EB736
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:11:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8041330818B1
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 18:06:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4579742846E;
	Wed,  4 Feb 2026 18:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOQQAbpb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEDE428465;
	Wed,  4 Feb 2026 18:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770228333; cv=none; b=kBJnukgow6gOwcIJ+cTijw8slSDH4FULoc6LD7WqlL1jGm1TUBWdoNiqpctkWk3JcxzAhYdcs4bfvSX1LN8oUdNJVdX1brm3pq+N5W0enMYr2xIBYb6CjL7ysy4A7PKr1xM+YhmZS4efTzWVWaLsZ4zJExTSXY2y3p+YUW7HHvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770228333; c=relaxed/simple;
	bh=D53HBMSb8J3Sayv18SrM/DE9F0UmWk5h0fESWtISmGk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b7oYrYOuN2+vy2p6+SDcmH4i614k6ggaGzO0w3CGv49f/NdUcBYIcIil/0Ocaj6e25qHUVuPJ13vKUQOrvt7/r6cVwEuseZn7/h2ilyNxz76UC5VDXZIy9e8bMXju8ghQhRSRGAADlx/dwD270ka5nWQ4Co50mN3Zou3Ot4zcr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOQQAbpb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEEA5C4CEF7;
	Wed,  4 Feb 2026 18:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770228332;
	bh=D53HBMSb8J3Sayv18SrM/DE9F0UmWk5h0fESWtISmGk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pOQQAbpbHHN5f/fj4I01Akhm1tnXd7hZcHsy+xPUcBhQqM9gyqJno5/f+Vhk2gQMj
	 hkrzVva5m7ye/mH8zCnMexlu3qedsbvICbo2Mt80cZPJfwE3F3K0HQjqoQTrfe6Lt2
	 iUuCctyQrJrcA0D8jpOe0qil8snJgwmCTHPTwcXfXZLupK4wzGvRnkTF70aLdUuwqe
	 kMrPR9X9H7XWn1h4YqPBSnrEwKvcaOzZazS0D3fjBo9FdqRq3BeNw8+djTogiDDobK
	 W0sBcL4I4R6Wo75++wYUT4ZyjbjAaaBaUC0LDEvm8qsCGsA0L5cjypWpFgmb7IH/fh
	 DG8vULMHH+5KQ==
Date: Wed, 4 Feb 2026 18:05:26 +0000
From: Conor Dooley <conor@kernel.org>
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
	festevam@gmail.com, alexander.stein@ew.tq-group.com,
	dario.binacchi@amarulasolutions.com, primoz.fiser@norik.com,
	Markus.Niebel@tq-group.com, y.moog@phytec.de, josua@solid-run.com,
	francesco.dolcini@toradex.com, maudspierings@gocontroll.com,
	Stefano Radaelli <stefano.r@variscite.com>
Subject: Re: [PATCH v1 1/3] dt-bindings: arm: fsl: add Variscite DART-MX91
 Boards
Message-ID: <20260204-brute-daydream-871c0be53454@spud>
References: <20260204170356.35169-1-stefano.r@variscite.com>
 <20260204170356.35169-2-stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0sR0klTatUnpUM59"
Content-Disposition: inline
In-Reply-To: <20260204170356.35169-2-stefano.r@variscite.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262778-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com,ew.tq-group.com,amarulasolutions.com,norik.com,tq-group.com,phytec.de,solid-run.com,toradex.com,gocontroll.com,variscite.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 919E0EB736
X-Rspamd-Action: no action


--0sR0klTatUnpUM59
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--0sR0klTatUnpUM59
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaYOKZgAKCRB4tDGHoIJi
0qetAQCq2VcboFqXT/rCNQlQcHVzPO2WoYqZa/iOZzp1ZmH/MQD/XUYg+z8frbj7
i+WGA6DX7wrdlLaJ7mRO90s8yYiYeAY=
=RrWE
-----END PGP SIGNATURE-----

--0sR0klTatUnpUM59--

