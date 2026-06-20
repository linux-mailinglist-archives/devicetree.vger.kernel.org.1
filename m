Return-Path: <devicetree+bounces-313982-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HMXaI5UbNmqq7gYAu9opvQ
	(envelope-from <devicetree+bounces-313982-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 06:48:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3766A855C
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 06:48:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Dpz5QwoC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313982-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-313982-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 915193003BD7
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 04:48:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5AC413DDAE;
	Sat, 20 Jun 2026 04:48:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0FD01A267
	for <devicetree@vger.kernel.org>; Sat, 20 Jun 2026 04:48:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781930894; cv=none; b=aNlQ0CSTvhNNIjwfquT7CNVFyZ4xDuHgbp08MibD/xed1q5RCIq2LACw4HsNustrLL54I50qrEGIOCPek+Miu12eK7buUikeHwckixRu3Hnp+ftNOvOhd6jvMXzwusxuXQ4X8YKZWcZBN2cCJR18pI+XybgvRsy0cE7Zy3IJGPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781930894; c=relaxed/simple;
	bh=CtwOYY7YE2qPkvPxUfrp+pcKbtOabVaE+KyGoK0b1Vk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=UFik3bhRIwzy6poLq4z5LcDhY/NVkDvNWLF7IvsnPFZ2tHR4E1wVU4OY4qT+NH5ME9UAHri04C3q17KTS5Lwqbx4bbJ7R+zigNcxcJIirmEMfssHVknwKEJUC6ntiGPNofcLNaFYhxifQ1JFTQYlYEgrnisIy/5s4kgPrSzXXSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dpz5QwoC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E13B31F000E9;
	Sat, 20 Jun 2026 04:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781930893;
	bh=ngrGAt3vyccEOuLxH5aYARtQ0rKSIbTVSdpEQSaB27U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Dpz5QwoCuvdOZrkYww7bTv8XEUhZLTwXltWcyjNwn8XwDf0qxAunkQ1snqb49ZWjG
	 iG3vk3tZCvT4gR6GQTLEV78go2YTTB2HqrsVL/IQMh2dH5JR/ZPSYrQmaxPe1K38f7
	 +UK05OgM5qfTHjqObKsT06Su4fiMb6KbRvQrYy1w5+uhVxv/nubPTED4PSneE3J3Ol
	 VyTDe5bZyjWEOqDDh6C/uNe6JeV2uTGEkbQuLAuabRBZbB1U2TcfpY4VsNnYZ+hH8O
	 5BzmDmPtP9v3WKgBXyVIFNeeXKU701L2Uv/pDf1u4WxQ/TkiP6oskKljNSnH7ezJIc
	 /U2xI0HU7oKVA==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH 2/3] iio: temperature: Add STS30 temperature sensor
 driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Maxwell Doose" <m32285159@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260620044010.1082621-3-m32285159@gmail.com>
References: <20260620044010.1082621-1-m32285159@gmail.com>
 <20260620044010.1082621-3-m32285159@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 20 Jun 2026 04:48:12 +0000
Message-Id: <20260620044812.E13B31F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313982-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:m32285159@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7A3766A855C

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The return value of `sts30_reset()` is ignored during probe, allow=
ing phantom device registration on failure.
- [High] The driver implements a Clock Stretching Disabled I2C sequence but=
 uses Clock Stretching Enabled command codes, resulting in a protocol misma=
tch.
--

commit 1a183c37bbba5fe87dfcc6019f964e51526fec2b
Author: Maxwell Doose <m32285159@gmail.com>

iio: temperature: Add STS30 temperature sensor driver

Add a driver for the Sensirion STS30 family of temperature sensor
drivers over I2C. The driver supports single-shot non-clock stretched
readings using a specified delay based on the repeatability/delay.

> diff --git a/drivers/iio/temperature/sts30.c b/drivers/iio/temperature/st=
s30.c
> new file mode 100644
> index 0000000000000..b49deb1d62c21
> --- /dev/null
> +++ b/drivers/iio/temperature/sts30.c

[ ... ]

> +#define STS30_MEAS_SIZE 3
> +
> +#define STS30_COMMAND_READ_HIGH_REPEAT 0x2C06
> +#define STS30_COMMAND_READ_MED_REPEAT 0x2C0D
> +#define STS30_COMMAND_READ_LOW_REPEAT 0x2C10

[Severity: High]
The commit message mentions using non-clock stretched readings, but are
these the correct commands? According to the STS3x datasheet, the 0x2Cxx
series commands are for "Clock Stretching Enabled", which require a
Repeated START condition between the write and read phases.

[ ... ]

> +static int sts30_read(struct sts30_data *data, u16 command, u16 *val)
> +{
> +	u8 tmp[2];
> +	u8 buf[STS30_MEAS_SIZE];
> +	int ret;
> +
> +	put_unaligned_be16(command, tmp);
> +
> +	ret =3D i2c_master_send(data->client, tmp, sizeof(tmp));
> +	if (ret < 0)
> +		return ret;
> +	if (ret !=3D sizeof(tmp))
> +		return -EIO;
> +
> +	fsleep(data->delay);

[Severity: High]
Will sending a STOP condition here abort the measurement? Since
i2c_master_send() issues a STOP condition rather than a Repeated START,
this sequence violates the protocol for the Clock Stretching Enabled
commands (0x2Cxx) defined above.

Should this use the "Clock Stretching Disabled" commands (e.g., 0x2400)
instead, or alternatively use a single i2c_transfer() with a Repeated START?

[ ... ]

> +static int sts30_probe(struct i2c_client *client)
> +{
> +	struct iio_dev *indio_dev;
> +	struct sts30_data *data;
> +	int ret;

[ ... ]

> +	ret =3D sts30_reset(data);
> +
> +	return devm_iio_device_register(&client->dev, indio_dev);
> +}

[Severity: High]
Is it intentional to ignore the return value of sts30_reset() here?

If the reset fails due to the hardware being missing or a broken I2C bus,
this will unconditionally register a phantom device to userspace. Should we
check 'ret' and return the error code instead?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260620044010.1082=
621-1-m32285159@gmail.com?part=3D2

