Return-Path: <devicetree+bounces-249536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD77CDCC1D
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 16:50:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D787E300720E
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 15:50:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 202B0326D43;
	Wed, 24 Dec 2025 15:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="Q/Yt3NVG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com [209.85.219.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C71D2857C1
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 15:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766591413; cv=none; b=UwKem2djsyoRTN+UHlC2bgP36lGFBE+gaasaeZxdpLDU2NnKUZqdJydeg6qEwlR7CoDFjcOiuxBaRRXXrWnpI4G5pWhNxfOYQGlo9wQDfwh5WnuGRay8JjNQGP75JfNxzCrgjWF+WQfJSIS4KItfq7RpT+RaOFuZJkOxD6b9ejQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766591413; c=relaxed/simple;
	bh=VU7krsK7H9UuRS4RwlsjTrec0KW/d0eOR1v1hPs4jh0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=D4U9PhT7ELVt64J4pGBdFUO1RdyluQYCtcpAyAm5KYfPBhGbb0YBCxYYSvYZRLAe99fbWss0um+2gvNIV9MO/DQd02xsU/GHNl8THPcijiLKVjHqv1a+sqERGw+xfBDlZsdapAImHXAb0PrNlDMJwovrU3Ebmel+tYnyPYcneo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=Q/Yt3NVG; arc=none smtp.client-ip=209.85.219.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qv1-f65.google.com with SMTP id 6a1803df08f44-88a379ca088so65804836d6.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 07:50:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1766591410; x=1767196210; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=t0x8O2edEza1BNif20q/VV2jOJQ5YnvQ9lQ3v3htH5Y=;
        b=Q/Yt3NVGIbAUCQHGLorwtRguzf2zZw9lw8OzmKz104xe8+Gt4kuyPlXo9ReNwujiId
         O9QWCbvuPxg8UWwY4qFh9QwldgGBd8UluE+ow2qJrIBaz2O9hM5ARYVGLxg/R+b7flKS
         mb8Sx7iagrzXS1dLoXlqmmdij4dJwWHQzqZhun8cuU4WTLig1Hv0I48xX5snBLFfRNmL
         K0Yrj9VoMCvgMaoZFixgnY7W0BjFDDlbBKIHUOhwRRZQT/NkV5+uk3tfVPkqYPAcdQQJ
         5p/7fAxOptBAIVHmKsLExCWkVMWSxiB+dmkoj80q/LZTM6hfFbabma2P7Crva0Hpzit1
         dGvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766591410; x=1767196210;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t0x8O2edEza1BNif20q/VV2jOJQ5YnvQ9lQ3v3htH5Y=;
        b=DYfEg+2aHRPsHsWtCyIX7UX0US2PdmgyxIuy6zhzzqOalJshx0A57FaSc9RWjUAEOi
         +EiIBKFKtiCTD5wHi9ChwCYxpcBwlo5Dr2LXt0uIScY93aP5rFjebhXKwzrYGyqCIqf7
         HYQYgykowBUgMa+zwVFcIs16fCZVINPm3TZJLENLL9LMRedV20ejtV67JoaOr20ZCwnv
         jSnkegNfd6BZi/xHk1N3CJlKX3ILxfKDJtiFHFAiPyxTLtt6zBWbw+GwHidqBi6w3nZh
         UOvBOBxJp+kaJXwbUSSGu29xXWNqbA9G6M1NW9ejM1Jv8enUbFEbsYeSYO3nxvUUxhoa
         qDnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCBJ4gm5vv6VK3n2Ph5ZoSGArAjeo8FJSUV5Kn60UliM4E9GujbjGjiTffmGCdcVpu5Q28feDQ74Va@vger.kernel.org
X-Gm-Message-State: AOJu0YzJRE+N9aM0+BMRGd+nu4UMDZuS7gkyX0FsYJUTFgibiP/HKyun
	q0nPAyhdO5yWHa4VyBaaNunW+U3sB6+7kgGr+KamXt8igc4ZQfADiJ5VzXi2s5pyc5M=
