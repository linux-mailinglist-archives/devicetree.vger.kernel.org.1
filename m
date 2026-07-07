Return-Path: <devicetree+bounces-322280-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9sZyIP80TWpewgEAu9opvQ
	(envelope-from <devicetree+bounces-322280-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 19:18:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B5471E378
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 19:18:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=DIlyS+t9;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322280-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322280-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91F1D3027B4F
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 17:18:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B43643787F;
	Tue,  7 Jul 2026 17:18:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05322437873
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 17:18:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783444733; cv=none; b=fzbcM5vJMlv3ujC6yQbVULGKhhs9CUF2S4EOkUXEiReyuMyoLuh97okpYUJ15SqTOQwdTmYPqvzkrpWOSkjM5S2OLBaH9TSQAHAT067Ug4eWs0jWEyT9T/rr+lG1DtyTqBtdKnKYRzRqa+IWpqifpjZ7xy9KoLvGutarznSg/bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783444733; c=relaxed/simple;
	bh=czfIFKTtbe8VmanyY1nJOudIeWPZS1e9h6LRBeP3Ihk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=VoFMlqG+ax0mt084qORlMwDT3VUNg1VhFnnCY7o+wqXEEYN8+stAElaQeU6b3/fjTCPTF3sYuEqkzcngWEhIz21qpQXxHRSvTbgwm24/SCafn8Tst/ez9JL3rPJPzZaBDn7n6GkBkuZ+1P6EkeOFMCMFFkQOPX6bZ+zzX1LEm6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIlyS+t9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 638B71F000E9;
	Tue,  7 Jul 2026 17:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783444731;
	bh=0BtpDENLwl9cVwWl5LG9Sw4JXHhxT2I2WDhY/JXPYB0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DIlyS+t9eZk2ucbxd5alSiuVuHvyDE/wEKHKTrjZjQK+BjWGU87toSeCEDgFUzi4u
	 QPiiHyamhIs7uxlRTgMKOYwVZb53EUWU5tjPDrsFzt7hCN+hdWhh/7gphcVPxDdU2q
	 IL7FlKx8GPTdCrdNKHotPPXbYkAB92ACAEHxSlBJvB4CX/ohdK7jSxB/d7/Gbtqroj
	 UnhftBUkgwsvIaO/JAMkCp7bMRJK4E9W8H3oTbg+AE3rcPO+gBrwETtKKCt1NivlSd
	 z+190KRTvgv0sMlAzmNolfXAHyC0D/4kB44CcAElh6Nbk6b4r/JGQB9WiKh0cz79qm
	 xSP/akf2mQI1A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 10/20] media: imx355: Remove redundant fll_min, and
 implement fixed offset
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dave Stevenson" <dave.stevenson@raspberrypi.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260707-media-imx355-v2-10-1683ec07b897@raspberrypi.com>
References: <20260707-media-imx355-v2-0-1683ec07b897@raspberrypi.com>
 <20260707-media-imx355-v2-10-1683ec07b897@raspberrypi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 17:18:50 +0000
Message-Id: <20260707171851.638B71F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322280-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,raspberrypi.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D3B5471E378

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [Medium] The V4L2_CID_EXPOSURE control's maximum limit is not reliably up=
dated when the sensor mode changes, causing incorrect exposure limits to be=
 exposed to userspace.
--

--- Patch [10]: [PATCH v2 10/20] media: imx355: Remove redundant fll_min, a=
nd implement fixed offset ---
commit bafcea33e8f344729e8a8a61b9272b5555ee1f02
Author: Dave Stevenson <dave.stevenson@raspberrypi.com>

media: imx355: Remove redundant fll_min, and implement fixed offset

The patch removes the redundant fll_min from imx355_mode configurations.
It sets the vblank control minimum to a fixed 20 lines to improve the
maximum achievable frame rate.

> diff --git a/drivers/media/i2c/imx355.c b/drivers/media/i2c/imx355.c
> index 9d977bac23b6c..354092295b7c3 100644
> --- a/drivers/media/i2c/imx355.c
> +++ b/drivers/media/i2c/imx355.c

[ ... ]

> @@ -888,10 +873,9 @@ imx355_set_pad_format(struct v4l2_subdev *sd,
>  		/* Update limits and set FPS to default */
>  		height =3D imx355->cur_mode->height;
>  		vblank_def =3D imx355->cur_mode->fll_def - height;
> -		vblank_min =3D imx355->cur_mode->fll_min - height;
>  		height =3D IMX355_FLL_MAX - height;
> -		__v4l2_ctrl_modify_range(imx355->vblank, vblank_min, height, 1,
> -					 vblank_def);
> +		__v4l2_ctrl_modify_range(imx355->vblank, IMX355_VBLANK_MIN,
> +					 height, 1, vblank_def);
>  		__v4l2_ctrl_s_ctrl(imx355->vblank, vblank_def);

[Severity: Medium]
This isn't a bug introduced by this patch, but does this skip updating the=
=20
EXPOSURE control's maximum limit if the new default VBLANK matches the=20
current VBLANK value?

If userspace sets VBLANK to a value (e.g., 151 in Mode 3) and then switches=
=20
to a new mode (e.g., Mode 0) where the new default VBLANK exactly matches=20
the current VBLANK value, the V4L2 core optimization will skip calling the=
=20
s_ctrl callback.

Since the mode's height changed, the EXPOSURE limits must be recalculated.
Because the s_ctrl callback (imx355_set_ctrl) is skipped, does this cause=20
incorrect exposure limits to be exposed to userspace until streaming starts?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707-media-imx3=
55-v2-0-1683ec07b897@raspberrypi.com?part=3D10

