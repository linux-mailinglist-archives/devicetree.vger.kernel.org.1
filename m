Return-Path: <devicetree+bounces-262771-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJIGD/eJg2lWpAMAu9opvQ
	(envelope-from <devicetree+bounces-262771-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:03:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 87561EB588
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:03:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E286301DAE0
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:58:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EA9D41C2E1;
	Wed,  4 Feb 2026 17:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIOAOQ9P"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE86410D00;
	Wed,  4 Feb 2026 17:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770227927; cv=none; b=C91F96yiT38liMMZKivv13f3Nk3IB9KkA/+w5EN76mKfHx2vBC2lUBy1qSC7ywiORpkyTRSR8awTX76QEr/2+vGZVd5xTC2mBSXD2IeEF+zqkuaZR2n0T5E1RVQRU0yDhtgvHW37JK7EANm/KRvM7DwFDj4UpH5ee7sd324JPps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770227927; c=relaxed/simple;
	bh=+eBsVHFxgk0JuYz+1uZly5/ls/F38mAL9xKyfR62KIw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mTO4b1pvQxZmi3dJ+SdjqxwDnDIQF8A+nLVwlLbqkEAqNRta9Zc4Bk4TzSkDW8GBmYEkfrkTsBjVNtDOg2nmI+dariKkzEJ5Ks4KfrLLSARuw//Lw0euICembN7Sfap/b8bbMDSYa9nPkrCkotD9OMjURQtN0hTJuo/NQxQ+JI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIOAOQ9P; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37F7CC4CEF7;
	Wed,  4 Feb 2026 17:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770227926;
	bh=+eBsVHFxgk0JuYz+1uZly5/ls/F38mAL9xKyfR62KIw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LIOAOQ9PcmalDGfBGg+ksI1AZj6Ugy0rcallxYXTmTJ3cxnks93WEyN7+2TwB7Tq0
	 CaSKHBtvCj8qjJg2T7ij0sa6wIwgUzSHuU5TjnFca34GxEBEb3T1VyeKaOfEur62UY
	 fQIZ6xqH6iz5bIgiHWSnYbr22NCvfiO5gs+u3tHj+/+/cUblp+bxPHvcPNOUzLAszt
	 vS1tcSxWL0xzF1iG1y7UplzP1D72Xdnx0AKE+Ht4CfpayR73P8A5qi0W0+J3GADD8n
	 wu84ddGCB49m58paD3FYSVlkQZT7U2N8oev6LsDhStsDQdgAyijOq2C/H21kh3Inqb
	 VG8XxUtxLfjWg==
Date: Wed, 4 Feb 2026 17:58:43 +0000
From: Conor Dooley <conor@kernel.org>
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
	linusw@kernel.org, stephan@gerhold.net, hns@goldelico.com,
	jic23@kernel.org
Subject: Re: [PATCH v3 3/3] dt-bindings: iio: gyroscope: bosch,bmg160: add
 bmx055 gyroscope binding
Message-ID: <20260204-hardness-viral-30943ee02607@spud>
References: <20260203143946.301233-1-jerrysteve1101@gmail.com>
 <20260203143946.301233-4-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dTkKT8TezLyM4Mdr"
Content-Disposition: inline
In-Reply-To: <20260203143946.301233-4-jerrysteve1101@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262771-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sparkfun.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 87561EB588
X-Rspamd-Action: no action


--dTkKT8TezLyM4Mdr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 03, 2026 at 10:39:43PM +0800, Jun Yan wrote:
> Add the device-tree binding for the bosch BMX055 IMU (gyroscope part),
> which is compatible with bmg160.
>=20
> Datasheet: https://cdn.sparkfun.com/assets/b/9/1/f/4/bst-bmx055-ds000_dat=
asheet.pdf
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> ---
>  .../bindings/iio/gyroscope/bosch,bmg160.yaml         | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/iio/gyroscope/bosch,bmg160=
=2Eyaml b/Documentation/devicetree/bindings/iio/gyroscope/bosch,bmg160.yaml
> index 3c6fe74af0b8..e19aa1797f14 100644
> --- a/Documentation/devicetree/bindings/iio/gyroscope/bosch,bmg160.yaml
> +++ b/Documentation/devicetree/bindings/iio/gyroscope/bosch,bmg160.yaml
> @@ -11,10 +11,14 @@ maintainers:
> =20
>  properties:
>    compatible:
> -    enum:
> -      - bosch,bmg160
> -      - bosch,bmi055_gyro
> -      - bosch,bmi088_gyro
> +    oneOf:
> +      - enum:
> +          - bosch,bmg160
> +          - bosch,bmi055_gyro
> +          - bosch,bmi088_gyro
> +      - items:
> +          - const: bosch,bmx055_gyro

Same here, please.
pw-bot: changes-requested

> +          - const: bosch,bmg160
> =20
>    reg:
>      maxItems: 1
> --=20
> 2.52.0
>=20
>=20

--dTkKT8TezLyM4Mdr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaYOI0wAKCRB4tDGHoIJi
0umpAQCCIQoLO6u81T6bWAjz4J/AxpV+YoOYws/HRHALOXrDVAD9E7+m39U19VBH
H7Fks7x6Vwodl99YPMQ7tgxmpqiBtw4=
=Oy5T
-----END PGP SIGNATURE-----

--dTkKT8TezLyM4Mdr--

