Return-Path: <devicetree+bounces-318879-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qx3TLZ5yRWrRAQsAu9opvQ
	(envelope-from <devicetree+bounces-318879-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 22:03:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF526F13F1
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 22:03:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KYJIfpFW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318879-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318879-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8904A303F242
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 19:59:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48F3635E950;
	Wed,  1 Jul 2026 19:59:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F42382398;
	Wed,  1 Jul 2026 19:59:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782935981; cv=none; b=gI44FIh0AQ4yY/CbK9n7L9ovjgofkn+cTBNWQHzp3707tTwUSyuzHUkWEkWe+HqHLPcrIoQJwwfP0pdcxADBVf0nGsBRu0QG/o3uClrFayacpe5AY1LhB+CBQ1amQ7iq3oWSZC23kIUg8vKmoorMCgNkG9MBL9OTahd5Ai0RhiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782935981; c=relaxed/simple;
	bh=/tBUKj0iY/StXCr0MKuI7jY9NHQeAKTir4Bj7Y5/fXU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kjMtc++TSqsgvo/q1GcTnOjG1fT0AYzrB+LMRjao77em37uJFx83jW3xUN32ZzqLT+7cBIt6PqAgU4Vbz+aqERc9MdwRwRoJPNHj+XTdN6aTgFvNk53GFpmPnLklYKyrZh5gzMUf3QtZnf5TYOXJpNFrCWR2KGdHpVFuZwnd4ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYJIfpFW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22C3C1F000E9;
	Wed,  1 Jul 2026 19:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782935979;
	bh=GB7+AJUFtH9rafXyLhJpbth0HCa2w5+qr4sa9ZK2T90=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=KYJIfpFWJrroGCOuC0DlQlZ5S2W0wpePeAuIQgTbUcJDEUhUi5DLHSIr2RXhGLdYh
	 aU8VWWBSA/J7gp4jH+QfN7IuJfpCHYy4IUbjlznolNmBpvXqXYpTgdgD1Ht89J7+PT
	 ay7muYbvSp1UVeHFL3aJol263Z9Oo6tqepGILjkVaTu7SLuB1GNvuX+IxueJRXm/Xb
	 jgiLUfNCCOdbKslHpPEVwVZjyi4d1Dgkvi8gP3JvyrEIfL40HAICRUDsBE8fYe1KZN
	 Lql+PiT0U9eTqKiTrYngh/JYBr7xGpvA/dzEnDhaYpn8mzoDDaqxWV3Cfn9G6vf1vG
	 XlD1Kxa125voA==
Date: Wed, 1 Jul 2026 20:59:35 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: "David Lechner (TI)" <dlechner@baylibre.com>
Cc: Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko
 <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chris Hall
 <c-hall@ti.com>, Patrick Edwards <pedwards@ti.com>, Kurt Borja
 <kuurtb@gmail.com>, Nguyen Minh Tien <zizuzacker@gmail.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 6/8] iio: adc: add ti-ads112c14 driver
Message-ID: <20260701205935.0765c2ba@jic23-huawei>
In-Reply-To: <20260625-iio-adc-ti-ads122c14-v2-6-ceb9b0b561cb@baylibre.com>
References: <20260625-iio-adc-ti-ads122c14-v2-0-ceb9b0b561cb@baylibre.com>
	<20260625-iio-adc-ti-ads122c14-v2-6-ceb9b0b561cb@baylibre.com>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-318879-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:c-hall@ti.com,m:pedwards@ti.com,m:kuurtb@gmail.com,m:zizuzacker@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[analog.com,kernel.org,ti.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,baylibre.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,jic23-huawei:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1AF526F13F1

On Thu, 25 Jun 2026 16:55:08 -0500
"David Lechner (TI)" <dlechner@baylibre.com> wrote:

> Add a new driver for the TI ADS112C14/ADS122C14 ADC chips.
> 
> This first step is adding a very basic driver that only supports power
> on/reset and reading the system monitor channels.
> 
> ADS112C14_SYS_MON_CHANNEL_SHORT is the last channel rather than being in
> logical order by address to keep the voltage channels together and in
> case we find we need to add variants of this channel with different
> voltage reference later.
> 
> Signed-off-by: David Lechner (TI) <dlechner@baylibre.com>

Really trivial comments below.

> diff --git a/drivers/iio/adc/ti-ads112c14.c b/drivers/iio/adc/ti-ads112c14.c
> new file mode 100644
> index 000000000000..c61d47244732
> --- /dev/null
> +++ b/drivers/iio/adc/ti-ads112c14.c
...

> +
> +	/* Write magic reset value (0x16) to ensure known state.*/

Space before */

> +	ret = regmap_write(data->regmap, ADS112C14_REG_CONVERSION_CTRL,
> +			   FIELD_PREP(ADS112C14_CONVERSION_CTRL_RESET, 0x16));

...

> +static const struct ads112c14_chip_info ads122c14_chip_info = {
> +	.name = "ads122c14",
> +	.resolution_bits = 24,

Might be a good idea to have expected stuff for DEVICE_ID in here
as well.  Whilst we don't want to reject a missmatch (for dt fallback)
reasons, it is nice to print if we see one as a hint something that might
be unexpected is going on.
> +};