X-Gm-Gg: AY/fxX7+eVRommmdM/eh2rB8AKitIN7/ooJsW9MkaGdSnDqFQG81dQtk/vRAc9a1A0u
	ILlaxIKO6d7AQu++Epue6IJ+LL7R2Gtcy0trfJjOYD1K4uWQHQLDl++NybOCPQu3qn+wbfRD7Gw
	hd0EURCAEo7XmZJMJSIkajvzIr1I8z5k/P0pKlZ58fhZMnarVpQ8ScRXhAGKQ2YiUrfab5u9Qf3
	43wFxLrxkq6/BIwcEX8Axfl7L+U8H2S79WT0lbboVPieTHsltxbYC3QVGZCadB6GsCJ74rq7mXY
	7jkwbKW6Pww78LaSXKoWKhLcfcKEo7LnkswdCoBRAVSMErtILXMmMavquVtNXAgX8E6bKcqVDoQ
	Tyvsw64rvVn9rZdZlK/q32UWkcc5/r/o7JDWC6IlhuuSTPv1R31CzummniHYXMx9Lsq2aW2mK36
	MPDTFH5jB8YLfH26Wc
X-Google-Smtp-Source: AGHT+IEwy2rat5Kb5r98ykPzYiUU1sIbw+qVImMdGra60R50ykeHomj3EYI4RCKiCXlFe+tzbEaOIw==
X-Received: by 2002:a05:622a:1389:b0:4ee:1b36:b5b4 with SMTP id d75a77b69052e-4f4abcf6c6cmr239396931cf.15.1766591410071;
        Wed, 24 Dec 2025 07:50:10 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4da7c31a1sm44200731cf.5.2025.12.24.07.50.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 07:50:09 -0800 (PST)
Message-ID: <c5b6707e3e6748bf923aaf34db1ae231c7e121ad.camel@ndufresne.ca>
Subject: Re: [PATCH v2 14/22] media: rockchip: rga: support external iommus
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
Date: Wed, 24 Dec 2025 10:50:08 -0500
In-Reply-To: <20251203-spu-rga3-v2-14-989a67947f71@pengutronix.de>
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
	 <20251203-spu-rga3-v2-14-989a67947f71@pengutronix.de>
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
	protocol="application/pgp-signature"; boundary="=-nlUZf9Gs4Bb4RGq57lnq"
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


--=-nlUZf9Gs4Bb4RGq57lnq
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 03 d=C3=A9cembre 2025 =C3=A0 16:52 +0100, Sven P=C3=BCschel a =
=C3=A9crit=C2=A0:
> In preparation for the RGA3 add support for external iommus. This is a
> transition step to just disable the RGA2 specific mmu table setup code.
>=20
> Currently a simple rga_hw struct field is used to set the internal iommu.
> But to handle the case of more sophisticated detection mechanisms
> (e.g. check for an iommu property in the device tree), it is abstracted
> by an inline function.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga-buf.c | 46 ++++++++++++++++=
-----------
> =C2=A0drivers/media/platform/rockchip/rga/rga-hw.c=C2=A0 |=C2=A0 1 +
> =C2=A0drivers/media/platform/rockchip/rga/rga.c=C2=A0=C2=A0=C2=A0=C2=A0 |=
 11 +++++--
