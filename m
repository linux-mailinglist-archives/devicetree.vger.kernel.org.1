Return-Path: <devicetree+bounces-322987-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WE2nAFJpTmqzMAIAu9opvQ
	(envelope-from <devicetree+bounces-322987-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 17:14:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7606B727D50
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 17:14:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="l54L5/ek";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322987-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322987-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2AECC302A2DB
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 15:10:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CFBF439327;
	Wed,  8 Jul 2026 15:07:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7C1439321
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 15:07:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783523243; cv=none; b=BwUSZbhKMgmVkGlSJvQMr8Fg+8YcHl//ayYwhXggHfW0GcDO8wczbmcRIbEOUE0inIOTXKnw96b8gM8Dzs55tD4rfod4+ynrrtk3L2DsBhr6xoAQNRRN2NkApmSSlyuG96ap2HXuNp2KPy+ZZTiDg69y7Fq+OxW1ZapKKoJ9xbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783523243; c=relaxed/simple;
	bh=jxSdhwG+2Za+2QgKUC4e+LYBzI8OWfm0BWljdI5imjo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=cBN1Olpw1i6N9BX0DH8XKNoc4D66WDRfhLX2zdkhdh17PJpF9K2jw6O9cBstxUWk7NhX1RHAhOaFXgOMQfUfEybhvTwbg/TZyMb5y69KZQKv8MGkptk7eqa3YW1Q16hWINIgu6jQqwesSEy+3QSHet2Q0B1SuH8IRPJhaTxD9Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l54L5/ek; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BEE01F000E9;
	Wed,  8 Jul 2026 15:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783523241;
	bh=E0z/b+gSgwutLQxxwIKqE2XOy3F9BTx1E2rxLHr6cSQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=l54L5/ekxkxLh9tRZRHRQVtZZlTfWJFuClDY4o/Cubq+/Qh6Ic1E0j1oMvAr3u/bV
	 69QcJIXP12ZoVROIAv6UGr0yITFawnKkBNPF2H6S+7v8gyKZIORb9MR52unLb+3Mlp
	 R83FsIxoSHbZ8mmFvqfyUT7J+W9i5eYgzFaEbUI3GDrxKmgL4pmc0M6/OoMNvJn/P6
	 Gnon3l8TlLj4CDRdj43tBrmyqIiijgqzCaq7ziLtabT6haRaRK3QjdlkrhzNwhmoX4
	 Hql5fi4VhIxSXHsktuODfZ+wnMaM32E6dXz9PJLndU4nBSVCizv2kbceRcv4K6NIdy
	 FT2IEBgycJqlg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 15/20] media: imx355: Define the exposure offset, and
 use that define
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dave Stevenson" <dave.stevenson@raspberrypi.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260708-media-imx355-v3-15-9df386a623d7@raspberrypi.com>
References: <20260708-media-imx355-v3-0-9df386a623d7@raspberrypi.com>
 <20260708-media-imx355-v3-15-9df386a623d7@raspberrypi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 15:07:20 +0000
Message-Id: <20260708150721.4BEE01F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-322987-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dave.stevenson@raspberrypi.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,raspberrypi.com:email,lists.linux.dev:replyto,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7606B727D50

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The check `!pm_runtime_get_if_in_use(imx355->dev)` incorrectly tre=
ats `-EINVAL` as success, causing the driver to write to hardware that is l=
ikely powered off and perform an unbalanced `pm_runtime_put()`.
- [High] When switching frame formats, the maximum exposure limit might fai=
l to update to the new mode's geometry if the new format's `vblank_def` mat=
ches the current `vblank` value.
--

--- Patch [15]: [PATCH v3 15/20] media: imx355: Define the exposure offset,=
 and use that define ---
commit 271b8bad9a7b25d1cb2eae62528be12497b83823
Author: Dave Stevenson <dave.stevenson@raspberrypi.com>

media: imx355: Define the exposure offset, and use that define

This commit introduces a new define, IMX355_EXPOSURE_OFFSET, to represent
the 10-line difference between frame length and maximum exposure time. It
replaces the bare value of 10 in the driver's control calculations with
this new define.

> diff --git a/drivers/media/i2c/imx355.c b/drivers/media/i2c/imx355.c
> index 2bf8da7469fe5..3b86bd2e2e5e8 100644
> --- a/drivers/media/i2c/imx355.c
> +++ b/drivers/media/i2c/imx355.c
[ ... ]
> @@ -635,7 +636,7 @@ static int imx355_set_ctrl(struct v4l2_ctrl *ctrl)
>  	switch (ctrl->id) {
>  	case V4L2_CID_VBLANK:
>  		/* Update max exposure while meeting expected vblanking */
> -		max =3D imx355->cur_mode->height + ctrl->val - 10;
> +		max =3D imx355->cur_mode->height + ctrl->val - IMX355_EXPOSURE_OFFSET;
>  		__v4l2_ctrl_modify_range(imx355->exposure,
>  					 imx355->exposure->minimum,
>  					 max, imx355->exposure->step, max);
>  		break;
>  	}
> =20
>  	/*
>  	 * Applying V4L2 control value only happens
>  	 * when power is up for streaming
>  	 */
>  	if (!pm_runtime_get_if_in_use(imx355->dev))
>  		return 0;

[Severity: High]
This is a pre-existing issue, but does this correctly handle negative return
values?=20

If pm_runtime_get_if_in_use() returns -EINVAL (which occurs when PM runtime
is disabled or during driver unbind), the driver evaluates !(-EINVAL) as
false (0).

This bypasses the early return, leading to I2C writes to potentially
powered-off hardware, followed by a pm_runtime_put() that drops the usage
counter without a corresponding get. This unbalanced put can cause the
device usage count to prematurely reach 0 while other components hold
references.

[Severity: High]
This isn't a bug introduced by this patch, but does the exposure limit
correctly update when changing frame formats?

drivers/media/i2c/imx355.c:imx355_set_pad_format() {
    ...
		__v4l2_ctrl_modify_range(imx355->vblank, IMX355_VBLANK_MIN,
					 height, 1, vblank_def);
		__v4l2_ctrl_s_ctrl(imx355->vblank, vblank_def);
    ...
}

The driver relies on __v4l2_ctrl_s_ctrl() to trigger the vblank s_ctrl
callback (imx355_set_ctrl) to update the exposure maximum limit based on
the new mode's geometry.=20

However, if the new format's default vblank_def happens to equal the
currently set vblank value, the V4L2 framework considers the control
unchanged and short-circuits the callback. As a result, the exposure
maximum limit is not updated, potentially allowing users to set an exposure
time that exceeds the frame length.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-media-imx3=
55-v3-0-9df386a623d7@raspberrypi.com?part=3D15

