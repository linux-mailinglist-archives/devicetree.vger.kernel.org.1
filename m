Return-Path: <devicetree+bounces-289763-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFteL5Vg6mmrygIAu9opvQ
	(envelope-from <devicetree+bounces-289763-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 20:10:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BEC455ED1
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 20:10:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 380DD306EB42
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 18:05:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 781343A9620;
	Thu, 23 Apr 2026 18:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cf9m0ivy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044593563F3;
	Thu, 23 Apr 2026 18:05:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776967536; cv=none; b=H0KBRDwyLFr9pBXQDGA65lN1Ab5ez8G+GUs3JA8Ex5WiI6fL2HimKQ5xsXQkiwzW8jHOKSvSnC8Laoe8SkTJF+kFGL+QuQDOjw5y3d9khcAO5BwlaGuMIUVDpAroHGzixtPy+vT69DM0qsJXgg4sdAZmanpY0Gbyf8tt/Jqe2yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776967536; c=relaxed/simple;
	bh=9cO9xmZg4OayKM/KCd1vs7KY2mqIG1j32LZEggEuwtU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IlXHoQ3TUACzU3MQWKcCh0A1AIyQoORts8i3HMiicRuZbgsiZc48zilifZ3UxKfi/yVhNIoWBdL0Bpsx/Y3Ro7aP96Z6ITbnxCIWnCdRZX2CEyxEPbCuBxYF83Xy/F74z7YOGifmGF/1wFfbi5ZOmoI0KZO4ERegYPj8flA9NNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cf9m0ivy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EFA6C2BCB2;
	Thu, 23 Apr 2026 18:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776967535;
	bh=9cO9xmZg4OayKM/KCd1vs7KY2mqIG1j32LZEggEuwtU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Cf9m0ivyMxTwr9eFxfAZ1RuV+4Dx7OEjofDRugGJrF9JbR4Y4/11FswK03VaEkXKu
	 lrLwe+lHIq/MPsqyFHYQR/a7XFAf0l1VvTRonjYJxdsc+YKELRAOKibMu845hQrG2R
	 NJ3U32GBXUHSXS3cYeJgHuMJXQbcRs6jtZgoRukR+VTpXwPb6fveBDlNAPm24SvjLd
	 JiSYcFM6uC/ExZcWhOEfyKCJy9UkkYhJ7mpAC0wV0ZNVD7C4qFnOohrnVQLrCgbDJv
	 mtq/ZBuo1/VG+hndFIPNl1Ejn5Cw/CalUiA5v5kyQKYUoOZd/4SwoUpdDmfoEP3hgN
	 CUA0eBZsLowxA==
Date: Thu, 23 Apr 2026 19:05:24 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Rodrigo Alencar via B4 Relay
 <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Michael Auchter
 <michael.auchter@ni.com>, linux-hardening@vger.kernel.org, Lars-Peter
 Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, David Lechner <dlechner@baylibre.com>, Andy
 Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Kees
 Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH 14/22] iio: dac: ad5686: add support for missing power
 supplies
Message-ID: <20260423190524.12ef4acb@jic23-huawei>
In-Reply-To: <20260422-ad5313r-iio-support-v1-14-ed7dca001d1b@analog.com>
References: <20260422-ad5313r-iio-support-v1-0-ed7dca001d1b@analog.com>
	<20260422-ad5313r-iio-support-v1-14-ed7dca001d1b@analog.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-289763-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:email]
X-Rspamd-Queue-Id: 14BEC455ED1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 22 Apr 2026 15:45:48 +0100
Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:

> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 
> Get optional regulators for vdd, vlogic and vref input power pins. vdd is
> the input power supply, while vlogic powers the digital side. vref is
> replacing vcc, which is being deprecated, but still supported. The value
> of vref_mv is checked so that a device without internal voltage reference
> cannot proceed without an explicit supply. Error report uses
> dev_err_probe(), which helps debugging an init issue.
> 
> Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
> ---
>  drivers/iio/dac/ad5686.c | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iio/dac/ad5686.c b/drivers/iio/dac/ad5686.c
> index 07a944311f0e..4989404a7b6e 100644
> --- a/drivers/iio/dac/ad5686.c
> +++ b/drivers/iio/dac/ad5686.c
> @@ -7,6 +7,7 @@
>  
>  #include <linux/array_size.h>
>  #include <linux/bitfield.h>
> +#include <linux/dev_printk.h>
>  #include <linux/err.h>
>  #include <linux/export.h>
>  #include <linux/module.h>
> @@ -471,13 +472,27 @@ int ad5686_probe(struct device *dev,
>  	st->read = read;
>  	st->chip_info = chip_info;
>  
> -	ret = devm_regulator_get_enable_read_voltage(dev, "vcc");
> +	ret = devm_regulator_get_enable_optional(dev, "vdd");
> +	if (ret && ret != -ENODEV)
> +		return dev_err_probe(dev, ret, "failed to enable vdd supply\n");
vdd is very rarely optional.  Can we not rely on the stub regulator
that will be provided if there isn't one in DT?
> +
> +	ret = devm_regulator_get_enable_optional(dev, "vlogic");
Also doesn't sound very optional.

> +	if (ret && ret != -ENODEV)
> +		return dev_err_probe(dev, ret, "failed to enable vlogic supply\n");
> +
> +	ret = devm_regulator_get_enable_read_voltage(dev, "vref");
> +	if (ret == -ENODEV) /* vcc-supply is deprecated, but supported still */
> +		ret = devm_regulator_get_enable_read_voltage(dev, "vcc");
>  	if (ret < 0 && ret != -ENODEV)
> -		return ret;
> +		return dev_err_probe(dev, ret, "failed to read vref voltage\n");
>  
>  	st->use_internal_vref = ret == -ENODEV;
>  	st->vref_mv = st->use_internal_vref ? st->chip_info->int_vref_mv : ret / 1000;
>  
> +	if (!st->vref_mv)
> +		return dev_err_probe(dev, -EINVAL,
> +				     "invalid or not provided vref voltage\n");
> +
>  	/* Set all the power down mode for all channels to 1K pulldown */
>  	st->pwr_down_mode = ~0U;
>  	st->pwr_down_mask = ~0U;
> 


