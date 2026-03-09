Return-Path: <devicetree+bounces-273034-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id muYnGyf4rmkwLAIAu9opvQ
	(envelope-from <devicetree+bounces-273034-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 17:41:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B89E523CE2F
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 17:41:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C6A72313479C
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 16:32:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D6493AA1BC;
	Mon,  9 Mar 2026 16:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUOGJRko"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1C030F7F2;
	Mon,  9 Mar 2026 16:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773073843; cv=none; b=b2fKWaerveJV8rZuZit1TDCg8Le3Q9oblq0YKpMtYUHIL1crnKNm1mTQmZBXh1uHEXJ+2jM5SPK2fuuCchYy2S9EQ8qGa+hNpwhaha10mwN7K7d7ABFg2793XYSzgNt4fRyANrnQEqZDA4dw0BaL3zuh73SsGO1T20BYhEPQg6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773073843; c=relaxed/simple;
	bh=ave8VaHuJdkX4Wx9StX2O4sv60limTQQ5am7zfTRfNk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q7xeNuPuga/DaD4n2y+dzPjWQagEmyDqE//+mcBOCVYV8i4WsBy2tZncdpnFG0LtUB5dyoBtBFkMxeAPgj6au0RmBB3zXDBxIjGpElGEcOBFI1XT0bb5TWmk7EQ9F8RbgSRce2l7DmxJOUsqhYgzbQbMlf2K8j+hTOKQEIIzwTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUOGJRko; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1919C4CEF7;
	Mon,  9 Mar 2026 16:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773073843;
	bh=ave8VaHuJdkX4Wx9StX2O4sv60limTQQ5am7zfTRfNk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PUOGJRkocuFM89TqCoA90he6JWIvU394nTBjKcAkDE+rvsHFXBbHDID1zgQpQ5CMN
	 cJ5pbSX1+Pf9CAVHv3R6XjaCTO0fdz40NuTrUigQzqaGFmSLnslkbTYrLRmJZnOVJB
	 SXgc6NbVBHY9cv4hNP5ReRRXNGU11PMsT1Q8OkqYAtWYd2U7X3IEUVr8BSejNUfOk8
	 rP22xS2B+Xfa4324yAHrJJmBX0n7cF/Ofz1dXUZyQ/tHXZJUk9Bd/LLCYs5VErrbXx
	 s5Wc1EkOjg9kQ2R5MCt6sH5ZbM855cij2r3VSoqXDpL0aVd1WVDqFY7SJNC4yPbWvn
	 9+qobCjzC+hjw==
Date: Mon, 9 Mar 2026 16:30:37 +0000
From: Mark Brown <broonie@kernel.org>
To: =?iso-8859-1?Q?Andr=E9?= Svensson <andre.svensson@axis.com>
Cc: Support Opensource <support.opensource@diasemi.com>,
	Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Adam Ward <Adam.Ward.opensource@diasemi.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	kernel@axis.com, Waqar Hameed <waqar.hameed@axis.com>
Subject: Re: [PATCH 1/2] regulator: dt-bindings: dlg,da9121: Add
 dlg,no-gpio-control
Message-ID: <f5ee1e87-f4ef-46e1-a705-cba532e1db2e@sirena.org.uk>
References: <20260309-no-gpio-control-v1-0-06d2365917c6@axis.com>
 <20260309-no-gpio-control-v1-1-06d2365917c6@axis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tQVtgCPmvqIs6jmf"
Content-Disposition: inline
In-Reply-To: <20260309-no-gpio-control-v1-1-06d2365917c6@axis.com>
X-Cookie: Do not dry clean.
X-Rspamd-Queue-Id: B89E523CE2F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273034-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[diasemi.com,gmail.com,kernel.org,vger.kernel.org,axis.com];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.972];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sirena.org.uk:mid]
X-Rspamd-Action: no action


--tQVtgCPmvqIs6jmf
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 09, 2026 at 04:52:35PM +0100, Andr=E9 Svensson wrote:
> Add the optional boolean property dlg,no-gpio-control. When present, it
> indicates that no DA91xx GPIO pins are configured/used with functions
> RELOAD/DVC/EN, which can affect the output voltage control, regulator
> mode control and enable signal control.

> It is mutually exclusive with enable-gpios, regardless of whether the
> referenced GPIO is connected to a GPIO pin or the IC_EN pin, since
> enable-gpios allows the regulator to be controlled via an external
> hardware signal.

This should probably explain why we can't infer the absence of GPIOs
=66rom the lack of any relevant GPIO properties.

--tQVtgCPmvqIs6jmf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmmu9a0ACgkQJNaLcl1U
h9AuIQf8CkRlBkjWTxcPn9ocgKeD/kemU2SRXTXqKywHMOnUKhAkLX7eNvIE2DC1
7561ix+iirGoY7W+Jwwxp+tgr8c1R2sBDUrIsN2NoU90Pm1NRRx8ISkkaafQ2Omk
ryp8zvYHxkUZ74iMlf7rCLVp3PG+QfI2a+/yq6Yry8q13AODD5wt3Ito3DMEj76W
4mXrGh9S3e5Ff2u8lMMspkI0djNTBaAd3YU8SDAwJhwszpRLv78de4OT+8QbBsSj
HBpvGq+cIdaEcty1m2DyiFW86gwGELtJ1iRGyEhEKTL1IMXOqIZ0y5mzFDgCm88F
MCRYUyYU8we9zTGf7KVMTr3qcMTMkA==
=khWw
-----END PGP SIGNATURE-----

--tQVtgCPmvqIs6jmf--

