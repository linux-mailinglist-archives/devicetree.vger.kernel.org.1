Return-Path: <devicetree+bounces-300953-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNbAD1RKDmoM9gUAu9opvQ
	(envelope-from <devicetree+bounces-300953-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 01:57:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A843359D032
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 01:57:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 370B03018294
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 23:56:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E81C3C342B;
	Wed, 20 May 2026 23:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTuAZBmz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07944347FEE
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 23:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779321397; cv=none; b=b9cIFUoJt9OQ4xKxC762wXcIalaRPuVYzCo9zU0SKf13XMldNlVTVu6d1YWlY5puEv4Aec5YBpsu5GTBT1ywu2cruE9zfsQCvT9F4E/5ilSaM++wRPV1AhWPzXPCzK0mGmw1yQtBm9WVT4ahNDXASuWgi2G3hbfnq7m/I/kGVkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779321397; c=relaxed/simple;
	bh=cYulrOygUhgig9Pe+2KifANahvYGXHsaxYYR5uUlk2g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=A7UfQxbmuGj6OqZ3FijIO2W9N6P3+pWuuYIBqiyZl6CTs9szDyiygyA9+DBxC3IaBSgsSy3v7xPgVQlykBz34q7heGVug7hXTciJaChWTQdvTCM70jKzNbhpM+2vDXj3TXDjcPWXTfGNtBGvyLVO8kF/I2Jrdg1M237Ri0YlR7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTuAZBmz; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0440A1F000E9;
	Wed, 20 May 2026 23:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779321393;
	bh=F6RtVH6itKZ4Ex2emmkFa9Wn7WP2HTTWy3SnMA02Okc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VTuAZBmzRcMxGe4HPP5mnEJ/zOh5IaYHT4Xg3XOTDeEAqlPXjZnvOPbrUq+4+Pcb8
	 RdapbXJ5iloPn/w481doy97eWJ6eK4bCM64CHyZJxdBD5nBiLeLajI0+JBtmhixbYN
	 QlzS3o5UYRydky5NTRkveg8oBL83Tb9trbt45/hgaj+u2HJezdfUPPzbf5frMNxoXi
	 wAbwPFKvWZHfB1IFEEt3iqx2cVWLOd9oYnD5r14vWN+6B9Y6BUdLTqnKPEHYsPKFQY
	 0OrJHPmHQAXiCJ/pdcSCEJljkKyISuManY6BPxslChcKcihVHCqjN/p2E10yHHuPgt
	 UOeVlXLAfZvYA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 15/28] media: rockchip: rga: align stride to 4 bytes
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U3ZlbiBQw7xzY2hlbA==?= <s.pueschel@pengutronix.de>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260521-spu-rga3-v7-15-3f33e8c7145f@pengutronix.de>
References: <20260521-spu-rga3-v7-15-3f33e8c7145f@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 23:56:32 +0000
Message-Id: <20260520235633.0440A1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300953-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto,pengutronix.de:email]
X-Rspamd-Queue-Id: A843359D032
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The `vir_stride` bitfield in `union rga_src_vir_info` is 10 bits, =
causing silent truncation for valid V4L2 widths.
- [High] In `rga_open()`, the return value of `rga_setup_ctrls(ctx)` is com=
pletely ignored. If control setup fails, subsequent code uses a destroyed c=
ontrol handler and locks a destroyed mutex.
- [High] An off-by-one error in the bounds check of `fill_descriptors` comb=
ined with an under-allocation of the descriptor array causes a heap out-of-=
bounds write of 4 bytes when handling multi-planar formats.
--

commit c43e898ca5762d2604bb3d4b71e3a6c220a67ef8
Author: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

media: rockchip: rga: align stride to 4 bytes

Add an alignment setting to rga_hw to set the desired stride alignment.
As the RGA2 register for the stride counts in word units, the code
already divides the bytesperline value by 4 when writing it into the
register. Therefore fix the alignment to a multiple of 4 to avoid
potential off by one errors due from the division.

> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media=
/platform/rockchip/rga/rga-hw.c
> index 9881c14f908d5..dac3cb6aa17d3 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -580,6 +580,7 @@ const struct rga_hw rga2_hw =3D {
>  	.max_width =3D MAX_WIDTH,
>  	.min_height =3D MIN_HEIGHT,
>  	.max_height =3D MAX_HEIGHT,
> +	.stride_alignment =3D 4,

[Severity: High]
This is a pre-existing issue, but the vir_stride bitfield in
union rga_src_vir_info is 10 bits, causing silent truncation for valid V4L2
widths.

The hardware requires the source stride in 4-byte words, which the driver
calculates as ctx->in.stride >> 2:

drivers/media/platform/rockchip/rga/rga-hw.c:rga_hw_start() {
    ...
	/*
	 * SRC_VIR_INFO
	 * note that the step of vir_stride / vir_width is 4 byte words
	 */
	src_vir_info.data.vir_stride =3D ctx->in.stride >> 2;
    ...
}

For a 1920x1080 image in a 32-bit format (like ARGB32), the stride is 7680
bytes, which equals 1920 words. However, vir_stride is defined as a 10-bit
bitfield in union rga_src_vir_info:

drivers/media/platform/rockchip/rga/rga-hw.h:
union rga_src_vir_info {
	unsigned int val;
	struct {
		/* [0:15] */
		unsigned int vir_width:15;
		unsigned int reserved:1;
		/* [16:25] */
		unsigned int vir_stride:10;
		/* [26:31] */
		unsigned int reserved1:6;
	} data;
};

A 10-bit field can only hold values up to 1023. When 1920 is assigned to it,
it silently overflows and truncates to 896 (1920 & 1023).

This truncated stride is then programmed into the hardware via the
RGA_SRC_VIR_INFO register. Will this cause the hardware to read from
incorrect memory offsets for all lines after the first, resulting in severe
data corruption for common high resolutions like 1080p?

> =20
>  	.start =3D rga_hw_start,
>  	.handle_irq =3D rga_handle_irq,
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index bf6bbcbfc869b..d080cb672740b 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -234,10 +234,10 @@ static int rga_open(struct file *file)
>  	ctx->in =3D def_frame;
>  	ctx->out =3D def_frame;
> =20
> -	v4l2_fill_pixfmt_mp(&ctx->in.pix,
> -			    ctx->in.fmt->fourcc, def_width, def_height);
> -	v4l2_fill_pixfmt_mp(&ctx->out.pix,
> -			    ctx->out.fmt->fourcc, def_width, def_height);
> +	v4l2_fill_pixfmt_mp_aligned(&ctx->in.pix, ctx->in.fmt->fourcc,
> +				    def_width, def_height, rga->hw->stride_alignment);
> +	v4l2_fill_pixfmt_mp_aligned(&ctx->out.pix, ctx->out.fmt->fourcc,
> +				    def_width, def_height, rga->hw->stride_alignment);

[Severity: High]
This isn't a bug introduced by this patch, but in rga_open(), the return
value of rga_setup_ctrls(ctx) is completely ignored.

If rga_setup_ctrls() encounters an error (e.g., -ENOMEM during
v4l2_ctrl_handler_init), it handles its own failure by calling
v4l2_ctrl_handler_free(&ctx->ctrl_handler) before returning the error code.
This free operation invokes mutex_destroy(&ctx->ctrl_handler._lock).

However, rga_open() completely ignores the returned error code and proceeds:

drivers/media/platform/rockchip/rga/rga.c:rga_open() {
    ...
	rga_setup_ctrls(ctx);

	/* Write the default values to the ctx struct */
	v4l2_ctrl_handler_setup(&ctx->ctrl_handler);

	ctx->fh.ctrl_handler =3D &ctx->ctrl_handler;
	mutex_unlock(&rga->mutex);
    ...
}

It immediately calls v4l2_ctrl_handler_setup(&ctx->ctrl_handler), which
inadvertently calls mutex_lock() on the destroyed mutex. Furthermore, it
assigns ctx->fh.ctrl_handler =3D &ctx->ctrl_handler, exposing the broken,
destroyed handler to userspace ioctls like VIDIOC_S_CTRL.

Could this result in a reliable use-after-destroy vulnerability if a user c=
an
induce out-of-memory conditions during device open?

[ ... ]

> @@ -393,7 +393,8 @@ static int vidioc_try_fmt(struct file *file, void *pr=
iv, struct v4l2_format *f)
>  		fmt =3D &hw->formats[0];
> =20
>  	v4l2_apply_frmsize_constraints(&pix_fmt->width, &pix_fmt->height, &frms=
ize);
> -	v4l2_fill_pixfmt_mp(pix_fmt, fmt->fourcc, pix_fmt->width, pix_fmt->heig=
ht);
> +	v4l2_fill_pixfmt_mp_aligned(pix_fmt, fmt->fourcc,
> +				    pix_fmt->width, pix_fmt->height, hw->stride_alignment);

[Severity: High]
This is a pre-existing issue, but an off-by-one error in the bounds check of
fill_descriptors() combined with an under-allocation of the descriptor array
causes a heap out-of-bounds write of 4 bytes when handling multi-planar
formats.

In rga_buf_init(), the DMA descriptor array is allocated based on the total
size of the frame:

drivers/media/platform/rockchip/rga/rga-buf.c:rga_buf_init() {
    ...
	n_desc =3D DIV_ROUND_UP(f->size, PAGE_SIZE);

	rbuf->n_desc =3D n_desc;
	rbuf->dma_desc =3D dma_alloc_coherent(rga->dev,
					    rbuf->n_desc * sizeof(*rbuf->dma_desc),
					    &rbuf->dma_desc_pa, GFP_KERNEL);
    ...
}

However, videobuf2 allocates each plane independently and pads each plane's
allocation to a page boundary. This means the sum of pages in the scatterli=
st
tables across all planes can exceed the total allocated descriptors (e.g., =
if
two planes are 4098 bytes each, they require 2 pages each (4 total), but
f->size is 8196 bytes, so n_desc is only 3).

When rga_buf_prepare() iterates through the planes and calls
fill_descriptors(), it passes the remaining capacity as max_desc. Due to an
off-by-one error in fill_descriptors() (if (n_desc > max_desc) instead of >=
=3D),
the loop permits writing exactly one element past max_desc before returning
-EINVAL:

drivers/media/platform/rockchip/rga/rga-buf.c:fill_descriptors() {
    ...
	for_each_sgtable_dma_page(sgt, &iter, 0) {
		if (n_desc > max_desc)
			return -EINVAL;
		addr =3D sg_page_iter_dma_address(&iter);
		tmp->addr =3D lower_32_bits(addr);
		tmp++;
		n_desc++;
	}
    ...
}

If the remaining capacity is 1 but the scatterlist table provides 2 pages,
the loop writes to tmp[0] (valid) and tmp[1] (out-of-bounds). Can this resu=
lt
in a reliable 4-byte heap buffer overflow?

>  	pix_fmt->field =3D V4L2_FIELD_NONE;
> =20
>  	return 0;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260521-spu-rga3-v=
7-0-3f33e8c7145f@pengutronix.de?part=3D15

