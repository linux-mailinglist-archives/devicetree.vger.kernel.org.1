Return-Path: <devicetree+bounces-298938-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFxfMCvSCWp8rAQAu9opvQ
	(envelope-from <devicetree+bounces-298938-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 16:35:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B88561B27
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 16:35:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7133D301BCD9
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 14:35:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 321043246F4;
	Sun, 17 May 2026 14:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XecxlReB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1222F8EBC;
	Sun, 17 May 2026 14:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779028508; cv=none; b=Q+sBnek7vq09Yl7yDEYRce8yGqpaQEXoW+YaTIUCzCaaLZeFQSYcUHY/DwtU5hpXjKzGl4l8c2l1Maa/76zPWiRiQS73jptJsh0N612q9VNaQut9IabCHp7e8Jqn52GjLSSCcLHsmdLkL6Be4rpwZ8cRGVFNlW3FhjylMXVZS54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779028508; c=relaxed/simple;
	bh=7DDFiqGdr88lpnr9v5VOxAr5PZ6BDStRMX/RHYyBXqU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pnZlRZInMcKe1a73EYMy/duDBNQwrch/Q9IFhP5+yv1bfIHt2JimYLAuHuF1GwkXYSJIrPInIdPny6Cf3HxOsD2NNTz+nVqX71GXMaHUpRXU17Ql/CZ+NPUaHdO4Z+1CIXhMMKS/UIlopKgT0bMaZvTV7P3sbr2gstde2foC2eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XecxlReB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2962C2BCB0;
	Sun, 17 May 2026 14:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779028507;
	bh=7DDFiqGdr88lpnr9v5VOxAr5PZ6BDStRMX/RHYyBXqU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=XecxlReB7c2xtiFZhFxrNm4ZOnpL5RFVhoRc1LlDu7/2YECnO0DNPqrMQwRJYJUaw
	 oHXSsGPBo5LteH3TqvSEW5ws4GbvlUrMzYlmfKkjPzwO2XwRJwUAtbAea+ywsEDm0r
	 jwErQvlK2CMy9piFvX6CcwH2lsqp5koEoxfYoPITSGoJok1H2RoVlOQuHI+ebacqVh
	 Eur2h/1KXNk2lMCOG/WhiM77EoZi4W/RmkX3tked9G4C7NbMNvySoO9hjqolGpV6uj
	 cVB2ouxmaXc3bAN0yt5n1Xdnw4v0zgwRRi7Mkvj4J8mVkWUDh0dk/EmwwkbSjfOLnv
	 J2FdCZaPLvd0g==
Date: Sun, 17 May 2026 15:34:58 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Taha Ed-Dafili <0rayn.dev@gmail.com>
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, dlechner@baylibre.com,
 nuno.sa@analog.com, andy@kernel.org, skhan@linuxfoundation.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/5] iio: dac: ad5504: Align headers with IWYU
 principle
Message-ID: <20260517153458.47838fa6@jic23-huawei>
In-Reply-To: <20260509142047.30302-4-0rayn.dev@gmail.com>
References: <20260509142047.30302-1-0rayn.dev@gmail.com>
	<20260509142047.30302-4-0rayn.dev@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 32B88561B27
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298938-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	URIBL_MULTI_FAIL(0.00)[sea.lore.kernel.org:server fail];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Sat,  9 May 2026 15:20:41 +0100
Taha Ed-Dafili <0rayn.dev@gmail.com> wrote:

> Update the header inclusions to follow the IWYU principle and ensure
> they are sorted alphabetically:
> 
> - Remove <linux/fs.h>, <linux/slab.h>, and <linux/kernel.h> as they
>   are unused. The driver relies on devm_ managed allocations, so slab
>   is not required.
> - Replace <linux/bitops.h> with <linux/bits.h> as only the BIT() and
>   GENMASK() macros are used.
> - Add <linux/mod_devicetable.h> for struct spi_device_id.
> - Add <linux/errno.h> and <linux/types.h> for error codes and data types.
> - Add <asm/byteorder.h> for cpu_to_be16().
> - Add <linux/array_size.h> for ARRAY_SIZE().
> - Add <linux/kstrtox.h> for string to integer conversions.
> 
> Signed-off-by: Taha Ed-Dafili <0rayn.dev@gmail.com>
> ---
>  drivers/iio/dac/ad5504.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/iio/dac/ad5504.c b/drivers/iio/dac/ad5504.c
> index 03ce37e2c616..57e6eeed26ef 100644
> --- a/drivers/iio/dac/ad5504.c
> +++ b/drivers/iio/dac/ad5504.c
> @@ -5,16 +5,19 @@
>   * Copyright 2011 Analog Devices Inc.
>   */
>  
> -#include <linux/bitops.h>
> +#include <asm/byteorder.h>

asm always go after linux in their own block.
Normally after the linux/iio block.


> +#include <linux/array_size.h>
> +#include <linux/bits.h>
>  #include <linux/device.h>
This is like kernel.h in that if we are tidying up headers
we should be looking to include dev_printk.h etc rather than this.

I couldn't immediately see a reason we need this in the driver.
If there is one it is fine to keep it.

Otherwise this lot seems reasonable.
> -#include <linux/fs.h>
> +#include <linux/errno.h>
>  #include <linux/interrupt.h>
> -#include <linux/kernel.h>
> +#include <linux/kstrtox.h>
> +#include <linux/mod_devicetable.h>
>  #include <linux/module.h>
>  #include <linux/regulator/consumer.h>
> -#include <linux/slab.h>
>  #include <linux/spi/spi.h>
>  #include <linux/sysfs.h>
> +#include <linux/types.h>
>  
>  #include <linux/iio/dac/ad5504.h>
>  #include <linux/iio/events.h>


