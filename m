Return-Path: <devicetree+bounces-314561-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EsPAN8m3OWqOwgcAu9opvQ
	(envelope-from <devicetree+bounces-314561-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 00:31:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0C16B2A4F
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 00:31:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Q+rqAx00;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314561-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314561-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C215E3025380
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 22:31:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD159283FE6;
	Mon, 22 Jun 2026 22:31:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96CBE346E5D
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 22:31:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782167494; cv=none; b=ZEju6++y7VKG0ELi8ikMITaDPe54OVxEiX9G62+gubGpYFGrnrk06UIXNAY/FYRnJ2Zz9FW1JqN3y80xLwzsXQoUtLkSkQfiyTI5GMIvE5r25OnzBih7aYWBnWIBjz0zzUf47cMBh2hSmjEAZCsAEblBX1FKS4HILdP52GiizbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782167494; c=relaxed/simple;
	bh=JTqgF1Y6HSqdPmpX1iLo7BuQH24xS6fAtuk0fZBcrh4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=VZkMMyk2tb87LI6yULi+oqtOCzBNXfUN8S/ArUWLGA1D1+Ncv4zcpPvHfR7JcsLPMLo9xUp4n2sOl+V5Lj5JnnLsCLX8hq73vvnTqfRfMSggOEYbr//Ft7oIJBAL5umg84Ne6cOacDfxI1phjv8vMWwxItMAPJd6/XCrrupCC+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+rqAx00; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24C2F1F000E9;
	Mon, 22 Jun 2026 22:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782167493;
	bh=qCZxK8Xazg5bZqP5RWc6RoIT9tqp1FOLKIE4P+ogXZE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Q+rqAx00lonxFjc5hsHww0Z35ZwNCHTxB6p2YjQGSfqjSSzWcUa0dgUSXESFo/tie
	 xjmEQt9tnyGAbVGZNvKyBjiRLlxr+jmkwsnD38iktgMf0gqwe/fHoteU9xSXLXg1Cd
	 lAuo+JWQS8j+HpmzeIWNf5S2rDf7pw3EqcHcu0fK4zV32hlNTjkj3mDX9fFBETbbNr
	 IGodWd0geI0an9AkLDCG1NtzE7Du303M6EjR2rtvIix65pHhx3pRpFYl7amXQ8x7bY
	 kAk74J4V8FBqk2WtBb+cwnocuvj+j950KFSnl6GStqZnQYc1ndK/C3SNB/KTwbhRO/
	 uObkVxz5JR5pQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 3/3] iio: adc: Add ti-ads1110 support to ti-ads1100
 driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jakub Szczudlo" <jakubszczudlo40@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260622221550.374235-4-jakubszczudlo40@gmail.com>
References: <20260622221550.374235-1-jakubszczudlo40@gmail.com>
 <20260622221550.374235-4-jakubszczudlo40@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 22:31:32 +0000
Message-Id: <20260622223133.24C2F1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314561-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jakubszczudlo40@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6C0C16B2A4F

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [Medium] Hardcoded IIO device name ignores the newly added device configu=
ration name.
- [Medium] Hardcoded ads1100_data_rate array used instead of config-specifi=
c data_rate in ads1100_poll_data_ready.

Pre-existing issues:
- [High] Missing PM runtime resume on device removal causes an unbalanced r=
egulator_disable() call.
--

commit d015d54867f4b919a8e4d7c10d3727993b652f65
Author: Jakub Szczudlo <jakubszczudlo40@gmail.com>

iio: adc: Add ti-ads1110 support to ti-ads1100 driver

Add ADS1110 support that have faster datarate than ADS1100, it also uses
internal voltage reference of 2.048V for measurement.

> diff --git a/drivers/iio/adc/ti-ads1100.c b/drivers/iio/adc/ti-ads1100.c
> index e3c801381434d..ec79a89464fb6 100644
> --- a/drivers/iio/adc/ti-ads1100.c
> +++ b/drivers/iio/adc/ti-ads1100.c
> @@ -40,20 +40,44 @@
>  #define	ADS1100_SINGLESHOT	ADS1100_CFG_SC
> =20
>  #define ADS1100_SLEEP_DELAY_MS	2000
> +#define ADS1110_INTERNAL_REF_mV 2048
> =20
>  static const int ads1100_data_rate[] =3D { 128, 32, 16, 8 };
> +static const int ads1110_data_rate[] =3D { 240, 60, 30, 15 };

[Severity: Medium]
Will this result in using the slower ads1100_data_rate array for the ADS1110
when polling for data readiness?

Looking at ads1100_poll_data_ready(), it still accesses the hardcoded
ads1100_data_rate array directly:

static int ads1100_poll_data_ready(struct ads1100_data *data)
{
	...
	int datarate =3D ads1100_data_rate[FIELD_GET(ADS1100_DR_MASK, data->config=
)];
	/* To be sure we wait 5 times more than datarate */
	unsigned long wait_time =3D DIV_ROUND_CLOSEST(MICRO, 5 * datarate);
	...
}

Should this be updated to use data->ads_config->data_rate instead?

[ ... ]

> @@ -404,6 +436,13 @@ static int ads1100_probe(struct i2c_client *client)
>  	if (ret)
>  		return ret;
> =20
> +	model =3D i2c_get_match_data(client);
> +	if (!model)
> +		return dev_err_probe(dev, -EINVAL,
> +				     "Can't get device data from firmware\n");
> +
> +	data->ads_config =3D (struct ads1100_config *)model;
> +

[Severity: Medium]
Does this ignore the newly added device configuration name for the IIO devi=
ce?

In ads1100_probe(), indio_dev->name is hardcoded earlier in the function:

	indio_dev->name =3D "ads1100";

Should this be updated to use data->ads_config->name so the user-space
sysfs name correctly identifies the ADS1110?

[Severity: High]
This is a pre-existing issue, but does the lack of a PM runtime resume on
device removal cause an unbalanced regulator disable?

If the device auto-suspends during runtime idle, the vdd regulator is disab=
led
via ads1100_runtime_suspend():

static int ads1100_runtime_suspend(struct device *dev)
{
	...
	regulator_disable(data->reg_vdd);
	...
}

When the driver is unbound, devres calls pm_runtime_disable() (which does n=
ot
resume the device), followed by ads1100_reg_disable() which attempts to call
regulator_disable() again on the already-disabled regulator, triggering a
kernel WARNING.

Could we ensure the device is resumed during driver unbind to prevent this?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260622221550.3742=
35-1-jakubszczudlo40@gmail.com?part=3D3

