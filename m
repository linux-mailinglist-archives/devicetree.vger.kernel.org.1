Return-Path: <devicetree+bounces-266242-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SK50JrqtlGkPGgIAu9opvQ
	(envelope-from <devicetree+bounces-266242-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:04:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4B314EE2F
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:04:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DDAA430439F7
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:03:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F116528B40E;
	Tue, 17 Feb 2026 18:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kU5RQwB0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD06321FF4D;
	Tue, 17 Feb 2026 18:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771351408; cv=none; b=cy01UfPLDoK8N1KgOZOXCuZXBxyuxVVpP0xQv91oLMzHyEwVFADjwL+9Vf3+tUWB2tYofg/lsQbyTqmOyj17JzHhRZgQjX/crdMnqk2rbdwjtbd8Zo9126ngFQDwdQlk6eoII4ALp1gRRySNHOgKwNAYT0mvinns6/3xhpe7Ogg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771351408; c=relaxed/simple;
	bh=6289D0BfnY/brXeNh8DXJ0WA8IDZOPWN4N5cMbR0vzA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PikWfHuIEfw4pATYrW31h8e7q9kn83t0Rm1EbSgtS3OnpAI3oRypzbGYFBmGTYVlJw+Ct7FNIqhkLIJMEvCuatRkSnZZPwSU1486jkwEHdokxGOZej7Ei/uZcI5b1Emnnow7qM8C4I92tJNvJgXQmFX5tm2sMb+C/jQiYdSaSJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kU5RQwB0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4604BC4CEF7;
	Tue, 17 Feb 2026 18:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771351408;
	bh=6289D0BfnY/brXeNh8DXJ0WA8IDZOPWN4N5cMbR0vzA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kU5RQwB0CQuYh0BnRD04MyH0CqIuhPYDmmTRN9ZeRAalh2IIz/tIT44f/UjvBXk96
	 lZEbI2wlYasKPqgBjwDwGVRvmycW48Bm/tQ2gRrO2oIauMfgFkYDcldaiGmt6Hn9I1
	 C+piW+FzQ6zPN8KVCyWghYjq33zM7DtAdS9mgdOSncgMfl6F/vfKBRadNkP33pUU9H
	 TY9c8KUsoKGIHsI/TUJVKb8EeLkyBbNm7EooF4oav5If8ffIRO/ZK3/osKc2Lt/HsV
	 KXE4jTbKQfp1UAXAtqNJxbUlnMTTXetJZrMZo4YZVkwtRo/eKo5uMB1ihFJeNEFP+W
	 MjubT7s4phxDw==
Date: Tue, 17 Feb 2026 18:03:25 +0000
From: Conor Dooley <conor@kernel.org>
To: PranavKharche24 <pranavkharche7@gmail.com>
Cc: ribalda@kernel.org, jic23@kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: iio: dac: Fix typo in ti,dac7611.yaml
Message-ID: <20260217-resigned-pope-b29349239da4@spud>
References: <20260217131132.297180-1-pranavkharche7@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yDGalSje6kgSF/O3"
Content-Disposition: inline
In-Reply-To: <20260217131132.297180-1-pranavkharche7@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_FROM(0.00)[bounces-266242-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2B4B314EE2F
X-Rspamd-Action: no action


--yDGalSje6kgSF/O3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 17, 2026 at 06:41:32PM +0530, PranavKharche24 wrote:
> Fix a typo in the description where "Is is" should be "It is".
>=20
> Signed-off-by: PranavKharche24 <pranavkharche7@gmail.com>

This should be your name, which I suppose means a space between v and k
and removal of the 24.

Otherwise,
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

pw-bot: changes-requested

> ---
>  Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml b/=
Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml
> index 20dd13706..624c640be 100644
> --- a/Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml
> +++ b/Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml
> @@ -9,7 +9,7 @@ title: Texas Instruments DAC7612 family of DACs
>  description:
>    The DAC7612 is a dual, 12-bit digital-to-analog converter (DAC) with
>    guaranteed 12-bit monotonicity performance over the industrial tempera=
ture
> -  range. Is is programmable through an SPI interface.
> +  range. It is programmable through an SPI interface.
> =20
>  maintainers:
>    - Ricardo Ribalda Delgado <ricardo@ribalda.com>
> --=20
> 2.34.1
>=20
>=20

--yDGalSje6kgSF/O3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaZStbQAKCRB4tDGHoIJi
0jTKAQCU3GvjxaWr7IFjAKIX24dQF++hM+7ef3fLvi//QbPwYAD+MevG3/IvSW8A
NoDE538yzp7/HduBmeYYTKQO9xJOcQA=
=S5FK
-----END PGP SIGNATURE-----

--yDGalSje6kgSF/O3--

