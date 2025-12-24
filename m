Return-Path: <devicetree+bounces-249528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E9FCDCB3E
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 16:29:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9CB62301B829
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 15:27:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80FEA34DCE7;
	Wed, 24 Dec 2025 15:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="X/XxeR7X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2026534DB67
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 15:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766590007; cv=none; b=rdDC5P5sC0chr3tPenVXE8pa1pvL2VpX3UBNdTELGjlt1ONGU8rlSvC7ypYcbe+zQi6JMB0KiOmXI5CY5zjaPMlpAVo8pop6KQ7Z+tGT7iOCF7k1aUaFHiBT/pwwt9aJ9sSXiQEBU9zI1s5k2NFqmPSuzMbPzh0HEQq0S7JYe7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766590007; c=relaxed/simple;
	bh=WP0+mwaL23abZgrrwF83zlYshZkFUgAYBPREgVmtmt0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=M6ihcFwipdYXswzNglmsabU2k6mhvutXVfk5eOBfufiR6Dtqgppy0a6v8RPemzEXjpcnFmr7pg04eJnqLOrzxD71r2KdngA3C2oQcvi2Qfb2evr4mNryrejTlKitb8q8wX5H1hW2d4Ns+dsL4HIAkLDAktl9L2kQYHFAX7dsSww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=X/XxeR7X; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-8b29ff9d18cso688021485a.3
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 07:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1766590003; x=1767194803; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=8bbVPuOUSFJISPHsFtOzJT5Gm9QNsaqBcyYdq7cSwOQ=;
        b=X/XxeR7XjWn0Bzv4azMbwTs/nFWMVK7tFcxbLCP41JXsUChytIywn7QIdV9/cOZ+m9
         hjlkDjkboQEPB734q9nOjv2hmXCAjXVkw8tNWYBXlz2D/p8g9/JGn6+EpSaO1CgPjNgb
         P0rbFc4rzXDl7nb3Ke5PejAls/vfo0G6ezjB0iLFREabrYYjaHmw0vomiEyt5sNh9LOx
         xxn6cZ1w4tATcNDmkzzj819bTkyRFqgKoRf+wrJ9GhrW2Bq+rolh8fzWpONw8hGIdKB7
         nOZsHto7o6O3zXZeEdl7QM0Kvn+n/D26rDkf/n2DUDZwBu3fsIGD7cqIMxOqhQeGAjyy
         G6Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766590003; x=1767194803;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8bbVPuOUSFJISPHsFtOzJT5Gm9QNsaqBcyYdq7cSwOQ=;
        b=vjbM+NqsKAFnTCTuC3iOZ28tIT4S3E8LEYgt7jq3fGVXbUrTdYxleLpiB7NMCmTp7g
         SeOASS0krEOP8eA/WqhMejSDHcVOAA0+/DhZJ4k07iAH/15HY+AaBqV77q5TX3DjcHLd
         j/OlXuZeeIzy1+aiN3ogtQkqm5prY1Mxi59mRIM51h02CzTJ2zXLCp+nTqovyFPNWHwc
         HPHq2Af1vxcggli63gYxiEWhjim5hLDXBnGQHbdcbczifS8XxAj2L0cVAPhuwtreSxIB
         T/ENSlepamGoYl1vK0smksXxgiq3+Qe3SbTL47B4uCXUYEXxTI7UOnYnEugCgspAbZWH
         FiGA==
X-Forwarded-Encrypted: i=1; AJvYcCWVc47aOyb+MECksmSfk2fmKgJauTUohaSsjZfrGcIDzhQaY6IKdALVHY3sCD5ZoRcqRFt7NY7GuNks@vger.kernel.org
X-Gm-Message-State: AOJu0YxcplFvYX/ckWpj+LAYoiR3H3o81Oe5wRXWt3DEFUfCl2wOD3Ik
	vgNqMn5LIufPOYD0v4zoOfuBqY2rzioS5JzNa5eDRVGnClCvjYGoNmi/2dERcIwoBWw=
X-Gm-Gg: AY/fxX4jwQZ2Yt3qDKCcBCJ43OoHyOIJfxsklrAvV0Ovud1Vp0UPXzHsWv+EYpi7eLZ
	q+cvvP8+vMxhFh04vL8bu97hKw63KiweJFoqmZ03PdMJK8GPHgqRYNEuMf4nsqEq5tCfjGDrDyQ
	DTrnjGtgJzR4KpkuCrxIdLN1qswDL08b48HLc7ph12VhYKf90YafEyyM5z0apRtlNwgJYLRsIaq
	FGGvnG2SJHlY1ee3iV1d1RH1CgdzOUJh/7cosew6r22P36A72dJzULUdUPmBNvmUJBv0Af372vU
	t05o4+brG71nIMoDwhdmoFcqdMN6EgO9D/qu2OKFeDnbY5CVUEkJG6l85XAclos95+mtr0kXr/t
	YutEks4xSe5BCBekvImDRpA8MqHFVxjAXxBv7ajuTShgpjdg3ANCrn33l2YqhP4jdx0MVRZ40BF
	vfFgSNCdNcO/b/cIoj
X-Google-Smtp-Source: AGHT+IHeKsCki3HFcgXxZjQ/QgbnIiCXYvSNho5+8Aq0rR7GOXT3D1KX6Ecly+e8kf70FyQctlEW8Q==
X-Received: by 2002:a05:620a:28d2:b0:8b2:74e5:b13 with SMTP id af79cd13be357-8c08fd037camr2602496485a.32.1766590002998;
        Wed, 24 Dec 2025 07:26:42 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c1a674bcaasm237365685a.38.2025.12.24.07.26.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 07:26:42 -0800 (PST)
