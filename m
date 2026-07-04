Return-Path: <devicetree+bounces-320527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5Qf7MdqbSWqF4QAAu9opvQ
	(envelope-from <devicetree+bounces-320527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 01:48:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B58DA708A6E
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 01:48:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hB63EwOa;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320527-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320527-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F00693001FA0
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 23:48:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92C6A3A6EE4;
	Sat,  4 Jul 2026 23:48:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80E3833F59E;
	Sat,  4 Jul 2026 23:48:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783208916; cv=none; b=SRy+kWvfY/7Bo9VWn/EN9rBG8pGLpb7ra7ci0tfug38e6ps6zM6Wlcg0yT6zlUU2tCx4rXumKfYedNcKvOiqULKjIAL8fiyL5wsG1qNmZIhOIKtfdL3QNEFtjHy+OZ0j8+Nm2HBi2WE3okArcd5M2g3RaCfsPFDRq8vtugGN0OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783208916; c=relaxed/simple;
	bh=Nc8GtcpQDANqdQMg662dOMSXMS/QcG1iFiw/XjMOiXg=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nEoVCVmCEZZdQ5AZ/BSJw1BY5foPNxoMmC5IdbWNRcfhNxOE6xF3eV/yGb06WMmTqpnamjVlK3DNc4iKJ4qJa5mXymuK7kpemTqvcHvzObcpMgyiuJNdWbE2u++b8by0DYPrKk2z71zI4nKXsXKPRRd7rdl19jYZzCjDZP94ilQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hB63EwOa; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADA9D1F000E9;
	Sat,  4 Jul 2026 23:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783208915;
	bh=O0iLzdEV4qnu4OqqfS+8ihWlYCwjBEzvuv+WkZgE8oU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=hB63EwOa3jVrLolQtEP3Dg9WOgt4YdmiLTaNgDdbG5a3oQQ7AV2trjBMOZiVaJmO/
	 4Fd8ZzLhh6mgHo7LLKN0axxHzdsRLSCz6XkV2zwv7f5BXfv6dmxRz77xfEJpFzLFYc
	 FosJeb3T9SUFTwnntEK9crN8uc7pzipHHgY79+cjnx3RBcWl6Z30s8LppIRAheIn0E
	 OP1/BQPN81BuTKxkHs+AjbdMSydvTT/p5ZZnI8pei24YAcQDeH2fk7WpDfndqdBLTR
	 Tcczu9mhj94V0iSS8jgfDw5EmgW5cK5LOhRTLSU8jaeuxIpMQGwukvnSXiR/csE//6
	 RCGCGgqLkjteQ==
Date: Sun, 5 Jul 2026 00:48:32 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Marcelo Schmitt <marcelo.schmitt@analog.com>
Cc: <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <nuno.sa@analog.com>,
 <Michael.Hennerich@analog.com>, <dlechner@baylibre.com>, <andy@kernel.org>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <julianbraha@gmail.com>, <marcelo.schmitt1@gmail.com>
Subject: Re: [PATCH v5 3/4] iio: adc: ltc2378: Enable high-speed data
 capture
Message-ID: <20260705004832.60661c48@jic23-huawei>
In-Reply-To: <e285c16edf2e5483effad96a852a2ae110a27899.1783028033.git.marcelo.schmitt@analog.com>
References: <cover.1783028033.git.marcelo.schmitt@analog.com>
	<e285c16edf2e5483effad96a852a2ae110a27899.1783028033.git.marcelo.schmitt@analog.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:marcelo.schmitt@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:nuno.sa@analog.com,m:Michael.Hennerich@analog.com,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:julianbraha@gmail.com,m:marcelo.schmitt1@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:marceloschmitt1@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-320527-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,jic23-huawei:mid,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B58DA708A6E

On Thu, 2 Jul 2026 18:45:49 -0300
Marcelo Schmitt <marcelo.schmitt@analog.com> wrote:

> Make use of SPI transfer offloading to speed up data capture, enabling data
> acquisition at faster sample rates (up to 2 MSPS).
> 
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>

> diff --git a/drivers/iio/adc/ltc2378.c b/drivers/iio/adc/ltc2378.c
> index b5cf2e974dac..b25602d91bbe 100644
> --- a/drivers/iio/adc/ltc2378.c
> +++ b/drivers/iio/adc/ltc2378.c
> @@ -12,16 +12,28 @@
>  #include <linux/delay.h>
>  #include <linux/err.h>
>  #include <linux/gpio/consumer.h>
> +#include <linux/math64.h>
>  #include <linux/mod_devicetable.h>
>  #include <linux/module.h>
>  #include <linux/regulator/consumer.h>
> +#include <linux/pwm.h>
>  #include <linux/spi/spi.h>
> +#include <linux/spi/offload/consumer.h>
> +#include <linux/spi/offload/types.h>
> +#include <linux/time64.h>
>  #include <linux/types.h>
>  #include <linux/units.h>
>  
> +#include <linux/iio/buffer.h>
> +#include <linux/iio/buffer-dmaengine.h>
>  #include <linux/iio/iio.h>
> +#include <linux/iio/sysfs.h>
I'm probably missing something. Why this include?

Jonathan


