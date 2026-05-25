Return-Path: <devicetree+bounces-302786-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAqOFGd8FGowNwcAu9opvQ
	(envelope-from <devicetree+bounces-302786-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 18:44:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6895CD00D
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 18:44:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5ED21301E9B8
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 16:44:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB5863F6610;
	Mon, 25 May 2026 16:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlwcdPAo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3FD53F65EF;
	Mon, 25 May 2026 16:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779727450; cv=none; b=AnlkIt9NxtopeeTL+vanxrNwlbyWLcgn/M8h8ZenkuXANVjIOudKX4P8YSEEtJXAg/MAjzzQkh1V5QZA4+SaJatFp8wAbXcN217Ks9lsrgSVRs0Hz6gtj5EEBdmFPXZ+pI1UFLgbyBSrbsBCq7Con4oiYCl9C5VrzNKhc33h0RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779727450; c=relaxed/simple;
	bh=tO7fW2LGUXn9/HkiBLsRW5N7PQ8fXp/YzIY+daHOCio=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LsY+KydvgMixwNE/9LyaIRBtYmHUDuIGa0Bk77zrqBhA35VcAJlM1FL2TsAdR/6fijLojIe7a4pCM6JxZoR3GuEDTadnyGPMC6k2OAavUphcihdV+xCjVSZKqM6P4WkXo9ulU2B2XZvpaHBN7QjBGl8ilnPH80CZesln99WL3yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlwcdPAo; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40A271F000E9;
	Mon, 25 May 2026 16:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779727449;
	bh=tO7fW2LGUXn9/HkiBLsRW5N7PQ8fXp/YzIY+daHOCio=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JlwcdPAo5c+7060iBYc52PQFB7bK7SwT1wh3VKcJ3likegWgKvo+PHUYeIjJY9Sz4
	 7ZXgrxrOErpKAKMu8G4SAt+PNVnhepFAoD31kBYkIhuLbijpb6MfTYXjVsOkdF393k
	 r3P0kgj5wWRXE3+HzKkZcBCvUbevP8V4+GGoPuKFWAkyRRacj+k7DSb5GGQurWcrx0
	 OKAEumfZYUMP2lvlGAt6uQxg+m5SLCfojSmhtAbKdQ5DLkZcL18w0iOQgmfxU05jQk
	 AZs0thoY8N8Hgbk+d1+17FdE7+Dl7xrCxI2RZpPV7EgyZCD8MkBoGzZweJrPQp8sn/
	 3p0ZHmVbOokMQ==
Date: Mon, 25 May 2026 17:44:05 +0100
From: Conor Dooley <conor@kernel.org>
To: Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, heiko@sntech.de, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-amarula@amarulasolutions.com, michael@amarulasolutions.com,
	dario.binacchi@amarulasolutions.com
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add Axelera AI Metis
 Compute Board
Message-ID: <20260525-reissue-skating-4c793410f13f@spud>
References: <20260522174918.61523-1-patrick.barsanti@amarulasolutions.com>
 <20260522174918.61523-3-patrick.barsanti@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d+u3A4lLNjXzR4af"
Content-Disposition: inline
In-Reply-To: <20260522174918.61523-3-patrick.barsanti@amarulasolutions.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-302786-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: BD6895CD00D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--d+u3A4lLNjXzR4af
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--d+u3A4lLNjXzR4af
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCahR8VQAKCRB4tDGHoIJi
0pQEAQDVcm6ZnIRuwd7ED+X8Y/Ft/5cLD8RvyVggayLwr0ICOAEAwf8JqLhNhh43
eNsAS4TG5PLpr9x4TfpOW4rTm1SKGQY=
=yipe
-----END PGP SIGNATURE-----

--d+u3A4lLNjXzR4af--

