Return-Path: <devicetree+bounces-268016-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHewHEXpnWlDSgQAu9opvQ
	(envelope-from <devicetree+bounces-268016-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 19:09:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0681B18B017
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 19:09:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2DE5C31A982E
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D60433B8D77;
	Tue, 24 Feb 2026 18:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRJ7FRaL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2437296BDC;
	Tue, 24 Feb 2026 18:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771956004; cv=none; b=oYh2eFBsQEVumz7+kBiNxivEDQ9elhkTKyY+MVI+znIGas4eVRQFcorU3ss+yQ8q2r/DWukBoq3lt8d0bBJSAaITz1TigFPkyULOpUrLbtuFdIPg1jh1fGW465GVkW9r6ttKLvYG5mEpcpGBjVW8XT+KiLGbkdp8CE5uAKGvVDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771956004; c=relaxed/simple;
	bh=EGWiPa0dL/ROedM+8XEWJmfaUR8wqXnAsGJgoaTGJb4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tM5mi1CLusu/h6Ry0kVVWT2PbyEew7uCbfaAb/tmbm7h7121Oo+w7W6ybA52uyTZp37/DqbZ4KgF5FpMF2LLWeQPcCJdIELZM08BMZwHehxeJy1Y1s/q3S7pE3ghjqA02k5SNfdXJbmvpEfk/ceUriXaCcln7YAobvmZWIHt55I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRJ7FRaL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1A95C116D0;
	Tue, 24 Feb 2026 17:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771956004;
	bh=EGWiPa0dL/ROedM+8XEWJmfaUR8wqXnAsGJgoaTGJb4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HRJ7FRaLz3YSPVrxP0PUdk14LWGnLukQxkfNzBtKnRdhIXJ0OXNEik2VasxoYQfcC
	 ask6MmryF7N+cakziVE3AOaRmKKy/YsuSEveMGfbpMq5r7W82yK/LskvmQKsFNivTv
	 A3/SEgF845nIdokU+2/PjKfIWB4w/0+P7b8r+cg+r1mO526Ig3Gfj6ZgkG4wg5BdOV
	 g0vyWD5n5jNGo4GTdo8NIz3RhZeh6gM1S0ZGfCL0ir5Lp3WogF/oYn5nWIjdlhAuSe
	 mnqj+gHDqQHZBZEVDzBaWfjH3fH01yWjgEOL1WM3uS1O6aqcS5zgPxDqMFFvPv+CKq
	 2Ait/U9+bLdEA==
Date: Tue, 24 Feb 2026 17:59:57 +0000
From: Conor Dooley <conor@kernel.org>
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, daniel.baluta@nxp.com,
	dario.binacchi@amarulasolutions.com,
	alexander.stein@ew.tq-group.com, Markus.Niebel@tq-group.com,
	matthias.schiffer@tq-group.com, y.moog@phytec.de,
	josua@solid-run.com, francesco.dolcini@toradex.com,
	primoz.fiser@norik.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Frank.Li@nxp.com,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH  1/2] dt-bindings: arm: fsl: Add compatible for i.MX8MP
 audio board (version 2)
Message-ID: <20260224-subsystem-subfloor-465db23b2a68@spud>
References: <20260224094527.169215-1-shengjiu.wang@nxp.com>
 <20260224094527.169215-2-shengjiu.wang@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="srMF4upFs8PZBjXF"
Content-Disposition: inline
In-Reply-To: <20260224094527.169215-2-shengjiu.wang@nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268016-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,amarulasolutions.com,ew.tq-group.com,tq-group.com,phytec.de,solid-run.com,toradex.com,norik.com,vger.kernel.org,pengutronix.de,gmail.com,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 0681B18B017
X-Rspamd-Action: no action


--srMF4upFs8PZBjXF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--srMF4upFs8PZBjXF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaZ3nHQAKCRB4tDGHoIJi
0vBNAP9fAOLwhbcIxU9LOWBFaQGQSQ7k8kV7S6eIpyWquTqYAwEAr9n57ZZR5u9E
B+JD76RY2R8paRJVQ3pHPNLjfqExPQg=
=lKqY
-----END PGP SIGNATURE-----

--srMF4upFs8PZBjXF--

