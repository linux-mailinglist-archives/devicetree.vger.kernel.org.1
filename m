Return-Path: <devicetree+bounces-322986-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LVdQNf9qTmpFMQIAu9opvQ
	(envelope-from <devicetree+bounces-322986-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 17:21:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F848727EC3
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 17:21:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=iRC4oKZp;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322986-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322986-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 31DE93232B57
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 15:10:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B16CB4307A4;
	Wed,  8 Jul 2026 15:06:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AD3D42DA5A
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 15:06:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783523164; cv=none; b=bhJghHku6hHn+vUgUd5fWX/rXLj45aM2G10NtueyVgWOQEOgUiJGWhUDSQVuV0k1XLmTgrDFuSCWiTOETtByKaoBZwrWGuG9mYd5G7+aZgaeZ09dvzAxdw1zWe8RiYV7kf7gGkAFqpsTfE2YeDo+7K2+suJST/2zIQuY25X7A/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783523164; c=relaxed/simple;
	bh=Mfp3/umRbXDoAzwugI+XaLo9O5tOTt9K4xrXQKdo9HE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=FjVJdWuChVBYVU9tL47m5yIU+C9lr8LaUF3rGnu/03xkhtE76jqaU57+dQfO+1airzaEa+SlBbXJigJoLCmeLjD6AdK+9H+3pAANo/ffDMPS0/gnaGL/vx3YJ7XNy1fxah8x9GoN7vSdENFkhkfIQXPMC4RKVLxAIaD6ZimYGaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRC4oKZp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E58071F000E9;
	Wed,  8 Jul 2026 15:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783523163;
	bh=1QmN50MPWx49JAZv4ZKVx4NOPZcnUwPFqdX7g8iGSJo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iRC4oKZp+pDdQA5yqZe3chS8wiemPcP2JaOBPsJ30zDytGrFhwWXZ0VoR+TluokrC
	 iAcHXMUzNXeB5Io50g7nPZk1i+bIjFBziw0FNEpTC0zcyaRIL3FXAGYP5AAAA+T2QV
	 YCCcsUe7OrTs+PKlRx5quUWl4L+G2SmaN8p82l+NC7CGyVhTIxBGOFwpqfrGX7XCAU
	 BIT+VIAo9TmWWAe947hmE42PFLa5nW3dtiX+y5R232faBi86vcrrfD+gAV0Ukx90Sy
	 Mrmg9bsUzOhyhE22KUpW2KHwDg+opk5faEfrmZ3SE+mXjCbaxX0y0Wc/vvOYZAwtY6
	 hyiJeuA6hVkSQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 12/20] media: imx355: Use pm_runtime
 autosuspend_delay
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dave Stevenson" <dave.stevenson@raspberrypi.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260708-media-imx355-v3-12-9df386a623d7@raspberrypi.com>
References: <20260708-media-imx355-v3-0-9df386a623d7@raspberrypi.com>
 <20260708-media-imx355-v3-12-9df386a623d7@raspberrypi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 15:06:02 +0000
Message-Id: <20260708150602.E58071F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-322986-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,raspberrypi.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F848727EC3

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The autosuspend optimization is bypassed during driver probe bec=
ause `pm_runtime_idle()` is called before autosuspend is enabled.
--

--- Patch [12]: [PATCH v3 12/20] media: imx355: Use pm_runtime autosuspend_=
delay ---
commit c848098f5125edf42a401c819297cfe0a783116c
Author: Dave Stevenson <dave.stevenson@raspberrypi.com>

media: imx355: Use pm_runtime autosuspend_delay

This commit introduces pm_runtime autosuspend functionality to the imx355
sensor driver. It configures a 1000ms autosuspend delay to prevent=20
unnecessary power cycling between operations.

> diff --git a/drivers/media/i2c/imx355.c b/drivers/media/i2c/imx355.c
> index ee1f41a66a0b6..f01a1a5ae7c9a 100644
> --- a/drivers/media/i2c/imx355.c
> +++ b/drivers/media/i2c/imx355.c

[ ... ]

> @@ -1436,6 +1436,8 @@ static int imx355_probe(struct i2c_client *client)
>  	pm_runtime_set_active(imx355->dev);
>  	pm_runtime_enable(imx355->dev);
>  	pm_runtime_idle(imx355->dev);
> +	pm_runtime_set_autosuspend_delay(imx355->dev, 1000);
> +	pm_runtime_use_autosuspend(imx355->dev);

[Severity: Medium]
Does this sequence cause the device to power off immediately during probe?

Because pm_runtime_idle() is called before pm_runtime_use_autosuspend(), the
device usage count is 0 and autosuspend is not yet enabled. This seems to=20
trigger a synchronous suspend right away, bypassing the 1000ms delay=20
optimization intended by this patch.

Would it be better to reorder these so the autosuspend properties are=20
configured before triggering the idle check?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-media-imx3=
55-v3-0-9df386a623d7@raspberrypi.com?part=3D12

