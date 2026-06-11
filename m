Return-Path: <devicetree+bounces-310634-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2eBVK38gK2oW3AMAu9opvQ
	(envelope-from <devicetree+bounces-310634-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 22:54:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0093A675527
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 22:54:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UnXdyI1+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310634-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310634-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F3D63347799
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 20:46:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDE9E376A14;
	Thu, 11 Jun 2026 20:46:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73C8379C4A
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 20:46:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781210765; cv=none; b=LcWo9uhB8SPySh4MCDc8UNQGRFqyUrYQg7P995uMrAEyB3qlwjhk0VnxOxfZlXWiSeJGJscIzP1i7YCysiGihZPdL50h9xUkR6pMT6wx7680dKOklvJvuy26akNCIK86+X93N8RQKxIlHolWta8cIw/tALaZiWuVUnMjnm8EBXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781210765; c=relaxed/simple;
	bh=iKqGxIB5UzLvMfuyeiFXr0vwO/XhRboXn6Kp9dw7NR4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jvUNb8vPXTpOYmH76rEQ8hH5sccG9fC0Af9xCaGnf4VCtDZtrHZGclyDWbLXic5dl0pc3s6HEx7Yq6XKLlLh+qV2lQNzPC+gV2ZR2Fd/omySv++6G6/iJWuKhDtuIiIDu5dYScWx5DTqklLox1RN7L7t8S60juj4wmPlo2tQx8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UnXdyI1+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FC611F000E9;
	Thu, 11 Jun 2026 20:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781210764;
	bh=I2gb5bcGZ6C0RdFe1tg/RbbzcRCMKeSvDfNMZsYk54s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UnXdyI1+ezt27SB9dZzVx0/T9Z0kPvzx4B2jCuyqP2Fv+9guiEpAuGasgmADRkMTt
	 K3lf8F2h0r35UbkxHqpwbDevnsX2MpUgugAKdNRU8odqh8v7Q2k6DOUUH/eEAtMf99
	 gBy6PxXwvtirjGYY6ohw3L8JbnKjUOgl3d9D4sCx1AYO9drsIktzgl6I1E0DOpVNg+
	 LBlGyI/ZeebEVRkFB7xsdoiRVVANw4nxGYAYtfWoY8Z2uS6wvx0KLG5X9FisucQQUB
	 xP6z+DYl/JzfiExTDzRdR4j+FFkNq9uhl4yoiSOoxNdZtWOIXkBztTTbh0TJM3y0BQ
	 qm4Bi4cmvjUcg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V12 5/9] iio: imu: inv_icm42607: Add PM support for
 icm42607
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chris Morgan" <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260611202607.85376-6-macroalpha82@gmail.com>
References: <20260611202607.85376-6-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 20:46:03 +0000
Message-Id: <20260611204604.2FC611F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-310634-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0093A675527

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The driver incorrectly waits for the sensor's startup stabilizat=
ion time (up to 30ms) when powering OFF the sensor, adding unnecessary late=
ncy to the runtime suspend path.
--

commit f784e6048473d95cc560f84d8b8134e476cbc4ad
Author: Chris Morgan <macromorgan@hotmail.com>

iio: imu: inv_icm42607: Add PM support for icm42607
   =20
Add power management support for the ICM42607 device driver.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/i=
io/imu/inv_icm42607/inv_icm42607_core.c
> index 5d40f1ee53d6d..8073317088ec0 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
[ ... ]
> +static int inv_icm42607_set_pwr_mgmt0(struct inv_icm42607_state *st,
> +				      enum inv_icm42607_sensor_mode gyro,
> +				      enum inv_icm42607_sensor_mode accel,
> +				      bool temp, unsigned int *sleep_ms)
> +{
[ ... ]
> +	sleepval_ms =3D 0;
> +	if (temp && !oldtemp)
> +		sleepval_ms =3D max(sleepval_ms, INV_ICM42607_TEMP_STARTUP_TIME_MS);
> +
> +	if (accel !=3D oldaccel)
> +		sleepval_ms =3D max(sleepval_ms, INV_ICM42607_ACCEL_STARTUP_TIME_MS);
> +
> +	if (gyro !=3D oldgyro)
> +		sleepval_ms =3D max(sleepval_ms, INV_ICM42607_GYRO_STARTUP_TIME_MS);
> +
> +	if (sleep_ms)
> +		*sleep_ms =3D sleepval_ms;
> +	else if (sleepval_ms)
> +		fsleep(sleepval_ms * USEC_PER_MSEC);
> +
> +	return 0;
> +}

[Severity: Medium]
Does this unintentionally add a delay when powering off the sensors?

While the temperature check correctly verifies if the sensor is being turne=
d on
(temp && !oldtemp), the accel and gyro checks only verify that the state has
changed (accel !=3D oldaccel).

When inv_icm42607_runtime_suspend() calls this function to power down the
sensors:

[ ... ]
> +static int inv_icm42607_runtime_suspend(struct device *dev)
> +{
> +	struct inv_icm42607_state *st =3D dev_get_drvdata(dev);
> +
> +	guard(mutex)(&st->lock);
> +
> +	/* save sensors state */
> +	st->suspended.gyro =3D st->conf.gyro.mode;
> +	st->suspended.accel =3D st->conf.accel.mode;
> +	st->suspended.temp =3D st->conf.temp_en;
> +
> +	return inv_icm42607_set_pwr_mgmt0(st, INV_ICM42607_SENSOR_MODE_OFF,
> +					  INV_ICM42607_SENSOR_MODE_OFF, false,
> +					  NULL);
> +}

The accel !=3D oldaccel and gyro !=3D oldgyro conditions will evaluate to t=
rue if
the sensors were previously active. This appears to cause the runtime suspe=
nd
path to needlessly sleep for the startup stabilization time (up to 30ms) wh=
ile
powering down.

Could the delay logic be updated to only sleep when the new mode is not
INV_ICM42607_SENSOR_MODE_OFF?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611202607.8537=
6-1-macroalpha82@gmail.com?part=3D5

