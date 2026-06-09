Return-Path: <devicetree+bounces-309058-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XA/yFL4ZKGrO9wIAu9opvQ
	(envelope-from <devicetree+bounces-309058-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 15:48:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C4785660B84
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 15:48:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hVobXfeU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309058-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-309058-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4FB3E30053A2
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 13:44:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 239B74219FF;
	Tue,  9 Jun 2026 13:44:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204A7285041
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 13:44:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781012671; cv=none; b=dIbvjrVGqmVfmZClh/AOieXpCpgDhBYjAaSdbLjPgLfS9f2UkBDSwbqN1/sEJvK2+sixMuoGlKCmd8ZOIyg58surl8ElbTDuZriMNyWLE0i8tVW6bMo7mW4k572i9dcesa/z9e2I8b4GK/fO4uTwur61oRdL4sP5VlhrrioSIUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781012671; c=relaxed/simple;
	bh=LrepcvbYs4LKr8FytqUrVfyJBqOQ+F8OhSV3OpQuoJ8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pEad6RAmhAxBUUcQ3vOeV7AZBfDUmIgC/Vo+37/wFTAIcQNfXtufmp3U98yRwuZ3VPYS9+eYSRovU/3ZD310xpn12lxUZl1yU58qcn2o9P7GXSroWlcm0OwIiajuoRvs2lYKKMotGknUd+5qKJr2SccZW/+Z6bz2O5s1uck7eJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVobXfeU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E4C81F00893;
	Tue,  9 Jun 2026 13:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781012668;
	bh=VQUaUvelRcBU2loiyfesAlWzbmicsNFt4Lb0C4HMnxU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hVobXfeUcGtNiVmdcB5oAz5FVu7Gr+OsRuIg4BUo4JBgoTnTBbnoYYN62phupx+DP
	 Ce+yRQfFd175f72HlmSIAVBLXgKkQn5ldOID4vehuzhfqouV4O0Ujpbg+ObGFGIjsP
	 Hm5Id2myskInI856bx/OjvSfx+E7yUMa/gTOXyTRAhcBIdYAFYcyH9d+s9DG0FLgSV
	 F6KuERaK9b0GzqgY3tboZpR2+pxucMqW2URBMI9m9xWzt7aaGLzTPJ5E9a/bzlw7kG
	 FcXJDpCqCYqBWBcz0b0lInQyFZ1qxjPmvHhKGEZX7s+HHD+Nq2PgjqdLEpldU22Eob
	 5s4f8oa6z+3Qg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/4] iio: adc: mt6323-auxadc: add mt6323 PMIC AUXADC
 driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Roman Vivchar via B4 Relay" <devnull+rva333.protonmail.com@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260609-mt6323-adc-v2-2-aa93a22309f9@protonmail.com>
References: <20260609-mt6323-adc-v2-2-aa93a22309f9@protonmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 13:44:28 +0000
Message-Id: <20260609134428.7E4C81F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-309058-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+rva333.protonmail.com@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rva333.protonmail.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,sashiko.dev:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,protonmail.ch:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C4785660B84

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] The probe function unconditionally dereferences `dev->parent` and =
`dev->parent->parent`, which will cause a kernel panic if the parent device=
 is NULL.
- [High] The driver incorrectly uses the logical device tree channel index =
instead of the physical ADC channel index when setting the hardware request=
 bitmask.
- [Medium] The AUXADC voltage buffer (`VBUF`) is left permanently enabled o=
n error paths, leading to a resource/power leak.
- [Medium] Incorrect IIO channel types are hardcoded as `IIO_VOLTAGE` for t=
emperature and current channels, violating IIO ABI.
--

commit 5d793b85b8942cff4538a9fd7c909fd225402286
Author: Roman Vivchar <rva333@protonmail.com>

iio: adc: mt6323-auxadc: add mt6323 PMIC AUXADC driver

The mt6323 AUXADC is a 15-bit ADC used for system monitoring. This driver
provides support for reading various channels including battery and charger
voltages, battery and chip temperature, current sensing and accessory
detection.

