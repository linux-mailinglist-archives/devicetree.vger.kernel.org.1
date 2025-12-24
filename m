Return-Path: <devicetree+bounces-249529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 196E0CDCB47
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 16:29:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC364301357D
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 15:29:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3D3734D921;
	Wed, 24 Dec 2025 15:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="0H7JImwY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ECD034D3AF
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 15:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766590190; cv=none; b=h+1XebFFDCzpkie6XoR9qawFRfzdq9+ltJ3uWuKTY0GCREdKxFnDfinK4LHdT87RFH8MqjT7qnuXpGgIzaPZ7d4dnT0hc26Vq8jbPxayF0i6qhVGUOimnKqcYM8OitP8R/RpeNe2cjbI/lfE8AbZr5WRRiPM2u1nznjDg3G5tZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766590190; c=relaxed/simple;
	bh=0/Yd8o5IAdXD822IxpRMHQuXWwrqJuAv5y9d+H3o9Uw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=mpmUOs38287RkABftm0zYtgew4CLVni3eNgQYpUrlgjHCB0hs2PVfT6yx9FPXQAnj4EIWrDFr6BeVCFZHe4X/ZlA65JtzgLJSD3/NGAL6tHUV8ywyyTr8n8VolM3uBWjq4b+eaXGZ3c0UJY+AZ5mZIL4HGmOOIwqm4nCwNBedb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=0H7JImwY; arc=none smtp.client-ip=209.85.160.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-4f4cd02f915so18614811cf.1
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 07:29:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1766590183; x=1767194983; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=TwkJIIAOyC+iGrxHsI9snh+xrQsvtUQwuewCKc8KNUQ=;
        b=0H7JImwYYBkaiTmd2rbMh8tM0Gr/BuXNKEO46vZ89RuuRHMUZnhyiM5Tud3c5ktna/
         swqS85OkyrQ9Y0KLkITl4EVv8m0fSzo5CmdsRjKET5oM7QW8EcAFOtzkzYPp7kiQwKpj
         N+qgmIJ9bwKNNwwY6TRjwUa2Jtt173gamln07o5Z1gVdhI5/CNOQ59bXf9mBjiv54Gjk
         ko04W8eKKYsa4hpxm/+Upf/wV8o2hDJYeuE0dSkjX732MCoMXJR62QwuZjMS3kQY8a2r
         zhbBhnM53Wxqib/PtE6POWnLZ/3XXaizaz3Yl3UGVr+jeL4uD3CVJl6ink0L+5F+aI2J
         jJVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766590183; x=1767194983;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TwkJIIAOyC+iGrxHsI9snh+xrQsvtUQwuewCKc8KNUQ=;
        b=WddssmtdssP1NwQicEB0cXcm3Q+UY47nfSR9lwxszq5DYLXCerq+Wl7jmIvkywXxbo
         EXu69+3R2hVy9j2x7705peFOdoS2HVzXlpLH3e1w9Hjq0hheX7M1bMlSlYYFT6odoLwX
         51EG31BDyHQPlfzrHwxwFEAkoLsLmPp/u8cmSZgc8fpvtGqC4rEGkse1EdBySBkyFMp1
         rsABEhPWqWwDwXfPTTe6lfsjaCOyXnffxpQQ1VAGVpo1aqdQXxxd80UUaIV1f+Ym4QSw
         q7hsnC8pr7WfWS2rkvmhHawuw3BNVEtz76XDbXsx2QCTRANPGjaL7iHgKDfmWZj0yICv
         FIeg==
X-Forwarded-Encrypted: i=1; AJvYcCUjc0So9y3+QIo2h8iWBrAANIegrQoBTWwbpMfXyd+5rOfQBVt8Y+2u1GWpJ2qvTG3vYWg/igA0sV3K@vger.kernel.org
X-Gm-Message-State: AOJu0YxpICpt5oGKrEMLHf2OlAReYNV46wgNgow1E2B06uIRZneANHOV
	fZHrHf8Xm1slnwIQssObgHIbJSjG4Mou4P2Kt09UxDvUmKhYFfNa+ur9AeLIBCsRn4c=
