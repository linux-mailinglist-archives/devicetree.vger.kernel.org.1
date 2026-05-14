Return-Path: <devicetree+bounces-297310-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKBMD4tfBWqxVgIAu9opvQ
	(envelope-from <devicetree+bounces-297310-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 07:37:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9301253E075
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 07:37:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DBDC83010531
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 05:37:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 827462BE05E;
	Thu, 14 May 2026 05:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5KxFgaw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE0D1EB5FD
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 05:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778737032; cv=none; b=s4mExLgOOBknF/xM465fbgU7Pp3BkgyLrteMS312EKYFvck2ENuRGOGFKkt5cg6gCHvvUEjnxSnnKriDMYn5fAiOhA1/wOuHxfX0gFBy8JO+5GxwrP6sIyA/znJhd171IL8Sj6StsPAhH8nnJB3QJk4teeNn+iNjSyVdCoyuAMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778737032; c=relaxed/simple;
	bh=SQlMgzzhoNxc/8qkmsF9mUb7S5tyVZaHECYTE5yesGo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jwUNg0rEooCCf5rkGpAseCTLVNYam0eilv5OVWFMSbIs/xMGY9FvKv1ZYvfU8CAFv7YM5Tz0E/QEmONPNAXfehdAur+Qtn2IwLIEiDEigMLNxR9Y7R3rrMKibBhjZyAmspi52NPI9G0MmFhIE5xv1pYFgCc8hA4o67H+zfRJq74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5KxFgaw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7122C2BCB7;
	Thu, 14 May 2026 05:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778737032;
	bh=SQlMgzzhoNxc/8qkmsF9mUb7S5tyVZaHECYTE5yesGo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=u5KxFgawqvd3YDBAgDJH6tlV/Z7JKiFdcOMHfvNKu/Bua9M1ztyNAfGbu8/ybP0J6
	 +koAgtcdR1R2HIR5yzoxay4wfZNGqtgb1OjdneiXZz5lI3AuDmZEp7mWm4SdNwSuuI
	 iTO+815drDBIvKnIPTEChglN6pjpWaaXvPOVQVVJRJ6COWuIE8Z9puLjVNIUKa8t+p
	 Rwg4cw94oqJ07kIaQ4ilcO5Ie83ih3SFZFWdg4VSExaAOZcmm57TlGRQlk6eZY8PlL
	 bn7roQ+yVVIwVEBmRi5CGcazECbJDC/GpT0vybMXZWNcyeknJGB7ItqUnR0t0a4ky0
	 IVlcLORekbq5A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V6 07/11] iio: imu: inv_icm42607: Add Temp Support in
 icm42607
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chris Morgan" <macroalpha82@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260512221634.256747-8-macroalpha82@gmail.com>
References: <20260512221634.256747-8-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 05:37:11 +0000
Message-Id: <20260514053711.E7122C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 9301253E075
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297310-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The temperature sensor and high-power clock are left enabled indef=
initely after a one-shot read.
--

commit 8d77083c202fdb58f8003d737a9eb92b429cb188
Author: Chris Morgan <macromorgan@hotmail.com>

iio: imu: inv_icm42607: Add Temp Support in icm42607

This commit adds functions for reading temperature sensor data.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_temp.c b/drivers/i=
io/imu/inv_icm42607/inv_icm42607_temp.c
> new file mode 100644
> index 0000000000000..7e9cb072a0110
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_temp.c

[ ... ]

> +static int inv_icm42607_temp_read(struct inv_icm42607_state *st, s16 *te=
mp)
> +{
> +	struct device *dev =3D regmap_get_device(st->map);
> +	__be16 *raw;
> +	int ret;
> +
> +	PM_RUNTIME_ACQUIRE_AUTOSUSPEND(dev, pm);
> +	if (PM_RUNTIME_ACQUIRE_ERR(&pm))
> +		return -ENXIO;
> +
> +	guard(mutex)(&st->lock);
> +
> +	ret =3D inv_icm42607_set_temp_conf(st, true, NULL);
> +	if (ret)
> +		return ret;
> +
> +	raw =3D &st->buffer[0];
> +	ret =3D regmap_bulk_read(st->map, INV_ICM42607_REG_TEMP_DATA1, raw, siz=
eof(*raw));
> +	if (ret)
> +		return ret;
> +
> +	*temp =3D be16_to_cpup(raw);
> +	if (*temp =3D=3D INV_ICM42607_DATA_INVALID)
> +		return -EINVAL;
> +
> +	return 0;
> +}

Does this leave the temperature sensor and high-power clock enabled
indefinitely after a one-shot read?

It looks like inv_icm42607_set_temp_conf() is called with true before
the read, which enables the sensor and disables the low-power RC oscillator,
but the sensor is never disabled again before returning.

While pm_runtime_autosuspend might eventually power down the device,
if another operation (like an accelerometer read) keeps the PM runtime acti=
ve
before the autosuspend delay expires, the autosuspend will not happen.

Because other configuration functions preserve the existing st->conf.temp_en
state, the high-power clock and temperature sensor would remain permanently
active, leading to an unintended power draw.

Should there be a matching call to inv_icm42607_set_temp_conf() with false
after the read is complete?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512221634.2567=
47-1-macroalpha82@gmail.com?part=3D7

