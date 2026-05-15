Return-Path: <devicetree+bounces-298449-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOFsNTJLB2q5wwIAu9opvQ
	(envelope-from <devicetree+bounces-298449-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 18:34:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A04553808
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 18:34:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AE87B320053D
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 16:12:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E8D83F44C0;
	Fri, 15 May 2026 16:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQ3Uwk3R"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF913C9896
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 16:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778861315; cv=none; b=u9f90WvdL2stRmaPl9gCNdaecjuwajyk7/gcphRMXfQvb4i3jljxSTAZ16Fbt4zp+QAnhMPsSMLjxN+DnyvPqpzHLGFX+lrIHiS7s+D9AYW6lp23gEcvkD3x6yLgqsTmk9Gp3BcxvxCA56tUySbEW99YaYCq1K4cjkJRxF7XARg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778861315; c=relaxed/simple;
	bh=xT+3vLJrS2EkteGGMBFhFa9C4EU2j5O1CpJuRu02co4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gktBtr+MbUoOeJEKZ+4kKjOUvzCMqDLU84ZjuovK/K7om1iP9BASzE/soj95uKeRXQkZn322yRc4Tazo9FHUr8Y8TKwoLyM80FsBwfpyU0qc5oE+LeeUNS8qhc3naINsL+NrP7J/C2r2SnVPavUP8E9Hg6vyXgWdbxDZQEI3KCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQ3Uwk3R; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 607A9C2BCB0;
	Fri, 15 May 2026 16:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778861315;
	bh=xT+3vLJrS2EkteGGMBFhFa9C4EU2j5O1CpJuRu02co4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=oQ3Uwk3REm/2kWdKvfxa5euEfjzxmHC4wZj7qSelkz2rw2kLm18jxkzJ26ZoXtBwC
	 hT/HUR097BKwH0JiXDYA6lcwruHveziRPp8K4hn8h4Dz6lY6la1a/uTPDfaDlL3QQt
	 fYpR6yhf9NXk7d+JZkThOyNJ+NPvVEdiGjchSigPRvcUnJMNntzM78xF/uoKJ4j4nd
	 lerGNcNMLwpzeft+cRnMKyZOWzxLWTc/lR4a0KpMxmR3TSzNQYv9BRM/YgT4L3PULn
	 w6qPEEh19QSHGuN/LUH3jG5YRqILLZA68FEn/dVNDwN5inKbhosfrp7b1hIUTJ3sNu
	 8HruPnizzeY+Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 20/28] media: rockchip: rga: support external iommus
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U3ZlbiBQw7xzY2hlbA==?= <s.pueschel@pengutronix.de>
Cc: conor+dt@kernel.org, robh@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260515-spu-rga3-v6-20-e547152eb9c9@pengutronix.de>
References: <20260515-spu-rga3-v6-20-e547152eb9c9@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 16:08:34 +0000
Message-Id: <20260515160835.607A9C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 58A04553808
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298449-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,pengutronix.de:email,smtp.kernel.org:mid];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Critical] An off-by-one bounds check in `fill_descriptors` combined with=
 unsigned integer underflow allows an attacker to perform an unbounded out-=
of-bounds heap write.
--

commit bf314a22b4aaca4693af88a7c738812bfaefb82d
Author: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

media: rockchip: rga: support external iommus

In preparation for the RGA3 add support for external iommus. This is a
transition step to just disable the RGA2 specific mmu table setup code.

> diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/medi=
a/platform/rockchip/rga/rga-buf.c
> index ab9554c1c4cd9..cd6904d5fe5a6 100644
> --- a/drivers/media/platform/rockchip/rga/rga-buf.c
> +++ b/drivers/media/platform/rockchip/rga/rga-buf.c
[ ... ]
> @@ -136,17 +140,21 @@ static int rga_buf_prepare(struct vb2_buffer *vb)
>  	for (i =3D 0; i < vb->num_planes; i++) {
>  		vb2_set_plane_payload(vb, i, f->pix.plane_fmt[i].sizeimage);
> =20
> -		/* Create local MMU table for RGA */
> -		n_desc =3D fill_descriptors(&rbuf->dma_desc[curr_desc],
> -					  rbuf->n_desc - curr_desc,
> -					  vb2_dma_sg_plane_desc(vb, i));
> -		if (n_desc < 0) {
> -			v4l2_err(&ctx->rga->v4l2_dev,
> -				 "Failed to map video buffer to RGA\n");
> -			return n_desc;
> +		if (rga_has_internal_iommu(ctx->rga)) {
> +			/* Create local MMU table for RGA */
> +			n_desc =3D fill_descriptors(&rbuf->dma_desc[curr_desc],
> +						  rbuf->n_desc - curr_desc,

This problem wasn't introduced by this patch, but could this calculation
underflow and cause an out-of-bounds write?

In fill_descriptors(), the loop condition allows one extra iteration:

rga-buf.c:fill_descriptors() {
	...
	for_each_sgtable_dma_page(sgt, &iter, 0) {
		if (n_desc > max_desc)
			return -EINVAL;
	...
}

If n_desc =3D=3D max_desc, it allows an extra element to be written and ret=
urns
max_desc + 1.

If a user provides a multi-planar buffer via V4L2 where the first plane's
scatterlist contains exactly rbuf->n_desc + 1 pages, fill_descriptors()
writes one element out-of-bounds and returns rbuf->n_desc + 1 instead of an
error.

> +						  vb2_dma_sg_plane_desc(vb, i));
> +			if (n_desc < 0) {
> +				v4l2_err(&ctx->rga->v4l2_dev,
> +					 "Failed to map video buffer to RGA\n");
> +				return n_desc;
> +			}
> +			dma_addrs[i] =3D curr_desc << PAGE_SHIFT;
> +			curr_desc +=3D n_desc;

Since curr_desc receives this return value, could rbuf->n_desc - curr_desc
underflow to SIZE_MAX during the next iteration of the loop for the second
plane?

This would pass SIZE_MAX as the max_desc argument to fill_descriptors(),
potentially allowing an unbounded out-of-bounds write to adjacent memory.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515-spu-rga3-v=
6-0-e547152eb9c9@pengutronix.de?part=3D20

