Return-Path: <devicetree+bounces-325795-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LbhiOhVlVWp0nwAAu9opvQ
	(envelope-from <devicetree+bounces-325795-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 00:22:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E15D74F7A5
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 00:22:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZK1H5uUe;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325795-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325795-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E0136303A246
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 22:22:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CE50383305;
	Mon, 13 Jul 2026 22:22:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F32376481
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 22:22:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783981331; cv=none; b=R9Tnt1IgdF9TBFshp8D4lwnynuwM1y7c84Cb4GkZoeR2ma4q/AHzT0tPz2uWAmiVKZZ314lRd05tCQIjLTEq6DS1ZKVnAnunuGIif3VpFJ4So3/Bszu5qHWqlNvym0Jcg8SVHWJ00YUWvGyQzPPevOx8JIwo33dfpODUnCbj9cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783981331; c=relaxed/simple;
	bh=RuV/TRMb6emchXetbiEkP09UACprWPK37hkpGEH/w+k=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dNF71LDyTXDThd9tf9y7mPwAEw5iUJzKdp1pYbnzFh8nV64O761hJjigN51nlasAdHYy7UwoYowO2Ctbk0mWBARFIpLslGWSQL3e0rfGJdifvMsW/seIKse6NG9YWL0wN6Kl+pdiXZrOIXe9JcSuCGqk3kaA2y9xkwXbdlXd7+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZK1H5uUe; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA8C31F000E9;
	Mon, 13 Jul 2026 22:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783981330;
	bh=Cpy2rqNe7dD4ldtvduPmIXfzt/sdzFIpwY0hVLE8KLQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZK1H5uUe0u9G3Lx2ZknlsDs++gO1LqCWLZg3DeBWDdipbBddWzrDmruma/+lJwPRI
	 SlC5EBITEcp2xJwPn8yaTDN/c282++uZv5MDZUKPyq20SyhVRhxyqT5gnd8BGKCc0O
	 Iwq4/AJM7BfZWyy0Nzj9MnDPntcVVUb/1eypdry7INrnnEx8Pq7jalPxHByoXTKCqB
	 nm4kWTJHSLq9oDpeqS/yArUiZnc5GjMN0bNurx2F6jB9v8v7EfJUzaCZSs01Nfjhy7
	 CccYzKQQUFXMQynuP6a/fnGFNUrRY0BVigJ9aOLBYNDmF2MQDHvI2HrvoovLJPVYLc
	 FHbuCZCasqj8A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v16 06/10] iio: imu: inv_icm42607: Add PM support for
 icm42607
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chris Morgan" <macroalpha82@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260713215842.69097-7-macroalpha82@gmail.com>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
 <20260713215842.69097-7-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 22:22:09 +0000
Message-Id: <20260713222209.AA8C31F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325795-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3E15D74F7A5

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] Bypassing explicit platform workaround for 0-delays
- [Low] Incompatible pointer type for enum parameter
--

--- Patch [6]: [PATCH v16 06/10] iio: imu: inv_icm42607: Add PM support for=
 icm42607 ---
commit 2cc6ce210d26cf1a702e03730729ef340784c90f
Author: Chris Morgan <macromorgan@hotmail.com>

iio: imu: inv_icm42607: Add PM support for icm42607
   =20
Add power management support for the ICM42607 device driver.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/i=
io/imu/inv_icm42607/inv_icm42607_core.c
> index b90e578c3fb2c..303a6a0b1b21e 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c

[ ... ]

> @@ -102,6 +106,90 @@ const struct inv_icm42607_hw inv_icm42607p_hw_data =
=3D {
>  };
>  EXPORT_SYMBOL_NS_GPL(inv_icm42607p_hw_data, "IIO_ICM42607");
> =20
> +int inv_icm42607_get_pwr_mgmt0(struct inv_icm42607_state *st,
> +			       enum inv_icm42607_sensor_mode *gyro,
> +			       enum inv_icm42607_sensor_mode *accel)
> +{

[ ... ]

> +}
> +
> +static int inv_icm42607_set_pwr_mgmt0(struct inv_icm42607_state *st,
> +				      enum inv_icm42607_sensor_mode gyro,
> +				      enum inv_icm42607_sensor_mode accel)
> +{
> +	unsigned int oldaccel, oldgyro;
> +	unsigned int sleepval_us;
> +	unsigned int val;
> +	s64 disable_wait;
> +	int ret;
> +
> +	ret =3D inv_icm42607_get_pwr_mgmt0(st, &oldgyro, &oldaccel);

[Severity: Low]
Will this cause an incompatible pointer type compiler warning or error?
inv_icm42607_get_pwr_mgmt0() expects enum inv_icm42607_sensor_mode pointers,
but oldgyro and oldaccel are declared as unsigned int.

> +	if (ret)
> +		return ret;
> +
> +	if (gyro =3D=3D oldgyro && accel =3D=3D oldaccel)
> +		return 0;
> +
> +	/*
> +	 * Datasheet on page 14.26 says we need to ensure the gyro sensor is on
> +	 * for a minimum of 45ms. So if we transition from an on state to an
> +	 * off state make sure at least 45ms have passed before power off and
> +	 * wait if it hasn't.
> +	 */
> +	if (!gyro && oldgyro) {
> +		disable_wait =3D ktime_us_delta(st->conf.gyro_stop, ktime_get());
> +		disable_wait =3D clamp(disable_wait,
> +				     0, INV_ICM42607_GYRO_STOP_TIME_US);
> +		fsleep(disable_wait);

[Severity: Low]
Can disable_wait evaluate to 0 here and cause issues on certain platforms?=
=20

The comment later in this function mentions that some platforms have
issues with a 0 delay, but this fsleep() is called unconditionally even if
disable_wait is clamped to 0.

> +	}
> +
> +	val =3D FIELD_PREP(INV_ICM42607_PWR_MGMT0_GYRO_MODE_MASK, gyro) |

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713215842.6909=
7-1-macroalpha82@gmail.com?part=3D6

