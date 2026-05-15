Return-Path: <devicetree+bounces-298466-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLjkB4VXB2pVzQIAu9opvQ
	(envelope-from <devicetree+bounces-298466-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 19:27:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E4655509E
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 19:27:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 658BC3391760
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 16:23:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E4E93BED47;
	Fri, 15 May 2026 16:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knZWq1hn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD217355049
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 16:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778862125; cv=none; b=VlCLW15bFBezATWiMEp/nFV4gautka0C0Wnlj5EYGk/Ns4oxlwRPkMXVL/HkyQSFITqoAMxwdyweKJ0XtWdzWZ5Fg/+jRenmBN+7dHBh6fjEOxfa5IuBQZ8ujJo8DO6pv83Qhg++MhGV7hZ0dVUG6VMqG5eqVpIsAV2JTeu0Jeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778862125; c=relaxed/simple;
	bh=ybT+TSGjs9hIrIwEylV9W066KBNX/esI532oEG5A+bI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JSRRuSpFSWyWXuutcqPycm0GcMBtnNHfYo5nZAPcZYGbnlh3nDztqDhR3BICkBm7ft+RRQw+MNxMaX/jOcpsA04JEImEGesOKDGEyUtqPH0x3D7eXbuzf4gCAKwM1bnRbSuuKsnOotblRrFTNmUxM01k6EyhESHDZKqWxvPjSIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knZWq1hn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 567A1C2BCB0;
	Fri, 15 May 2026 16:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778862125;
	bh=ybT+TSGjs9hIrIwEylV9W066KBNX/esI532oEG5A+bI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=knZWq1hnFQeCFfDQt8P7FhIptExKQKgfC4suAXNINcYXJAVmHQyLctQ+xqH8vAb97
	 3pLdTviIg3qw9urx22IPnYTI23Mh/LKwquiW6MGNI1xFNITlar+p2maQXgqXcN3k7V
	 CQFyE/8Kp2guUBlReqtBc81QlOmkheH1FudfxZkH748/q1G5Weto43A2Ucohrz20R2
	 SpQ8Gbz2dqKOmGhM5YfTZjVCy4MpZY8WhW5cOpcd86b41ZK5EMDT7Tw3K15PbVYDPD
	 ATI1ZesUemQvyWeuBIV2Qw0rqg7dl26p6fNrgSxZrzqdUhK87q5jx0FFv4Z3Kn84hj
	 ubh4NVrOrIlNA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 25/28] media: rockchip: rga: add feature flags
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U3ZlbiBQw7xzY2hlbA==?= <s.pueschel@pengutronix.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260515-spu-rga3-v6-25-e547152eb9c9@pengutronix.de>
References: <20260515-spu-rga3-v6-25-e547152eb9c9@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 16:22:04 +0000
Message-Id: <20260515162205.567A1C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 85E4655509E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298466-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,pengutronix.de:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Missing return value check for `rga_setup_ctrls` in `rga_open` lea=
ds to a Use-After-Destroy of the control handler mutex.
--

commit 0e807f6179fe82fa9a8a593d5cefb491574e313b
Author: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

media: rockchip: rga: add feature flags

In preparation to the RGA3 addition add feature flags, which can limit
the exposed feature set of the video device, like rotating or selection
support. This is necessary as the RGA3 doesn't initially implement the
full feature set currently exposed by the driver.

> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index 1878b4e26360b..8d60e94da32d8 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -177,17 +177,21 @@ static int rga_setup_ctrls(struct rga_ctx *ctx)
> =20
>  	v4l2_ctrl_handler_init(&ctx->ctrl_handler, 4);
> =20
> -	v4l2_ctrl_new_std(&ctx->ctrl_handler, &rga_ctrl_ops,
> -			  V4L2_CID_HFLIP, 0, 1, 1, 0);
> +	if (rga->hw->features & RGA_FEATURE_FLIP) {
> +		v4l2_ctrl_new_std(&ctx->ctrl_handler, &rga_ctrl_ops,
> +				  V4L2_CID_HFLIP, 0, 1, 1, 0);
> =20
> -	v4l2_ctrl_new_std(&ctx->ctrl_handler, &rga_ctrl_ops,
> -			  V4L2_CID_VFLIP, 0, 1, 1, 0);
> +		v4l2_ctrl_new_std(&ctx->ctrl_handler, &rga_ctrl_ops,
> +				  V4L2_CID_VFLIP, 0, 1, 1, 0);
> +	}
> =20
> -	v4l2_ctrl_new_std(&ctx->ctrl_handler, &rga_ctrl_ops,
> -			  V4L2_CID_ROTATE, 0, 270, 90, 0);
> +	if (rga->hw->features & RGA_FEATURE_ROTATE)
> +		v4l2_ctrl_new_std(&ctx->ctrl_handler, &rga_ctrl_ops,
> +				  V4L2_CID_ROTATE, 0, 270, 90, 0);
> =20
> -	v4l2_ctrl_new_std(&ctx->ctrl_handler, &rga_ctrl_ops,
> -			  V4L2_CID_BG_COLOR, 0, 0xffffffff, 1, 0);
> +	if (rga->hw->features & RGA_FEATURE_BG_COLOR)
> +		v4l2_ctrl_new_std(&ctx->ctrl_handler, &rga_ctrl_ops,
> +				  V4L2_CID_BG_COLOR, 0, 0xffffffff, 1, 0);
> =20
>  	if (ctx->ctrl_handler.error) {
>  		int err =3D ctx->ctrl_handler.error;

This issue wasn't introduced by this patch, but since rga_setup_ctrls() is
modified here, does the error handling in the caller expose a use-after-free
if rga_setup_ctrls() fails?

In rga_setup_ctrls(), if there is an error, it calls
v4l2_ctrl_handler_free(&ctx->ctrl_handler) and returns an error code.

However, in rga_open(), the return value of rga_setup_ctrls() is ignored:

drivers/media/platform/rockchip/rga/rga.c:rga_open() {
	...
	rga_setup_ctrls(ctx);

	/* Write the default values to the ctx struct */
	v4l2_ctrl_handler_setup(&ctx->ctrl_handler);
	...
}

Since v4l2_ctrl_handler_free() destroys the handler's internal mutex, does
calling v4l2_ctrl_handler_setup() subsequently attempt to lock a destroyed
mutex?

Additionally, does rga_open() returning success to userspace leave the V4L2
context in a corrupted state if rga_setup_ctrls() failed?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515-spu-rga3-v=
6-0-e547152eb9c9@pengutronix.de?part=3D25