> =C2=A0drivers/media/platform/rockchip/rga/rga.h=C2=A0=C2=A0=C2=A0=C2=A0 |=
=C2=A0 6 ++++
> =C2=A04 files changed, 43 insertions(+), 21 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/medi=
a/platform/rockchip/rga/rga-buf.c
> index 8845e1f894f29..e8d1e2e579140 100644
> --- a/drivers/media/platform/rockchip/rga/rga-buf.c
> +++ b/drivers/media/platform/rockchip/rga/rga-buf.c
> @@ -12,6 +12,7 @@
> =C2=A0#include <media/v4l2-ioctl.h>
> =C2=A0#include <media/v4l2-mem2mem.h>
> =C2=A0#include <media/videobuf2-dma-sg.h>
> +#include <media/videobuf2-dma-contig.h>
> =C2=A0#include <media/videobuf2-v4l2.h>
> =C2=A0
> =C2=A0#include "rga.h"
> @@ -79,14 +80,16 @@ static int rga_buf_init(struct vb2_buffer *vb)
> =C2=A0	struct rga_frame *f =3D rga_get_frame(ctx, vb->vb2_queue->type);
> =C2=A0	size_t n_desc =3D 0;
> =C2=A0
> -	n_desc =3D DIV_ROUND_UP(f->size, PAGE_SIZE);
> +	if (rga_has_internal_iommu(rga)) {
> +		n_desc =3D DIV_ROUND_UP(f->size, PAGE_SIZE);

n_desc is not used outside of this scope, perhap drop the definition with t=
he 0
init, and use:

		const size_t n_desc =3D DIV_ROUND_UP(f->size, PAGE_SIZE);
	=09
> =C2=A0
> -	rbuf->n_desc =3D n_desc;
> -	rbuf->dma_desc =3D dma_alloc_coherent(rga->dev,
> -					=C2=A0=C2=A0=C2=A0 rbuf->n_desc * sizeof(*rbuf->dma_desc),
> -					=C2=A0=C2=A0=C2=A0 &rbuf->dma_desc_pa, GFP_KERNEL);
> -	if (!rbuf->dma_desc)
> -		return -ENOMEM;
> +		rbuf->n_desc =3D n_desc;
> +		rbuf->dma_desc =3D dma_alloc_coherent(rga->dev,
> +						=C2=A0=C2=A0=C2=A0 rbuf->n_desc * sizeof(*rbuf->dma_desc),
> +						=C2=A0=C2=A0=C2=A0 &rbuf->dma_desc_pa, GFP_KERNEL);
> +		if (!rbuf->dma_desc)
> +			return -ENOMEM;
> +	}
> =C2=A0
> =C2=A0	return 0;
> =C2=A0}
> @@ -133,17 +136,21 @@ static int rga_buf_prepare(struct vb2_buffer *vb)
> =C2=A0	for (i =3D 0; i < vb->num_planes; i++) {
> =C2=A0		vb2_set_plane_payload(vb, i, f->pix.plane_fmt[i].sizeimage);
> =C2=A0
> -		/* Create local MMU table for RGA */
> -		n_desc =3D fill_descriptors(&rbuf->dma_desc[curr_desc],
> -					=C2=A0 rbuf->n_desc - curr_desc,
> -					=C2=A0 vb2_dma_sg_plane_desc(vb, i));
> -		if (n_desc < 0) {
> -			v4l2_err(&ctx->rga->v4l2_dev,
> -				 "Failed to map video buffer to RGA\n");
> -			return n_desc;
> +		if (rga_has_internal_iommu(ctx->rga)) {
> +			/* Create local MMU table for RGA */
> +			n_desc =3D fill_descriptors(&rbuf->dma_desc[curr_desc],
> +						=C2=A0 rbuf->n_desc - curr_desc,
> +						=C2=A0 vb2_dma_sg_plane_desc(vb, i));
> +			if (n_desc < 0) {
> +				v4l2_err(&ctx->rga->v4l2_dev,
> +					 "Failed to map video buffer to RGA\n");
> +				return n_desc;
> +			}
> +			dma_addrs[i] =3D curr_desc << PAGE_SHIFT;
> +			curr_desc +=3D n_desc;
> +		} else {
> +			dma_addrs[i] =3D vb2_dma_contig_plane_dma_addr(vb, i);
> =C2=A0		}
> -		dma_addrs[i] =3D curr_desc << PAGE_SHIFT;
> -		curr_desc +=3D n_desc;
> =C2=A0	}
> =C2=A0
> =C2=A0	/* Fill the remaining planes */
> @@ -173,8 +180,9 @@ static void rga_buf_cleanup(struct vb2_buffer *vb)
> =C2=A0	struct rga_ctx *ctx =3D vb2_get_drv_priv(vb->vb2_queue);
> =C2=A0	struct rockchip_rga *rga =3D ctx->rga;
> =C2=A0
> -	dma_free_coherent(rga->dev, rbuf->n_desc * sizeof(*rbuf->dma_desc),
> -			=C2=A0 rbuf->dma_desc, rbuf->dma_desc_pa);
> +	if (rga_has_internal_iommu(rga))
> +		dma_free_coherent(rga->dev, rbuf->n_desc * sizeof(*rbuf->dma_desc),
> +				=C2=A0 rbuf->dma_desc, rbuf->dma_desc_pa);
> =C2=A0}
> =C2=A0
> =C2=A0static void rga_buf_return_buffers(struct vb2_queue *q,
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media=
/platform/rockchip/rga/rga-hw.c
> index fe6f518aedd4e..fb0389ae8e132 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -617,6 +617,7 @@ static struct rga_fmt formats[] =3D {
> =C2=A0
> =C2=A0const struct rga_hw rga2_hw =3D {
> =C2=A0	.card_type =3D "rga2",
> +	.has_internal_iommu =3D true,
> =C2=A0	.formats =3D formats,
> =C2=A0	.num_formats =3D ARRAY_SIZE(formats),
> =C2=A0	.cmdbuf_size =3D RGA_CMDBUF_SIZE,
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index c9719c7bcfc1c..f28ec88c186fa 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -23,6 +23,7 @@
> =C2=A0#include <media/v4l2-ioctl.h>
> =C2=A0#include <media/v4l2-mem2mem.h>
> =C2=A0#include <media/videobuf2-dma-sg.h>
> +#include <media/videobuf2-dma-contig.h>
> =C2=A0#include <media/videobuf2-v4l2.h>
> =C2=A0
> =C2=A0#include "rga.h"
> @@ -95,13 +96,16 @@ queue_init(void *priv, struct vb2_queue *src_vq, stru=
ct vb2_queue *dst_vq)
> =C2=A0	src_vq->io_modes =3D VB2_MMAP | VB2_DMABUF;
> =C2=A0	src_vq->drv_priv =3D ctx;
> =C2=A0	src_vq->ops =3D &rga_qops;
> -	src_vq->mem_ops =3D &vb2_dma_sg_memops;
> +	src_vq->mem_ops =3D &vb2_dma_contig_memops;

That's a bit I'm less knowledgeable here, since I never used the sg_memops =
in
any of my work, but what is the consequence ? (appart from gaining external
iommu support)

> =C2=A0	src_vq->gfp_flags =3D __GFP_DMA32;
> =C2=A0	src_vq->buf_struct_size =3D sizeof(struct rga_vb_buffer);
> =C2=A0	src_vq->timestamp_flags =3D V4L2_BUF_FLAG_TIMESTAMP_COPY;
> =C2=A0	src_vq->lock =3D &ctx->rga->mutex;
> =C2=A0	src_vq->dev =3D ctx->rga->v4l2_dev.dev;
> =C2=A0
> +	if (rga_has_internal_iommu(ctx->rga))
> +		src_vq->mem_ops =3D &vb2_dma_sg_memops;
> +
> =C2=A0	ret =3D vb2_queue_init(src_vq);
> =C2=A0	if (ret)
> =C2=A0		return ret;
> @@ -110,13 +114,16 @@ queue_init(void *priv, struct vb2_queue *src_vq, st=
ruct vb2_queue *dst_vq)
> =C2=A0	dst_vq->io_modes =3D VB2_MMAP | VB2_DMABUF;
> =C2=A0	dst_vq->drv_priv =3D ctx;
> =C2=A0	dst_vq->ops =3D &rga_qops;
> -	dst_vq->mem_ops =3D &vb2_dma_sg_memops;
> +	dst_vq->mem_ops =3D &vb2_dma_contig_memops;
> =C2=A0	dst_vq->gfp_flags =3D __GFP_DMA32;
> =C2=A0	dst_vq->buf_struct_size =3D sizeof(struct rga_vb_buffer);
> =C2=A0	dst_vq->timestamp_flags =3D V4L2_BUF_FLAG_TIMESTAMP_COPY;
> =C2=A0	dst_vq->lock =3D &ctx->rga->mutex;
> =C2=A0	dst_vq->dev =3D ctx->rga->v4l2_dev.dev;
> =C2=A0
> +	if (rga_has_internal_iommu(ctx->rga))
> +		dst_vq->mem_ops =3D &vb2_dma_sg_memops;
> +
> =C2=A0	return vb2_queue_init(dst_vq);
> =C2=A0}
> =C2=A0
> diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/pl=
atform/rockchip/rga/rga.h
> index 772f7dff9a8e5..fc81bc5562792 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -148,6 +148,7 @@ static inline void rga_mod(struct rockchip_rga *rga, =
u32 reg, u32 val, u32 mask)
> =C2=A0
> =C2=A0struct rga_hw {
> =C2=A0	const char *card_type;
> +	bool has_internal_iommu;
> =C2=A0	struct rga_fmt *formats;
> =C2=A0	u32 num_formats;
> =C2=A0	size_t cmdbuf_size;
> @@ -163,6 +164,11 @@ struct rga_hw {
> =C2=A0	void (*get_version)(struct rockchip_rga *rga);
> =C2=A0};
> =C2=A0
> +static inline bool rga_has_internal_iommu(const struct rockchip_rga *rga=
)
> +{
> +	return rga->hw->has_internal_iommu;
> +}
> +
> =C2=A0extern const struct rga_hw rga2_hw;
> =C2=A0
> =C2=A0#endif

--=-nlUZf9Gs4Bb4RGq57lnq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUwLsAAKCRDZQZRRKWBy
9CgTAP0ZRX2VZlB0wowqAC2lQw5hPjPnmDeQ4SUGcd0ceWKR9QD/as0o8pUzWxwD
8/w+YOd/NEn5VtzklxpU0cIAfbY+Kgw=
=1Utz
-----END PGP SIGNATURE-----

--=-nlUZf9Gs4Bb4RGq57lnq--