Tested-by: Ben Grisdale <bengris32@protonmail.ch> # Amazon Echo Dot (2nd Ge=
neration)
Signed-off-by: Roman Vivchar <rva333@protonmail.com>

[ ... ]
> diff --git a/drivers/iio/adc/mt6323-auxadc.c b/drivers/iio/adc/mt6323-aux=
adc.c
> new file mode 100644
> index 0000000000000..f2cef989d3ce7
> --- /dev/null
> +++ b/drivers/iio/adc/mt6323-auxadc.c
[ ... ]
> +#define AUXADC_DEFAULT_OSR		3
> +
> +#define MTK_PMIC_IIO_CHAN(_name, _chan, _addr)                  \
> +{                                                               \
> +	.type =3D IIO_VOLTAGE,                                    \

[Severity: Medium]
Does hardcoding IIO_VOLTAGE here break the IIO ABI for temperature and
current channels?

It looks like bat_temp, chip_temp, and isense will be exported as
in_voltage_*_raw instead of IIO_TEMP and IIO_CURRENT.

> +	.indexed =3D 1,                                           \
> +	.channel =3D _chan,                                       \
[ ... ]
> +static int mt6323_auxadc_request(struct mt6323_auxadc *auxadc,
> +				 unsigned long channel)
> +{
> +	struct regmap *map =3D auxadc->regmap;
> +	int ret;
> +
> +	ret =3D regmap_set_bits(map, MT6323_AUXADC_CON11, AUXADC_CON11_VBUF_EN);
> +	if (ret)
> +		return ret;
> +
> +	return regmap_set_bits(map, MT6323_AUXADC_CON22, BIT(channel));

[Severity: High]
Does BIT(channel) request the correct physical hardware channel here?

The channel parameter receives chan->channel, which is a logical sequential
index (e.g., MT6323_AUXADC_BATON2 =3D 0), but the hardware request register
appears to expect bits corresponding to the physical ADC channels. For
instance, setting BIT(0) for BATON2 would request ADC0 from the hardware,
but the driver will later poll the ADC6 data register.

[Severity: Medium]
If regmap_set_bits() fails to set MT6323_AUXADC_CON22, does this leave the
AUXADC voltage buffer (VBUF) permanently enabled?=20

Since the caller aborts on error without calling mt6323_auxadc_release(),
the AUXADC_CON11_VBUF_EN bit is never cleared.

> +}
> +
> +static int mt6323_auxadc_release(struct mt6323_auxadc *auxadc,
> +				 unsigned long channel)
> +{
> +	struct regmap *map =3D auxadc->regmap;
> +	int ret;
> +
> +	ret =3D regmap_clear_bits(map, MT6323_AUXADC_CON22, BIT(channel));
> +	if (ret)
> +		return ret;

[Severity: Medium]
If clearing MT6323_AUXADC_CON22 fails here, does it skip disabling the
voltage buffer?=20

Returning early would leave AUXADC_CON11_VBUF_EN enabled.

> +
> +	return regmap_clear_bits(map, MT6323_AUXADC_CON11, AUXADC_CON11_VBUF_EN=
);
> +}
[ ... ]
> +static int mt6323_auxadc_probe(struct platform_device *pdev)
> +{
> +	struct device *dev =3D &pdev->dev;
> +	struct mt6323_auxadc *auxadc;
> +	struct regmap *regmap;
> +	struct iio_dev *iio;
> +	int ret;
> +
> +	regmap =3D dev_get_regmap(dev->parent->parent, NULL);

[Severity: High]
Can this cause a null pointer dereference if the driver is probed directly
from a device tree node without an MFD parent?

Because the driver defines an of_match_table, it could be instantiated where
dev->parent is null. Even if dev->parent is valid but dev->parent->parent is
null, passing null to dev_get_regmap() will cause a kernel panic when it
attempts to lock devres.

> +	if (!regmap)
> +		return dev_err_probe(dev, -ENODEV, "failed to get regmap\n");
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609-mt6323-adc=
-v2-0-aa93a22309f9@protonmail.com?part=3D2

