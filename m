Return-Path: <devicetree+bounces-309993-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2q2RGoGqKWq8bgMAu9opvQ
	(envelope-from <devicetree+bounces-309993-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 20:18:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EBE66C34F
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 20:18:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=m2j4hFsm;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309993-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309993-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4DE263186832
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:15:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75419261B91;
	Wed, 10 Jun 2026 18:15:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1D230B51D
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 18:15:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781115331; cv=none; b=jcgqhz1Yucnxfndw9mHptmxWjhj6bftvNWVE/i8bQ8c/YkQKoxONf1L3awAiOHSG2b32o8480MnbTwj3eJGweHKvzCTylFoayutIdXr76Myyvv4UBAiiWYeaT2vOT02v9bMkiwIeiQp7ivqRhi3FteamRgaLYNOBcws3Wpehnfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781115331; c=relaxed/simple;
	bh=cFuUIwYzqs1e1/pMl40kr2foyoUM5Z1LQcWWuSdyOaY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Pj3DWpgETS0Y32+ZG+W3V9UbCKQQsxEPKg9RPPxyBbVJnZa67LE1v4MKasVE8dq4kU2fMDkYmP8SFEQ1KHqf4xpVpS1uAxVcOzcIWr9U8bNjbo8CYhMyb0jC3cObaZwW9JmTb/zE2fcZ9XsM3vmEtUa33SNDOL1x2b2L4KI7G90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2j4hFsm; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20D951F00893;
	Wed, 10 Jun 2026 18:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781115330;
	bh=kmJRalaEknTMbkQEx0N5EqGNPSWbYoT4YfnCJ32xtXk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=m2j4hFsm8qsndq0glnOF7g9uQQXdxW5fPJNm7+/TxnE1gJomzE+8a1Irg+Il/HDf9
	 kEpObCAjcMEFwg0wGb5Ecuqn6I8M0RR8UcDysay1bwIVWXQ6ylpIVWOjXMX9vwcHue
	 1D5iTTrhoWP3+HcbMcGsEIuupNAVsyPGf7D0iaqzSP1i3kGV8hCEbgg60ERUuAd/nE
	 dy6uN5+PXCwoZW94ZsAN6phzoElwFE4L9u0miLhk4/3cEy5XHGXUupVvSW2mL2+tG4
	 f9X1j31NvRtEJtvzCm/7/2SSXmrItiARPHBLyzpqhqhCFlay6e6ALyuR5f7BHXakqY
	 FhGmgz1RLnX0w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V11 6/9] iio: imu: inv_icm42607: Add Temp Support in
 icm42607
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chris Morgan" <macroalpha82@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260610175455.19006-7-macroalpha82@gmail.com>
References: <20260610175455.19006-7-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 18:15:29 +0000
Message-Id: <20260610181530.20D951F00893@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309993-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B3EBE66C34F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The temperature sensor is permanently enabled after the first re=
ad, causing continuous power drain, preventing low-power accelerometer cloc=
ks, and forcing unnecessary startup delays on subsequent sensor reads.
--

commit 910deb05735ec6ed5869092361616349ba5cc0f7
Author: Chris Morgan <macromorgan@hotmail.com>

iio: imu: inv_icm42607: Add Temp Support in icm42607

Add functions for reading temperature sensor data.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_temp.c b/drivers/i=
io/imu/inv_icm42607/inv_icm42607_temp.c
> new file mode 100644
> index 0000000000000..55260082a19ed
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
> +	ret =3D PM_RUNTIME_ACQUIRE_ERR(&pm);
> +	if (ret)
> +		return ret;
> +
> +	guard(mutex)(&st->lock);
> +
> +	ret =3D inv_icm42607_set_temp_conf(st, true, NULL);
> +	if (ret)
> +		return ret;
> +
> +	raw =3D &st->buffer[0];
> +	ret =3D regmap_bulk_read(st->map, INV_ICM42607_REG_TEMP_DATA1,
> +			       raw, sizeof(*raw));
> +	if (ret)
> +		return ret;
> +
> +	*temp =3D be16_to_cpup(raw);
> +	if (*temp =3D=3D INV_ICM42607_DATA_INVALID)
> +		return -EINVAL;
> +
> +	return 0;
> +}

[Severity: Medium]
Does this leave the temperature sensor permanently enabled?

Looking at inv_icm42607_temp_read(), the sensor is enabled with
inv_icm42607_set_temp_conf(st, true, NULL) but is never disabled before the
function returns on either the success or error paths.

Because st->conf.temp_en remains true, it seems this would prevent the
setting of the INV_ICM42607_PWR_MGMT0_ACCEL_LP_CLK_SEL bit in
inv_icm42607_set_pwr_mgmt0(), permanently disabling the accelerometer
low-power clock.

Would this also force a 77ms startup delay on every subsequent pm_runtime
resume?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610175455.1900=
6-1-macroalpha82@gmail.com?part=3D6

