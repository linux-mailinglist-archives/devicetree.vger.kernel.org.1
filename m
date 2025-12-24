Return-Path: <devicetree+bounces-249541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2E9CDCC7A
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 16:56:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 32F463009551
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 15:56:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 513A32FFDDC;
	Wed, 24 Dec 2025 15:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="hen6h30E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D47A2E0413
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 15:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766591782; cv=none; b=IaKaDw2afAm9ZeRzLsUNSdpja1okGJTY1XGY3A+1ctaOXbse+UQn46Aib0hn8aAnXpCl698weGQOvQMI3cnvMK0y3PUF1ktznNDvYqKx2ncTpYkA85Uid4lln10RhqVJR4zC9TGFuB04jXNY+XoM5Ej2TDudnCluQxHR2LSlTwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766591782; c=relaxed/simple;
	bh=1XonGmupwoJn7qAmYrm+9ypDmkAvhGpEWkbGP4LsnRY=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=kGyUTEljW8lsG0/P/peY1ADFJD8tBPfJ8lf04gLn7KpFG9KE5jY6XSJ69iHVXkC/M/+SBXyePU477oHmb4v8U6DHO6egRcXxed3jH0nEH7WUvyoakZPpLfHzpyfQ+dl798+wBk0F8H4SMJuZ3CW/St7FRjSVB6YPDRTn5GBigPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=hen6h30E; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-8b2627269d5so652312585a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 07:56:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1766591779; x=1767196579; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=UiGYt2Trw6aOY7rbzO3mfzoHGdriI8ME2f3sKP9W65A=;
        b=hen6h30EqeZ4kTx1ZBI7Jj1QRpMUY/pKDZ1ntU40RGkPG3uqQR3C8YGH+ja8s2L/Oo
         3fPdVCWSGE7sCsDUqv2cbC3oMqukAroD3xCZa6SGdWHOw96jp/26Q0QJMu+8CY4pl0Xx
         b8sWh1I1qKVoBdoqReUeyunjR9vmeCvc57VKknz3t9v1fVnyzJweuV2BeMHqQzLStUGe
         OaTaZG4ERnAiCjWnp3L5rItkSWsKrztGdBym/rRnKwAKC921q0Yk3cPiglAs+8zoQrP3
         4mNnG80NoigyT5XPTcwgHct4vk+Xx3RcZIm8tE0AkWLox1r1wbzEmdpCLiD4DzAWH5lz
         1/7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766591779; x=1767196579;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UiGYt2Trw6aOY7rbzO3mfzoHGdriI8ME2f3sKP9W65A=;
        b=jYzx5Z755qV8zA5XT79hFlrGdEhhYKF4SYTgpvdp27cvHTjavGsuq3DOesutYK5sxh
         H2kAd1iR5/Ec7b66AmHg2u3Xf3UP4up/3eJ3CgjTwlOHCxb/GqsFwDXn5BqjA0clFp/H
         5Y5723x13a4hNkGV2jPnFiS9wP0XahaRUlAgk1LRApmLNxsDzrL9UGHx4P507wmDJLB5
         wE+vcoFxkxjibKD8RZacJ6XZasH/EHieTl5U87JxIo/0tQJxsaYQUmIyZl/4/J4aq4/w
         nSoWcQOhviwgvF+k09wEn8xU7wxUvZQskYPcdw/zUGz8+lT1wHFYxilI1zWpSGoALnwj
         N2XQ==
X-Forwarded-Encrypted: i=1; AJvYcCUC8zXjFTPIwB12evWO1VdWedoVEdoobLFFA0L/u6Wh3iQ6YY47KonhhRYkeoQwwUUtPMZpDNc+q4oA@vger.kernel.org
X-Gm-Message-State: AOJu0YxVNhpUtPeJ4I3/qA851VqKXeRjOYRbQpdNO+87GpNg1v6X5gvY
	2P56AcYFqVJ/OPcLq13YALsPEvARgnxHVO69+9NvgX1mEiSunKoQIcq0suDuXJsUbcc=
X-Gm-Gg: AY/fxX7na8kryt3gVDNecFcT9FK3Gs6bADEgady5ax89lkAFRv2fiW+ULvgp0dbDSsH
	dIXB+NLAGTDVQTvUVx9P8TXmxBrgYYZsgIETaSE7PHFOw2Sg5UdeDJR+wz9mBvgIDCdCCjaMbnO
	7gUvbzOKonqkBs1QjSEqnPyM1AJGdA4vD9HQLIxbcWJ4X6sh0g3EurSYHeP1FA6jf+az3TDkbiA
	JAtXI7FkFzfSm4P3zzZ/KOmsvw1BQ/ZUTvEg300cL2Fe0aL6svgImoJ5b9dUQvik7o6V1U2R47z
	7CEe6W7GCOxwDsA0IN3l28HyXvElBKATuqzPwd2YjYoVicjRbfeuyyz0ROWEvUn2rTurUYllDqv
	gcPaFmK1K0J8qlYjev38a13OBnwpm1+CaCakoIo+5Y09opkQUH/pwUmiIBPoihnfFU9WL4lUF89
	H3fjr7IcXyO30n5tjg
