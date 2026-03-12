Return-Path: <devicetree+bounces-274738-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qCIwGWf8smmQRQAAu9opvQ
	(envelope-from <devicetree+bounces-274738-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 18:48:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FFB276C94
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 18:48:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C262A30A9044
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:47:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 120EE221F2F;
	Thu, 12 Mar 2026 17:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GeM3E+nJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9BB285CAE;
	Thu, 12 Mar 2026 17:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773337657; cv=none; b=eFzBHmqBPAkoDwL+4fU1ajv5ym9m8f9zSd9J7S2txQg4yNFcalA1pJG2QrJONJwA0/ZXYk3IXX4dhASuWxQfu4QvZW9LYKOnR+4EojrqSHxSndRFvWMje5lpZSj12bqlz4hqXC8wOlJR3FzezemaI5gGdpQPzRb155laOBgE6s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773337657; c=relaxed/simple;
	bh=wMvtMWbR5Rj73AQJqGHUhW527Tb27PV6JT2/uOlrqcc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tzlS6TGuMXHJYKzCmISscmwB7qD2iX0zWpKIAuIkCbw5krq/WZwEKUJRe9Eb++39AiJ8ud2sz/EK9vAbSfteAVi4QXn76hYc6CLKE7l10/8B/VSCKtax6uYLaqFT5HJ8MYgtq9JrXdDPTscbSCw4cVS6AUlbP5LSctDy8Hwm3Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GeM3E+nJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A13C9C4CEF7;
	Thu, 12 Mar 2026 17:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773337657;
	bh=wMvtMWbR5Rj73AQJqGHUhW527Tb27PV6JT2/uOlrqcc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GeM3E+nJRDYrZQpRJ87vLFXFSyxyG/EAVXgwfF3EJGdwNfH1RCSsUSSIwbd+TiIcU
	 QbeY77pSfxF49LYTwJtaUs+ycd7DwArmo6+wxfeuO3799jx0i1clQXJP2VcBdhfMQx
	 G6modkOreHw4npBGs1w9WDOvcw+O1T02bj2oKCIMd9gSAx3554t8wjnapozKzYxmrB
	 W/e9uv6/Nw9WdARJsjF2MNYlYXcAa+quTQyIxK9hipKKNL+bx6Wjy9wPMS5CMLXcoc
	 0J8rTRg6OrGrIQN54n/hmwRS5/4bDP3m+OhI2fHHyVrzzxWksAPmlfS79rK1OTIx40
	 B2f+f5f33tD4Q==
Date: Thu, 12 Mar 2026 17:47:32 +0000
From: Conor Dooley <conor@kernel.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	Frank.Li@nxp.com, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, amitsd@google.com, gregkh@linuxfoundation.org,
	kyletso@google.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: connector: add pd-disable dependency
Message-ID: <20260312-facial-backshift-7e810ca5f996@spud>
References: <20260312071609.388047-1-xu.yang_2@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wr13SwXvugaUCQW1"
Content-Disposition: inline
In-Reply-To: <20260312071609.388047-1-xu.yang_2@nxp.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_FROM(0.00)[bounces-274738-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,google.com,linuxfoundation.org,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: D7FFB276C94
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--wr13SwXvugaUCQW1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 12, 2026 at 03:16:08PM +0800, Xu Yang wrote:
> When Power Delivery is not supported, the source is unable to obtain the
> current capability from the Source PDO. As a result, typec-power-opmode
> needs to be added to advertise such capability.

What's the impact on any users of making this a dependency?
I assume nothing negative, since this will only impact systems that
don't work properly at present?

>=20
> Fixes: 7a4440bc0d86 ("dt-bindings: connector: Add pd-disable property")
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> ---
>  Documentation/devicetree/bindings/connector/usb-connector.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/connector/usb-connector.ya=
ml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> index 901986de3e2b..671d7775b635 100644
> --- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
> +++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> @@ -335,6 +335,7 @@ properties:
>      maximum: 100000
> =20
>  dependencies:
> +  pd-disable: [typec-power-opmode]
>    sink-vdos-v1: [ sink-vdos ]
>    sink-vdos: [ sink-vdos-v1 ]
> =20
> --=20
> 2.34.1
>=20

--wr13SwXvugaUCQW1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabL8NAAKCRB4tDGHoIJi
0nwiAQDQ56ujTvFrDP3c0yVVvsagFKg0Z0+t5X7xitqXTKLfjQD/exOakRzb+SJA
CPWE9IyUVD27QdG5+TIUbF3XRVvcAg0=
=Jyu8
-----END PGP SIGNATURE-----

--wr13SwXvugaUCQW1--

