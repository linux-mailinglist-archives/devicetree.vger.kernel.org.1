Return-Path: <devicetree+bounces-302302-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HmgHMNSE2qB+gYAu9opvQ
	(envelope-from <devicetree+bounces-302302-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 21:34:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF1C5C3BE0
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 21:34:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 768833001FF9
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 19:34:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3CFC30F94D;
	Sun, 24 May 2026 19:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXeZiby4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9FC2773C3;
	Sun, 24 May 2026 19:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779651264; cv=none; b=NZ6+DnfbBRuHka+G6YSrDce1mdARVpJYtIJ/DmxodyPggWaa8W9s+fqFAi2+RZfccDNakb15L3w+HrxCSdLf8kdOb02PpzBxpQEvFmisIWlNUE23k8oKAo8Zc93rqR9upf19gpYAeeq4yVELUFzdpoNh+ClEI0Zbh4L6rzVggYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779651264; c=relaxed/simple;
	bh=1FF9aoLbdw0yJTCNZZshoIPipr6muLVgaOu4w2qQXSE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YVh8BmXgzGv6N2eEgqWRto+85/zLl50LdaO9557SZP1Noae2vH0OtemfNQKCezmCwFHKro6V/pHLM0Pb3L3DsxfFmnUbQRQiNhuef0wgfCAZoiQylClIsQIcQXfsOcRJcQnFi+NoiFCiKe1xUclbMcl2bFPIRDXP8RazjDZEWHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXeZiby4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 646221F000E9;
	Sun, 24 May 2026 19:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779651263;
	bh=1FF9aoLbdw0yJTCNZZshoIPipr6muLVgaOu4w2qQXSE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GXeZiby4qylDp/3n57fIMQHf+4tebKSwRUX8udvXNJkDbiiooX6gfuZmSSy9/Q0he
	 Q2PVeXWL1cyBR4zBPENOC/uTRtbPQbv7xwz5N0y0XOBNbs68VTZQsz+0G9nC7cZhSW
	 z9GtyO5rcxAXHbcOV1scCvZn2ytUTNX4f6WT8SN35VHX5meSSKA3WMdfCbK1akfdQr
	 zg7Wl2TcsTeuAyarVfb8BUzXK3cWHcd0FlLQ0Fvcs/O8DEG+5xOCk8aw9XZdzVxF7e
	 ZE4RZrUw7KuTpRlExGgR+z4yZ0NTDFMq8TvvT5zwOTBoBJ9qFjz2FwF79BRwXpBimJ
	 w4vDO3d/n7BkA==
Date: Sun, 24 May 2026 20:34:19 +0100
From: Conor Dooley <conor@kernel.org>
To: Jinseob Kim <kimjinseob88@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, linux-iio@vger.kernel.org,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v2 1/7] dt-bindings: iio: add Open Sensor Fusion UART
 device
Message-ID: <20260524-tidbit-shorty-a4754de1db64@spud>
References: <20260524085312.15369-1-kimjinseob88@gmail.com>
 <20260524085312.15369-2-kimjinseob88@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q0wExonoB7NcF54q"
Content-Disposition: inline
In-Reply-To: <20260524085312.15369-2-kimjinseob88@gmail.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-302302-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 1AF1C5C3BE0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--q0wExonoB7NcF54q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 24, 2026 at 05:53:06PM +0900, Jinseob Kim wrote:
> Add a binding for the OSF0 UART-attached sensor aggregation device.
>=20
> Signed-off-by: Jinseob Kim <kimjinseob88@gmail.com>

Most of my v1 review was ignored it seems. Please go back to v1 and
respond to the points I made.

Thanks,
Conor.

--q0wExonoB7NcF54q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCahNStwAKCRB4tDGHoIJi
0tnnAQCDSpXQa9zNguEepfT9/B3dggegQXIR4aHnpI/Q5eneAgD9FpJm4lHXRqjb
OkFFwuBNTEthq/xFKvq5EEMGqUDjDgg=
=rGKn
-----END PGP SIGNATURE-----

--q0wExonoB7NcF54q--