X-Google-Smtp-Source: AGHT+IGebZddQ8VX3LjiShOfzCrPFeoXWdSBlfpw1bc3/JHloqsxtB5PQ9x3Qd+zgdsLgdkWbLrorg==
X-Received: by 2002:a05:620a:2a07:b0:8b2:37ff:de74 with SMTP id af79cd13be357-8c08f67f576mr2769968885a.34.1766591779394;
        Wed, 24 Dec 2025 07:56:19 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c096783657sm1518342885a.1.2025.12.24.07.56.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 07:56:18 -0800 (PST)
Message-ID: <b84b59d5b190edfce326df824f453464c00812ac.camel@ndufresne.ca>
Subject: Re: [PATCH v2 17/22] media: rockchip: rga: remove stride from
 rga_frame
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
Date: Wed, 24 Dec 2025 10:56:17 -0500
In-Reply-To: <20251203-spu-rga3-v2-17-989a67947f71@pengutronix.de>
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
	 <20251203-spu-rga3-v2-17-989a67947f71@pengutronix.de>
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
	protocol="application/pgp-signature"; boundary="=-ealEtQA9iLKBqBXgu9KM"
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


--=-ealEtQA9iLKBqBXgu9KM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 03 d=C3=A9cembre 2025 =C3=A0 16:52 +0100, Sven P=C3=BCschel a =
=C3=A9crit=C2=A0:
> Remove the stride variable from rga_frame. Despite the comment it
> didn't involve any calculation and is just a copy of the
> plane_fmt[0].bytesperline value. Therefore avoid this struct member
> and use the bytesperline value directly in the places where it is
> required.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

This I believe was the only user of fmt->x_div / fmt->y_div, please cleanup=
 the
structure definition.

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga-hw.c | 20 ++++++++++++-----=
---
> =C2=A0drivers/media/platform/rockchip/rga/rga.c=C2=A0=C2=A0=C2=A0 |=C2=A0=
 5 +----
> =C2=A0drivers/media/platform/rockchip/rga/rga.h=C2=A0=C2=A0=C2=A0 |=C2=A0=
 3 ---
