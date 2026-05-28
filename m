Return-Path: <devicetree+bounces-303931-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIxNLZB1GGo8kQgAu9opvQ
	(envelope-from <devicetree+bounces-303931-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 19:04:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B26E55F55E5
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 19:04:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7E1543016D83
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 16:56:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFED43F23C4;
	Thu, 28 May 2026 16:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S94GI6w8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E345EDDCD;
	Thu, 28 May 2026 16:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779987362; cv=none; b=JDeoV/zJlLnDqxszqWwyeHOPriFgmWu/ThYE1i+vH3k60+mftSF/KGT9yMS1eUbbi//EsPs7V6VrWbMSND87cO9fDmkXfx9766FoH1pK/Fr1HUMA7uw8aqqdM9wskff0DApPZNuSopeoMnIPlXqC3LaA1i+gW22luji7IyUfB9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779987362; c=relaxed/simple;
	bh=hJ1n5xHzLhhjEFMWyc0czU8zgGQTD/DqQsMamSkzaLc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XZ3NPGi6TRHuqTQWAfGvlM/9Fn+OAXkw5u+c54uYvW03Rg+SR7X00E01EXoeSFr53UU1lkK2gCAk65XeSyrQAEmjkfQm3jc8UwB32quF5gr+OdmJ7Da2ccLonXDBozZCSsSCOvLBlukV2f4gspWmlGxlH9SY8bPdk+OXBinXAiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S94GI6w8; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2EF91F000E9;
	Thu, 28 May 2026 16:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779987361;
	bh=hJ1n5xHzLhhjEFMWyc0czU8zgGQTD/DqQsMamSkzaLc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=S94GI6w8Ip5AhptrodQ668xnBOl6b7Sh7f5hjcCRdNAq6fRRAsst9ZCWaM7Yptr7s
	 23UNC7KfhhCXNdetpUP1cWzJ+q/nOVgwoHpP1yPdwA30AskV0f5UcF/YMzUPiBVvTR
	 YTfKJpN0d3pbUuRJC79ffM7tcii7/csrTC9prHdNzShte5+nEBPwTyVvlcMkqe7EpC
	 7sawq5yE1QquDNic3RVUqxQuWbh+XyrxKJZ0LX+reR9baGSTju0VNOUMCoJBGTUTsM
	 CekYRkoV79sIEInCQPl6macDXdywgdQgpTBNpiLBcbZaMNW7RcyTv3KoZWfpiv8ZZ/
	 S+0Lw0t6DyOiA==
Date: Thu, 28 May 2026 17:55:56 +0100
From: Conor Dooley <conor@kernel.org>
To: Marcelo Schmitt <marcelo.schmitt@analog.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, jic23@kernel.org, nuno.sa@analog.com,
	Michael.Hennerich@analog.com, dlechner@baylibre.com,
	andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, pop.ioan-daniel@analog.com,
	marcelo.schmitt1@gmail.com
Subject: Re: [PATCH v2 1/4] dt-bindings: iio: adc: Add ltc2378
Message-ID: <20260528-paycheck-prowling-9d7745222ae7@spud>
References: <cover.1779976379.git.marcelo.schmitt@analog.com>
 <23971c3bb56d8635abe9cd36fd245412f672772a.1779976379.git.marcelo.schmitt@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GblWo1Um3hnwZ3yC"
Content-Disposition: inline
In-Reply-To: <23971c3bb56d8635abe9cd36fd245412f672772a.1779976379.git.marcelo.schmitt@analog.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303931-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,microchip.com:email]
X-Rspamd-Queue-Id: B26E55F55E5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--GblWo1Um3hnwZ3yC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 28, 2026 at 12:03:16PM -0300, Marcelo Schmitt wrote:
> Document how to describe LTC2378-20 and similar ADCs in device tree.
>=20
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---
> Change log v1 -> v2:
> - Use unevaluatedProperties:false with spi-peripheral-props.yaml referenc=
e/include.

> - Use unique compatibles (no fallbacks).

Please note why these do not use fallbacks in your commit message.
With that explanation,
Acked-by: Conor Dooley <conor.dooley@microchip.com>

pw-bot: changes-requested

--GblWo1Um3hnwZ3yC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCahhznAAKCRB4tDGHoIJi
0j2BAP0U0STmvht8yI2Nh6bXJUuJRqpQpYoMz3apIBbstOnjOQD+PaLJDy4K55k+
IMOip65wa5Jvg695ffUsGpq426H3JAU=
=nNs1
-----END PGP SIGNATURE-----

--GblWo1Um3hnwZ3yC--

