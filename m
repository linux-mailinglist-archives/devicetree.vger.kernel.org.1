Return-Path: <devicetree+bounces-249544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFE4CDCC9E
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 17:02:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1593D300D400
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 16:02:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 589D028504D;
	Wed, 24 Dec 2025 16:02:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="B0WXcWi7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85350145A1F
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 16:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766592150; cv=none; b=J4VTzKU1wMBFlqYiH7uqHy6674wzrt1imL+ovKppgeAgQMbkyFDNbCeUHYmzjUxLKcHPBVlwxvrYWhIqCsEz84A9On9CESj0Kz2vqnfA6I2GJJF7a1kIYC3I9VnCDfEquBVhf1mfA0btssgwavLwsH2gTAq9WTX5xbfSnu10nIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766592150; c=relaxed/simple;
	bh=gw8Rp2ZJpJGZPXyZ/UMxV7APKra8yeCTgwF9xAiFM2E=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=f9TQexBy0KSGVylM9GlkxYaje9oskJgdlmCzmur3mtsycI/JRfxyfap4qu6w0cp6OJm6dGkOahtoF5LY95Qa0efKoykP+d76S9KNIwv60AEgbcsHatKQY2TUHJnh0cgH5u1bDTvjiaflKfPCvzAJmOCgT7qmMeLShzqndPXb4Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=B0WXcWi7; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-88a2e3bd3cdso76232086d6.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 08:02:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1766592147; x=1767196947; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=0gUckkQiMWDEV8Y/iNQuijq4dqvWtVuRxF13+jZ5SQ8=;
        b=B0WXcWi7Aq26rnWSn4S6MHoe2iAuZt+GzRQmiKsGp3+eImVohkqyi0UyHNUG1x2UhE
         2suIUXr5ziv9Lo+J2+betvRkI+RGpPB6Ztyd5fRWDM8ts+97yV7Ifn9ADtUT1g3PgWYS
         7sEg3qLHpb8IMIZgNQQahShHt5kb5fIWSCLG9W2k3mKclrnj2F9oFuW7kVpJJ5+qJYie
         uwCo6gNQqh8rHQBr3jDXlzP8O3hie7je/x8ehcfG5YqGu66TMtI20L6oU36nHhoUVzLS
         yFFVY4T6rxMqHO0SsPnyKqNfqjddfZ3HfJ7XwwmjHxj8Yo6agk3EstRQbUcaAlS2H/C8
         Z3/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766592147; x=1767196947;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0gUckkQiMWDEV8Y/iNQuijq4dqvWtVuRxF13+jZ5SQ8=;
        b=DsWj2GGVfy7FAzSaSZCJUquB04YtsdFN4ogQohh+q1kTwTgXwhTOgP1JbnAmDzfbOG
         xSuFDAs5OzsvUI/Zd88VGc1sOgo+M4limOyROdp6nL5rvKW9CSQFYphik2jwU21B093j
         Wpng0+g2CecTbF13LIAuyDLOg74qvKe3YmEOV8Tncky+Zech8R0hfPZgvh0l2z4eMgHQ
         tledduRyrwj+ShOrasbShr2skfzUi3F2+GfsQwA4IcA2X2cqd3Xhu55k97Pl33cyNsQ2
         MvzaDK9PJ0wt/RRxjyzS0ICuVLhv+FtK+ALyWV2on/oqYGjaEIBE59CrIkFUwvBbq05o
         mBiw==
X-Forwarded-Encrypted: i=1; AJvYcCXKTD2L1fKk8+axXyCihwtEgyDYcJuJePFMKKH20np5omgQ8C/zmThG224POPnZ3FNsZvkyMiBO6cdx@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn2OUL4zotxVIME01c0M4UACKCBRhIob06c4kU93T8rr63HmLl
	yjRa8t/sb2jE8q2Mst+/or/dQmXd1jIhKQKwYfd/2CQNqMQHQc2oc0ZGSbwy4JcwMG4=
X-Gm-Gg: AY/fxX53/qn/WHiE4QFjr7jBwSzXeSlpkF43GpnR2sI3mxmfEutYzOps7up88xQ6AHX
	pCHUpQ18J910ckDseEPJ9DW+kzIuPHHR2HM/SHroon+J8oBAahn+B1R3LJkxCBmWgvsPrNZ+a5c
	sJduP2huSlDPSY5AHn+LZow47xNl7u5qWv6WSL9hUi/eEpsIVOEalE45O04Xrlje4nVyv6Gxqd+
	8YjqXfEDQY0EJdE6vP4mDEm1jblHkGlHwF9gseH9LY79K0y5K2yWex55FIpHalvpu6/i6VCwBNL
	b4pLCyAEaTtaYTaQwKlKPTLfg1riIOvXWENNIU3/ls7udPqQSNlRjSssoK642Ndnc39i6P07gKy
	LkyNCVx3urwTggbSpXT1itOmu/b7urADJ7JaQbIRSHTdnjbRYtyIrp2reanlhDx+CtPXgvUOYsy
	8jSCUWl2V/lV9EEQ2zVrrs0VM9ohE=