Message-ID: <98a11ef7e0004267f58a18ad97ea9cb11a68a626.camel@ndufresne.ca>
Subject: Re: [PATCH v2 09/22] media: rockchip: rga: align stride to 4 bytes
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
Date: Wed, 24 Dec 2025 10:26:41 -0500
In-Reply-To: <20251203-spu-rga3-v2-9-989a67947f71@pengutronix.de>
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
	 <20251203-spu-rga3-v2-9-989a67947f71@pengutronix.de>
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
	protocol="application/pgp-signature"; boundary="=-NUwMM9wc9tFrS823ocKI"
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


--=-NUwMM9wc9tFrS823ocKI
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mercredi 03 d=C3=A9cembre 2025 =C3=A0 16:52 +0100, Sven P=C3=BCschel a =
=C3=A9crit=C2=A0:
> Add an alignment setting to rga_hw to set the desired stride alignment.
> As the RGA2 register for the stride counts in word units, the code
> already divides the bytesperline value by 4 when writing it into the
> register. Therefore fix the alignment to a multiple of 4 to avoid
> potential off by one errors due from the division.

If you decide to keep the stride alignment to be width alignment, then plea=
se
make use struct v4l2_frmsize_stepwise and v4l2_apply_frmsize_constraints
instead.

It will also make the per-variant description a lot more clear, with the mi=
n/max
resolution exposed.

Nicolas

>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga-hw.c |=C2=A0 1 +
> =C2=A0drivers/media/platform/rockchip/rga/rga.c=C2=A0=C2=A0=C2=A0 | 11 ++=
++++-----
> =C2=A0drivers/media/platform/rockchip/rga/rga.h=C2=A0=C2=A0=C2=A0 |=C2=A0=
 1 +
> =C2=A03 files changed, 8 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media=
/platform/rockchip/rga/rga-hw.c
> index 79bf911e74779..56a2558539bfb 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -620,6 +620,7 @@ const struct rga_hw rga2_hw =3D {
> =C2=A0	.max_width =3D MAX_WIDTH,
> =C2=A0	.min_height =3D MIN_HEIGHT,
> =C2=A0	.max_height =3D MAX_HEIGHT,
> +	.stride_alignment =3D 4,
> =C2=A0
> =C2=A0	.start =3D rga_hw_start,
> =C2=A0	.handle_irq =3D rga_handle_irq,
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index 74d94c7fe31ff..592c977a07cf3 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -234,10 +234,10 @@ static int rga_open(struct file *file)
> =C2=A0	ctx->in =3D def_frame;
> =C2=A0	ctx->out =3D def_frame;
> =C2=A0
> -	v4l2_fill_pixfmt_mp(&ctx->in.pix,
> -			=C2=A0=C2=A0=C2=A0 ctx->in.fmt->fourcc, def_width, def_height);
> -	v4l2_fill_pixfmt_mp(&ctx->out.pix,
> -			=C2=A0=C2=A0=C2=A0 ctx->out.fmt->fourcc, def_width, def_height);
> +	v4l2_fill_pixfmt_mp_aligned(&ctx->in.pix, ctx->in.fmt->fourcc,
> +				=C2=A0=C2=A0=C2=A0 def_width, def_height, rga->hw->stride_alignment)=
;
> +	v4l2_fill_pixfmt_mp_aligned(&ctx->out.pix, ctx->out.fmt->fourcc,
> +				=C2=A0=C2=A0=C2=A0 def_width, def_height, rga->hw->stride_alignment)=
;
> =C2=A0
> =C2=A0	if (mutex_lock_interruptible(&rga->mutex)) {
> =C2=A0		ret =3D -ERESTARTSYS;
> @@ -359,7 +359,8 @@ static int vidioc_try_fmt(struct file *file, void *pr=
iv, struct v4l2_format *f)
> =C2=A0	pix_fmt->height =3D clamp(pix_fmt->height,
> =C2=A0				hw->min_height, hw->max_height);
> =C2=A0
> -	v4l2_fill_pixfmt_mp(pix_fmt, fmt->fourcc, pix_fmt->width, pix_fmt->heig=
ht);
> +	v4l2_fill_pixfmt_mp_aligned(pix_fmt, pix_fmt->pixelformat,
> +				=C2=A0=C2=A0=C2=A0 pix_fmt->width, pix_fmt->height, hw->stride_align=
ment);
> =C2=A0	pix_fmt->field =3D V4L2_FIELD_NONE;
> =C2=A0
> =C2=A0	return 0;
> diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/pl=
atform/rockchip/rga/rga.h
> index f8c932fdec21a..0aef348dddb95 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -152,6 +152,7 @@ struct rga_hw {
> =C2=A0	size_t cmdbuf_size;
> =C2=A0	u32 min_width, min_height;
> =C2=A0	u32 max_width, max_height;
> +	u8 stride_alignment;
> =C2=A0
> =C2=A0	void (*start)(struct rockchip_rga *rga,
> =C2=A0		=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct rga_vb_buffer *src, struct =
rga_vb_buffer *dst);

--=-NUwMM9wc9tFrS823ocKI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUwGMQAKCRDZQZRRKWBy
9KAVAPwIlL025j4b5ptSDvhTlCDvIeLP4/gFKyg++9AzpYF8iwEAzv+K8K6b6xOL
Fo4QrBq8vaqO5TaTfccJIwMg+DR8jQk=
=5lUF
-----END PGP SIGNATURE-----

--=-NUwMM9wc9tFrS823ocKI--

