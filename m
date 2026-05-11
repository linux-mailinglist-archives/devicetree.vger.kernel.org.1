Return-Path: <devicetree+bounces-295678-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLk9MgYJAmqknQEAu9opvQ
	(envelope-from <devicetree+bounces-295678-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 18:51:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CD20B512AB2
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 18:51:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 10BB7303B2E8
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 16:11:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 972A643E48B;
	Mon, 11 May 2026 16:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuqSJaWU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73BF532E137;
	Mon, 11 May 2026 16:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778515746; cv=none; b=RDB1EfDI8f126/9wrFWLQby6JNeXKDsCQfWk03kezl7YTBVvWWhnzTt2OuSQ0dqlsdB8fcyN/ZMxOJmPvtauqDZWlrEisJqsZcvFTZzADg1swqcf84f+pRiW0YCfqbPYxTyhCqDD3Mxl61v1WgSKclpKBDgUfgzX+T3dIR9vo1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778515746; c=relaxed/simple;
	bh=MdYjXXEqgorm6UxoATOJceUXAayaf3Vl3eVuf8QZ6cg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P8ckjCsbUU4arWAkYB9LYiht1rISWOPZVmhyJgvkW4H9xYXweHX3YUUa2BFq03BAOG6BmQmzXoxtkMEocevRuaEJ3Qfvuzc50E0nC7Znt1z71dFc40zOrp2FCskFVv7+qjQsJDjamzm0s2hb2Yl0eec31nzDXCQ58QSAPaAw12g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuqSJaWU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E495BC2BCB0;
	Mon, 11 May 2026 16:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778515746;
	bh=MdYjXXEqgorm6UxoATOJceUXAayaf3Vl3eVuf8QZ6cg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HuqSJaWUDu88dHUSLzCwEUS9HV4jb5TLzC6dymy/KuA3ubpaDGaJiztLHnmTvrCMs
	 evwNnsqcc54rZHXIm7udVRQL4u6Sn9HDLpMrS3rO/CdyhQ2caC875HiH8YGnTIup4T
	 I9fVDToN79V4KAqpiCj4Eey5gok27tI4rteirB0FgBwwlfny96hkNCowFl9g4Gu9/x
	 UD8EkwWIGrmacRlgD1aTYhZxZRIBzMBKHOHmXcBWwx8g/6vzmj7lMtU7SIJfO/EHIT
	 LY1uXSXFMxNbpT6jJhY7zF2rCqo0/C1Z4CzIsgadc75jFMVerrCLljla+V2zrAc7UG
	 orYtMNPIVmkLQ==
Date: Mon, 11 May 2026 17:09:01 +0100
From: Conor Dooley <conor@kernel.org>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: ak@it-klinger.de, jic23@kernel.org, andriy.shevchenko@intel.com,
	dlechner@baylibre.com, nuno.sa@analog.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 02/11] dt-bindings: iio: adc: hx711: add VSUP supply
 property
Message-ID: <20260511-unsterile-enticing-97af7af63826@spud>
References: <20260510194947.31997-1-piyushpatle228@gmail.com>
 <20260510194947.31997-3-piyushpatle228@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sLCn0eYemfYQDG0Q"
Content-Disposition: inline
In-Reply-To: <20260510194947.31997-3-piyushpatle228@gmail.com>
X-Rspamd-Queue-Id: CD20B512AB2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-295678-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,microchip.com:email,intel.com:email]
X-Rspamd-Action: no action


--sLCn0eYemfYQDG0Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 11, 2026 at 01:19:24AM +0530, Piyush Patle wrote:
> Document the optional VSUP supply used by the HX711 on-chip regulator.
>=20
> Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--sLCn0eYemfYQDG0Q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagH/HQAKCRB4tDGHoIJi
0gxPAPkBJLdy5Dyb52/TPTgyHybyv/xCejfbkAkqXRkB/O518QEAkWUT0muxrmux
LRbKhMf+vkwme4UqzP86iqy7iA1SbwA=
=httj
-----END PGP SIGNATURE-----

--sLCn0eYemfYQDG0Q--

