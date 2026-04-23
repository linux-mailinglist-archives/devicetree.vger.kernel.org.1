Return-Path: <devicetree+bounces-289764-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uIRMK51g6mmrygIAu9opvQ
	(envelope-from <devicetree+bounces-289764-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 20:10:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7C6455ED8
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 20:10:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A8AEF3009F22
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 18:09:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A816C3AA504;
	Thu, 23 Apr 2026 18:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1ac9nzT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84A95387371;
	Thu, 23 Apr 2026 18:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776967764; cv=none; b=uDvPKw30/YwacD8/prUhv3wXZvscif4GleG8L2I2XxpnRkMIfu2ob6ZZpBhiELQxLkRDJRka488ShGieT2DSSebMIWtoHOAH9QlOlYDl2SMtLCT7QSU8H5cOCRvg8RfMxkwPR4ARe4wO0gohxX8L5urVG1EKmtqZMQhgEUvWb1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776967764; c=relaxed/simple;
	bh=cbhQnGo0FzkneMoMvZ6mq0hgLBtbsLL/omUeKvQraow=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SOkKmuspp3OFhQKUroY+Dzik208xkIa1qjnm3iUlq8zBTPDvp7rAMDca2pbo6BELCo7TzZoZ71Gr5iIozx/WLYCODV32xO9ylPPnS042wS3qtikFlnUbsAU4i2hoPknMZXN9PygjMupF7d5+szKGaoRza2AUNNHhIFHOBGv8v0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1ac9nzT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5470C2BCAF;
	Thu, 23 Apr 2026 18:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776967764;
	bh=cbhQnGo0FzkneMoMvZ6mq0hgLBtbsLL/omUeKvQraow=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=J1ac9nzT8tcBqf8YM9jj1i6F9GDdXjI95NnJpd59TeiWKgGWdjdM4OUe9ndGOv9Y1
	 OxmqIEg3wW9w48KtJ4rd62InaR+Vdk3adfBKp90ZuscKriIr2n2aN3ldo6cNgLNmFh
	 Y0GrpHYCaepmE2wyYEr1sfJDF+ciFtUifjsb9ImSAA33vCzWI/W4BL13mTlbuQ1ZzX
	 HUUY1El6sqEzjzUhJvus1rmbL5CWA+tmei1X7HgmU4XRC44KPf22RkAi3KGQHsRnxC
	 CG+/DppTxrM0p7365MaeycPOcDvlmuxJAdAN6aWh7mVCLDz+Zmnq79YWqZHipcaxrF
	 FhO0DKfHdUwqw==
Date: Thu, 23 Apr 2026 19:09:13 +0100
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
Subject: Re: [PATCH 15/22] iio: dac: ad5686: create bus ops struct
Message-ID: <20260423190913.712f12b1@jic23-huawei>
In-Reply-To: <20260422-ad5313r-iio-support-v1-15-ed7dca001d1b@analog.com>
References: <20260422-ad5313r-iio-support-v1-0-ed7dca001d1b@analog.com>
	<20260422-ad5313r-iio-support-v1-15-ed7dca001d1b@analog.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-289764-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1E7C6455ED8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 22 Apr 2026 15:45:49 +0100
Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:

> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 
> Create struct with bus operations, including a sync() operation that will
> be used to flush multiple channel writes at once. Auxiliary functions
> ad5686_write() and ad5686_read() are created and ad5686_probe() now
> receives an ops struct pointer rather than individual read and write
> functions. Documentation header of ad5686_state struct is updated
> accordingly (adjusting renamed fields and formatting).
> 
> Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>

Trivial stuff inline.

Thanks,

> diff --git a/drivers/iio/dac/ad5686.h b/drivers/iio/dac/ad5686.h
> index 7004d0d1d97a..55f49dbbbd39 100644
> --- a/drivers/iio/dac/ad5686.h
> +++ b/drivers/iio/dac/ad5686.h

>  /**
>   * struct ad5686_chip_info - chip specific information
> @@ -106,24 +113,23 @@ extern const struct ad5686_chip_info ad5679r_chip_info;
>  
>  /**
>   * struct ad5686_state - driver instance specific data
> - * @spi:		spi_device
> + * @dev:		device instance

Unrelated fix. Separate patch.

>   * @chip_info:		chip model specific constants, available modes etc
> + * @ops:		bus specific operations
>   * @vref_mv:		actual reference voltage used
>   * @pwr_down_mask:	power down mask
>   * @pwr_down_mode:	current power down mode
>   * @use_internal_vref:	set to true if the internal reference voltage is used
> - * @lock		lock to protect the data buffer during regmap ops
> - * @data:		spi transfer buffers
> + * @lock:		lock to protect the data buffer during regmap ops
> + * @data:		transfer buffers
>   */
> -
Likewise - though feel free to do this one in the same patch as spi -> dev.

>  struct ad5686_state {
>  	struct device			*dev;
>  	const struct ad5686_chip_info	*chip_info;
> +	const struct ad5686_bus_ops	*ops;
>  	unsigned short			vref_mv;
>  	unsigned int			pwr_down_mask;
>  	unsigned int			pwr_down_mode;
> -	ad5686_write_func		write;
> -	ad5686_read_func		read;
>  	bool				use_internal_vref;
>  	struct mutex			lock;

