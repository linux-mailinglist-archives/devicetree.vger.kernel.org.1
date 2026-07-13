Return-Path: <devicetree+bounces-325792-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gr9lKx9jVWobnwAAu9opvQ
	(envelope-from <devicetree+bounces-325792-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 00:13:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B41074F74B
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 00:13:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="febx4mk/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325792-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-325792-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7DF7A300CB34
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 22:13:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FC6338644F;
	Mon, 13 Jul 2026 22:13:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8E2B3859EF
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 22:13:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783980824; cv=none; b=SmO8kXlEwwLcoDIAeLsde6mXq1bk3aYYy9EDxpydLTVL3npCfMsM/8MQB94ywY1z0C6SCwuphZpYfjc1w8el7MJx5ztEkXgMvjAL1HYVfU4T9G5dfwrYO8GsagpVuu92BP59Z8Y3M8nBhQMuyoQxI726JClfE0kHtJMrLqVfYNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783980824; c=relaxed/simple;
	bh=F5cmpW0E2qthISACp2Y+n5QNEOo+3OaFsVvlQ/29ljI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PMliIDD/vyf0j1OfWYze7tBR7zX6z0iRPjOD6lEGSabN1+kMU6yYnh7Y22zRTqmSQ5iD9j/rc8Q37p/QpgryK6vn8zxPOPNHgSS0+IHT8IKxCNNuh5oNbruqiH3oBWUH5KyULtUwQZKLL5wBSstMZ7tn05guFSoW0+za5kQSo+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=febx4mk/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4303E1F000E9;
	Mon, 13 Jul 2026 22:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783980822;
	bh=PQSK3j+UeU02FZPSPoCwCl4/1n9bLLTviat6nCl9/KI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=febx4mk/2ouK4nbHDfJGwOc1FIHSpwbAZ1HNacOMIR2lG9VgfHA91fvxD0yQfnoAC
	 ipqBYLn3FXJcyA/0bIcU21VUXw3yE/sV35RBgN0p03oO6hfe4PwDwpQqtOA/RBwkV3
	 hdIJD6XLjukxX081yYpYKmvpYlJ/gOORXe1YyIvIHKvCOqsxG5zweQopKs6FjMrKOU
	 dxkzUAvQbJJ/ZBge5Pg7mFgi0ZJGDvfAZ/f5XkBHqVVl26QxE3uMINYk+lM53xhe7y
	 uQkwb5aYe1jnwk6Jpoy5EJMZswXNlsPB3+SOtu68pQr5wvQVhPNEdXb9usnz9zeF7b
	 3PIGsD+VYU4Og==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v16 09/10] iio: imu: inv_icm42607: Add Temp Support in
 icm42607
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chris Morgan" <macroalpha82@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260713215842.69097-10-macroalpha82@gmail.com>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
 <20260713215842.69097-10-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 22:13:41 +0000
Message-Id: <20260713221342.4303E1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325792-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0B41074F74B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The temperature scale and offset sysfs attributes always return =
-EINVAL.
--

--- Patch [9]: [PATCH v16 09/10] iio: imu: inv_icm42607: Add Temp Support i=
n icm42607 ---
commit 5c22145efbd1dae68fedacdc2fc8522da3f2f320
Author: Chris Morgan <macromorgan@hotmail.com>

iio: imu: inv_icm42607: Add Temp Support in icm42607

This commit adds functions for reading temperature sensor data to the
inv_icm42607 driver.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c b/drivers/=
iio/imu/inv_icm42607/inv_icm42607_accel.c
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c
[ ... ]
> @@ -186,6 +189,9 @@ static int inv_icm42607_accel_read_raw(struct iio_dev=
 *indio_dev,
> =20
>  	switch (mask) {
>  	case IIO_CHAN_INFO_RAW:
> +		if (chan->type =3D=3D IIO_TEMP)
> +			return inv_icm42607_temp_read_raw(indio_dev, chan,
> +							  val, val2, mask);

[Severity: Medium]
Since this check is nested inside case IIO_CHAN_INFO_RAW:, how are requests
for IIO_CHAN_INFO_SCALE and IIO_CHAN_INFO_OFFSET handled for the temperature
channel?

Won't those masks bypass this check, fall through to the accelerometer-spec=
ific
cases below, and ultimately return -EINVAL?

[ ... ]
> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c b/drivers/i=
io/imu/inv_icm42607/inv_icm42607_gyro.c
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c
[ ... ]
> @@ -183,6 +186,9 @@ static int inv_icm42607_gyro_read_raw(struct iio_dev =
*indio_dev,
> =20
>  	switch (mask) {
>  	case IIO_CHAN_INFO_RAW:
> +		if (chan->type =3D=3D IIO_TEMP)
> +			return inv_icm42607_temp_read_raw(indio_dev, chan,
> +							  val, val2, mask);

[Severity: Medium]
Does this have the same routing issue as the accelerometer handler above?

It appears that requests for the temperature channel's scale and offset will
also fail with -EINVAL here, making the IIO_CHAN_INFO_SCALE and
IIO_CHAN_INFO_OFFSET cases in inv_icm42607_temp_read_raw() unreachable.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713215842.6909=
7-1-macroalpha82@gmail.com?part=3D9

