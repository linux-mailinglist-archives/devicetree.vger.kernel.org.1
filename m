Return-Path: <devicetree+bounces-314796-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wROpKKlqOmpK8gcAu9opvQ
	(envelope-from <devicetree+bounces-314796-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 13:14:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8886B69B8
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 13:14:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QxNTRBdZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314796-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314796-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A81C6302F5A2
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 11:14:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDC643D3480;
	Tue, 23 Jun 2026 11:14:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F7A3D3008
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 11:14:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782213286; cv=none; b=jv9DSczaTzwNelBrY3yMthP1QELZX+BSYtT5JyXT5uVRhE8Xa2wbP5x0YzmmRNXh8Zn3socNpt8FCzcdo2CD6Vg2wj04l//606/Xn8FHipcrgDxVr1z5PzTyrFiCRUH4d0ThdFvdDruflGVcSNJcmmSP3Xu88bqRbsiiRH9MI6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782213286; c=relaxed/simple;
	bh=nUZTklU2H+5J4h+Nehggt2IJQpnnt678lKgCnnxQCeE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pxQwZXNNZJavlQD7h3pVzHD6demCQ8e8KYJLeTz1tRwT3plQYlVRBvXjxyXZ3fWqlblJ8T9q7Za63c5vHhCLgSC7FE73GMNMXcQcQQbNY4dPHQNrcr5OoT4IJ19BITosUuvZVTo2PfYTm8M+PpXnyIhEf5Zrbp80r2fPM36PINM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxNTRBdZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DE691F000E9;
	Tue, 23 Jun 2026 11:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782213285;
	bh=JMA8KsZrpTygOiCSvtA/U0530clzBZE17o2YfbQ0UXo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QxNTRBdZ4uBmCjwnorsq33KNKc5H1qyRYu+YeUkpLnxQUQelRS7XcPs0f2DY+IHHe
	 jWlRA0VoBQDzaag0u1hlwGr2UWWCuKfYbvCiNDBy8PM4u4cKxtNRlCJIci/OyG/Ahw
	 0zqbOgoLj2cUc3WLrygGRORaVduzeF7/evMcmvUPh6w5ZX/UK0ohJwsO51xUOfzkxi
	 c/R/SVv8XjzsHK2w1oEN1Er10egOkodHZx8dxjVf5yJYH42hvFTI43kb8k3XBptZQd
	 WpV9T3+28vNqu1unczV5bn2UIAJHNQWOcAS4daElRuAyvJIERIo5ZHrWpaebufyMFW
	 dDBTL+AypSNtw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 11/12] iio: dac: ad5686: add triggered buffer support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar via B4 Relay" <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260623-ad5686-new-features-v4-11-28962a57db0f@analog.com>
References: <20260623-ad5686-new-features-v4-0-28962a57db0f@analog.com>
 <20260623-ad5686-new-features-v4-11-28962a57db0f@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 11:14:44 +0000
Message-Id: <20260623111445.4DE691F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-314796-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+rodrigo.alencar.analog.com@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,analog.com:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EA8886B69B8

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The ad5686_trigger_handler fails to convert Big Endian buffer data=
 to native CPU endianness before passing it to the write operations, causin=
g scrambled DAC values on Little Endian systems.
--

commit b9bb35e4f394ef5515930983f7b76ce0cae1335e
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

iio: dac: ad5686: add triggered buffer support

This commit implements a trigger handler for the AD5686 DAC driver to updat=
e=20
all channels simultaneously when the LDAC GPIO is available. It also flushe=
s=20
multiple channel writes at once using the sync() operation.

> diff --git a/drivers/iio/dac/ad5686.c b/drivers/iio/dac/ad5686.c
> index db175e77b0b7c..4dc681eb077d6 100644
> --- a/drivers/iio/dac/ad5686.c
> +++ b/drivers/iio/dac/ad5686.c
[ ... ]
> @@ -467,6 +472,60 @@ const struct ad5686_chip_info ad5679r_chip_info =3D {
>  };
>  EXPORT_SYMBOL_NS_GPL(ad5679r_chip_info, "IIO_AD5686");
> =20
> +static irqreturn_t ad5686_trigger_handler(int irq, void *p)
> +{
> +	struct iio_poll_func *pf =3D p;
> +	struct iio_dev *indio_dev =3D pf->indio_dev;
> +	struct iio_buffer *buffer =3D indio_dev->buffer;
> +	struct ad5686_state *st =3D iio_priv(indio_dev);
> +	u16 val[AD5686_MAX_CHANNELS] =3D { };
> +	unsigned int scan_count, ch, i;
> +	bool async_update;
> +	int ret;
> +	u8 cmd;
> +
> +	ret =3D iio_pop_from_buffer(buffer, val);
> +	if (ret) {
> +		iio_trigger_notify_done(indio_dev->trig);
> +		return IRQ_HANDLED;
> +	}
> +
> +	guard(mutex)(&st->lock);
> +
> +	scan_count =3D bitmap_weight(indio_dev->active_scan_mask,
> +				   iio_get_masklength(indio_dev));
> +	async_update =3D st->ldac_gpio && scan_count > 1;
> +	if (async_update) {
> +		/* use LDAC to update all channels simultaneously */
> +		cmd =3D AD5686_CMD_WRITE_INPUT_N;
> +		gpiod_set_value_cansleep(st->ldac_gpio, 0);
> +	} else {
> +		cmd =3D AD5686_CMD_WRITE_INPUT_N_UPDATE_N;
> +	}
> +
> +	i =3D 0;
> +	iio_for_each_active_channel(indio_dev, ch) {
> +		ret =3D st->ops->write(st, cmd, indio_dev->channels[ch].address, val[i=
++]);

[Severity: High]
Will this send scrambled data on Little Endian CPUs?

Since the driver declares IIO_BE, the data populated by iio_pop_from_buffer=
()=20
into the val array is in Big Endian format. Passing val[i++] directly to=20
st->ops->write() as a native u16 without using be16_to_cpu() means the byte=
s=20
might be incorrectly byte-swapped before transmission.

> +		if (ret)
> +			break;
> +	}
> +
> +	/*
> +	 * If sync() is available, it is called here regardless of write
> +	 * failure to allow bus implementation to reset. In that case, partial
> +	 * writes are unlikely as the write operations would just queue up
> +	 * the transfers.
> +	 */
> +	if (st->ops->sync)
> +		st->ops->sync(st);
> +
> +	if (async_update)
> +		gpiod_set_value_cansleep(st->ldac_gpio, 1);
> +
> +	iio_trigger_notify_done(indio_dev->trig);
> +	return IRQ_HANDLED;
> +}
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260623-ad5686-new=
-features-v4-0-28962a57db0f@analog.com?part=3D11

