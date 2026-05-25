Return-Path: <devicetree+bounces-302658-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ihLSHKEzFGo/KwcAu9opvQ
	(envelope-from <devicetree+bounces-302658-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 13:33:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D435C9F6D
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 13:33:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87E6A3007E3A
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 11:33:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 874E1346E46;
	Mon, 25 May 2026 11:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7nbkpGV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61EA730569B
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 11:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779708830; cv=none; b=DZgMNDY/QChRc2OgW83ZVAd6y7swTgoq/YaxMcNfL9EpLMyxEQNzBwdFFv5yACUlz/QkUp3PIwheDIDI9bcH9vE+IJbYgF8yrZtj9kjNP5U6fmqg/Un6U6p8TrXqKZAh6/IyyCcP5r7RpoanVhSXKwHKgMAmKafO7N/PUsC3Qts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779708830; c=relaxed/simple;
	bh=+2rjWY7cBjgTz2QnQYitp+pNSIj6nykEBIeyXCeR1mQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OE1uio0mKWtx2g7I4TIqhh1hbbmi6YvPhiUCcznZw+j0Zz6j08Kr+7YmrequDJhUIKJnU63BnIS7nR2RpPpzx3xkMueeAReEIuxt4+UpVgyNXEEHW8yVswBjn9dxfrhjmWciZm7N7ybPZhwBn2vgZA6BTURC4kKLfwm3mbtrhOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7nbkpGV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C79B21F000E9;
	Mon, 25 May 2026 11:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779708829;
	bh=7bLSAuwIJslZ/7hULYbVkozdRhuGUXqDl5sE5P8Rdm4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=g7nbkpGVIZ6bFm+zNtH0NiAXJJiJpON1WIW6KsaZZNVN+dBwBHZuOuZav8fq+kyBe
	 6wUf8vloR0eQ9EascLi6y/fV/wiHYE/SAWFjiqMcWuZI2gK+JUfmQZOaC8OK+gB2AR
	 EL1xcpXtp4pp1A0DRw8At2l2rIfj1GZY0TN18nhMp4XNhIjdpBMGdJ3pHkg5ZhMez6
	 UtVBUX8zccFsa5sRF2OoPmXfnDNOMEC+aB8Rg0IVwcEClJSMmDYuTTwaiYIIZhG/NU
	 iokqN2RsC+rnxbeDgum5mZqXKEeqeNhZj9omXVrrBVhKoBlrwnhaK0l02At9yjoAwI
	 GUZCC6QKQjUxg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 11/11] iio: adc: hx711: add support for HX710B
Reply-To: sashiko-reviews@lists.linux.dev
To: "Piyush Patle" <piyushpatle228@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260525105127.180156-12-piyushpatle228@gmail.com>
References: <20260525105127.180156-12-piyushpatle228@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 11:33:48 +0000
Message-Id: <20260525113348.C79B21F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302658-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Queue-Id: C9D435C9F6D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing iio_device_claim_direct_mode() in hx711_read_raw and hx711=
_write_raw allows sysfs access to race with triggered buffer scans, causing=
 data corruption for the HX711 variant.
--

commit b65710cec2d2223666cdb19d42f5604d7de0dec1
Author: Piyush Patle <piyushpatle228@gmail.com>

iio: adc: hx711: add support for HX710B

This commit adds support for the AVIA HX710B ADC, which shares the HX711
GPIO interface but uses trailing PD_SCK pulses to select the active mode.
It models the HX710B with variant-specific channel tables and tracks the
active channel across conversions.

> diff --git a/drivers/iio/adc/hx711.c b/drivers/iio/adc/hx711.c
> index 5c326f01c5543..1dac9cc8b63fe 100644
> --- a/drivers/iio/adc/hx711.c
> +++ b/drivers/iio/adc/hx711.c

[ ... ]

> @@ -322,6 +383,9 @@ static int hx711_read_raw(struct iio_dev *indio_dev,
>  		if (*val < 0)
>  			return *val;
>  		return IIO_VAL_INT;
> +	case IIO_CHAN_INFO_SAMP_FREQ:
> +		*val =3D hx711_data->samp_freq;
> +		return IIO_VAL_INT;
>  	case IIO_CHAN_INFO_SCALE:
>  		*val =3D 0;
>  		mutex_lock(&hx711_data->lock);

[Severity: High]
This isn't a bug introduced by this patch, but is it possible for sysfs acc=
ess
to race with triggered buffer scans here?

It looks like hx711_read_raw() and the corresponding hx711_write_raw() do n=
ot
call iio_device_claim_direct_mode(), which allows sysfs reads and writes to
execute concurrently with an active triggered buffer session (serialized on=
ly
by the internal lock).

For the HX711 variant, changing the channel or gain consumes a hardware sam=
ple
and sets the mode for the next conversion without doing a dummy read and wa=
it.
If a sysfs read or write intercepts the triggered buffer, it alters the
trailing-pulse state machine. When the buffer trigger next executes, it wou=
ld
receive the data converted under the sysfs operation's mode, potentially
causing data corruption in the sample sequence stream.

The newly added HX710B variant seems to handle channel switching robustly v=
ia
dummy reads and waits, but the HX711 variant appears to remain vulnerable to
this stream corruption. Does the original code need an update to use
iio_device_claim_direct_mode() to prevent these races?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260525105127.1801=
56-1-piyushpatle228@gmail.com?part=3D11

