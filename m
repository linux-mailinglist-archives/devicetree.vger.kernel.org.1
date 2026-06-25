Return-Path: <devicetree+bounces-315727-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id W91TGLVCPWrE0QgAu9opvQ
	(envelope-from <devicetree+bounces-315727-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 17:01:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 084FF6C6E57
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 17:01:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="C4mLB/v8";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315727-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315727-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CAF333016914
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 15:01:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8A313DD86A;
	Thu, 25 Jun 2026 15:01:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0346334692
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 15:01:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782399661; cv=none; b=slvG3Qxni0kG7sQV05dIfGS+CCwa1g/YoD88gRmjJLQyr2xlikE0apyiP7LOshzmvoC7ufebRJE+dm71fJsP/BK9JnhWiv16jDDcsl0dioXoJvOMxpXT6BcRUPTUj8DkKu7Ap3/qT/BKaxDmcc1TwEC+wNelC9KRAg9uzXAK8qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782399661; c=relaxed/simple;
	bh=6ysat1Y8sm9QV3Tx126yMRB+RMpKAHDKuRD+aWTVnJc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=UDDCjwhD7t/GHiqWp8yNAOEKTU+KkMPc907M5JeK9xcq+8x9Mr1Ls7GraNUSXPf6D1auLjZle1Q2VQGdtpCUCeP1RGGhzWa8WWPAlCvg//hOUSZyxOq+i/KjnASOSUsPt/iooG2jFbNVes5ZH5iHnk2P+laSzSAcaC0+YDKWPRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4mLB/v8; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEDD41F000E9;
	Thu, 25 Jun 2026 15:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782399660;
	bh=jM5vsTnwJpmpN60w+IVvuIn6gY6bRU5pCy1GN4OYf9c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=C4mLB/v8Eu1JrKFOzK4CSpBO2LDwLgfkd8QzaynVTe9e7l/C+UI4lo0S6/mCje81a
	 T/JvfwBtz1ntwalRyJt1Fb92baiNPKluR6HsEoCZUxpPzMj4sAcGAgsdO7pfK4x2it
	 Kni3NjbMzOd6dSaA5IYfE5ZBB2HwDP5njh+WVT1WtA4BFLoQc9cH9IuK2LwApLQx+G
	 C7GGhg4czZVFDzm5gv4PYVGJjWgueQ3W05R2B3LgMcL2A5wufPbGAynexls9KPbK87
	 F8htuETRTSjr5DTMlxkRJopTDBzvd+OptMeQUzk8l7LQk1bHqKMjcCE/EoYcju+h94
	 lJlxFQjLqNPvg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 4/4] iio: adc: ltc2378: Enable triggered buffer data
 capture
Reply-To: sashiko-reviews@lists.linux.dev
To: "Marcelo Schmitt" <marcelo.schmitt@analog.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <a98804f122b7c1d1c159ba20060a250ebe2caaed.1782397418.git.marcelo.schmitt@analog.com>
References: <cover.1782397418.git.marcelo.schmitt@analog.com>
 <a98804f122b7c1d1c159ba20060a250ebe2caaed.1782397418.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 15:00:59 +0000
Message-Id: <20260625150059.EEDD41F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-315727-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:marcelo.schmitt@analog.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	RSPAMD_EMAILBL_FAIL(0.00)[marcelo.schmitt.analog.com:query timed out,sashiko-bot@kernel.org:query timed out,devicetree@vger.kernel.org:query timed out];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 084FF6C6E57

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Single reads via sysfs (`in_voltage0_raw`) return scrambled/garbag=
e data when the SPI offload engine is configured, because they incorrectly =
use the offload channel's endianness and shift properties.
--

commit 5a2926870e368170637e86d31e6346617e37a6b1
Author: Marcelo Schmitt <marcelo.schmitt@analog.com>

iio: adc: ltc2378: Enable triggered buffer data capture
   =20
Enable users to run triggered data captures with LTC2378 and similar ADCs.

> diff --git a/drivers/iio/adc/ltc2378.c b/drivers/iio/adc/ltc2378.c
> index 5b28630003b18..fcccd27745490 100644
> --- a/drivers/iio/adc/ltc2378.c
> +++ b/drivers/iio/adc/ltc2378.c

[ ... ]

> @@ -640,8 +662,16 @@ static int ltc2378_probe(struct spi_device *spi)
>  	/* Fall back to low speed usage when no SPI offload is available. */
>  	if (ret =3D=3D -ENODEV) {
>  		indio_dev->info =3D &ltc2378_iio_info;
> -		indio_dev->channels =3D &st->info->chan;
> -		indio_dev->num_channels =3D 1;
> +		indio_dev->channels =3D st->info->chan;
> +		indio_dev->num_channels =3D ARRAY_SIZE(st->info->chan);
> +
> +		ret =3D devm_iio_triggered_buffer_setup(dev, indio_dev,
> +						      iio_pollfunc_store_time,
> +						      ltc2378_trigger_handler,
> +						      NULL);
> +		if (ret)
> +			return dev_err_probe(dev, ret,
> +					     "failed to setup triggered buffer\n");
>  	} else if (ret) {
>  		return dev_err_probe(dev, ret, "failed to get offload\n");
>  	} else {

[Severity: High]
This is a pre-existing issue, but do single reads via sysfs
(in_voltage0_raw) return scrambled data when the SPI offload engine is
configured?

When offload is configured, indio_dev->channels is assigned to the
offload channel just after this else block in ltc2378_probe():

		indio_dev->channels =3D &st->info->offload_chan;

This channel specification is later passed to ltc2378_channel_single_read().
However, the single read function relies on the channel's endianness and
shift properties to decode the raw SPI data:

static int ltc2378_channel_single_read(const struct iio_chan_spec *chan, ..=
.)
{
	...
	if (chan->scan_type.endianness =3D=3D IIO_BE) {
		if (chan->scan_type.realbits > 16)
			sample =3D be32_to_cpu(st->scan.data.sample_buf32_be);
		else
			sample =3D be16_to_cpu(st->scan.data.sample_buf16_be);
	} else {
		if (chan->scan_type.realbits > 16)
			sample =3D st->scan.data.sample_buf32;
		else
			sample =3D st->scan.data.sample_buf16;
	}

	sample >>=3D chan->scan_type.shift;
	...
}

Because the offload_chan specification defines data as CPU-endian with
a 0 shift, the else branch is taken. This treats the natively big-endian,
MSB-aligned SPI data as unshifted CPU-endian data, scrambling the values on
little-endian architectures.

Could this be updated to properly handle manual sysfs reads when offload
is enabled?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1782397418.gi=
t.marcelo.schmitt@analog.com?part=3D4

