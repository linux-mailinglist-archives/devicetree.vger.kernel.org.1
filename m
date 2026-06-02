Return-Path: <devicetree+bounces-305779-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id A5ybF/MNH2oKewAAu9opvQ
	(envelope-from <devicetree+bounces-305779-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 19:08:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A28BC63085A
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 19:08:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=A0ZwNhhE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305779-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-305779-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3DB75301C884
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 17:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AD1A3F39FB;
	Tue,  2 Jun 2026 17:05:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 788793F23CF;
	Tue,  2 Jun 2026 17:05:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780419950; cv=none; b=LC/i5oOVD+2UCclBtnHe18PtKvO3FjFPwJ0w2sz47p1h959vx+LIuK5mLqmW1ZS6opnTkS3tTK5rxCUX8WAynIQUcrkcE3ssAiTeACEFelNphqlMWvoev57LJtnnwrZ5sbBq8xKiXdX8zIdn/pAkojGXzV3c5f7yfx2mgHgPAIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780419950; c=relaxed/simple;
	bh=xyKCGJQZDGK3G2FCJl/YKe7tptgZeQVMQaGdQ+b+itY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H0d/CxswCmZqqIYUbpLW8MzWm4xHedponFNjd6PD6Dl1tEr1v7ynnLlJMzH7dO3PFWbF+/lyufKVhoWbYJpUMuEVgxpnz+dcgzkGrRvLhrpE2k85saHhjnAVgyNW8uUQDgd9sPueXEd/86QBVNLHkI2QIXHToYPRrFDCAUfs0dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0ZwNhhE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E2C71F00893;
	Tue,  2 Jun 2026 17:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780419949;
	bh=xyKCGJQZDGK3G2FCJl/YKe7tptgZeQVMQaGdQ+b+itY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=A0ZwNhhEIQx/twahR0Vw8Cylrj0LTdm4cFnujxL4vF9Tzluz93wabOPISL7YAOdCC
	 /Xep2829dWVTOLCMC8uWQ2WGHVUxviZ1njn/GfUcKvkuUNlvJrTsnciDgnWyU6SBRG
	 zd3o1974m7ERc+z0bLvFl6zm4TT/D8XGPklnP8maLQdrueY/nI6oSSzj2IMQLCPfme
	 PskLTrFefpGo/PgXLqjwWyMmvfedE5ENbbQJ2q6YJsK57uV+owmlXab+wGsRWSyXus
	 L6oUegbyM5EQKz/xBrJiUdRqoF1aANSVHX9M5VWucvDVyCbYuCBbBzR1Z9PZZE0P2f
	 y0lGtWyhhzzkA==
Date: Tue, 2 Jun 2026 18:05:44 +0100
From: Conor Dooley <conor@kernel.org>
To: Taha Narimani <tahanarimani3443@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 RFC v3] dt-bindings: iio: adc: add ad7816/7/8 digital
 temperature sensor / ADC
Message-ID: <20260602-pork-unsightly-fd091c88e5a3@spud>
References: <20260530165917.55767-1-tahanarimani3443@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CpDupIcLePCtqUOU"
Content-Disposition: inline
In-Reply-To: <20260530165917.55767-1-tahanarimani3443@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:tahanarimani3443@gmail.com,m:lars@metafoo.de,m:Michael.Hennerich@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305779-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,spud:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A28BC63085A


--CpDupIcLePCtqUOU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 30, 2026 at 04:59:15PM +0000, Taha Narimani wrote:
> Document the Analog Devices AD7816, AD7817, and AD7818 digital
> temperature sensor and ADC bindings in YAML format.
>=20
> Please note that the driver for this device is currently in drivers/stagi=
ng.
> This patch is sent as an RFC to clean up and standardize the device tree
> bindings prior to any major driver refactoring.
>=20
> While reviewing the AD7816/7/8 datasheet to correctly document the proper=
ties,
> it was noted that the current staging driver attempts to request a 'busy'=
 GPIO
> for both AD7816 and AD7817. However, the AD7816 is an 8-pin device and do=
es
> not possess a BUSY pin (only the 16-pin AD7817 has it). Therefore, in this
> binding, busy-gpios is strictly limited to adi,ad7817.
>=20
> This resolves the checkpatch.pl warnings regarding undocumented DT
> compatible strings.
>=20
> Signed-off-by: Taha Narimani <tahanarimani3443@gmail.com>

This seems probably okay, but I'm not willing to ack it as an RFC.

--CpDupIcLePCtqUOU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCah8NaAAKCRB4tDGHoIJi
0oc8AP9VR5xZ4NU7c4XPZ38IdL+eybEQw3mnkqkSYza17qw8bQEAlLXVFe96Nk9m
321vYPoyGK+lBVqnqCtQAodz7uekNg0=
=y12F
-----END PGP SIGNATURE-----

--CpDupIcLePCtqUOU--

