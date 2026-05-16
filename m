Return-Path: <devicetree+bounces-298724-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEqxL1afCGq7yQMAu9opvQ
	(envelope-from <devicetree+bounces-298724-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 18:46:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 333E455CAF0
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 18:46:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1D6F93005EB0
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 16:46:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 608E03E4C6D;
	Sat, 16 May 2026 16:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2ypxmRY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5608287E;
	Sat, 16 May 2026 16:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778949972; cv=none; b=EPGClYFwBdi0Ep8AkEUkCU2pVaHrP9mBhHdkARH0l3CIdNtpa67TY8tyL0GElrADBLnS53nYoGC+i++qrXlqd/55cy3CRZcLGueOzjDogaONab+mXLOm/W/r+LNZkonV27eTB8FVGcYtIhv0Rk8bp2HVJaEcIfV9pTnQbBO01hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778949972; c=relaxed/simple;
	bh=epSplkKPvSmzfstIC5iCFKRrIgCZ0GQTgJAgTIZTjho=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aMhawWwkJnAqh92lM21iZqYzlug7k/BZ6cf/0Cbfyx/qyQlhRIkOK391EGg6Taguy68AduJWJ2FMnnpD2D0ZXQ1iqY8DLJCfPB7e6JzgDtH6WW/JyEJRv+LuXHPZtgW2vGF8EDxZ0ZmjtlWhV6sBTU+Xkk4SVQWpjYkYNfvgYhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2ypxmRY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3855C19425;
	Sat, 16 May 2026 16:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778949971;
	bh=epSplkKPvSmzfstIC5iCFKRrIgCZ0GQTgJAgTIZTjho=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Y2ypxmRYK0cMlhArBxQgZTztn9WSSFmfdIMua73CrWOH4z//RK8wZx9OgZa9oIm4V
	 HfJtAqPoRl/oITwZvabzLCbLXKAr1OwsINbt612/IApxrHXB4XUA/1NgxWmxB/x8aN
	 Q7VJMCwSlT2YwPXZS/907OJsIf0BKrb7P5U0EAjFcfZrkR49CD2TZe9s8jbFM4iqxr
	 2tJ0p+Vc7xuiW9k8Es8I8FBI7+RIyQkt3WcSNkNudcVuwBcYlyRp1Ai+I9/+z2t9US
	 JeYT/P0HZc9Zz9x648Ikm2cDdDrR3tO7vJ5UZH5SoDMbaOoQH63d0AqPq7waxNKqld
	 1cF5kjvr9tLZA==
Date: Sat, 16 May 2026 17:46:00 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Liviu Stan <liviu.stan@analog.com>
Cc: David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 "Antoniu Miclaus" <antoniu.miclaus@analog.com>, Francesco Lavra
 <flavra@baylibre.com>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux@analog.com>,
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 2/7] iio: temperature: ltc2983: Use local device
 pointer consistently
Message-ID: <20260516174600.65a65782@jic23-huawei>
In-Reply-To: <20260514144712.64374-3-liviu.stan@analog.com>
References: <20260514144712.64374-1-liviu.stan@analog.com>
	<20260514144712.64374-3-liviu.stan@analog.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 333E455CAF0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298724-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,analog.com:email]
X-Rspamd-Action: no action

On Thu, 14 May 2026 17:46:49 +0300
Liviu Stan <liviu.stan@analog.com> wrote:

> Some functions define a local 'dev' pointer but still use bare
> '&st->spi->dev' in some code paths, and some don't have it at all.
> Replace all bare references with the local pointer for consistency.
> 
> Fixes: f110f3188e5639c81c457b2b831d40dfe3891bdb ("iio: temperature: Add support for LTC2983")
> Signed-off-by: Liviu Stan <liviu.stan@analog.com>
> ---
> Changes in v2:
> - New patch.
> 
>  drivers/iio/temperature/ltc2983.c | 81 ++++++++++++++++++-------------
>  1 file changed, 46 insertions(+), 35 deletions(-)
> 
> diff --git a/drivers/iio/temperature/ltc2983.c b/drivers/iio/temperature/ltc2983.c
> index a292274e6ff0..e74ea4f87ec9 100644
> --- a/drivers/iio/temperature/ltc2983.c
> +++ b/drivers/iio/temperature/ltc2983.c
> @@ -351,6 +351,7 @@ static int __ltc2983_chan_assign_common(struct ltc2983_data *st,
>  					const struct ltc2983_sensor *sensor,
>  					u32 chan_val)
>  {
> +	struct device *dev = &st->spi->dev;

Why would you do that if no users in the function?  Bring it in when it is
useful only. Note sashiko also spotted this..

Seems that you missed a dev_dbg() call that should have used it just after this.
(that I didn't know but sashiko called it out ;)


Again, a patch by patch build would almost certainly have thrown a warning on this.



