Return-Path: <devicetree+bounces-301425-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wM+FOsY+D2pNIQYAu9opvQ
	(envelope-from <devicetree+bounces-301425-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 19:20:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE675AA16F
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 19:20:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E1391324576D
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 16:44:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 019E037DAD0;
	Thu, 21 May 2026 16:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3bIQKvd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1CB537CD31;
	Thu, 21 May 2026 16:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779381867; cv=none; b=D9nmBOuYoypD9IGMWJdUpotwUgGBuvHPmjvNX8TYToOJslF+AZl+wxF40gFYQW+r2tQKd3dI4QsmRnstSNKhTfER7OYJdVDwfc/Y2xGKzhri683aRjsSXkBWpqPCf3Pav+kzrH4NIIglUWeAIN+jG7zUo76Mt0s6FqkZD4jkKu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779381867; c=relaxed/simple;
	bh=hkD5q3ybbxXB0pw+vBiwtnqFqYqh9iUGnUm61svwc20=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NFCGip2ep3G8y8DBpmIuxZk+Vgzqy6DtIjIWwsdX4Bpr2XfwLvVOlKTqKqRK7YN9sh+3pnYaO6SCWCZA589W4IwHbyo7QofYHON4Luknc76jVyEUQwLyNeXvBa+GNMievxn5b+iLOtZtgm+afq3z6WfAEfSB0D/qb3oziusb9P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3bIQKvd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B01B61F000E9;
	Thu, 21 May 2026 16:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779381866;
	bh=hkD5q3ybbxXB0pw+vBiwtnqFqYqh9iUGnUm61svwc20=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=A3bIQKvdAYmuj0CgCcPujFJ3NDly7m342YdOJkQt3lkgslXpy6Ja5CuyqCsrxvKMn
	 nuplYdUfkkuKF4khMsPUafrHkRLOkY463WdCrq3CWD02ZnsOpl2olXW5j2LbsMiUyI
	 pYI3sfvdgd2qeGbjoNbIaoQ4Mv3c/cwioM6BmRcyFzDssNZreYluqSoiRJirbYZRzj
	 E7UASKM6r+rGM+1zvWiprj0UFIfqJOTFhEWr5Ahq2ldjywHTfUUhAqbIeawDC7IZI/
	 4HvN6nNHdISsoBwpRMZrMPNc7mygFiMyt/VwEmjwEpYxbxbsz6n7jabvORhrhTwJK3
	 8d1JnK8mR+/XA==
Date: Thu, 21 May 2026 17:44:21 +0100
From: Conor Dooley <conor@kernel.org>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
	andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH V8 02/10] dt-bindings: iio: imu: icm42600: Add icm42607
 binding
Message-ID: <20260521-premium-afterlife-0d7a22b77517@spud>
References: <20260518200526.458421-1-macroalpha82@gmail.com>
 <20260518200526.458421-3-macroalpha82@gmail.com>
 <20260520174217.6ca98524@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bEO632PXk16dmYaM"
Content-Disposition: inline
In-Reply-To: <20260520174217.6ca98524@jic23-huawei>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-301425-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,intel.com,hotmail.com,oss.qualcomm.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 5DE675AA16F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--bEO632PXk16dmYaM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 20, 2026 at 05:42:17PM +0100, Jonathan Cameron wrote:
> On Mon, 18 May 2026 15:05:17 -0500
> Chris Morgan <macroalpha82@gmail.com> wrote:
>=20
> > From: Chris Morgan <macromorgan@hotmail.com>
> >=20
> > Add devicetree binding for the Invensense ICM42607 and Invensense
> > ICM42607P inertial measurement unit. This unit is a combined
> > accelerometer, gyroscope, and thermometer available via I2C or SPI.
> >=20
> > This device is functionally very similar to the icm42600 series with a
> > very different register layout.
> >=20
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Note that Sashiko has highlighted that the binding this being added to
> has a potential problem.
>=20
> interrupts are required but interrupt-names are not.
> That would be fine but the binding doesn't say there is a default
> ordering for the interrupts - so if we don't have names we have no
> idea which interrupt it is.
>=20
> This needs fixing - probably by adding a default

Worth pointing out that this isn't an issue with this particular patch,
the problem exists in mainline.

--bEO632PXk16dmYaM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCag82ZQAKCRB4tDGHoIJi
0tF3AP9zT2ovoUg3abQXDhNddp9vRDgQcc4N1UcoRdBUeNnXlAD/bjif4V1VDqjT
jdRERNCGBKXetgKMAL6b0PhKI8xKYw8=
=fvXY
-----END PGP SIGNATURE-----

--bEO632PXk16dmYaM--

