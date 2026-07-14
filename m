Return-Path: <devicetree+bounces-326088-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Dut1A00XVmoizAAAu9opvQ
	(envelope-from <devicetree+bounces-326088-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:02:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2C8753ADD
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:02:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="HJZK/Vm8";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326088-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326088-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 893A030D341A
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:00:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF37037755A;
	Tue, 14 Jul 2026 11:00:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5BD4294A10;
	Tue, 14 Jul 2026 11:00:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784026856; cv=none; b=JuGi8cGfYZPctzd0bMtfR3rsCmeMb1YMFSs6df3qsrT6B/LJhUZlnvjbhQWywVFxWk4VeEkgs4e+6sklH5BnW/T72JQEsKJ0Hc4TYD9zkfkMZjbHSNc3DryolQ62Zf3IcgdnHnuHV34EI7g+lsNBKq9+aEnS3qfYIvidi9/DMas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784026856; c=relaxed/simple;
	bh=9+sNkwAq9kRCKx7ZY392GeL5V1K5ZZsoIADh2kmbaB4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oK+N0ZuJ5hPCd8+NO9lZYQDK+KZPOXRTqM1HoTZBF+Ntj21biXJJOZ/IXJ7EZswQhD+j9Us5xwazZppiCwB3v7p965rV9KSInuskXcN9J9zUsHXKV9KFtsakdlxmc6N2qFsuF4xmIkxQAu7tTdWpQDlu8tczDnyY2GvNcT1OTZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJZK/Vm8; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECD931F000E9;
	Tue, 14 Jul 2026 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784026855;
	bh=B+eOLbPEonGCAyuU4cP6n+fpPeNKsxzlfSHfKj7J+b8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HJZK/Vm8GJRdqm8JYO7bkhL7FLVCL4uHBQLdZIhdpDTZCiYEnsao01UPdItZbLO0a
	 rtHd+dH+VCfuWalfG7vQwHuAJ4jg/4pzUggd2J6YOBV784lhwMuhqzb7WnX6v2z9F2
	 9uz2i6fzCWZOkUAq4JN0fVq6LtDkPH7beeoz+iYWKbzwkucXj5ojcFxhtonHCk7A42
	 uP5LnVAnG6oUkeSTDJcqkXAbyrYuK+QA7XOM9HReKakJCWS4MZrO5C54diabEMhStG
	 ud5ycl1HKcUAUbPkz+Ao2+hCxzGkiw4A42dbiPlhGtjtxBOl5UFBZy5Fi+9O4Z5EcV
	 J+SzGMfRVc3MA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 3/3] thermal/drivers/imx: Add calibration offset
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Haoning CHENG" <Haoning.CHENG@cn.bosch.com>
Cc: Frank.Li@kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260714-b4-symana21-11221-imx-thermal-support-upstream-6-18-v8-3-d54d8690e16e@cn.bosch.com>
References: <20260714-b4-symana21-11221-imx-thermal-support-upstream-6-18-v8-0-d54d8690e16e@cn.bosch.com>
 <20260714-b4-symana21-11221-imx-thermal-support-upstream-6-18-v8-3-d54d8690e16e@cn.bosch.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 11:00:54 +0000
Message-Id: <20260714110054.ECD931F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-326088-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bosch.com:email,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:Haoning.CHENG@cn.bosch.com,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F2C8753ADD

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing pm_runtime_put() on the error path in imx_get_temp() cause=
s a runtime PM leak.
- [High] Missing pm_runtime_put() on the error path in imx_set_trip_temp() =
causes a runtime PM leak.
--

--- Patch [3]: [PATCH v8 3/3] thermal/drivers/imx: Add calibration offset s=
upport ---
commit a5acc3eb3799b4fe9bc9d1fba54049882d4b5c06
Author: Haoning CHENG <Haoning.CHENG@cn.bosch.com>

thermal/drivers/imx: Add calibration offset support

This commit adds support for an optional calibration offset to align
reported CPU temperatures with board-level measurements. It reads the
fsl,temp-calibration-offset-millicelsius property from the device tree
and applies it symmetrically to the threshold and temperature readings
for i.MX6/6SX/7D devices.

> diff --git a/drivers/thermal/imx_thermal.c b/drivers/thermal/imx_thermal.c
> index 168069a16e930..87ae2e40cc6fe 100644
> --- a/drivers/thermal/imx_thermal.c
> +++ b/drivers/thermal/imx_thermal.c
[ ... ]
> @@ -283,6 +290,7 @@ static int imx_get_temp(struct thermal_zone_device *t=
z, int *temp)
>  		*temp =3D (n_meas - data->c1 + 25) * 1000;
>  	else
>  		*temp =3D data->c2 - n_meas * data->c1;
> +	*temp +=3D data->calibration_offset;
> =20
>  	/* Update alarm value to next higher trip point for TEMPMON_IMX6Q */
>  	if (data->socdata->version =3D=3D TEMPMON_IMX6Q) {

[Severity: High]
This isn't a bug introduced by this patch, but while reviewing this file I
noticed a potential issue earlier in imx_get_temp(). Does the early return=
=20
for invalid sensor data leak a PM runtime reference?

Earlier in the function, it calls pm_runtime_resume_and_get():

    ret =3D pm_runtime_resume_and_get(data->dev);
    if (ret < 0)
        return ret;

    regmap_read(map, soc_data->temp_data, &val);

    if ((val & soc_data->temp_valid_mask) =3D=3D 0)
        return -EAGAIN;

If the sensor is polled before data is valid and it takes this -EAGAIN
path, shouldn't there be a matching pm_runtime_put(data->dev) to prevent
the device and its power domain from permanently remaining awake?

[Severity: High]
This is also a pre-existing issue, but the same pattern appears to exist
in imx_set_trip_temp() during bounds checking. Does this code leak the
PM runtime usage counter?

drivers/thermal/imx_thermal.c:imx_set_trip_temp() {
    ...
    ret =3D pm_runtime_resume_and_get(data->dev);
    if (ret < 0)
        return ret;

    if (temp < 0 || temp > trips[IMX_TRIP_CRITICAL].temperature)
        return -EINVAL;
    ...
}

If a user writes an out-of-bounds temperature, this early return misses
the pm_runtime_put(data->dev) call. Could this be updated to properly
release the reference on this error path?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-b4-symana2=
1-11221-imx-thermal-support-upstream-6-18-v8-0-d54d8690e16e@cn.bosch.com?pa=
rt=3D3

