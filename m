Return-Path: <devicetree+bounces-316519-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xKx3DZ18QWpFrgkAu9opvQ
	(envelope-from <devicetree+bounces-316519-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 21:57:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F7F6D4CDA
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 21:57:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Ha1g3rhD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316519-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316519-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E680300CC10
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 19:57:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F0393AE6FC;
	Sun, 28 Jun 2026 19:57:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BA2340A62
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 19:57:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782676634; cv=none; b=spBtfYj5GRhVQhceNVeX9iyL+2VxVf2h6xQi4eAnLctIxxiVlPPEKViVmOFuhGNo56r10Qh4uvIV49SFFdaLOzOjiYfDorwrFWiFxrAgL5+B/NaB+d4izfNlCU6mN1/hQTEst7+J+OOLR6UsTcD2S68fJBMBuRsAUct3oLUge4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782676634; c=relaxed/simple;
	bh=qfccdv0s6bQHcVOFzLYHMfPWQd51a2HMGHnUn1uaVNc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=H6UvawqZJdyN5D8AwK1o+Bc+40lBageB1x4lBc0Ci6LDdJ0e9mCeXgcomgvQPeKhtFjQVP116EUTSMjKhZYus+4jBfuZrUA8QxfRT3YsiDkai/b4MVx7yc+NCfBauTLhdigiLOvLtuRzLtu9suM4YtShBWi11vDiyhAv+SwZXCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ha1g3rhD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5C341F000E9;
	Sun, 28 Jun 2026 19:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782676632;
	bh=8lLVf4fwpseE+3YM+47gboBV5/2d+4wBLiKReDLDQgw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ha1g3rhDqSSRacRnuqLdyjbxq4YkIkFYTBlfYwdEE965/s+3MNygrf7yJi460ltPF
	 n0jbiCA/XMNc4LOsMXv/Xqapq+YiuHqJqyfDDGp8Ync6R1Qv+X6OhtbTili0mwqg2N
	 Na3HkftaTIztnlNwVaxjUBvfU/g0I0ognAGVScVIuLKTRzQ1fsIKOMq13E21cyjBic
	 LKb+mGyxbtbOEfQk5jULARQS5VoydaASZ+3e1pzUaJ9JlQilh4XYAr7tuKlI69TGEU
	 i4T26oley+3GEwu2VqxwLGHyX7doAz7F8Q0q8faL+6/xzgjSzAGUTDxKGTwo3yX8/+
	 upplOWZySoXKg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/3] iio: adc: Fix incorrect reading when datarate
 changed in single mode
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jakub Szczudlo" <jakubszczudlo40@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260628194341.66752-2-jakubszczudlo40@gmail.com>
References: <20260628194341.66752-1-jakubszczudlo40@gmail.com>
 <20260628194341.66752-2-jakubszczudlo40@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Jun 2026 19:57:12 +0000
Message-Id: <20260628195712.A5C341F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-316519-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jakubszczudlo40@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 79F7F6D4CDA

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] The loop in `ads1100_set_data_rate` completely ignores the request=
ed rate and unconditionally configures the device to the first data rate in=
 the array.
- [High] The polling loop in `ads1100_poll_data_ready` uses an inverted bre=
ak condition and polls a bit that never clears in continuous mode, causing =
it to return success immediately when the device is busy.
- [High] I2C read failures in the polling helper are silently masked and fa=
lsely reported as readiness.
--

commit 94cd92aafbd37136e109b12cbe69b760dcdb10a5
Author: Jakub Szczudlo <jakubszczudlo40@gmail.com>

iio: adc: Fix incorrect reading when datarate changed in single mode

This patch aims to fix incorrect readings after changing the datarate or
gain in single mode. It introduces a polling mechanism to wait for new
data to be ready before proceeding.