> =C2=A03 files changed, 13 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c
> b/drivers/media/platform/rockchip/rga/rga-hw.c
> index fb0389ae8e132..4dee33d8f7206 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -43,7 +43,7 @@ rga_get_corner_addrs(struct rga_frame *frm, struct rga_=
addrs
> *addrs,
> =C2=A0	struct rga_corners_addrs corner_addrs;
> =C2=A0	struct rga_addrs *lt, *lb, *rt, *rb;
> =C2=A0	unsigned int x_div =3D 0,
> -		=C2=A0=C2=A0=C2=A0=C2=A0 y_div =3D 0, uv_stride =3D 0, pixel_width =3D=
 0;
> +		=C2=A0=C2=A0=C2=A0=C2=A0 y_div =3D 0, y_stride =3D 0, uv_stride =3D 0,=
 pixel_width =3D 0;
> =C2=A0
> =C2=A0	lt =3D &corner_addrs.left_top;
> =C2=A0	lb =3D &corner_addrs.left_bottom;
> @@ -52,14 +52,15 @@ rga_get_corner_addrs(struct rga_frame *frm, struct
> rga_addrs *addrs,
> =C2=A0
> =C2=A0	x_div =3D frm->fmt->x_div;
> =C2=A0	y_div =3D frm->fmt->y_div;
> -	uv_stride =3D frm->stride / x_div;
> -	pixel_width =3D frm->stride / frm->pix.width;
> +	y_stride =3D frm->pix.plane_fmt[0].bytesperline;
> +	uv_stride =3D y_stride / x_div;
> +	pixel_width =3D y_stride / frm->pix.width;
> =C2=A0
> -	lt->y_addr =3D addrs->y_addr + y * frm->stride + x * pixel_width;
> +	lt->y_addr =3D addrs->y_addr + y * y_stride + x * pixel_width;
> =C2=A0	lt->u_addr =3D addrs->u_addr + (y / y_div) * uv_stride + x / x_div=
;
> =C2=A0	lt->v_addr =3D addrs->v_addr + (y / y_div) * uv_stride + x / x_div=
;
> =C2=A0
> -	lb->y_addr =3D lt->y_addr + (h - 1) * frm->stride;
> +	lb->y_addr =3D lt->y_addr + (h - 1) * y_stride;
> =C2=A0	lb->u_addr =3D lt->u_addr + (h / y_div - 1) * uv_stride;
> =C2=A0	lb->v_addr =3D lt->v_addr + (h / y_div - 1) * uv_stride;
> =C2=A0
> @@ -160,6 +161,7 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ct=
x)
> =C2=A0	union rga_src_act_info src_act_info;
> =C2=A0	union rga_dst_vir_info dst_vir_info;
> =C2=A0	union rga_dst_act_info dst_act_info;
> +	u32 in_stride, out_stride;
> =C2=A0
> =C2=A0	src_h =3D ctx->in.crop.height;
> =C2=A0	src_w =3D ctx->in.crop.width;
> @@ -282,13 +284,15 @@ static void rga_cmd_set_trans_info(struct rga_ctx *=
ctx)
> =C2=A0	 * Calculate the framebuffer virtual strides and active size,
> =C2=A0	 * note that the step of vir_stride / vir_width is 4 byte words
> =C2=A0	 */
> -	src_vir_info.data.vir_stride =3D ctx->in.stride >> 2;
> -	src_vir_info.data.vir_width =3D ctx->in.stride >> 2;
> +	in_stride =3D ctx->in.pix.plane_fmt[0].bytesperline;
> +	src_vir_info.data.vir_stride =3D in_stride >> 2;
> +	src_vir_info.data.vir_width =3D in_stride >> 2;
> =C2=A0
> =C2=A0	src_act_info.data.act_height =3D src_h - 1;
> =C2=A0	src_act_info.data.act_width =3D src_w - 1;
> =C2=A0
> -	dst_vir_info.data.vir_stride =3D ctx->out.stride >> 2;
> +	out_stride =3D ctx->out.pix.plane_fmt[0].bytesperline;
> +	dst_vir_info.data.vir_stride =3D out_stride >> 2;
> =C2=A0	dst_act_info.data.act_height =3D dst_h - 1;
> =C2=A0	dst_act_info.data.act_width =3D dst_w - 1;
> =C2=A0
> diff --git a/drivers/media/platform/rockchip/rga/rga.c
> b/drivers/media/platform/rockchip/rga/rga.c
> index 0d7b0bcac950e..7e30fafb25fab 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -220,8 +220,6 @@ static int rga_open(struct file *file)
> =C2=A0		.fmt =3D &rga->hw->formats[0],
> =C2=A0	};
> =C2=A0
> -	def_frame.stride =3D (def_width * def_frame.fmt->depth) >> 3;
> -
> =C2=A0	ctx =3D kzalloc(sizeof(*ctx), GFP_KERNEL);
> =C2=A0	if (!ctx)
> =C2=A0		return -ENOMEM;
> @@ -428,7 +426,6 @@ static int vidioc_s_fmt(struct file *file, void *priv=
,
> struct v4l2_format *f)
> =C2=A0	if (IS_ERR(frm))
> =C2=A0		return PTR_ERR(frm);
> =C2=A0	frm->fmt =3D rga_fmt_find(rga, pix_fmt->pixelformat);
> -	frm->stride =3D pix_fmt->plane_fmt[0].bytesperline;
> =C2=A0
> =C2=A0	/* Reset crop settings */
> =C2=A0	frm->crop.left =3D 0;
> @@ -442,7 +439,7 @@ static int vidioc_s_fmt(struct file *file, void *priv=
,
> struct v4l2_format *f)
> =C2=A0		 "[%s] fmt - %p4cc %dx%d (stride %d)\n",
> =C2=A0		=C2=A0 V4L2_TYPE_IS_OUTPUT(f->type) ? "OUTPUT" : "CAPTURE",
> =C2=A0		=C2=A0 &frm->fmt->fourcc, pix_fmt->width, pix_fmt->height,
> -		=C2=A0 frm->stride);
> +		=C2=A0 pix_fmt->plane_fmt[0].bytesperline);
> =C2=A0
> =C2=A0	for (i =3D 0; i < pix_fmt->num_planes; i++) {
> =C2=A0		v4l2_dbg(debug, 1, &rga->v4l2_dev,
> diff --git a/drivers/media/platform/rockchip/rga/rga.h
> b/drivers/media/platform/rockchip/rga/rga.h
> index 466d568b9e614..a7f891b94a478 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -34,9 +34,6 @@ struct rga_frame {
> =C2=A0	/* Image format */
> =C2=A0	struct rga_fmt *fmt;
> =C2=A0	struct v4l2_pix_format_mplane pix;
> -
> -	/* Variables that can calculated once and reused */
> -	u32 stride;
> =C2=A0};
> =C2=A0
> =C2=A0struct rga_dma_desc {

--=-ealEtQA9iLKBqBXgu9KM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUwNIQAKCRDZQZRRKWBy
9NfgAQCY3P1Jm+Z2ETGJw3X0IdCCoCwmMgri4PEtpzjWn1gDGwEAkezdHOTz/8Nj
QGqVH2v2tAZfHZCqeogKR1262K1oxw8=
=bH0x
-----END PGP SIGNATURE-----

--=-ealEtQA9iLKBqBXgu9KM--

