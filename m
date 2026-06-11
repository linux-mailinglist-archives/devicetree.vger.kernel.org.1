Return-Path: <devicetree+bounces-310635-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RGpcKHofK2r52wMAu9opvQ
	(envelope-from <devicetree+bounces-310635-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 22:50:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 663B16754E8
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 22:50:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=O4hDeUtD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310635-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310635-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7F5B1301A2CA
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 20:46:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8979388E43;
	Thu, 11 Jun 2026 20:46:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7502BE65B
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 20:46:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781210801; cv=none; b=AmgKCAJN2am9CuGUOt07W7mlYdqDPziYCVRSt5Pnu8diAwL7qJc35ysoxB4isrx8Yg1Shd/XHe3M1IAvo5PUVrh6Sngah4cuxPKRPcedaJKX9NqKWABwGkd5B2Kx5wvbrEivU8rB9bb/xHv0+TU93m/G6NgfqpiYFEnJdpvk7n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781210801; c=relaxed/simple;
	bh=z0UwF1+wwTAx9PHo5KOqQBELenB6alx0eoLnHGQ9Sog=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ZHrm6B/ChUvhEYdFA8H4EwrLkiaJUbL15xUiQ15QZW36QiV7nY/jRUXGxj46RDY+YOL63rC02z/+rIrFy0vmq1S24qOHi/O9/JLddC3s4o2XtvcU/LaMo1Lqrc89mWRiokjOxiAGGI8XhbQWJ6zm7eHEpgZzeNjcVO6NnFwOhU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4hDeUtD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3523A1F000E9;
	Thu, 11 Jun 2026 20:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781210800;
	bh=xbUtFH/JV6n/KHhtWN6v+tbalRaNaeSENmJDuvFhdzQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=O4hDeUtD9ke0UXiTKtjRcKN54XkUuz2XgGKXLX9cOe+nQpuJxfwVSdxLdQsfMGPRI
	 /fOSMURVXQybDVeTpT7ShwOXODyT9+bzQtA8nWqgg634lKcUerj5UCwQI3jLtNC1km
	 3Sm8ajqRwL+XRFUALwpYUlDkm/H4U2om9l7ennaMXaKe4Sd8IAQWTUQcrrzGg0KyqL
	 GgkbAfUsFxnMkXPHEzHRAEuz2Dm9Smkr9ReKiVg5yhKhpvYGbksQapl9T/JiSW8Jhf
	 P8N1jxg2qYdUAZYmx5Gv3LIOujf3uATH8NbyyQYJ6usuVaveTk6ZnHkL1cZ76udiUe
	 f40QWU6jS8IiQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V12 6/9] iio: imu: inv_icm42607: Add Temp Support in
 icm42607
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chris Morgan" <macroalpha82@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260611202607.85376-7-macroalpha82@gmail.com>
References: <20260611202607.85376-7-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 20:46:39 +0000
Message-Id: <20260611204640.3523A1F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310635-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 663B16754E8

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The DMA buffer `buffer` is placed at the beginning of `struct inv_=
icm42607_state`, sharing a cacheline with subsequent members like `hw`, `ma=
p`, and `lock`. This can lead to memory corruption and deadlocks during DMA=
 operations.
- [High] The temperature sensor is permanently left enabled after a single =
raw read, continuously wasting power and adding unnecessary latency to subs=
equent runtime resumes.
--

commit 18abfa4e34a17ed9cef9a8a6e5d8c222ba930a49
Author: Chris Morgan <macromorgan@hotmail.com>

iio: imu: inv_icm42607: Add Temp Support in icm42607
   =20
Add functions for reading temperature sensor data.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/im=
u/inv_icm42607/inv_icm42607.h
> index 35c9210ca86fe..5416754907913 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
[ ... ]
> @@ -124,6 +125,7 @@ struct inv_icm42607_suspended {
>   *  @orientation:	sensor chip orientation relative to main hardware.
>   */
>  struct inv_icm42607_state {
> +	__be16 buffer[3] __aligned(IIO_DMA_MINALIGN);
>  	const struct inv_icm42607_hw *hw;
>  	struct regmap *map;

[Severity: High]
Does this DMA buffer alignment ensure the end of the buffer is also padded =
to
the cacheline boundary?

Since the buffer is only 6 bytes, fields following it like hw, map, and the
mutex lock will share the same cacheline. When performing a DMA transfer, t=
he
controller might invalidate the entire cacheline, which could destroy
concurrent writes to the lock or other shared state and lead to memory
corruption or deadlocks.

Usually, buffers used for DMA need to occupy their own cacheline. Placing
them at the end of the struct with __aligned(IIO_DMA_MINALIGN) can prevent
this cacheline sharing.

>  	struct regulator *vddio_supply;

[ ... ]
> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_temp.c b/drivers/i=
io/imu/inv_icm42607/inv_icm42607_temp.c
> new file mode 100644
> index 0000000000000..b259fc9c9fd29
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_temp.c
> @@ -0,0 +1,76 @@
[ ... ]
> +static int inv_icm42607_temp_read(struct inv_icm42607_state *st, s16 *te=
mp)
> +{
[ ... ]
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

[Severity: High]
Will the temperature sensor remain permanently enabled after this read
completes?

Since inv_icm42607_set_temp_conf(st, true, NULL) is called but never disabl=
ed
before returning, st->conf.temp_en will stay true.=20

Because the driver saves and restores this state during runtime PM suspend
and resume, the temperature sensor will stay powered on whenever the chip is
active, consuming extra power.

Additionally, this leaked state might force an artificial 77ms sleep delay =
on
every subsequent runtime PM resume. When the device resumes,
inv_icm42607_set_pwr_mgmt0() will see the sensor transitioning from off to
on:

inv_icm42607_set_pwr_mgmt0() {
...
	st->conf.temp_en =3D temp;

	sleepval_ms =3D 0;
	if (temp && !oldtemp)
		sleepval_ms =3D max(sleepval_ms, INV_ICM42607_TEMP_STARTUP_TIME_MS);
...
}

Should the temperature sensor configuration be disabled before returning fr=
om
inv_icm42607_temp_read()?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611202607.8537=
6-1-macroalpha82@gmail.com?part=3D6

