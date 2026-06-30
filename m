Return-Path: <devicetree+bounces-317329-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Co55DC8RQ2qtOwoAu9opvQ
	(envelope-from <devicetree+bounces-317329-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 02:43:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 751226DF6C9
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 02:43:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=X1GDfHGj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317329-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317329-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2354B3000FE2
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 00:43:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D034201004;
	Tue, 30 Jun 2026 00:43:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97E6D1F91D6;
	Tue, 30 Jun 2026 00:43:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782780204; cv=none; b=DFJVqdLjKy6LVq9jKmZYE7357tMLU18VVldtZgxIxopVTDNE6KJ7N184mpIQHeYtPkDIbgyYVst6gLqDozkDgE2rnh+F8jkx+LyHJcgMh1UQjyT/ZPs0kD7lAV6aRIry4oR3YpZ4Yu2PqBiRBBSbuGhv35pKKYwprvzQMVKG9RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782780204; c=relaxed/simple;
	bh=XCYsMANmwLrcDRBWlr3mUwE65kXSuP4yPX5Dzw0XCtU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AD2quNJGi948h2zL9+/+JzVWNbocNpjKdVlBVQyN2sNicJFYmsz3/8BFH+4EGZjTgpSdNMxo0/ioFZTW1BKxoLtxhnzKL1TYhQQguHar+v2DbF97lgDi5LumN1wVOt/0XjYprn+NVCE3Y7/AI7X/C1Tr5tEGlFSmmreGXg7qrY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1GDfHGj; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 773751F000E9;
	Tue, 30 Jun 2026 00:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782780203;
	bh=97Oc1JTmobiYknnZhsJ0eH2BXLzDou+75U1Rf+FMpAE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=X1GDfHGjp04WeJunf8T/yOgT1HrSrFniwXyA/xZYKzpRuYGpOD6Kf/Kouo4Ilcsrh
	 nLUNnqb4Z59lqUNsr7Uh6HYCJ40Feovhb4mbtqTN56L2km8BNMFECnouAqA9VJisNw
	 FwfuiaZrT/YXBFLG8zaWHPVWWnCgu7h2WYeHtLjGP7S78MDmeZ5JI01vYWL23aUEWz
	 EBEeOFO+ZeasIjPQSjHQn221mEAwUtgAjnah/6hFR2tyRJOsIM+AqUGnMQDXUjWW7P
	 M2QVWwb84Cmv0TK/sajCArXMYrBHwE6Ar6wdkZJu+MkVfdPx7TVHMfTQNP8EZ5ixQM
	 6PvsiPRFhUYWQ==
Date: Tue, 30 Jun 2026 01:43:18 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Kurt Borja <kuurtb@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>,
 Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko
 <andy@kernel.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/7] iio: adc: Add ti-ads1262 driver
Message-ID: <20260630014318.634af343@jic23-huawei>
In-Reply-To: <20260628-ads126x-v2-2-4b1b231325ba@gmail.com>
References: <20260628-ads126x-v2-0-4b1b231325ba@gmail.com>
	<20260628-ads126x-v2-2-4b1b231325ba@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuurtb@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317329-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,jic23-huawei:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 751226DF6C9

On Sun, 28 Jun 2026 00:36:03 -0500
Kurt Borja <kuurtb@gmail.com> wrote:

> Add the ti-ads1262 driver with initial support for the primary ADC
> (ADC1). The ADS1263 auxiliary ADC (ADC2) is handled by a separate driver
> and interoperability considerations were taken into account.
> 
> Signed-off-by: Kurt Borja <kuurtb@gmail.com>

I took a quick look and vast majority of stuff I found was already well
covered by David. I'll take a more detailed look at next version.

One trivial thing inline.

Thanks,

Jonathan

> diff --git a/drivers/iio/adc/ti-ads1262.c b/drivers/iio/adc/ti-ads1262.c
> new file mode 100644
> index 0000000000000000..6103cf5a2d1624a9
> --- /dev/null
> +++ b/drivers/iio/adc/ti-ads1262.c




> +static int ads1262_write_raw(struct iio_dev *indio_dev,
> +			     struct iio_chan_spec const *chan, int val,
> +			     int val2, long mask)
> +{
> +	struct ads1262 *st = iio_priv(indio_dev);
> +	struct ads1262_channel *chan_data;
> +	int i;
> +
> +	chan_data = &st->channels[chan->scan_index];
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_SAMP_FREQ: {
> +		i = ads1262_find_two(ads1262_data_rate_avail, val, val2);
> +		if (i < 0)
> +			return i;
> +
> +		guard(mutex)(&st->chan_lock);
> +		chan_data->data_rate = i;
> +
> +		break;
Trivial but might as well return 0 here and save a reader going to look for
what else happens after the switch.

> +	}
> +
> +	case IIO_CHAN_INFO_HARDWAREGAIN: {
> +		i = ads1262_find_one(ads1262_pga_gain_avail, val);
> +		if (i < 0)
> +			return i;
> +
> +		guard(mutex)(&st->chan_lock);
> +		chan_data->gain = i;
> +
> +		break;
> +	}
> +
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +
> +	return 0;
> +}

