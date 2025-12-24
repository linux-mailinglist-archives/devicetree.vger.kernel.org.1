Return-Path: <devicetree+bounces-249519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8623ACDC9E4
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 16:03:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 85FDF306D337
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 15:00:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D1F633971E;
	Wed, 24 Dec 2025 15:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="w4/iDUfl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C9D9748F
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 15:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766588440; cv=none; b=EcSGZVUkHg3B3Bsd0OHOfhHCi46KGvYDkGPzacxlz6KlAkmClnvq8fnUHywgintq+dxL0CSAjfFMKXWK77+pr3OaLvTVxBGdpFoZt/j6a1a/7+OzsG2yRTV6kx+BrVPxNlehqpcGwpy6SyNxfRVMidDErNKJLCCIzulua6NiXdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766588440; c=relaxed/simple;
	bh=xx9d1PV9AwcvxrXDQkfdKlxbUTxeiZvo/kbKgIoEm5Y=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=MfsJwUCT2//IXoXgaE5lYkIY24oiZEd/oA0rMsusOnbkpFc0RA40/YqeNmLUZONOMPHZGdrIGTO7OnyLFeaq+B9lgmvOvkMAmm7aecFFZHE8nfJeTQPObhNYp6LmPprhukUItvO3c502OW2taOlkBO2/kc/+GJvBRWgE0ld5XaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=w4/iDUfl; arc=none smtp.client-ip=209.85.219.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-88ffcb14e11so2430506d6.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 07:00:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1766588437; x=1767193237; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=dGe1Kg/Ewwa4AXdQbZdoUP/58mpe9Y5O7Uc0GbJIQbI=;
        b=w4/iDUflAjiZMYGRbgAsv4x71D7RcxpAEeUspIQk9j5qD7QYGlnbFtvKqzaOp0GWaO
         oP6cBfjYVDVMuwazUHGX6u2/ezd1B+9r9iZwgT0zHile9usEdTHEXMl48/GTuL+vWi6x
         tU8r+7ibttqhavzUWSo9pteZNZsDIMZCjxh+M4sfZlS4GLq7pT7ipZL4BY35sGWJa6iy
         dN432CbbJ4ak5kiXTvoV/nfj43PyyntJ0s2z1iHSliZboF2M4BoOJliSU8yD+s2m7TfO
         o+OhjNLCuxw9oWytSiSA+sIhiLjOUM/qDXYbPh8sgU3OCzhENkTNdL1J6wJ7q9QoQDG0
         qIyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766588437; x=1767193237;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dGe1Kg/Ewwa4AXdQbZdoUP/58mpe9Y5O7Uc0GbJIQbI=;
        b=W3tBdc9RV151PQH3sgOjHwdwZmvPJk0NQjWd3lgpwPtSk75BeVsNK0MrZpIXySYHgN
         Ri6vLdEzujK8H1/cYEo8KrRX6nIh4aU90NBml3iam+Qqw8XVuCVeeAVvlExuRuzemk7L
         /7lYhw4E0vkBHYMYHPHRIux0siEZ06ZtBrRBHh/ftBMI8ofRgFQjEcsSufQO0OEudNG9
         PH27sgIncBAuPZDAew2MG+I56EESwvx0cIVHPeiioeRKEDIBKVfg1mncm0vexQC+XPfZ
         Ec88HSHV4n6WAKHFaYAtvfDqjCpiQR0bnGPqIzsRUnE6FZJRaY8MK5TjVIoWVe4f9L7a
         T1qA==
X-Forwarded-Encrypted: i=1; AJvYcCXj5wy3FR64bM5733eoMuhRQnXAaZ8acKTiFROGpDgeSPtWwYEBMcIYvXEVvnB6PQBLWxsg+R/ilD2e@vger.kernel.org
X-Gm-Message-State: AOJu0YwWQNqC8iCgbXFTQtBLGwY1JNPwmvMKE+40E8SDi0W44QSABVtV
	TH4utmfFnB0JpSU+sb+NjqOv1KRQJAshttEezKmPHFqulA7tuItU09dc6U+v1WhR92Q=
X-Gm-Gg: AY/fxX6YMsjgGXOEfBBQtiAEEzBO1U0U09+Aq+bF+dwey9UXlefTWnt3yU31TpdudYp
	NXXN9h+Tl0mVkkoUkfeCTzY+pXiubl8kuRp1iVb5HIhoDqvMrRo+zuJmKtZh6X8Rldr7pIUbE2i
	n98z+HE/UZIzPwgw4y2OJCFx7Xiebu+HAwDCClzi6h0QuyAhqNiT08B4kuTVQ9Nim0RYP0/fkDz
	ued3jkQ7dbAxei7dJDGb1tJfWdOj/COvu2zPFr6AdUabqgUtCstogHrEGJa91Iw9JaQ32k2Xpks
	IpHBoS6+nZjoYWMTA4+mC+uy2hmAZbb0rM+sW7g474wXomO9rLw9hWQzYnFyWkmhPAqbLtZzssd
	ts6EkibffqYOrG0fYwWcKRxiDhxEf5bVohmync1sBzM7X+msvZ/emklw00y6HiyOvjl2rVRTnF/
	fnJHu0z4KS8Bj7Cjw9
