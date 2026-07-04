Return-Path: <devicetree+bounces-320525-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jhl6ANCaSWoB4QAAu9opvQ
	(envelope-from <devicetree+bounces-320525-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 01:44:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAA3708A2A
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 01:44:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jLsEKwaN;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320525-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-320525-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DC1943006928
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 23:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C1603BE650;
	Sat,  4 Jul 2026 23:44:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6097F3A7D9E;
	Sat,  4 Jul 2026 23:44:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783208644; cv=none; b=UCmC4HXissZLbpquTMpag4C2RHNGmiPr/cW85FrhNBvrOoCXyxImJv0RZNbrlPyveMYX67gXE/gE5iGxPO3nNRqHPlcyv2iuIwSeTdMJC2loo5Ev8O3yMsTi6mwAOb4wlsAdhPeMonZ4IJ/KuZgzDcbYCOk7RMV77OD81Bx+Eyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783208644; c=relaxed/simple;
	bh=c4O4KyNMRxE0+hVBrYSk/+QOj9L35Rzg8EjDgYOLo64=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SAW0ymvuy3zwMBmWpI7TjsmrEPlK0SkMY1EafFcZt65CoKRDZ3zobs4JnkMcb9x6FA3UgCCtz5dGT+9hj8iIHohIYe20bJJpI55CT26A1dJ/VJ0cLUPrsHl1r7ShW9WvjOwutlD/hQoKewNEsBhvFRmWLoAJruz5B8IqQPwgoco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLsEKwaN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76E301F000E9;
	Sat,  4 Jul 2026 23:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783208643;
	bh=8Kb6ZRbp6rmJhiqr4hN3r5nXzNVI9x8m2BBe4AUFbns=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=jLsEKwaNZdmmIe7L+gj9JXb4+0xHxG/czIlcIWGpbEa4A4U0Qm68SvwefxAAkJo+Y
	 HMZPXYPKIqLrRThCEHFC1SiFtVLXgRJJNR2r9NJYyC+zQDYYQfX0ONLSQJzN3jJwiN
	 m8U5QA5hSleWs1gkqmOoqoVfwijIX0QHhqRtAjVB1wmNQlpV0MTFdT4PhkvpkDHigM
	 bntSEkylx9mD/wnFTHFSi7VQvOFGYYZnOMKO3/tokZGQGvf38h7Rm5lswzr28GTZnF
	 kHCME4UssGDAkHbw8F3dUw/E+yLTLPIzrvHmBPMi9Wrh4ZuP/bQIGCpBj5ld6hDXdJ
	 2VIdPnM2YHxsQ==
Date: Sun, 5 Jul 2026 00:43:57 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Marcelo Schmitt <marcelo.schmitt@analog.com>
Cc: <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <nuno.sa@analog.com>,
 <Michael.Hennerich@analog.com>, <dlechner@baylibre.com>, <andy@kernel.org>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <julianbraha@gmail.com>, <marcelo.schmitt1@gmail.com>
Subject: Re: [PATCH v5 2/4] iio: adc: ltc2378: Add support for LTC2378-20
 and similar ADCs
Message-ID: <20260705004357.6f3e8157@jic23-huawei>
In-Reply-To: <724f2408cb84bf4546115408fc9857777e6f2fd7.1783028033.git.marcelo.schmitt@analog.com>
References: <cover.1783028033.git.marcelo.schmitt@analog.com>
	<724f2408cb84bf4546115408fc9857777e6f2fd7.1783028033.git.marcelo.schmitt@analog.com>
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
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:marcelo.schmitt@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:nuno.sa@analog.com,m:Michael.Hennerich@analog.com,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:julianbraha@gmail.com,m:marcelo.schmitt1@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:marceloschmitt1@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-320525-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,analog.com,baylibre.com,kernel.org,gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,jic23-huawei:mid,analog.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ECAA3708A2A

On Thu, 2 Jul 2026 18:45:27 -0300
Marcelo Schmitt <marcelo.schmitt@analog.com> wrote:

> Support for LTC2378-20 and similar analog-to-digital converters.
> 
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
Just a couple of trivial additional comments as you are spinning
again anyway.

> diff --git a/drivers/iio/adc/ltc2378.c b/drivers/iio/adc/ltc2378.c
> new file mode 100644
> index 000000000000..b5cf2e974dac
> --- /dev/null
> +++ b/drivers/iio/adc/ltc2378.c
> @@ -0,0 +1,404 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Analog Devices LTC2378 ADC series driver
> + *
> + * Copyright (C) 2026 Analog Devices Inc.
> + * Author: Marcelo Schmitt <marcelo.schmitt@analog.com>
> + */
> +
> +#include <linux/bitops.h>
> +#include <linux/bits.h>
> +#include <linux/cleanup.h>
> +#include <linux/delay.h>
> +#include <linux/err.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/mod_devicetable.h>

Drop this one. Uwe just had a series merged that moved
the relevant include path into spi/spi.h 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/diff/include/linux/spi/spi.h?id=ecca1d63c1eadbbb38ceab82de0f7adfbc2b465d

I'll probably rebase the iio tree on rc2 or merge that in
to resolve any conflicts.

> +#include <linux/module.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/spi/spi.h>
> +#include <linux/types.h>
> +#include <linux/units.h>
> +
> +#include <linux/iio/iio.h>
> +#include <linux/iio/types.h>

We had some discussion about this recently and IIRC concluded that types.h will
always be included by iio.h so maybe just iio.h is enough.
I don't care strongly either way though.

> +
> +static int ltc2378_channel_single_read(const struct iio_chan_spec *chan,
> +				       struct ltc2378_state *st, int *val)
> +{
> +	const struct iio_scan_type *scan_type = &chan->scan_type;
> +	u32 sample;
> +	int ret;
> +
> +	ret = ltc2378_convert_and_acquire(st);
> +	if (ret)
> +		return ret;
> +
> +	if (chan->scan_type.endianness == IIO_BE) {
> +		if (chan->scan_type.realbits > 16)
> +			sample = be32_to_cpu(st->scan.data.sample_buf32_be);
> +		else
> +			sample = be16_to_cpu(st->scan.data.sample_buf16_be);
> +	} else {

Trivial but can we have a /* IIO_CPU */ for this else.
I briefly wondered why for little endian we didn't need to use lexx_to_cpu()
before registering this is for offload where the spi controller is dealing
with it (and hence IIO_CPU for the endian)


> +		if (chan->scan_type.realbits > 16)
> +			sample = st->scan.data.sample_buf32;
> +		else
> +			sample = st->scan.data.sample_buf16;
> +	}
> +
> +	sample >>= chan->scan_type.shift;
> +
> +	if (scan_type->format == IIO_SCAN_FORMAT_SIGNED_INT)
> +		*val = sign_extend32(sample, scan_type->realbits - 1);
> +	else
> +		*val = sample;
> +
> +	return 0;
> +}