X-Gm-Gg: AY/fxX71GvyGsI8T3fkLwC2dIMnGIdDsdWVGbT3tn4aJgoYY2RwA0G1iSVdaHsh98/d
	oHqAnqv6uJTikhI3cjSiKMptCouULVwhP2IR9nWUZpjQ2Uh4XwwIgkj2ARgUuVArC7LgFfUn5Gq
	GYB1PjT+SzbRLHj02KlXK+iifM7yzRENHYfv9ki+cTriJzPZ5ylsAWryStRJOpBjJByhiomZzVe
	qKMDf1w+5pyVYbgecC+TzHH4yrhfPbuIaND2hT/tM7HO0kana1840q1Ku6rBen1F6n5rnko0QoO
	vGcP+VLtwK/7+nEyPfrmf8TVnaoI6nhpjRaN8BVy2PfwI2ki+4VbLyXDH+WntF27MJG+Tjq75j5
	x6OM3Z1JhuvniBSJf54bW6653LWAt42H3OD+6XvP174JYjtkVkLzUy5x7pwzHu9Gl4WtbGigCxr
	b9BeHRYhNLiUJV1pYV
X-Google-Smtp-Source: AGHT+IFurORRUJNULnlbX94R2za/XCt3vvaDyHm+KjHk3sOKh4CoRdkgBOx3YgO3VJabdA7p5qCnbw==
X-Received: by 2002:a05:622a:4d93:b0:4e8:96ed:2e65 with SMTP id d75a77b69052e-4f4abcc50e0mr263126051cf.22.1766590182533;
        Wed, 24 Dec 2025 07:29:42 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac66841bsm120154681cf.30.2025.12.24.07.29.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 07:29:41 -0800 (PST)
Message-ID: <8c3a3299036dd1bab158bdcd589abd027d2864b6.camel@ndufresne.ca>
Subject: Re: [PATCH v2 10/22] media: rockchip: rga: prepare cmdbuf on
 streamon
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
Date: Wed, 24 Dec 2025 10:29:41 -0500
In-Reply-To: <20251203-spu-rga3-v2-10-989a67947f71@pengutronix.de>
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
	 <20251203-spu-rga3-v2-10-989a67947f71@pengutronix.de>
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
	protocol="application/pgp-signature"; boundary="=-wgUFX3W9vJo/GeY1uEul"
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


--=-wgUFX3W9vJo/GeY1uEul
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mercredi 03 d=C3=A9cembre 2025 =C3=A0 16:52 +0100, Sven P=C3=BCschel a =
=C3=A9crit=C2=A0:
> Prepare the command buffer on streamon to reuse it's contents instead of
> completely writing it for every frame. Due to the stream settings being
> fixed after a streamon we only need to replace the source and destination
> addresses for each frame. This reduces the amount of CPU and memory
> operations done in each frame.

My speculation is that flushing to device is usually more expensive then th=
is,
but I didn't check closely if you have enabled the caches. That being said,=
 this
is good change. It highlight the inflexible nature of V4L2 imho, which in t=
his
case can be used to optimize.

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga-hw.c | 13 +++++++++----
> =C2=A0drivers/media/platform/rockchip/rga/rga.c=C2=A0=C2=A0=C2=A0 | 13 ++=
++++++++++-
> =C2=A0drivers/media/platform/rockchip/rga/rga.h=C2=A0=C2=A0=C2=A0 |=C2=A0=
 1 +
