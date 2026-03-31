Return-Path: <devicetree+bounces-283083-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kH9yDzryy2m5MgYAu9opvQ
	(envelope-from <devicetree+bounces-283083-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 18:11:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 470D436C665
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 18:11:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 483A130AD7D2
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 15:48:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7504423173;
	Tue, 31 Mar 2026 15:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+pDR2Ga"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D90423149;
	Tue, 31 Mar 2026 15:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774971936; cv=none; b=heAAzr5ODfxTc4ffxY/FORe8DANszwc8wOt+VG5sDZtHwbvRmaYobYOjXnCDLR9zrNK4EbXDr43DthiK/JS5DguN+Tr98kQ/aNNnF6zyg/jExd45103soi28d7CtHRrWozSSBaGKKU8Z+pZtvw8WnWxbGgUZk+2+LN1WnbNP2Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774971936; c=relaxed/simple;
	bh=qWqxYpitkGCEhcXR+MrXrCnZ1sb/umrdZxHmYDov3HY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kBTGOQMk1NlVfFaVVpwZZoPy9oCSck3J7DZI3y3QZ2Ocs4+049+SRLEaVk26/2roGknV9jDEesILoVcD4I9bo0PC14BJlZZEgK3UjyHK4HHaXXJ9V6euelM3JKYeR4B+dcwsD0QLZCNwgiBYXsXzUj+GGxgILmgiaptdonpUzC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+pDR2Ga; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14124C19423;
	Tue, 31 Mar 2026 15:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774971936;
	bh=qWqxYpitkGCEhcXR+MrXrCnZ1sb/umrdZxHmYDov3HY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k+pDR2GaMcYsl5zX+Qppedsw7Oj9KeuLWw/Vkspbz4lSRI6gW7SfZnQHyo+Ac4tyd
	 ihUBGkxCMji3IWBovxkWyM4KRgtDfj5ndQoJ+IMvKbvNky6tOBgctPm0/+rV9FnFj2
	 w6C6wlTTe5ZYQUZJ3xjLvV6ya3dvx6VWdN9CEk7aatX5cUuwdsSAUAJ2oNvZNT5zlX
	 +R6BYg3LGLIFxFZls6PSYnw3MDy7Zh80qvVv8rWL5XeY53hB7G2u73H2ISRVN/f2at
	 CDgF3J1OBp166dL+oLYmbQc6YgpnR0BhMKVeI62JVsAO2lb39vPE0SaRORWMwZhztq
	 J0QQZxgGIxRLA==
Date: Tue, 31 Mar 2026 16:45:30 +0100
From: Lee Jones <lee@kernel.org>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 3/8] mfd: omap-usb-host: Cleanup header includes
Message-ID: <20260331154530.GI3795166@google.com>
References: <20260323-omap4-fix-usb-support-v1-0-b668132124ac@bootlin.com>
 <20260323-omap4-fix-usb-support-v1-3-b668132124ac@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260323-omap4-fix-usb-support-v1-3-b668132124ac@bootlin.com>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-283083-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[iki.fi,kemnade.info,baylibre.com,kernel.org,atomide.com,gmail.com,bootlin.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,ti.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 470D436C665
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 23 Mar 2026, Thomas Richard wrote:

> Remove unused includes (linux/kernel.h, linux/types.h and linux/delay.h).
> Sort the remaining ones alphabetically.

What about 'linux/slab.h'?

> Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
> ---
>  drivers/mfd/omap-usb-host.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/mfd/omap-usb-host.c b/drivers/mfd/omap-usb-host.c
> index 4d29a6e2ed87abf2a0f6d5a704525baaa6f0cbcb..4e066a17cef0400edbfcb3012a16ceee06e52140 100644
> --- a/drivers/mfd/omap-usb-host.c
> +++ b/drivers/mfd/omap-usb-host.c
> @@ -6,19 +6,15 @@
>   * Author: Keshava Munegowda <keshava_mgowda@ti.com>
>   * Author: Roger Quadros <rogerq@ti.com>
>   */
> -#include <linux/kernel.h>
> -#include <linux/module.h>
> -#include <linux/types.h>
> -#include <linux/slab.h>
> -#include <linux/delay.h>
>  #include <linux/clk.h>
>  #include <linux/dma-mapping.h>
> -#include <linux/platform_device.h>
> +#include <linux/err.h>
> +#include <linux/module.h>
>  #include <linux/platform_data/usb-omap.h>
> +#include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/of.h>
>  #include <linux/of_platform.h>

This is still not alphabetical.

-- 
Lee Jones [李琼斯]