> diff --git a/drivers/iio/adc/ti-ads1100.c b/drivers/iio/adc/ti-ads1100.c
> index 9fe8d54cce83c..71b31adeba3c6 100644
> --- a/drivers/iio/adc/ti-ads1100.c
> +++ b/drivers/iio/adc/ti-ads1100.c
[ ... ]
> @@ -123,10 +128,46 @@ static int ads1100_get_adc_result(struct ads1100_da=
ta *data, int chan, int *val)
>  	return 0;
>  }
> =20
> +static bool ads1100_new_data_not_ready(struct ads1100_data *data)
> +{
> +	u8 buffer[3];
> +	int ret;
> +
> +	ret =3D i2c_master_recv(data->client, buffer, sizeof(buffer));
> +	if (ret < 0) {
> +		dev_err(&data->client->dev, "I2C read fail: %d\n", ret);
> +		return true;

[Severity: High]
Does returning true here mask the I2C communication failure?

Because readx_poll_timeout terminates when its condition is true, returning
true on an I2C error causes the polling loop in ads1100_poll_data_ready
to immediately break and return 0 to the caller, completely hiding the actu=
al
communication error code.

> +	}
> +
> +	return FIELD_GET(ADS1100_CFG_ST_BSY, buffer[2]);
> +}
> +
> +static int ads1100_poll_data_ready(struct ads1100_data *data)
> +{
> +	int data_rate_hz =3D ads1100_data_rate[FIELD_GET(ADS1100_DR_MASK, data-=
>config)];
> +	/* To be sure we wait 5 times more than data rate */
> +	unsigned long wait_time_us =3D DIV_ROUND_CLOSEST(USEC_PER_SEC, 5 * data=
_rate_hz);
> +	bool data_ready;
> +	u8 buffer[3];
> +	int ret;
> +
> +	/* To be sure that polled value will have value after config change */
> +	ret =3D i2c_master_recv(data->client, buffer, sizeof(buffer));
> +	if (ret < 0) {
> +		dev_err(&data->client->dev, "I2C read fail: %d\n", ret);
> +		return ret;
> +	}
> +
> +	return readx_poll_timeout(ads1100_new_data_not_ready, data,
> +				 data_ready, data_ready !=3D 0, wait_time_us,
> +				 ADS1100_MAX_DRDY_TIMEOUT_US);

[Severity: High]
Is the break condition data_ready !=3D 0 inverted here?

The helper ads1100_new_data_not_ready returns 1 when the device is busy.
Because the condition checks for data_ready !=3D 0, the loop breaks immedia=
tely
while the device is still busy, defeating the intended delay.

Also, since the PM runtime resume callback places the device in Continuous
Conversion mode before this poll, does the ST/BSY bit ever clear? If the
condition were corrected to !data_ready, would this cause a 7.5-second hang
on every configuration change?

> +}
[ ... ]
> @@ -149,19 +195,31 @@ static int ads1100_set_scale(struct ads1100_data *d=
ata, int val, int val2)
>  static int ads1100_set_data_rate(struct ads1100_data *data, int chan, in=
t rate)
>  {
>  	unsigned int i;
>  	unsigned int size;
> +	int ret;
> =20
>  	size =3D data->supports_data_rate ? ARRAY_SIZE(ads1100_data_rate) : 1;
>  	for (i =3D 0; i < size; i++) {
> -		if (ads1100_data_rate[i] =3D=3D rate)
> -			return ads1100_set_config_bits(data, ADS1100_DR_MASK,
> -						       FIELD_PREP(ADS1100_DR_MASK, i));
> +		if (i =3D=3D size)
> +			return -EINVAL;
> +
> +		PM_RUNTIME_ACQUIRE_IF_ENABLED_AUTOSUSPEND(&data->client->dev, pm);
> +		ret =3D PM_RUNTIME_ACQUIRE_ERR(&pm);
> +		if (ret)
> +			return ret;
> +
> +		ret =3D ads1100_set_config_bits(data, ADS1100_DR_MASK,
> +					      FIELD_PREP(ADS1100_DR_MASK, i));
> +		if (ret)
> +			return ret;
> +
> +		return ads1100_poll_data_ready(data);

[Severity: High]
Does this loop completely ignore the requested rate parameter?

The original code checked if ads1100_data_rate[i] =3D=3D rate, but this pat=
ch
replaces it with if (i =3D=3D size). Since i < size is the loop condition,
i =3D=3D size is never true.=20

This causes the loop to unconditionally apply the configuration for i =3D 0
and return immediately, preventing userspace from selecting any other
data rate.

>  	}
> =20
>  	return -EINVAL;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260628194341.6675=
2-1-jakubszczudlo40@gmail.com?part=3D1