X-Google-Smtp-Source: AGHT+IEFnLq7YYyKCpTAAkpCvsEwt+D1E176gm6ItJAQzHOJHeP7ZSAwy1foR72Go8Tw9D6I6jZcRA==
X-Received: by 2002:a05:6214:23c5:b0:88a:4c50:3be0 with SMTP id 6a1803df08f44-88c5001fe40mr330716406d6.6.1766592147399;
        Wed, 24 Dec 2025 08:02:27 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d9623fdd8sm127755006d6.4.2025.12.24.08.02.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 08:02:26 -0800 (PST)
Message-ID: <8a026dd07133203789e91d0a1662c8b162842fe2.camel@ndufresne.ca>
Subject: Re: [PATCH v2 20/22] media: rockchip: rga: disable multi-core
 support
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring
	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, kernel@pengutronix.de
Date: Wed, 24 Dec 2025 11:02:25 -0500
In-Reply-To: <20251203-spu-rga3-v2-20-989a67947f71@pengutronix.de>
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
	 <20251203-spu-rga3-v2-20-989a67947f71@pengutronix.de>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-wJ3d6X1bJnPZfOqoogSs"
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


--=-wJ3d6X1bJnPZfOqoogSs
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mercredi 03 d=C3=A9cembre 2025 =C3=A0 16:52 +0100, Sven P=C3=BCschel a =
=C3=A9crit=C2=A0:
> Disable multi-core support in preparation of the RGA3 addition. The
> RK3588 SoC features two equal RGA3 cores. This allows scheduling of the
> work between both cores, which is not yet implemented. Until it is
> implemented avoid exposing both cores as independent video devices to
> prevent an ABI breakage when multi-core support is added.

Please add a Link: and reference to the Hantro patch from which is code is =
from.

>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga.c | 28 ++++++++++++++++++++=
++++++++
> =C2=A01 file changed, 28 insertions(+)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index 3958e71b8987d..65686228b7300 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -660,6 +660,30 @@ static int rga_parse_dt(struct rockchip_rga *rga)
> =C2=A0	return 0;
> =C2=A0}
> =C2=A0
> +static int rga_disable_multicore(struct device *dev)
> +{
> +	const char *compatible;
> +	struct device_node *node;
> +	int ret;
> +
> +	/* Intentionally ignores the fallback strings */
> +	ret =3D of_property_read_string(dev->of_node, "compatible", &compatible=
);
> +	if (ret)
> +		return ret;
> +
> +	/* first compatible node found from the root node is considered the mai=
n core */
> +	node =3D of_find_compatible_node(NULL, NULL, compatible);
> +	if (!node)
> +		return -EINVAL; /* broken DT? */
> +
> +	if (dev->of_node !=3D node) {
> +		dev_info(dev, "missing multi-core support, ignoring this instance\n");
> +		return -ENODEV;
> +	}
> +
> +	return 0;
> +}
> +
> =C2=A0static int rga_probe(struct platform_device *pdev)
> =C2=A0{
> =C2=A0	struct rockchip_rga *rga;
> @@ -670,6 +694,10 @@ static int rga_probe(struct platform_device *pdev)
> =C2=A0	if (!pdev->dev.of_node)
> =C2=A0		return -ENODEV;
> =C2=A0
> +	ret =3D rga_disable_multicore(&pdev->dev);
> +	if (ret)
> +		return ret;
> +
> =C2=A0	rga =3D devm_kzalloc(&pdev->dev, sizeof(*rga), GFP_KERNEL);
> =C2=A0	if (!rga)
> =C2=A0		return -ENOMEM;

--=-wJ3d6X1bJnPZfOqoogSs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUwOkQAKCRDZQZRRKWBy
9DoNAP49R5fmbpOQZrG+CW5SIxPtxG/Kcyz9Q6Ni/IKBI6sVrAEAp1d03zsU2KxX
+bCR04gtVpJFE7vpqhXfYwfkx8nZrAo=
=R+Md
-----END PGP SIGNATURE-----

--=-wJ3d6X1bJnPZfOqoogSs--