> =C2=A03 files changed, 22 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media=
/platform/rockchip/rga/rga-hw.c
> index 56a2558539bfb..8cdfe089fd636 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -408,8 +408,6 @@ static void rga_cmd_set(struct rga_ctx *ctx,
> =C2=A0{
> =C2=A0	struct rockchip_rga *rga =3D ctx->rga;
> =C2=A0
> -	memset(ctx->cmdbuf_virt, 0, RGA_CMDBUF_SIZE * 4);
> -
> =C2=A0	rga_cmd_set_src_addr(ctx, src->dma_desc_pa);
> =C2=A0	/*
> =C2=A0	 * Due to hardware bug,
> @@ -418,11 +416,9 @@ static void rga_cmd_set(struct rga_ctx *ctx,
> =C2=A0	rga_cmd_set_src1_addr(ctx, dst->dma_desc_pa);
> =C2=A0
> =C2=A0	rga_cmd_set_dst_addr(ctx, dst->dma_desc_pa);
> -	rga_cmd_set_mode(ctx);
> =C2=A0
> =C2=A0	rga_cmd_set_src_info(ctx, &src->offset);
> =C2=A0	rga_cmd_set_dst_info(ctx, &dst->offset);
> -	rga_cmd_set_trans_info(ctx);
> =C2=A0
> =C2=A0	rga_write(rga, RGA_CMD_BASE, ctx->cmdbuf_phy);
> =C2=A0
> @@ -431,6 +427,14 @@ static void rga_cmd_set(struct rga_ctx *ctx,
> =C2=A0				=C2=A0=C2=A0 PAGE_SIZE, DMA_BIDIRECTIONAL);
> =C2=A0}
> =C2=A0
> +static void rga_hw_setup_cmdbuf(struct rga_ctx *ctx)
> +{
> +	memset(ctx->cmdbuf_virt, 0, RGA_CMDBUF_SIZE * 4);
> +
> +	rga_cmd_set_mode(ctx);
> +	rga_cmd_set_trans_info(ctx);
> +}
> +
> =C2=A0static void rga_hw_start(struct rockchip_rga *rga,
> =C2=A0			 struct rga_vb_buffer *src,=C2=A0 struct rga_vb_buffer *dst)
> =C2=A0{
> @@ -622,6 +626,7 @@ const struct rga_hw rga2_hw =3D {
> =C2=A0	.max_height =3D MAX_HEIGHT,
> =C2=A0	.stride_alignment =3D 4,
> =C2=A0
> +	.setup_cmdbuf =3D rga_hw_setup_cmdbuf,
> =C2=A0	.start =3D rga_hw_start,
> =C2=A0	.handle_irq =3D rga_handle_irq,
> =C2=A0	.get_version =3D rga_get_version,
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index 592c977a07cf3..f02ae02de26ca 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -523,6 +523,17 @@ static int vidioc_s_selection(struct file *file, voi=
d *priv,
> =C2=A0	return ret;
> =C2=A0}
> =C2=A0
> +static int vidioc_streamon(struct file *file, void *priv,
> +			=C2=A0=C2=A0 enum v4l2_buf_type type)
> +{
> +	struct rga_ctx *ctx =3D file_to_rga_ctx(file);
> +	const struct rga_hw *hw =3D ctx->rga->hw;
> +
> +	hw->setup_cmdbuf(ctx);
> +
> +	return v4l2_m2m_streamon(file, ctx->fh.m2m_ctx, type);
> +}
> +
> =C2=A0static const struct v4l2_ioctl_ops rga_ioctl_ops =3D {
> =C2=A0	.vidioc_querycap =3D vidioc_querycap,
> =C2=A0
> @@ -547,7 +558,7 @@ static const struct v4l2_ioctl_ops rga_ioctl_ops =3D =
{
> =C2=A0	.vidioc_subscribe_event =3D v4l2_ctrl_subscribe_event,
> =C2=A0	.vidioc_unsubscribe_event =3D v4l2_event_unsubscribe,
> =C2=A0
> -	.vidioc_streamon =3D v4l2_m2m_ioctl_streamon,
> +	.vidioc_streamon =3D vidioc_streamon,
> =C2=A0	.vidioc_streamoff =3D v4l2_m2m_ioctl_streamoff,
> =C2=A0
> =C2=A0	.vidioc_g_selection =3D vidioc_g_selection,
> diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/pl=
atform/rockchip/rga/rga.h
> index 0aef348dddb95..93162b118d069 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -154,6 +154,7 @@ struct rga_hw {
> =C2=A0	u32 max_width, max_height;
> =C2=A0	u8 stride_alignment;
> =C2=A0
> +	void (*setup_cmdbuf)(struct rga_ctx *ctx);
> =C2=A0	void (*start)(struct rockchip_rga *rga,
> =C2=A0		=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct rga_vb_buffer *src, struct =
rga_vb_buffer *dst);
> =C2=A0	bool (*handle_irq)(struct rockchip_rga *rga);

--=-wgUFX3W9vJo/GeY1uEul
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUwG5QAKCRDZQZRRKWBy
9O4FAP9E2aNeLRZt1zQcbEal6Ub+hRLjCwZuHvx4d6mo+exV+gD8D3fEU7lK1Rbl
U4jgUBplP0NBwSIZ6m7R2BXkERRjOQA=
=EAR/
-----END PGP SIGNATURE-----

--=-wgUFX3W9vJo/GeY1uEul--

