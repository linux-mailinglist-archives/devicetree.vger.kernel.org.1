Return-Path: <devicetree+bounces-319106-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GLJ6CM0bRmpyKAsAu9opvQ
	(envelope-from <devicetree+bounces-319106-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 10:05:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0636F48DB
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 10:05:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Ai7IpmyG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319106-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319106-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 097E530D1528
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 07:48:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEAC93C0A12;
	Thu,  2 Jul 2026 07:48:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84D7F30F938
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 07:48:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782978509; cv=none; b=udUEzjKFyfXB/tynX3tmJSyp0ZJ5jvLtZvO58hRkM/btwcSEi1vLDTCjA889KHkXwWWf7pS5XV/vcsZlPIhmnTrCtRhUDpMQvC++mM6wEu0C8Zqc58N70jqjz4mQVTFrRnlNk0QE6vC06OsMubBWGvQqheU8doegAUnVY7fHuN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782978509; c=relaxed/simple;
	bh=nHd5vVBHD7BWvXkQLEodAXQWTp4E45ApDzkMRgF0eWk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=FB8zRdIej3/breIWU4BCfxb9YWdM+mRYXCG4UYC/hWesJU6FUa++agtbgUuwnwM/5tRykn6fqv55wVlextNF+eBBRngTVtQfpJwjFgz6LKf/hI6FiEDCFtwbsJgm+FEZDZ+IgWObwhC85MlSmLy1kbO99eeWHRotoQJcryeDclU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ai7IpmyG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E62771F000E9;
	Thu,  2 Jul 2026 07:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782978508;
	bh=pQsJcQpH1mvCEwSQcM6bFrcIaejYpCXkXkSvnXVtGVg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ai7IpmyGEhUIqc/mfdS7rQvLPg5hpU/qG8rpy56cwhkenN+FfMabbO5JCmJlnQ+Or
	 uVXl//Xb5LA/4pXLD0DGJo10jbLg8lKm1j/LeEVPfelLgCpXEGYs27FME3qzb1R5V3
	 mE7du1AMdWih9HJ7tEhvwNOwggCTv3lvzo97jTjSxZbPDuSE5GUnEFpsbPqKMMSXxF
	 1osOrgQA0Ubv8qjBJtJN2O8lxZ/QbpahBD2yzNPXKOG4i9ltt1h52fpirejedWv6HD
	 YirZm7IYa03roYjRP/Jhs3UkkbViWn0LowgNMBipE83J6Y64LfM0UMDP0pQk6/df+6
	 C5EGUyeAKlgdA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v15 07/12] media: mediatek: jpeg: fix resolution change
 event handling in decoder
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kyrie Wu" <kyrie.wu@mediatek.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260702072614.10373-8-kyrie.wu@mediatek.com>
References: <20260702072614.10373-1-kyrie.wu@mediatek.com>
 <20260702072614.10373-8-kyrie.wu@mediatek.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 07:48:27 +0000
Message-Id: <20260702074827.E62771F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319106-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:kyrie.wu@mediatek.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4A0636F48DB

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [High] Calling `mtk_jpeg_set_queue_data()` asynchronously in the worker t=
hread causes a lockless data race on V4L2 queue parameters and violates the=
 source change event contract.

Pre-existing issues:
- [Critical] Calling `VIDIOC_STREAMOFF` on the decoder after a resolution c=
hange results in an unrecoverable kernel deadlock due to stranded buffers.
- [High] Missing `.job_ready` callback in multi-core ops combined with earl=
y worker exit causes an infinite workqueue scheduling loop that consumes 10=
0% CPU.
--

commit 6ba9311a964d59efcd536c9a96787b7a4babde92
Author: Kyrie Wu <kyrie.wu@mediatek.com>

media: mediatek: jpeg: fix resolution change event handling in decoder
   =20
This patch refines the handling of resolution change events within
JPEG decoder worker. The mtk_jpeg_set_queue_data function is now
called to set up queue data before signaling a source change through
mtk_jpeg_queue_src_chg_event. By reorganizing these calls, the
patch ensures that necessary queue information is updated prior to
transitioning the context state to MTK_JPEG_SOURCE_CHANGE.
A condition is added to exit early if the context is already in the
MTK_JPEG_SOURCE_CHANGE state, preventing redundant operations and
improving processing efficiency.

Fixes: dedc21500334 ("media: mtk-jpegdec: add jpeg decode worker interface")
Signed-off-by: Kyrie Wu <kyrie.wu@mediatek.com>

> diff --git a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c b/drive=
rs/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> index 4dc574e03bd5a..02efaed198b85 100644
> --- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> +++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> @@ -1737,11 +1737,15 @@ static void mtk_jpegdec_worker(struct work_struct=
 *work)
> =20
>  	if (mtk_jpeg_check_resolution_change(ctx,
>  					     &jpeg_src_buf->dec_param)) {
> -		mtk_jpeg_queue_src_chg_event(ctx);
> +		mtk_jpeg_set_queue_data(ctx, &jpeg_src_buf->dec_param);

[Severity: High]
Does this code introduce a lockless data race on V4L2 queue parameters?

Modifying format queues via mtk_jpeg_set_queue_data() directly from the
worker thread in process context runs without holding the V4L2 device
lock or vb2 queue locks.

Could this lead to torn reads or state corruption if userspace concurrently
queries or sets the format via VIDIOC_G_FMT or VIDIOC_S_FMT? It also appears
to violate the V4L2 contract, which specifies that the format should remain
unchanged until userspace acknowledges the event via VIDIOC_STREAMOFF.

>  		ctx->state =3D MTK_JPEG_SOURCE_CHANGE;
> +		mtk_jpeg_queue_src_chg_event(ctx);
>  		goto getbuf_fail;
>  	}
> =20
> +	if (ctx->state =3D=3D MTK_JPEG_SOURCE_CHANGE)
> +		goto getbuf_fail;

[Severity: High]
This is a pre-existing issue, but does this early exit without consuming
buffers lead to an infinite workqueue scheduling loop?

Because mtk_jpeg_multicore_dec_m2m_ops lacks a .job_ready callback, the
V4L2 M2M framework defaults to assuming the context is always ready if
buffers are present. Since this early exit path drops to getbuf_fail
without removing the buffers, v4l2_m2m_job_finish() will immediately
reschedule the context.

Could this loop continuously without delay, causing a 100% CPU lockup on
a single core?

[Severity: Critical]
This isn't a bug introduced by this patch, but does taking this getbuf_fail
path after a resolution change cause an unrecoverable deadlock later?

When the worker drops out here, the buffers remain in the v4l2_m2m queues
because v4l2_m2m_buf_done() is never called.

If userspace then handles the resolution change by calling VIDIOC_STREAMOFF
on the capture queue, mtk_jpeg_dec_stop_streaming() executes:

drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c:mtk_jpeg_dec_stop_stre=
aming() {
    ...
    if (jpeg->variant->multi_core)
        vb2_wait_for_all_buffers(q);
    ...
}

Since the driver still owns the stranded buffers, will vb2_wait_for_all_buf=
fers
block forever? The code to flush the m2m queues is placed after the wait
call, which seems to guarantee a deadlock.

> +
>  	mtk_jpegdec_set_hw_param(ctx, hw_id, src_buf, dst_buf);
>  	ret =3D pm_runtime_resume_and_get(comp_jpeg[hw_id]->dev);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702072614.1037=
3-1-kyrie.wu@mediatek.com?part=3D7

