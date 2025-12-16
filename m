Return-Path: <devicetree+bounces-247172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1860ECC532E
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 22:23:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DFCFE302AE02
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 21:22:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22A643148D6;
	Tue, 16 Dec 2025 21:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="ewx9V/qs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B84A2EB856
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 21:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765920171; cv=none; b=mcm7cmApKo7CbzjvNB5pPm0lQKFmJU8L1zSDNeKSePlKu6yoQQon6eSAJSWuzdRruambEDbYPN2R3DYwkCJhlC2rWmwBPPI+IdYJM4vx4+wW3JEEetWFCSchAPY2eTw6WOiKlUf+kVvUg77WlnLIBIWao9t/ti0j7vvTnp6urJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765920171; c=relaxed/simple;
	bh=/krS0BWI65jop3z0unqJB84FOIc0RmeeYbt+JMWGDnQ=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Fbw26BkHw2bxi4FEHPz826XksBB4e8Yrge8TIMEd5AsBUv/G4wZC/0l4iAm9b6B/CeQcCx0TZesIeEo2MCZ83SdoLukVrwEhruAq7W9KlO9H3QVAaK6lUZ3qHwQ57AN8uC6rzU7mcLUdkiYzSZo5g0m7GpH3om7OoCGkbG+uh6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=ewx9V/qs; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-8b2627269d5so516025485a.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:22:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1765920168; x=1766524968; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=5NXLEIY/HJo5YPCQOLY5gXfYsdslZjjo+0R5gru3yJ8=;
        b=ewx9V/qsUI4PVryZDovX+00DUFyXfvmEw3g72+oJUCx1KWXsqyBD5vkmLKPfYSplto
         soDBo0DEjF3P+L26716PjHsmEH72tluQFmWnPlE1wwUYeToXB13L6A61/FsODkbk3gQu
         rCY6HWXGL1Y3WPqlpAWhodFx3YAbrAj62JaEiWS1ahWSJBCOYFZxPWlGT1d0IADAxVJ4
         UhouzoUfqx1XziOhBuvRkoHT8hPjbHFouky45EaLPGgbgQBiIHYOyMCVVrLIEqUhWnjA
         ZkNaIDSQlsQX2J4gf/kdXQIj0/02hw23fCmrL7CpEF5nZgXzV7D2FbhEaAZxHSWD5SHX
         rpAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765920168; x=1766524968;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5NXLEIY/HJo5YPCQOLY5gXfYsdslZjjo+0R5gru3yJ8=;
        b=sc0XxdY5BsevVZuwxR2TKl3Ugl64KHGaFXnT8YQM0jjGPzRNePqI59SezJAgrHYXx1
         +uyDANcvPueFzuBScDE4OSjc5gKHhaUDkJj2OXglHRGWtxWtYya9eYNi3NeHVq1rJjxt
         T/CdanEo1aov5d5Q2TknkBAyxoMmhzj+XTKeun1bTJVm71RuqUXHuWnNOGlznldI8Iuh
         dI73gOJRA7rpRJ7Tx1R9/9xLPVzsM4ssx0apWy05syvizqwWlBIBkeK3pD43Lkepghi5
         5L2nl3i5g3q5/jY1BMR/ld3dXL7syVaJCT61Hx5ZE6Afxbvt7+Nz+3BpLCA/NnRxH8K4
         ZPaQ==
X-Forwarded-Encrypted: i=1; AJvYcCUL8oaIGPSWqC4CDfp9bX1qaxhWolJh3m8xl6EDn/Roaq/Q2yGooHlqf3Wzbo69ZzwpmrTrFdvliYO0@vger.kernel.org
X-Gm-Message-State: AOJu0YxVreZcUzUd9NFE6hi2qUGUNLZ6tMWj3smsQcp+D73qWLZ5Zc1m
	sT02rsniltqsRhj+NDZ7nEBmQpSgESXMoP++Y2mAHOXRJ4yGcQTxSsc/WU1xzYTVuuM=
X-Gm-Gg: AY/fxX7iFIZDaFpBBO5paplTEWnB/aC8REt/AnxbM8Lm4iaakagFr0kWEH8opzQLdho
	yaEcD9mYurGKWy+zYMupB5eweKTcawc5OUXYGPwbxQYV2Qt2FBEU/uziLEyB+14VZcSbyUXbJYJ
	G1vORLh/6GuBsM1ghnV8t831JBf58mxBKATvb5qF/KqOgl9WXJA3HedCgmgTj0ggq+1Bu8a9Gri
	hhmiWiYvn1cMWoRxNWwvK/TqczzkrEBMg+Ft+uTjbeEDaioE/HdJrnaC+WXL70h+LwA2+sG8lN0
	qNBEmmebFglTGfBHZ72xwqYPtU2UQpBVYYJ7FTxIaS4KLbKvnyI2gh+kGdPa1qKpe8dIaa1bw3r
	AvF6IETtTzv0zUnOxpkbdBhifwbHq3hOYmoTTKqabxh1iE0mt7LgKvc8dVJpT5raqosQHZbJEjQ
	F9slFLIvONFPwfusBc
