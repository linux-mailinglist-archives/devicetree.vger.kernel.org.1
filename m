Return-Path: <devicetree+bounces-319099-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dWoKEQUXRmqAJgsAu9opvQ
	(envelope-from <devicetree+bounces-319099-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 09:45:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B396F4515
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 09:45:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WmXam2gJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319099-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319099-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B5FA53022B7E
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 07:41:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0BF93ADB97;
	Thu,  2 Jul 2026 07:41:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95A433ACA6F
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 07:41:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782978086; cv=none; b=A3CjlT6/74zKrzQ5v9Vf+KDnjxgSOrlI9KsBa8YZvoZ2Y2ta0sXuDTFS2Xj9j9zkv5pO2JiV975V9goYT4kQhuIaC89yyikl0nqoJ4bUMnqEIFLcrsXGPNYn3Q66e6M0lygjHt0IEayEeFVFiJHKB70UiaPOlbyEcH82GqxYMX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782978086; c=relaxed/simple;
	bh=gB4HycPTso9HPw/J40AqDQhfwDjF/49m/PB6JHnvZ+c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ZX8hkl1t0cxDpG36+JK3VDwPAV30WClyjXGQSg9k9KeqdwqHG/aTCFWpFdH/KxfU7JED/UP2eIeIgGWjrppQzmak7m8A14fxIAS8nWncnoKKIsaLk1HIjre1dOBvm76U6A39KaSMoT0V/fAAHElWoaJwhnf8LuQFlRwijxL7vaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmXam2gJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC90D1F00A3A;
	Thu,  2 Jul 2026 07:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782978083;
	bh=ZmRLFtjT2Uq3EIgk9v6vAjjSldCPBCSFqR+yu3JXWwM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WmXam2gJIAjTgpL2kWgkbuXtKcP5efNs4VoT9jrihgF3iD4WIyzB//ei0gWKUe2H0
	 3HtNUcuO8Mbnx8Uo8KB54f5JMAkfG2P/MKfqdNEDgYggsdddaOvc8oSjCBKXRbb8x0
	 k03SJkpvvB6b8/OUf84qvl/TmHarwXTFY2Sfl1vgU8nDS0Di88mLAw1hTZf0e4lzkW
	 +JidjTmRSaF5+npTVGg5rQjz5iQ3wO1rhA+ebYkxIwZyi0QfkR5e64C2Dv/s84bjiG
	 9QHKdacMY5DYKpG3RTgmSXMtK5f1tjohqLne/Lfb1B4k53AK2WRy+Ridg2HEHFTrPp
	 OW0LK5aGRlLSA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v15 06/12] media: mediatek: jpeg: fix decoding buffer
 number setting timing issue
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kyrie Wu" <kyrie.wu@mediatek.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260702072614.10373-7-kyrie.wu@mediatek.com>
References: <20260702072614.10373-1-kyrie.wu@mediatek.com>
 <20260702072614.10373-7-kyrie.wu@mediatek.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 07:41:22 +0000
Message-Id: <20260702074122.DC90D1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319099-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:kyrie.wu@mediatek.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mediatek.com:email,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D1B396F4515

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [High] Delayed initialization of `jpeg_dst_buf` metadata introduces a rac=
e condition with the timeout worker.

Pre-existing issues:
- [High] PM usage counter leak in `mtk_jpegenc_worker` on `pm_runtime_get_s=
ync()` failure.
- [High] Double completion and severe list corruption due to IRQ handler an=
d timeout worker race condition.
--

commit 938df83523dee529816f6765923d0c66f07e6d22
Author: Kyrie Wu <kyrie.wu@mediatek.com>

media: mediatek: jpeg: fix decoding buffer number setting timing issue

The patch delays the initialization of curr_ctx and frame_num for jpeg_dst_=
buf
by moving it into a spinlock-protected section in mtk_jpegdec_worker,
aiming to ensure any later operations act on an accurate state.

