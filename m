Return-Path: <devicetree+bounces-319108-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qGoZIGkYRmoYJwsAu9opvQ
	(envelope-from <devicetree+bounces-319108-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 09:51:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA2E6F4638
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 09:51:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Vu19Mwkn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319108-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-319108-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6FC2D3020BC8
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 07:50:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86A663C417E;
	Thu,  2 Jul 2026 07:50:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E17271CD1E4
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 07:50:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782978606; cv=none; b=OM1w/ij3uj1WfFrCYbdh+gpZg3qSfoLO3hiaHDNZsirUJ0FfUr30jy/BzSm1QzXxRcx9yxDcpAI8EVGNSc6pEYZ/yrMaz2OZ6c1nUMWxn+kZT8B3rmUlDSgB0FKFHBhXm92xC6F1ugdI6YQVeGILvZ+8BIgxBrG9JZWPp7PrJ3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782978606; c=relaxed/simple;
	bh=ZiALEzFU3UDQnFlhWw/kOwAueAiOjwE9T0SPmq9HkrI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gvhixgkklZJkYMT/RN4YrhlEusO7Qq8Tx+Pkv34gteeabbfqofwbQqoO2FCB5SBfpwHmmYKJgZUp155NnUjJIof9Z7SFpL+gPwNeauNSjovnNfGuPmnBZ+Xbp9V5HhVjfwkWo7fIIqEhkSOm8jXfRqA7evy+91k2Td0bqgA9wHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vu19Mwkn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30FBF1F00A3A;
	Thu,  2 Jul 2026 07:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782978603;
	bh=/lv0/1b/k0J2CdEMz+hCskRhbsaIBHdyIjQEga0mk+U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Vu19MwknaHLEOBxbejpSy343BHXmJefLjgak6uk0ziEfUJJXrnxYWjGnLWpm5yQKa
	 3tR6i/eQDBT+AF1fLxzSmomduA5KM86L+L+CEN5J5kl5GwfR+LQGXjO+JK35geZjzO
	 ZjXodMZhYv7vOMlxcObFjb6WfL3ZfDNL2mmdQbcZP43+5zBNiMe2voYt6U4N3w/CnM
	 x8aOYbJX4KJFcHWOn8t1vvUTYb7VYy00fuau9QJkgJhC6pnxsA0nknX44x/OPKIdJ5
	 MV4EHgrH9axKGXdmjR+Q6zG6DYzou51jtY74n4mK2lXh3VNXb/dmAVKKskde6z6+Aq
	 K/sm/3hUC44+w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v15 02/12] media: mediatek: jpeg: fix jpeg buffer
 payload size setting
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kyrie Wu" <kyrie.wu@mediatek.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260702072614.10373-3-kyrie.wu@mediatek.com>
References: <20260702072614.10373-1-kyrie.wu@mediatek.com>
 <20260702072614.10373-3-kyrie.wu@mediatek.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 07:50:02 +0000
Message-Id: <20260702075003.30FBF1F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319108-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:kyrie.wu@mediatek.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,mediatek.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1AA2E6F4638

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [Low] Misuse of the untyped MIN() macro instead of standard min_t().

Pre-existing issues:
- [High] V4L2 API violation and data corruption due to unconditionally over=
writing and clamping the payload size for OUTPUT buffers.
--

commit d7dd9a5c943d9d5a39c948601677f1b3e207a5e1
Author: Kyrie Wu <kyrie.wu@mediatek.com>

media: mediatek: jpeg: fix jpeg buffer payload size setting

For multi-core jpegdec, a resolution change event requires the payload size=
 to
change, but concurrent decoding by other cores prevents immediate updates.
This results in payload sizes mismatching the real buffer length. This patch
clamps the payload size to be less than the real buffer length to suppress
warning logs.

> diff --git a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c b/drive=
rs/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> index 1e014fd698ae0..3960ad21d7f0c 100644
> --- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> +++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
[ ... ]
> @@ -710,12 +711,20 @@ static int mtk_jpeg_buf_prepare(struct vb2_buffer *=
vb)
> =20
>  	for (i =3D 0; i < q_data->fmt->colplanes; i++) {
>  		plane_fmt =3D q_data->pix_mp.plane_fmt[i];
> +		max_size =3D plane_fmt.sizeimage;
> +
>  		if (ctx->enable_exif &&
> -		    q_data->fmt->fourcc =3D=3D V4L2_PIX_FMT_JPEG)
> -			vb2_set_plane_payload(vb, i, plane_fmt.sizeimage +
> -					      MTK_JPEG_MAX_EXIF_SIZE);
> -		else
> -			vb2_set_plane_payload(vb, i,  plane_fmt.sizeimage);
> +			q_data->fmt->fourcc =3D=3D V4L2_PIX_FMT_JPEG) {
> +			max_size +=3D MTK_JPEG_MAX_EXIF_SIZE;
> +
> +			vb2_set_plane_payload(vb, i,
> +					      MIN(vb->planes[i].length,
> +						  max_size));
> +		} else {
> +			vb2_set_plane_payload(vb, i,
> +					      MIN(plane_fmt.sizeimage,
> +						  vb->planes[i].length));

[Severity: High]
This is a pre-existing issue, but does unconditionally clamping and
overwriting the payload size here violate the V4L2 API for output buffers?

For the compressed bitstream queue, userspace sets bytesused to the exact
bitstream length during QBUF. mtk_jpeg_buf_prepare() unconditionally
overwrites this with the clamped value. Because mtk_jpeg_set_dec_src()
calculates the hardware DMA end_addr using vb2_get_plane_payload():

mtk_jpeg_set_dec_src()
    bs->end_addr =3D bs->str_addr +
                   round_up(vb2_get_plane_payload(src_buf, 0), 16);

the hardware and software parsers are forced to read up to the full buffer
capacity, which can lead to parsing uninitialized memory or trailing garbag=
e.

Additionally, for capture buffers during a resolution change, if userspace
queues an old, undersized buffer, plane_fmt.sizeimage will exceed
vb->planes[i].length. Instead of returning -EINVAL to synchronously reject
the buffer as V4L2 requires, this clamping merely silences the framework's
WARN_ON_ONCE. The undersized buffer is accepted and will fail asynchronously
later.


[Severity: Low]
Is it safer to use min_t() instead of the untyped MIN() macro here?

vb->planes[i].length is an unsigned int, while max_size (and
plane_fmt.sizeimage) is a size_t. Using min_t(size_t, ...) maintains proper
type safety and adheres to kernel coding standards, avoiding potential type
mismatch issues.

> +		}
>  	}
> =20
>  	return 0;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702072614.1037=
3-1-kyrie.wu@mediatek.com?part=3D2

