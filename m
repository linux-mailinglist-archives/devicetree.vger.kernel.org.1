Return-Path: <devicetree+bounces-294915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yITxG05Z/2m55AAAu9opvQ
	(envelope-from <devicetree+bounces-294915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 17:57:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B43500632
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 17:57:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 71FF6300FB54
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 15:57:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EBF32D3733;
	Sat,  9 May 2026 15:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmO/0+iL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B11016132A;
	Sat,  9 May 2026 15:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778342218; cv=none; b=tPV+Ty7xj9Es9ADX7c+HEV7qE6MtUUcSlHenpNZsOLpHnKteKtcvE8AyzwaTL+s8Yv0l8Di9mYoO83FwlSogHGae3x+DT5ZCX8nDTNG8y1o9Wm8D8tou34z9m8ccfXjSSAVRQcvi6HXld/RWPN86/tx/oR/ioMz37C9FyDQwc4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778342218; c=relaxed/simple;
	bh=Zr4m8EO3YhFxN6CoauY25unQTyVYNNdKNzU/2dfC/f8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p34nYHtmWv9c/1WVTEi2lr8SvUbMTuTSm6hDhL+ZiclDUBFnQ/0rcOBHEhqUR5WV0kwQyRrVg4F3MGWxsYehj9oyyIEOWXSpwRUiUDqvA/TbDQfyIGRUyloqRIfPd7Ap3OpU8t7dvEJKFZghwXBpz8ttricHKpQN3CfPo+2wKRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmO/0+iL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8372C2BCB2;
	Sat,  9 May 2026 15:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778342218;
	bh=Zr4m8EO3YhFxN6CoauY25unQTyVYNNdKNzU/2dfC/f8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HmO/0+iLYfR73DzP+ymTgRYt6HckcF7rGoQCiVrmhwQiB7Q/CSEV6AQkBymmR6tOh
	 /+obMeqDlir2WdtBtazs3Aa202G61ojjW8Jc1vP/G0pjvL8yC3QlyANWnvZIiRgMeK
	 gmsRnv9xkVqh9mK1iOl9ff1pNMsTSTlb8SlYGnqMRBx5gw63l3QODppExMutvykqTL
	 VibxNq4BLvWWYtVOhtBgTwvv3RYZG/uC+Bqi0maZS1FbZydBAdfq2ixAY+QuDUbmJX
	 x0DBvzSUXuX11IcRgoKvizVaL0X7QN3bYhWhZrXXoYb8RhTOQvYsL/8nOm1ob8DJNr
	 hDduTp1VNd85w==
Date: Sat, 9 May 2026 16:56:52 +0100
From: Conor Dooley <conor@kernel.org>
To: Gregor Herburger <gregor.herburger@linutronix.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>,
	Srinivas Kandagatla <srini@kernel.org>, Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v4 5/5] dt-bindings: raspberrypi,bcm2835-firmware: Drop
 unnecessary select
Message-ID: <20260509-polio-barrette-07f4368a0cc6@spud>
References: <20260508-rpi-otp-driver-v4-0-cf8d725d8821@linutronix.de>
 <20260508-rpi-otp-driver-v4-5-cf8d725d8821@linutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cT+9g1ZKW4ABma7Y"
Content-Disposition: inline
In-Reply-To: <20260508-rpi-otp-driver-v4-5-cf8d725d8821@linutronix.de>
X-Rspamd-Queue-Id: E6B43500632
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-294915-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[kernel.org,broadcom.com,anholt.net,gmx.net,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--cT+9g1ZKW4ABma7Y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 08, 2026 at 04:42:48PM +0200, Gregor Herburger wrote:
> The select schema is not necessary because the
> raspberrypi,bcm2835-firmware compatible is already matched by the
> compatible string values. The documentation says "Most bindings should
> not need select", so remove it.
>=20
> Signed-off-by: Gregor Herburger <gregor.herburger@linutronix.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--cT+9g1ZKW4ABma7Y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaf9ZRAAKCRB4tDGHoIJi
0iz8AP4wQV7fiXVYvXG5n3LuNtCriQQf9xbaAci0C0/7BYAu+gD/euZqqTLSAhLr
dHptMO1Ira9axxHjVUdsdRL1HNUEcgY=
=8zrw
-----END PGP SIGNATURE-----

--cT+9g1ZKW4ABma7Y--

