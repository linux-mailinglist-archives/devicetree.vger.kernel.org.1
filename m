Return-Path: <devicetree+bounces-314913-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +QgkLfqxOmp+EAgAu9opvQ
	(envelope-from <devicetree+bounces-314913-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 18:19:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B54E86B8AA0
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 18:19:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Mv6g9lbU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314913-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-314913-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 04BCF302C58E
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 16:18:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E356314A86;
	Tue, 23 Jun 2026 16:18:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D9430FF27
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 16:18:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782231491; cv=none; b=ppJUyg6eRsQCNptZCO1H8NDB1ODuIzoW1B/gx5uHOzFmoC6vlPrpSnIhXpOrhVfMUaNKQbWBSF78GfDms0HmNGP5jZ6lJlzJe3iP97UxEY6tNzwMJfMTvOdKj96Xq1cYvAIYFKSk7/9oP6gz12NyHEhq3MFqBIL8QFPfuxugbr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782231491; c=relaxed/simple;
	bh=fHLaHtPFUKNEr2y3vzSDDEFp+YOLX9ff3h0cM/hnaTw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WXyJb6xWgYeIz3AIGGZhBGEZUWaDpOmMVxiMd/DtB+nvGdjeiVcQr665bWGGW41yH5UBEPZFsBLWHtmXdIJEPI0+2DBfqjaFIIpnad12YGzgZeOAU2D3GDIbvJGRQE295S+oRk3TMovGNAY0SRHFlnPO+/kq+OdsHliaqG/YGpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mv6g9lbU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71FD01F000E9;
	Tue, 23 Jun 2026 16:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782231490;
	bh=fMfIQWm+jjHrQxrA9H6z1/DD0S283hcEe34fMU++yJA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Mv6g9lbU106g1vVumUpvwbG+4zplpubyDwt7RmdAM9FaamUulPYzyYVRmQMgbXRWZ
	 noqrQYKDYZc9WPiXXRwOIW56oS2Yo/u971xKTpcS6nP70fP1t/IPBwFASFydDhKBm5
	 ieO0vTC/ij2SAgmF5AxuIapMoAjPH+dGNWZmZQvX8FxnfTreXqqhc18Csz5DgjdE3f
	 aO7q2eHglcmWuInebNbQ34xhJ6oeVGEL2+m190+7CfcUQawe0J+Amz9/M8u2mkqDXG
	 HZhPZDnMGL7zaevXVQKBjMrocj8wJlmaj3+K9ekDbiC/Qp5f94x2dQIfnHfLqfmntX
	 xHLBu2ebGxfFg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] iio: dac: dac8163: Add driver for DAC8163
Reply-To: sashiko-reviews@lists.linux.dev
To: "Lukas Metz" <lukas.metz@gmx.net>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260623-dac8163-work-v1-1-5b508158faa0@gmx.net>
References: <20260623-dac8163-work-v1-0-5b508158faa0@gmx.net>
 <20260623-dac8163-work-v1-1-5b508158faa0@gmx.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 16:18:10 +0000
Message-Id: <20260623161810.71FD01F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314913-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmx.net];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:lukas.metz@gmx.net,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B54E86B8AA0

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] The SPI transfer buffer `tx` is allocated on the stack, which is n=
ot DMA-safe and violates SPI subsystem requirements.
- [High] The pointer returned by `spi_get_device_match_data()` is unconditi=
onally dereferenced without a NULL check.
- [Medium] The IIO scale attribute calculation ignores the hardware gain wh=
en the internal reference is used, returning an incorrect scale factor.
--

commit db89a9af22e26ad0341eb42f1659ed8a2fad0e51
Author: Lukas Metz <lukas.metz@gmx.net>

iio: dac: dac8163: Add driver for DAC8163

This commit adds a new driver for the Texas Instruments DAC756x, DAC816x,
and DAC856x series devices. These are low-power, voltage-output,
dual-channel DACs with up to 16 bits of resolution.

> diff --git a/drivers/iio/dac/ti-dac8163.c b/drivers/iio/dac/ti-dac8163.c
> new file mode 100644
> index 0000000000000..84a9dfb5347d6
> --- /dev/null
> +++ b/drivers/iio/dac/ti-dac8163.c

[ ... ]

> +static int dacxx6x_read_raw(struct iio_dev *indio_dev,
> +			    struct iio_chan_spec const *chan, int *val,
> +			    int *val2, long mask)
> +{
> +	struct dacxx6x_state *st;
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_RAW:

[ ... ]

> +	case IIO_CHAN_INFO_SCALE:
> +		st =3D iio_priv(indio_dev);
> +		*val =3D st->vref_uv / MILLI; /* vref in mV */
> +		*val2 =3D chan->scan_type.realbits;

[Severity: Medium]
Does this scale calculation account for the hardware gain when using the
internal reference?

When st->internal_ref is true, the internal reference is 2.5V, but these
devices typically have a default internal gain of 2, making the full-scale
voltage 5V.

Should the gain multiplier be factored into the vref_uv calculation before
exposing the scale to userspace?

> +		return IIO_VAL_FRACTIONAL_LOG2;
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static int dacxx6x_write_reg(struct dacxx6x_state *st, int reg, int addr,
> +			     unsigned int val)
> +{
> +	u8 tx[3];
> +
> +	tx[0] =3D COMMAND_SET(reg, addr);
> +	tx[1] =3D (val >> 8) & 0xff;
> +	tx[2] =3D val & 0xff;
> +
> +	return spi_write(st->spi, tx, sizeof(tx));

[Severity: High]
Is it safe to pass a stack-allocated buffer to spi_write() here?

Since spi_write() maps the provided buffer for DMA, passing a stack
variable can lead to invalid physical address mappings or memory corruption,
especially on systems with CONFIG_VMAP_STACK enabled.

Could the tx buffer be moved into the dacxx6x_state structure, protected by
the lock, and properly cacheline-aligned to ensure it is DMA-safe?

> +}

[ ... ]

> +static int dacxx6x_probe(struct spi_device *spi)
> +{

[ ... ]

> +	ret =3D dacxx6x_write_reg(st, CMD_SEL_REFERENCE, 0,
> +				FIELD_PREP(VOLTAGE_REFERENCE_MASK, st->internal_ref));
> +
> +	if (ret < 0)
> +		goto err;
> +
> +	info =3D spi_get_device_match_data(spi);
> +
> +	indio_dev->name =3D info->name;

[Severity: High]
Can spi_get_device_match_data() return NULL here if the device is
instantiated from userspace via sysfs (using driver_override and bind)
with a name that doesn't match the ID tables?

If it does return NULL, the subsequent dereference of info->name will cause
a kernel oops. Is a NULL check needed before accessing info?

> +	indio_dev->modes =3D INDIO_DIRECT_MODE;
> +	indio_dev->info =3D &dacxx6x_iio_info;
> +	indio_dev->channels =3D info->channels;
> +	indio_dev->num_channels =3D 2;
> +
> +	ret =3D iio_device_register(indio_dev);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260623-dac8163-wo=
rk-v1-0-5b508158faa0@gmx.net?part=3D1

