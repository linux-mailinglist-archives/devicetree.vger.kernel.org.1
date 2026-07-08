Return-Path: <devicetree+bounces-322983-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SH42NKxqTmolMQIAu9opvQ
	(envelope-from <devicetree+bounces-322983-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 17:20:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4C0727E84
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 17:20:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IVXj9M7i;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322983-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322983-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2444630358B4
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 15:08:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5501D4CA264;
	Wed,  8 Jul 2026 15:02:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1B33D9695
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 15:01:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783522921; cv=none; b=DWZiLsGnpWrNz+CpBruzRbwRYGXweqhdlPsKDA/HbC/3blBmfa7bcnXjgh0QgMEDs3X/8FnUwXUfcIkaE+x1sXPYBn1BNxBuP6+ij0bJOV8CBU5OtH4dmxX0ElO16On+VdaI+XM99B9ogPA7YCxRT7Atoon/FM86FMWNX0TOnaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783522921; c=relaxed/simple;
	bh=wX8EtCYJkiCMuZml2Yv78xY+EhaD3UMeaB4ok1WHyto=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BefyEF5bQmZQ2vfKdiXEaDDkWmbUcRwXUwS6c9fmTa41XUqgIlR1Fd/A12rIZjzP2uOiWBHRdcAxb0Ll9ByVKe3VdstBktxl8HE66wp2sxMSqgYifxm4SwpTk30u9z+tCStVIJC+BP0pYxt33+fIXrUWFWgdh9aP38F8RGj+MRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVXj9M7i; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77EB51F000E9;
	Wed,  8 Jul 2026 15:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783522919;
	bh=XLPuuBResA7v+/Yop+kvuYhviCCG94N0IgICQrMvGGc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IVXj9M7iJBuNQ5M8bhcPy8NAxGN4zDis1L1MH13okpaeHstEvn42A8AVZ6J0UnKOv
	 CJhn20sisALWZUJsAon2y7aw8mVvcTTu7LoCrny8UTo5S6ggf3J9iRiXoLjdRu5x9Z
	 igMgsn3KdOzmDZswgKmYQYf/zLP/1TA5gp1tL0DBj2Nqdf4DGFdHwqeM5Z9OvHHBYT
	 npnfOmRdY5gjnhXFkkD/Mc74n0vH6n305BoNV3fY2RbiuyALFAXQP6aHNx8xRKQ9nH
	 DlNxtVdVAn6TgMzGNBPv/S8fILlgLQ5w1OhlMnlmWSLeuEgkDVKEp6zBDz6LmUoweX
	 5oT62BNTwoCPw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 09/20] media: imx355: pixel_rate never changes, so
 don't recompute
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dave Stevenson" <dave.stevenson@raspberrypi.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260708-media-imx355-v3-9-9df386a623d7@raspberrypi.com>
References: <20260708-media-imx355-v3-0-9df386a623d7@raspberrypi.com>
 <20260708-media-imx355-v3-9-9df386a623d7@raspberrypi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 15:01:59 +0000
Message-Id: <20260708150159.77EB51F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322983-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dave.stevenson@raspberrypi.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[raspberrypi.com:email,lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4E4C0727E84

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Double power-off on the probe error path leads to unbalanced clock=
 and regulator disables.
--

--- Patch [9]: [PATCH v3 09/20] media: imx355: pixel_rate never changes, so=
 don't recompute ---
commit 7b1b03fa06b5d964ffe6862ea61125935053b34e
Author: Dave Stevenson <dave.stevenson@raspberrypi.com>

media: imx355: pixel_rate never changes, so don't recompute

This commit removes the recalculation of the pixel rate in
imx355_set_pad_format, as it remains constant. It also removes the stored
pointer to the pixel_rate control in the imx355 structure since it is no
longer needed.

> diff --git a/drivers/media/i2c/imx355.c b/drivers/media/i2c/imx355.c
> index 2880e03b3f08a..2a97e076bff76 100644
> --- a/drivers/media/i2c/imx355.c
> +++ b/drivers/media/i2c/imx355.c
[ ... ]
> @@ -1180,9 +1175,8 @@ static int imx355_init_controls(struct imx355 *imx3=
55)
>  	pixel_rate =3D IMX355_LINK_FREQ_DEFAULT * 2 * 4;
>  	do_div(pixel_rate, 10);
>  	/* By default, PIXEL_RATE is read only */
> -	imx355->pixel_rate =3D v4l2_ctrl_new_std(ctrl_hdlr, &imx355_ctrl_ops,
> -					       V4L2_CID_PIXEL_RATE, pixel_rate,
> -					       pixel_rate, 1, pixel_rate);
> +	v4l2_ctrl_new_std(ctrl_hdlr, &imx355_ctrl_ops, V4L2_CID_PIXEL_RATE,
> +			  pixel_rate, pixel_rate, 1, pixel_rate);
> =20
>  	/* Initialize vblank/hblank/exposure parameters based on current mode */
>  	mode =3D imx355->cur_mode;

[Severity: High]
This is a pre-existing issue, but while reviewing this file I noticed a
potential double power-off bug in the probe error path.

If v4l2_async_register_subdev_sensor() fails in imx355_probe(), the code
jumps to the error handler:

drivers/media/i2c/imx355.c:imx355_probe() {
    ...
    pm_runtime_idle(imx355->dev);
    pm_runtime_set_autosuspend_delay(imx355->dev, 1000);
    pm_runtime_use_autosuspend(imx355->dev);

    ret =3D v4l2_async_register_subdev_sensor(&imx355->sd);
    if (ret < 0)
        goto error_media_entity_runtime_pm;
    ...
error_media_entity_runtime_pm:
    ...
error_power_off:
    imx355_power_off(imx355->dev);
    ...
}

Since pm_runtime_idle() synchronously suspends the device when the usage
count is zero (which calls imx355_power_off()), won't falling through to
error_power_off and calling imx355_power_off() again lead to unbalanced
clock and regulator disables?

If regulators or clocks are shared with other devices, could this extra
disable drop the use count to zero and inadvertently power off resources
that other active devices are relying on?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-media-imx3=
55-v3-0-9df386a623d7@raspberrypi.com?part=3D9