X-Google-Smtp-Source: AGHT+IGOdP4bNjuz9Xy+2p3DsTDzLsDPb65a5Nil+bEYmD7FurogSj7bVj14d+sYewwSE7RZ5v7Z8A==
X-Received: by 2002:a05:622a:2b49:b0:4f1:cab1:9d3c with SMTP id d75a77b69052e-4f4abda9df8mr272131511cf.57.1766588436448;
        Wed, 24 Dec 2025 07:00:36 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac62e1e7sm123162401cf.21.2025.12.24.07.00.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 07:00:35 -0800 (PST)
Message-ID: <7d9f41a8609fdae7631305585cab47fd45297c5c.camel@ndufresne.ca>
Subject: Re: [PATCH v2 05/22] media: rockchip: rga: use stride for offset
 calculation
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
Date: Wed, 24 Dec 2025 10:00:34 -0500
In-Reply-To: <20251203-spu-rga3-v2-5-989a67947f71@pengutronix.de>
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
	 <20251203-spu-rga3-v2-5-989a67947f71@pengutronix.de>
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
	protocol="application/pgp-signature"; boundary="=-rHJMEXILUMoROeBsgJ5B"
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


--=-rHJMEXILUMoROeBsgJ5B
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 03 d=C3=A9cembre 2025 =C3=A0 16:52 +0100, Sven P=C3=BCschel a =
=C3=A9crit=C2=A0:
> Use the stride instead of the width for the offset calculation. This
> ensures that the bytesperline value doesn't need to match the width
> value of the image.
>=20
> Furthermore this patch removes the dependency on the uv_factor property
> and instead reuses the v4l2_format_info to determine the correct
> division factor.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga-buf.c | 14 +++++++++-----
> =C2=A01 file changed, 9 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/medi=
a/platform/rockchip/rga/rga-buf.c
> index 730bdf98565a5..b5e6b1b527ca8 100644
> --- a/drivers/media/platform/rockchip/rga/rga-buf.c
> +++ b/drivers/media/platform/rockchip/rga/rga-buf.c
> @@ -14,7 +14,6 @@
> =C2=A0#include <media/videobuf2-dma-sg.h>
> =C2=A0#include <media/videobuf2-v4l2.h>
> =C2=A0
> -#include "rga-hw.h"
> =C2=A0#include "rga.h"
> =C2=A0
> =C2=A0static ssize_t fill_descriptors(struct rga_dma_desc *desc, size_t m=
ax_desc,
> @@ -92,14 +91,19 @@ static int rga_buf_init(struct vb2_buffer *vb)
> =C2=A0	return 0;
> =C2=A0}
> =C2=A0
> -static int get_plane_offset(struct rga_frame *f, int plane)
> +static int get_plane_offset(struct rga_frame *f,
> +			=C2=A0=C2=A0=C2=A0 const struct v4l2_format_info *info,
> +			=C2=A0=C2=A0=C2=A0 int plane)
> =C2=A0{
> +	u32 stride =3D f->pix.plane_fmt[0].bytesperline;
> +
> =C2=A0	if (plane =3D=3D 0)
> =C2=A0		return 0;
> =C2=A0	if (plane =3D=3D 1)
> -		return f->width * f->height;
> +		return stride * f->height;
> =C2=A0	if (plane =3D=3D 2)
> -		return f->width * f->height + (f->width * f->height / f->fmt->uv_facto=
r);
> +		return stride * f->height +
> +		=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (stride * f->height / info->hdiv =
/ info->vdiv);

This was the only user of uv_factor, please cleanup rga.h/rga.c. I see ther=
e is
also redudant x_div/y_div, with this similar code re-implemented in
rga_get_addr_offset(), can you check for v3 if we can cleanup some more ?

One thought though is that this code is already hidden inside v4l2-common,
perhaps you could just expose it, this ensure that we don't accidently have
different information when configuring the HW and communicating with the us=
er.

Nicolas

> =C2=A0
> =C2=A0	return -EINVAL;
> =C2=A0}
> @@ -145,7 +149,7 @@ static int rga_buf_prepare(struct vb2_buffer *vb)
> =C2=A0	/* Fill the remaining planes */
> =C2=A0	info =3D v4l2_format_info(f->fmt->fourcc);
> =C2=A0	for (i =3D info->mem_planes; i < info->comp_planes; i++)
> -		offsets[i] =3D get_plane_offset(f, i);
> +		offsets[i] =3D get_plane_offset(f, info, i);
> =C2=A0
> =C2=A0	rbuf->offset.y_off =3D offsets[0];
> =C2=A0	rbuf->offset.u_off =3D offsets[1];

--=-rHJMEXILUMoROeBsgJ5B
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUwAEgAKCRDZQZRRKWBy
9NO5AQDtdSqseG94qsfu8XsdEZ4bOfZiTOs9HyX/19Fq1IgEnAEAhFdciooE5zhz
sU15mlCk3SHkGaBmmOl7z63Xkb4AnAo=
=7AqG
-----END PGP SIGNATURE-----

--=-rHJMEXILUMoROeBsgJ5B--

