Return-Path: <devicetree+bounces-322989-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id d+JLHgpsTmqcMQIAu9opvQ
	(envelope-from <devicetree+bounces-322989-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 17:26:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E1B727FA8
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 17:26:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YbPuPG4r;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322989-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322989-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6617E321A863
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 15:12:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54B42439328;
	Wed,  8 Jul 2026 15:10:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12787439323
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 15:10:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783523419; cv=none; b=R1FltA98sA2nyKEYp4WswCD+QhWgvcbdOAzC9p267cgaSfdx9J12NLY14vBZiw70JaqrGelK+Uwp3P7Z532fOcbDVdShO3kLXMeR3QfA3HGI83awIbZVpGnQrKiGMRVzgMyeRXVl8q3LlPYU5ekOD6h3ZmKQObNYEmJzNrzwQs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783523419; c=relaxed/simple;
	bh=aZsbrFPXO+hoxrsUi/vPPL9F6Y7+z2E3oD6TU7ZjzsY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=rBO0+cvjh+zB7XcAEYcigojO6Dz0Gumo7i6fueRYWuYOK/VhM+NEUPkQwK4AAa4q4tlSMLfEOpj3q5g61XjSb0YN+HAA/hy23AuvtqkrL8e1OAwIrWQcG33GVw50xj8u33BBSUZZqEYvNlRyJx9s+eFLAViH5PS9xpBT9EJk+Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbPuPG4r; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90C421F000E9;
	Wed,  8 Jul 2026 15:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783523417;
	bh=GdstgAazThvW+sIGNxYLZe5Wr1jo+ZRd7oZ6ycsA3wA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YbPuPG4rmVuulKCMAtSbMrESmScVckQ5JCrVD0oCnNie9DFUv7m0GwlRIGMKjfR2G
	 ijYKVqWaAd0m5mYgUjJPj2YXb7/7RNZ1JmoYrmkXI3N9Dvh67kTeEUBcNKNPJpzOg1
	 YI841OX6i4LyYF0CbYjwx3sD/LAJeY9GPG+wbGmIvngyA9IP3KnKJ2EFZtzczeHpGN
	 wHHRzM1loWpwNfdAZ0avzkc9vUWnl+uWhmSXBdmcRQOi0f4ncszxzUnFSbyaHSxaSV
	 oWIyH7QX9ip3UIfBO54D12SvczCT2csNV46FHkp+0d60uOC3ka+Wvf4Ll2CNIdYCxu
	 9AGqjHDvnZBMA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 19/20] media: imx355: Switch to using the subdev
 state
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dave Stevenson" <dave.stevenson@raspberrypi.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260708-media-imx355-v3-19-9df386a623d7@raspberrypi.com>
References: <20260708-media-imx355-v3-0-9df386a623d7@raspberrypi.com>
 <20260708-media-imx355-v3-19-9df386a623d7@raspberrypi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 15:10:16 +0000
Message-Id: <20260708151016.90C421F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322989-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dave.stevenson@raspberrypi.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,raspberrypi.com:email,smtp.kernel.org:mid,lists.linux.dev:replyto,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 67E1B727FA8

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] `__v4l2_ctrl_grab()` is called without holding the required contro=
l handler lock, leading to lockdep assertions and data races.
- [Medium] V4L2 control values (`vflip` and `hflip`) are accessed locklessl=
y during TRY state pad operations, introducing data races.
- [Medium] The error path for `v4l2_subdev_init_finalize()` bypasses `media=
_entity_cleanup()`.
--

--- Patch [19]: [PATCH v3 19/20] media: imx355: Switch to using the subdev =
state ---
commit 71948b5f6b6de08ab0164654fbf608971cc7cfe3
Author: Dave Stevenson <dave.stevenson@raspberrypi.com>

media: imx355: Switch to using the subdev state

The subdev state is now preferred rather than handling crop and format with=
in
the driver state, so switch the driver to using it.

> diff --git a/drivers/media/i2c/imx355.c b/drivers/media/i2c/imx355.c
> --- a/drivers/media/i2c/imx355.c
> +++ b/drivers/media/i2c/imx355.c

[ ... ]

> @@ -705,9 +675,7 @@ static int imx355_enum_mbus_code(struct v4l2_subdev *=
sd,
>  	if (code->index > 0)
>  		return -EINVAL;
> =20
> -	mutex_lock(&imx355->mutex);
>  	code->code =3D imx355_get_format_code(imx355);

[Severity: Medium]
Will this lead to unprotected reads of the vflip and hflip controls?
=20
When performing TRY operations, the V4L2 framework only holds the file hand=
le
lock, not the subdev active state lock (which aliases to the control handler
lock).
=20
Because the explicit driver mutex was removed here, it seems concurrent
operations could modify the control values while imx355_get_format_code()
reads them. Should the control handler lock be acquired before reading
these values?

> -	mutex_unlock(&imx355->mutex);
> =20
>  	return 0;
>  }

[ ... ]

> @@ -992,14 +916,10 @@ static int imx355_set_stream(struct v4l2_subdev *sd=
, int enable)
>  	__v4l2_ctrl_grab(imx355->vflip, enable);
>  	__v4l2_ctrl_grab(imx355->hflip, enable);

[Severity: High]
Does this execute __v4l2_ctrl_grab() without holding the required lock?
=20
Looking at __v4l2_ctrl_grab(), it asserts that the control handler lock is
held. Since the explicit driver mutex was removed and the subdev active
state lock is released before reaching this point (or not acquired at all
on the disable path), will this trigger a lockdep splat and introduce a
data race in the control flag modification?

> -	mutex_unlock(&imx355->mutex);
> -
>  	return ret;
> =20
>  err_rpm_put:
>  	pm_runtime_put_autosuspend(imx355->dev);
> -err_unlock:
> -	mutex_unlock(&imx355->mutex);
> =20
>  	return ret;
>  }

[ ... ]

> @@ -1351,6 +1267,13 @@ static int imx355_probe(struct i2c_client *client)
>  		goto error_handler_free;
>  	}
> =20
> +	imx355->sd.state_lock =3D imx355->ctrl_handler.lock;
> +	ret =3D v4l2_subdev_init_finalize(&imx355->sd);
> +	if (ret < 0) {
> +		dev_err_probe(imx355->dev, ret, "subdev init error\n");
> +		goto error_handler_free;

[Severity: Medium]
Does this error path leak the media entity pads?
=20
Earlier in imx355_probe(), media_entity_pads_init() is called. If
v4l2_subdev_init_finalize() fails, the code jumps to error_handler_free,
which bypasses the media_entity_cleanup() call located under the
error_media_entity_runtime_pm label. Should this jump to a label that
cleans up the media entity instead?

> +	}
> +
>  	/*
>  	 * Device is already turned on by i2c-core with ACPI domain PM.
>  	 * Enable runtime PM and turn off the device.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-media-imx3=
55-v3-0-9df386a623d7@raspberrypi.com?part=3D19