X-Google-Smtp-Source: AGHT+IGnNvmGoO8yPWVpsFsbYZAaj2DCffDyxI9Yos1OcWwvsPhTC8Cpvvm5ho/CQeeMUg7IeOVbhA==
X-Received: by 2002:a05:620a:1aa1:b0:8b2:63ed:dd10 with SMTP id af79cd13be357-8bb3a39de7emr2290802885a.78.1765920168123;
        Tue, 16 Dec 2025 13:22:48 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8be31b66937sm266561085a.41.2025.12.16.13.22.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 13:22:47 -0800 (PST)
Message-ID: <89f845b45405bbf985a5e92c195078074bcce0e2.camel@ndufresne.ca>
Subject: Re: [PATCH v11 03/12] media: mediatek: jpeg: fix jpeg buffer layout
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Kyrie Wu <kyrie.wu@mediatek.com>, Hans Verkuil
 <hverkuil-cisco@xs4all.nl>,  Mauro Carvalho Chehab	 <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski	 <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger	
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno	
 <angelogioacchino.delregno@collabora.com>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Date: Tue, 16 Dec 2025 16:22:46 -0500
In-Reply-To: <20251202094800.6140-4-kyrie.wu@mediatek.com>
References: <20251202094800.6140-1-kyrie.wu@mediatek.com>
	 <20251202094800.6140-4-kyrie.wu@mediatek.com>
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
	protocol="application/pgp-signature"; boundary="=-mJv6RkBPu7sPfVj/Eoxm"
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


--=-mJv6RkBPu7sPfVj/Eoxm
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mardi 02 d=C3=A9cembre 2025 =C3=A0 17:47 +0800, Kyrie Wu a =C3=A9crit=C2=
=A0:
> For memory alloc operation of jpeg dst buffer: the mallocing
> memory function interface use vb2_buffer as the base addr.
> If structure mtk_jpeg_src_buf wants to be allocated to memory,
> it needs to be placed vb2_v4l2_buffer at the starting position,
> because structure vb2_buffer is at the starting position of
> vb2_v4l2_buffer, and the allocated size is set to the size of
> structure mtk_jpeg_src_buf, so as to ensure that structures
> mtk_jpeg_src_buf, vb2_v4l2_buffer and vb2_buffer can all be
> allocated memory.

Please correct the wording, "mallocing" is not a word, addr -> address. I t=
end
to do the same, but refrain from giving the code a personality, the vb2_buf=
fer
have no will. This is overall complicated way to simply say:

	Fix the size of the allocated mtk_jpeg_src_buf structure.

>=20
> Fixes: 5fb1c2361e56 ("mtk-jpegenc: add jpeg encode worker interface")
>=20

Drop the blank line.

> Signed-off-by: Kyrie Wu <kyrie.wu@mediatek.com>
> ---
> =C2=A0drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c | 2 +-
> =C2=A0drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.h | 2 +-
> =C2=A02 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c b/drive=
rs/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> index 0cf3dc5407e4..bd0afc93d491 100644
> --- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> +++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> @@ -1099,7 +1099,7 @@ static int mtk_jpeg_queue_init(void *priv, struct v=
b2_queue *src_vq,
> =C2=A0	dst_vq->type =3D V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
> =C2=A0	dst_vq->io_modes =3D VB2_DMABUF | VB2_MMAP;
> =C2=A0	dst_vq->drv_priv =3D ctx;
> -	dst_vq->buf_struct_size =3D sizeof(struct v4l2_m2m_buffer);
> +	dst_vq->buf_struct_size =3D sizeof(struct mtk_jpeg_src_buf);
> =C2=A0	dst_vq->ops =3D jpeg->variant->qops;
> =C2=A0	dst_vq->mem_ops =3D &vb2_dma_contig_memops;
> =C2=A0	dst_vq->timestamp_flags =3D V4L2_BUF_FLAG_TIMESTAMP_COPY;
> diff --git a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.h b/drive=
rs/media/platform/mediatek/jpeg/mtk_jpeg_core.h
> index 6be5cf30dea1..148fd41759b7 100644
> --- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.h
> +++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.h
> @@ -85,10 +85,10 @@ struct mtk_jpeg_variant {
> =C2=A0};
> =C2=A0
> =C2=A0struct mtk_jpeg_src_buf {
> -	u32 frame_num;
> =C2=A0	struct vb2_v4l2_buffer b;
> =C2=A0	struct list_head list;
> =C2=A0	u32 bs_size;
> +	u32 frame_num;

I like the change, but this shouldn't be an issue if you use container_of, =
which
is safer then a plain cast. Please review the code and make sure to use it.=
 It
may be confusing to include a cosmetic change in a fixes.

Nicolas

> =C2=A0	struct mtk_jpeg_dec_param dec_param;
> =C2=A0
> =C2=A0	struct mtk_jpeg_ctx *curr_ctx;

--=-mJv6RkBPu7sPfVj/Eoxm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUHNpgAKCRDZQZRRKWBy
9GauAQDSjSJy57f4INnhNyoTxgXltOjS3AO/O50mgH9AbrdfXQD+IMCZiJL8oDJg
iZKHJQfhVDMZqx9S6kHFrKdYog6F1gw=
=T/eA
-----END PGP SIGNATURE-----

--=-mJv6RkBPu7sPfVj/Eoxm--

