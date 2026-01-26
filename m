Return-Path: <devicetree+bounces-259634-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDDpFgjKd2kwlAEAu9opvQ
	(envelope-from <devicetree+bounces-259634-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 21:09:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F748CE77
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 21:09:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DD25F3015488
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:09:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A88632BFC70;
	Mon, 26 Jan 2026 20:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pew6Jhk/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8252A1FE44A;
	Mon, 26 Jan 2026 20:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769458180; cv=none; b=mKzTaO33zcqtn6wJTxXKWyDzKvwc2Ms1o9pigK1XuByuQygQ1efaM/8OJdrBdC2Ze+XFMkuJw9Ag1G+8it8jO57qIQS3NzvpStgoeVHILsEbec+zaxM68aLXQxrRCbqr3W+fRnOGbuhuZsR1lM4PqQ2P4sDdH9lqbnE79Foc4cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769458180; c=relaxed/simple;
	bh=BLNcTfl4v97y8LeCHp6IWqqoBr7CvsTIJkbB95MMrpk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q1f+722XkvTrOoFG3K59g2JACrG9EDebzhjq1wHXitwGPKVXY6/NKhnFiiOluC5jsj5D5tlRmYLUUCdSQi/QYUZqpDOHQim7tla1rxelecMWDo4UDPzzqTm796aDGePGgqyIWIwoH9WJJsE24N/1pXAxutOooIxNgWR+oXfKBus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pew6Jhk/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F377C116C6;
	Mon, 26 Jan 2026 20:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769458180;
	bh=BLNcTfl4v97y8LeCHp6IWqqoBr7CvsTIJkbB95MMrpk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pew6Jhk/sLGTbwDBrLotfncz/wXrWYhOn9M7kGey53NXsFC8YK+4ud7YyB7X+Pnm2
	 MKiJcm/6tNNH9wA1UiisNeNIpD6Qk95mcEw9X6D3rUQD/M4HljzyrDWa0ZNifs0wFY
	 y4+FNFXTFzTNixqDlXHfrFenahcE08Po8tEFl1Yr2XYMKP5Kn+GQ8K6UEdkMjXbGDd
	 drpCyRmavO86FOZiZ6YdNc3LvsBbpgQPTTt4yp6/c6gsqkIcdDEFtsVDmrGwXEUe03
	 NNJLYRqfHAtZebD2i21bgJX+YGEI21DbYxs38Si4nIjr+IkT9pPrNNFJ0QibiWrb5v
	 ZGw1DQi8hMKpA==
Date: Mon, 26 Jan 2026 20:09:36 +0000
From: Conor Dooley <conor@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vladimir Zapolskiy <vz@mleia.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: nvmem: nxp,lpc1850-otp: convert to DT
 schema
Message-ID: <20260126-battalion-payable-2ed746fed190@spud>
References: <20260126-lpc1850-otp-v2-1-bdcf08901d9d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kueoMzLDiUVyti3a"
Content-Disposition: inline
In-Reply-To: <20260126-lpc1850-otp-v2-1-bdcf08901d9d@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259634-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A9F748CE77
X-Rspamd-Action: no action


--kueoMzLDiUVyti3a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 26, 2026 at 02:53:01PM +0000, Akhila YS wrote:
> Convert NXP LPC18xx OTP memory controller binding to YAML format.
>=20
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
> Changes in v2:
> - Add "Vladimir Zapolskiy" as maintainer.
> - Remove unnecessary description for the yaml.
> - Remove "#size-cells" and "#address-cells" from the properties and requi=
red.
> - Link to v1: https://lore.kernel.org/r/20260123-lpc1850-otp-v1-1-8bd957d=
d9c98@gmail.com

Missing my ack from v1, although I could see the changes as
justification for removing it.
Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--kueoMzLDiUVyti3a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXfKAAAKCRB4tDGHoIJi
0reOAQD3TU8e+kgl9Mn+l3Yv7+QlsR+PqS5DZdzvgrIGlV3wZAEA9RgxFiUm2RAP
cc18kVcWfnC3Ef9JKWvlBRUd2STgBAo=
=UuFk
-----END PGP SIGNATURE-----

--kueoMzLDiUVyti3a--

