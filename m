Return-Path: <devicetree+bounces-13412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1977DE083
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 12:48:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1A245B20E66
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 11:48:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F3B0111A1;
	Wed,  1 Nov 2023 11:48:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kn2TQOyz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3A715B9
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 11:48:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAC71C433C7;
	Wed,  1 Nov 2023 11:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698839283;
	bh=nxMPbDkv3IAzUXb07QKYgvp8/kcjLcwieAGlAyQanac=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kn2TQOyzP5dcMyQRVZi9kU9LccVJlmV9k906FoMoHVQO2ECCiG41yL4dE0Zsu7BGa
	 GW54QrYmkpabT+DGlTVsV3jSscpjw2YU4UUTM0K4a1/nj7pxa/AUBXapT7LrBWo6F/
	 S3tmtgZ/dU0ilReUZl9sJc6cXWTeFATSp0E0zRIazZW6A8ejdRPAqMZK49TK97lrIj
	 SaltIiCqOa2Q83EMO0rxEjUYPtuFvHx0S7gbg/51WOeC/HxujYqwyGFtRfUS3DRjb1
	 N47QezATy4pesaDCLaqiWpGRX6SlIvMMt+TdylLQH7vkzbw1q6H1hzLUZ1fJ7cnKzf
	 q4M0UnfeQJSyA==
Date: Wed, 1 Nov 2023 19:35:47 +0800
From: Jisheng Zhang <jszhang@kernel.org>
To: Shiji Yang <yangshiji66@outlook.com>
Cc: devicetree@vger.kernel.org, linux-leds@vger.kernel.org,
	linux-kernel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
	Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Olliver Schinagl <oliver@schinagl.nl>
Subject: Re: [PATCH v2 1/2] leds: core: add missing LED color strings
Message-ID: <ZUI4E06PYez5Z5LI@xhacker>
References: <20231031132901.11732-1-yangshiji66@outlook.com>
 <TYAP286MB03159A83A77E6FD59F271D9BBCA0A@TYAP286MB0315.JPNP286.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <TYAP286MB03159A83A77E6FD59F271D9BBCA0A@TYAP286MB0315.JPNP286.PROD.OUTLOOK.COM>

On Tue, Oct 31, 2023 at 09:29:00PM +0800, Shiji Yang wrote:
> Some new monochromatic LEDs have been introduced into DT bindings,
> but they do not have corresponding descriptions on the led_colors
> structure. This patch adds the missing LED color strings.
> 
> Fixes: 472d7b9e8141 ("dt-bindings: leds: Expand LED_COLOR_ID definitions")
> Signed-off-by: Shiji Yang <yangshiji66@outlook.com>
> ---
>  drivers/leds/led-core.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/leds/led-core.c b/drivers/leds/led-core.c
> index 214ed81eb..223023928 100644
> --- a/drivers/leds/led-core.c
> +++ b/drivers/leds/led-core.c
> @@ -36,6 +36,11 @@ const char * const led_colors[LED_COLOR_ID_MAX] = {
>  	[LED_COLOR_ID_IR] = "ir",
>  	[LED_COLOR_ID_MULTI] = "multicolor",
>  	[LED_COLOR_ID_RGB] = "rgb",
> +	[LED_COLOR_ID_PURPLE] = "purple",
> +	[LED_COLOR_ID_ORANGE] = "orange",
> +	[LED_COLOR_ID_PINK] = "pink",
> +	[LED_COLOR_ID_CYAN] = "cyan",
> +	[LED_COLOR_ID_LIME] = "lime",

A similar patch was sent out two days ago, earlier than yours ;)

https://lore.kernel.org/linux-leds/20231030054757.3476-1-jszhang@kernel.org/

>  };
>  EXPORT_SYMBOL_GPL(led_colors);
>  
> -- 
> 2.39.2
> 

