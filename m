Return-Path: <devicetree+bounces-317332-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4uyjDs0TQ2pPPQoAu9opvQ
	(envelope-from <devicetree+bounces-317332-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 02:54:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DC36DF765
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 02:54:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WFnBzMY4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317332-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317332-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 57CB3302BDDD
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 00:54:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C761121ABAA;
	Tue, 30 Jun 2026 00:54:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C751A9F97;
	Tue, 30 Jun 2026 00:54:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782780874; cv=none; b=MD9M2xsjN9FtroBJ9EztqWQ329TWKj6YYTlaImtWEW9N6BSUTA9+8Tx9zpqQnBg18htdnQTb95DYFpexb78lFMuSlosoNHcye7vXkBj2jaJRuNsEvZGikhrBWlWy0bWffV5LoohZckurNDZRv0PYfKOxCSIxc/bffHP2oGu2dqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782780874; c=relaxed/simple;
	bh=qO/wKNfbwMMNGbxsYMPoNOGWOQclYCh0mKh1xaoiVMo=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PUbtYHz0BzA0IoFXlBA9C6G1Q8D/bZcTCi4Q8qxg61gA7iDXX2gHQs77XJ9gLH8FXi/WeqcI+4w8EFPvZyNYrGwKJCS5eqel1syQmq890RXh6vODq1zzWLuScwWDha4lhJE+QkxkzAFdAqQexgFH9K+FbFlqwoL4qhRMrbGDoFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFnBzMY4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEBEA1F000E9;
	Tue, 30 Jun 2026 00:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782780873;
	bh=CjhOxiqtrEXPLQKUo8jFEv/0peqmNNC76tLs4TjQuQQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=WFnBzMY4j1emvxwv1ulcrVGvbJrUqvy4lVxnyh/GfnaiR7EhNkVOBioZrorP22Zo4
	 Aa+uzEQjrSRhXqGQynekm5TUbETa8yG8c3jJStEHa9sBshyrhTdNZnywtXNYYByQot
	 0j719/25lM7gp/VmnsKyKeofZV7qx4R+TWm0w5bEqGbUnxe/RSi64bxfr1/dxNF+xH
	 ialOT5CAptQWGTe86aZ+RRhZ6aErnDUABzswN5e4gBLPJw5cPfjqJzEfrG4WKPYShH
	 CLp64DOSg3U8FWcgYGook2Y8QKmnv8Xvd6HjCGbhl09DDKaIyv7tgCTSF1eUqvyaaV
	 klHp1stCBpjlA==
Date: Tue, 30 Jun 2026 01:54:28 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Kurt Borja <kuurtb@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>,
 Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko
 <andy@kernel.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 6/7] iio: adc: ti-ads1262: Add buffer and trigger
 support
Message-ID: <20260630015428.7127fbdb@jic23-huawei>
In-Reply-To: <20260628-ads126x-v2-6-4b1b231325ba@gmail.com>
References: <20260628-ads126x-v2-0-4b1b231325ba@gmail.com>
	<20260628-ads126x-v2-6-4b1b231325ba@gmail.com>
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
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:kuurtb@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317332-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,jic23-huawei:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 98DC36DF765

On Sun, 28 Jun 2026 00:36:07 -0500
Kurt Borja <kuurtb@gmail.com> wrote:

> Add triggered buffer support and a data-ready (DRDY) hardware trigger.
> 
> Signed-off-by: Kurt Borja <kuurtb@gmail.com>


> +static irqreturn_t ads1262_trigger_handler(int irq, void *p)
> +{
> +	struct iio_poll_func *pf = p;
> +	struct iio_dev *indio_dev = pf->indio_dev;
> +	struct ads1262 *st = iio_priv(indio_dev);
> +	s64 ts = pf->timestamp;
> +	unsigned int weight;
> +	int ret;
> +
> +	weight = bitmap_weight(indio_dev->active_scan_mask,
> +			       iio_get_masklength(indio_dev));
> +
> +	memset(st->scan_buffer, 0, sizeof(st->scan_buffer));

We don't normally care about stale data in scan_buffers. The only 
thing to be careful of is any stack or heap data leakage (I don't 
see any of that here) So is this clear needed?

Userspace should know which bits are valid and extract them,
thus ignoring anything stale in the gaps.

> +
> +	if (weight == 1)
> +		ret = ads1262_fill_buffer_one(st);
> +	else
> +		ret = ads1262_fill_buffer_mult(st);
> +	if (ret)
> +		goto out_notify_done;
> +
> +	iio_push_to_buffers_with_ts(indio_dev, st->scan_buffer,
> +				    sizeof(st->scan_buffer), ts);
> +
> +out_notify_done:
> +	iio_trigger_notify_done(indio_dev->trig);
> +
> +	return IRQ_HANDLED;
> +}



