Return-Path: <devicetree+bounces-297091-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iC9yCJTSBGr0PQIAu9opvQ
	(envelope-from <devicetree+bounces-297091-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 21:35:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 848FC53A0B4
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 21:35:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 22C383065CAA
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 19:15:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BCBF3B27F6;
	Wed, 13 May 2026 19:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rorca4yK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4871A3B19CA;
	Wed, 13 May 2026 19:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778699726; cv=none; b=YcyOn9P+55HbEhezXaqsuyvH/weAX2h7lJgv1I9TQe/T8IpYErY3IKYPwnljOMk5V08oNVUwov8rGDagDQjcQAwDo9OfRD0aomNaq74CGLz9Wb2FOhVWPBaMb/VKiaxR+h9QI4KUXAOa2SvKoL6Rip8GWjAOywiJhd2nWJ2fbrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778699726; c=relaxed/simple;
	bh=PjwdZnGMafMUAXlwoDYJu7XCJtlyP+MGZdLjge7uq2o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g4ra+LJ2yoMJAsyMVVqBiXevHkulQbSImtBCrSZxu1uWyj2iJ1WX5k8RVAYNCbCHnwddtD5pfuNrNZCHLWva3BDXVlBPpYQRN3s1jAioDOo8k1M0dvpvKoA8P3b6NLUXYerRJCNZJmCIb2YyhvcF3TT5bysLi8vb4jt+xS+6r14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rorca4yK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5DFBC19425;
	Wed, 13 May 2026 19:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778699725;
	bh=PjwdZnGMafMUAXlwoDYJu7XCJtlyP+MGZdLjge7uq2o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rorca4yKcR0UvmQ9gFa2iw5rNfofSdwMTdtbpp63XHOj3eGTKE2Fun+85tzr8+J/3
	 WnhSKmjGpNSaK0/Lm1qgXWR/63fEVq0iVCWS2r4lg53roiDvLquAhpuVH+V+rOD6x8
	 dCFI+xtTcbtEPxNR6E6zFOzfyGyhKhTUpENrDue5DWSBcnmERHy6mzD3GgIy4OhgES
	 c6MiQjvYSGUSsl3+PizY1+hrdzqMy1EaYPID393I0s5NcDsqsWbtatCBQQo6gwIam1
	 BVlHTzkJbvz+fLTkkGkEdz9n4sx7Ng13A1LhRWjZN6itR8DVMSKCFk4TwUB5/ntCvv
	 Pr64hY38CJoQA==
Date: Wed, 13 May 2026 20:15:20 +0100
From: Conor Dooley <conor@kernel.org>
To: Michal Piekos <michal.piekos@mmpsystems.pl>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Maksim Kiselev <bigunclemax@gmail.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: iio: adc: Add GPADC for Allwinner
 A523
Message-ID: <20260513-retreat-accompany-d3d2c5314402@spud>
References: <20260513-sunxi-a523-gpadc-v2-0-d5efde151dac@mmpsystems.pl>
 <20260513-sunxi-a523-gpadc-v2-1-d5efde151dac@mmpsystems.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="T0kZ9Mx4riVIcj7x"
Content-Disposition: inline
In-Reply-To: <20260513-sunxi-a523-gpadc-v2-1-d5efde151dac@mmpsystems.pl>
X-Rspamd-Queue-Id: 848FC53A0B4
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
	TAGGED_FROM(0.00)[bounces-297091-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,sholland.org,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mmpsystems.pl:email]
X-Rspamd-Action: no action


--T0kZ9Mx4riVIcj7x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 13, 2026 at 06:59:42AM +0200, Michal Piekos wrote:
> Add support for the GPADC for the Allwinner A523. It differs from the
> D1/T113s/R329/T507 by having two clocks.
>=20
> Signed-off-by: Michal Piekos <michal.piekos@mmpsystems.pl>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--T0kZ9Mx4riVIcj7x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagTNyAAKCRB4tDGHoIJi
0lhuAQDymppi/A7f9420QrmVJJ6kfQRuhlS2uA4AZgvA3B4+QQEAoYZJzXdLJ8X3
vOkfbI8aNxT7XjRdXyjPG+HWOUKtEAU=
=+BH6
-----END PGP SIGNATURE-----

--T0kZ9Mx4riVIcj7x--