> diff --git a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c b/drive=
rs/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> index 89048aba8dca2..4dc574e03bd5a 100644
> --- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> +++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
> @@ -1743,11 +1742,6 @@ static void mtk_jpegdec_worker(struct work_struct =
*work)
>  		goto getbuf_fail;
>  	}
> =20
> -	jpeg_src_buf->curr_ctx =3D ctx;
> -	jpeg_src_buf->frame_num =3D ctx->total_frame_num;
> -	jpeg_dst_buf->curr_ctx =3D ctx;
> -	jpeg_dst_buf->frame_num =3D ctx->total_frame_num;
> -
>  	mtk_jpegdec_set_hw_param(ctx, hw_id, src_buf, dst_buf);
>  	ret =3D pm_runtime_resume_and_get(comp_jpeg[hw_id]->dev);
>  	if (ret < 0) {

[Severity: High]
This isn't a bug introduced by this patch, but while the decoder worker uses
pm_runtime_resume_and_get() here, the encoder worker still uses
pm_runtime_get_sync().

In drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c:mtk_jpegenc_worker(=
),
if pm_runtime_get_sync() fails, it jumps to enc_end without dropping the us=
age
counter via pm_runtime_put_noidle(). This PM usage counter leak prevents the
device from entering deep sleep states.

Does it make sense to update mtk_jpegenc_worker() to use
pm_runtime_resume_and_get() as well?

> @@ -1772,6 +1766,9 @@ static void mtk_jpegdec_worker(struct work_struct *=
work)
>  			      msecs_to_jiffies(MTK_JPEG_HW_TIMEOUT_MSEC));
> =20
>  	spin_lock_irqsave(&comp_jpeg[hw_id]->hw_lock, flags);
> +	jpeg_dst_buf =3D mtk_jpeg_vb2_to_srcbuf(&dst_buf->vb2_buf);
> +	jpeg_dst_buf->curr_ctx =3D ctx;
> +	jpeg_dst_buf->frame_num =3D ctx->total_frame_num;

[Severity: High]
Does this delayed initialization introduce a race condition with the timeout
worker?

By moving the initialization of jpeg_dst_buf->curr_ctx and frame_num here,
they are set after schedule_delayed_work() has already been called above.
If the worker thread gets preempted before taking the spinlock, the timeout
worker could execute and read hw_param.curr_ctx without taking the lock,
observing uninitialized or stale frame numbers.

>  	ctx->total_frame_num++;
>  	mtk_jpeg_dec_reset(comp_jpeg[hw_id]->reg_base);
>  	mtk_jpeg_dec_set_config(comp_jpeg[hw_id]->reg_base,
> diff --git a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c b/dri=
vers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c
> index 9a8dbca6af006..e4d2c5d4ec73d 100644
> --- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c
> +++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_dec_hw.c
> @@ -513,6 +513,7 @@ static void mtk_jpegdec_put_buf(struct mtk_jpegdec_co=
mp_dev *jpeg)
>  				v4l2_m2m_buf_done(&tmp_dst_done_buf->b,
>  						  VB2_BUF_STATE_DONE);
>  				ctx->last_done_frame_num++;
> +				break;
>  			}
>  		}
>  	}

[Severity: High]
This is a pre-existing issue, but can the IRQ handler and timeout worker
concurrently execute mtk_jpegdec_put_buf() and corrupt the dst_done_queue?

The hardware IRQ handler mtk_jpegdec_hw_irq_handler() calls
cancel_delayed_work(&jpeg->job_timeout_work). If the timeout worker is
already running on another CPU, it will not be stopped because this is
not the sync variant.

If both concurrently call mtk_jpegdec_put_buf() (and similarly
mtk_jpegenc_put_buf() in the encoder), they will both execute
list_add_tail(&dst_done_buf->list, &ctx->dst_done_queue). Adding a node
that is already on the list overwrites its next and prev pointers,
creating a circular link that can hang the kernel during traversal.

Are there plans to synchronize these paths?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702072614.1037=
3-1-kyrie.wu@mediatek.com?part=3D6

