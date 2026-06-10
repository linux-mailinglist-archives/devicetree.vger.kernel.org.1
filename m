Return-Path: <devicetree+bounces-309990-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vMERG2apKWpzbgMAu9opvQ
	(envelope-from <devicetree+bounces-309990-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 20:13:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC25B66C30E
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 20:13:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=lXNQF1iJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309990-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309990-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2964B30584A9
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:10:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF50A34D4EA;
	Wed, 10 Jun 2026 18:10:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9D7434B1B0
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 18:10:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781115052; cv=none; b=Vedq6UtWKfUVhkQrdiJBvYbAu0O+MBAQsMFLDt/Cj7UoUsos8gx8HgBSWORx3QI79K+pb/Tg7idmDSD8bjGeSdKPn/h3Tg/fxy5CQ2I4jN9eJ/YTbD3wGSLgOgv1wcx8XcUlk+5FitGBCmqvQsEi3gzs3x3riWTokbbje5dbjZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781115052; c=relaxed/simple;
	bh=idCqPoKV4lmFetOSlf24Y3hNwoJ4RaKtobqNF+QWOv0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=I4GtEj+ZKageZSDoj5dIKX2Or9rS1OzP9mVYwXma+vySSEm4T4/nVfBdApytZ4x5+cqD5Xc/Nqb2l9ndzUONkO7toU+NzPk3uYWg2Ejc/w8gxZXkJl5dhMLd6dEA5x0pojV4fiaMK5GSqN5MmaGKb7b3oKmSsrvysuXxmhQWChg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXNQF1iJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2991A1F00893;
	Wed, 10 Jun 2026 18:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781115051;
	bh=27ZQfl8sz+uVeISilrymjEiFD2S1U+S9ZaXU/IxF4iA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lXNQF1iJu5FaUjRExBjeI9vDQl0YhVkl2Jog2y1tnltPbonq+UcJ60tmP6j1TWOMN
	 g+j8bHwlJFm6LfkmAIhXxu8ijNAprC6OnGy96o7nciUDWQixUSVYy4G56/hZCj1j3+
	 8W2zHcKZgJiX6D2KyeQ0RlVxr7vQ3GQOb9HVHpWwUKzosJzLao/39+7L9fxmx6QKuK
	 l6jZUVk8kmkEw14sTuTtL7HctVMJ8KfLQ6osRgJOM+enIakvxNafY2iYcVxIVlp/lO
	 nYwoil34s7tGUjQadZj/xGLYzTsnbG57rnFrkGlB9jTqBUiQ58aTeT6gDZmJOxY2lf
	 7JuGQqcPwJmBQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V11 7/9] iio: imu: inv_icm42607: Add Accelerometer for
 icm42607
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chris Morgan" <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260610175455.19006-8-macroalpha82@gmail.com>
References: <20260610175455.19006-8-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 18:10:50 +0000
Message-Id: <20260610181051.2991A1F00893@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309990-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BC25B66C30E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Missing `iio_device_claim_direct()` protection when changing the=
 sampling frequency (ODR) in `inv_icm42607_accel_write_raw()`.
--

commit 09acc28167411b3db95fd7b8d7918637d445b62b
Author: Chris Morgan <macromorgan@hotmail.com>

iio: imu: inv_icm42607: Add Accelerometer for icm42607

This commit adds support for the accelerometer sensor to the icm42607
driver.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c b/drivers/=
iio/imu/inv_icm42607/inv_icm42607_accel.c
> new file mode 100644
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c

[ ... ]

> +static int inv_icm42607_accel_write_raw(struct iio_dev *indio_dev,
> +					struct iio_chan_spec const *chan,
> +					int val, int val2, long mask)
> +{
> +	int ret;
> +
> +	if (chan->type !=3D IIO_ACCEL)
> +		return -EINVAL;
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_SCALE:
> +		if (!iio_device_claim_direct(indio_dev))
> +			return -EBUSY;
> +		ret =3D inv_icm42607_accel_write_scale(indio_dev, val, val2);
> +		iio_device_release_direct(indio_dev);
> +		return ret;
> +	case IIO_CHAN_INFO_SAMP_FREQ:
> +		return inv_icm42607_accel_write_odr(indio_dev, val, val2);

[Severity: Medium]
Should this IIO_CHAN_INFO_SAMP_FREQ case be protected by
iio_device_claim_direct() and iio_device_release_direct() similar to the
IIO_CHAN_INFO_SCALE case above it?

While the driver currently only supports INDIO_DIRECT_MODE, omitting the lo=
ck
here leaves the state management inconsistent. If buffered mode is added in
the future, modifying the sampling frequency while the buffer is actively
streaming could lead to stream breakage or corrupted timestamps.

> +	default:
> +		return -EINVAL;
> +	}
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610175455.1900=
6-1-macroalpha82@gmail.com?part=3D7

