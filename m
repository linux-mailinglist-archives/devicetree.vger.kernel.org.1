Return-Path: <devicetree+bounces-288427-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YO8xEBgA5WlQdAEAu9opvQ
	(envelope-from <devicetree+bounces-288427-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 19 Apr 2026 18:17:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9021B424A1D
	for <lists+devicetree@lfdr.de>; Sun, 19 Apr 2026 18:17:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A107E301BCC7
	for <lists+devicetree@lfdr.de>; Sun, 19 Apr 2026 16:17:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21CCC286430;
	Sun, 19 Apr 2026 16:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xaomh4KP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1F0E27F017;
	Sun, 19 Apr 2026 16:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776615429; cv=none; b=gGW2ExVVCtRQzT6uqf2cot44TdYct+cQkn58RCkQSxJn5Fbf6bRp3e6nPOi1t+rsXV0jrPiGJejTRL0YBWiFwv39dbi3NPmwJI8rev2TYCr71B4hrAhxOZFP9r4UG0p+/SGrHYhL2qjHs6sMdzRW2ZbvpWYJIMOfxi6k/vDFlMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776615429; c=relaxed/simple;
	bh=gu8j9P9BZYREGptDZI6c7GCH3d1YmOV0s/aAizdNRIo=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FDGscs38/aZC1Zn3IdC8AkhwtUuOgKVE/XG4sWtJqVfrnQChTGQ7qL35YNregHh2Mbfofj7KVfBacZOAxyko1pkoZrQ4KF6vIPRqb9dxQmmVBlJBE3HXESLyb6YbwhLcJPewo2m0yomueUVRrB5XuxvUBmrRNRP0q5y47NfuApY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xaomh4KP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CBF0C2BCAF;
	Sun, 19 Apr 2026 16:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776615428;
	bh=gu8j9P9BZYREGptDZI6c7GCH3d1YmOV0s/aAizdNRIo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Xaomh4KPwIhECfnA406VbWGOWKtCQiIQ+IrgKRAPE08SpfrDF44QHfXYZ3lNic4sz
	 GMgvDMv/EWx0Dopkdmwqej2Pflbynhe4uzNUOpsWHyEwTpHKJ2NWvpByBJR4g2Iq9d
	 G4v9B3ZYa1ga5DHxLrcde95pAZpFwhdZca7We+blNdGUm2xAZkg3OdIBTzX7VJEaqW
	 Wp0CY0Wk1YMv+E1K75yNwaXKqJ/8bpwPc2Iso/qp1ju7GUkHo4PHThziP9ppbFPRUe
	 HYK9Yf4vZAGf9QQ78tJv1kBz0+BJ/g8PBiI9VicyRdm5GWoYWo9c69E1ncIAj6llQq
	 NayP18PiIXttA==
Date: Sun, 19 Apr 2026 17:16:58 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Ariana Lazar <ariana.lazar@microchip.com>
Cc: David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, "Andy Shevchenko" <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Conor Dooley <conor.dooley@microchip.com>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] iio: dac: mcp47feb02: add MCP48FEB02 SPI driver to
 MCP47FEB02 I2C driver
Message-ID: <20260419171658.2dbb9884@jic23-huawei>
In-Reply-To: <20260403-mcp47feb02-fix2-v1-2-da60c773550e@microchip.com>
References: <20260403-mcp47feb02-fix2-v1-0-da60c773550e@microchip.com>
	<20260403-mcp47feb02-fix2-v1-2-da60c773550e@microchip.com>
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
	TAGGED_FROM(0.00)[bounces-288427-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 9021B424A1D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 3 Apr 2026 13:50:14 +0300
Ariana Lazar <ariana.lazar@microchip.com> wrote:

> This is the iio driver for Microchip MCP48FxBy1/2/4/8 series of
> buffered voltage output Digital-to-Analog Converters with nonvolatile or
> volatile memory on top of MCP47FEB02. The families support up to 8
> output channels and have 8-bit, 10-bit or 12-bit resolution.
> 
> The MCP47FEB02 driver was split into three modules: mcp47feb02-core.c,
> mcp47feb02-i2c.c and mcp47feb02-spi.c in order to support both DAC families
> - I2C (MCP47F(E/V)BXX) and SPI (MCP48F(E/V)BXX).
Normal flow is to do a noop refactor for I2C + core split, then a follow
up patch to add anything new (SPI driver + any changes that are only needed
by SPI to the core module)

> 
> Fixes: bf394cc80369 ("iio: dac: adding support for Microchip MCP47FEB02")
> Signed-off-by: Ariana Lazar <ariana.lazar@microchip.com>
> Link: https://lore.kernel.org/all/aY4yaVP2TQFRI1E4@smile.fi.intel.com/
> ---
>  MAINTAINERS                       |   4 +
>  drivers/iio/dac/Kconfig           |  29 +-
>  drivers/iio/dac/Makefile          |   3 +
>  drivers/iio/dac/mcp47feb02-core.c | 845 ++++++++++++++++++++++++++++++++++++++
>  drivers/iio/dac/mcp47feb02-i2c.c  | 145 +++++++
>  drivers/iio/dac/mcp47feb02-spi.c  | 145 +++++++
>  drivers/iio/dac/mcp47feb02.h      | 158 +++++++

Given the description I'm a bit lost on why there isn't a mass of code being
removed from mcp47feb02.c as it migrates to the core library.

Anyhow one thing I noticed whilst glancing through this.

>  7 files changed, 1328 insertions(+), 1 deletion(-)

> diff --git a/drivers/iio/dac/mcp47feb02-spi.c b/drivers/iio/dac/mcp47feb02-spi.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..82e99388ac75860d534d0f2cc05dcc6628d96f6b
> --- /dev/null
> +++ b/drivers/iio/dac/mcp47feb02-spi.c
> @@ -0,0 +1,145 @@

> +
> +static struct spi_driver mcp47feb02_spi_driver = {
> +	.driver = {
> +		.name	= "mcp47feb02",
> +		.of_match_table = mcp47feb02_of_spi_match,

As attempting to align = is already broken, that is pretty strong example
for why it is rarely worth the pain.  I'd just use a single space before the =
in all cases.

> +		.pm	= pm_sleep_ptr(&mcp47feb02_pm_ops),
> +	},
> +	.probe		= mcp47feb02_spi_probe,
> +	.id_table	= mcp47feb02_spi_id,
> +};
> +module_spi_driver(mcp47feb02_spi_driver);

