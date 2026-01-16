Return-Path: <devicetree+bounces-255913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 44568D2E106
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:32:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 43E93302038C
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 08:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50D3B2D876A;
	Fri, 16 Jan 2026 08:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sp0BStXx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED3420C029;
	Fri, 16 Jan 2026 08:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768552364; cv=none; b=QCSKaPAMoevlnnFYH9z3HroaNg5djIcZvf7I7Q0Seorwfc4evhqwCIQx3/0xR9Cyv4H8epd0MZffBiRrtvyekFhyCNeOUMAgQezRWC1YGCflCo9krE5IYgzxQlN4a0MZ2U3jDKEkWrtSv1LastQKwJo6q89Q7fjFdkjDSVlD/lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768552364; c=relaxed/simple;
	bh=OmoooC7jWxx4/EyMDwfx+DsJCvdfQZXFXu73cvG72jQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UuKAb/zGv9imBCHqaVTWjEfmznW1Ing243VaJ5do7P06gYtgaQpJuPLuCxc5ApdqqnATPpcp2boaSnJ/TIx7Z/idb89N26Kv2DzfausDyZiHdr1HeWxH1zeDU83uAW6nNjsbaZK0ZwMUC3TDU5DN0eIE+N0cfSGXweMYNCf03kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sp0BStXx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81682C116C6;
	Fri, 16 Jan 2026 08:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768552364;
	bh=OmoooC7jWxx4/EyMDwfx+DsJCvdfQZXFXu73cvG72jQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Sp0BStXxsy4SXnx/q4tYFG/WhEMvJuCATCnwgjPaUgwt5/eJyLXh3mro3YaSepAUU
	 a160onWeNIWAaBm5leT/lZdhLkEEEe2VaZ824TqNdAWHifRrB692tSVfXizRG0nQmW
	 IRONZmlLh4ANHaMcs+IxQOOxLrWDxhjMMdda/ZxOV91CQ2jkjqXwEFh+1nhJmYm02N
	 G13fFMJAK+w4J+Nw+CQGcREa5uiyjp75w6hBi0V37HBqCBWp18eDuRkZxwVNBlV/Fr
	 kHfluDc0vGeFIfkZjqyETW2FtXNev4MxWXwUwTdbfli+GWHXQ0WY0eC7hVgcavitsP
	 vFToUJCmaFwEQ==
Date: Fri, 16 Jan 2026 09:32:41 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Srinivas Kandagatla <srini@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Linus Walleij <linus.walleij@linaro.org>, 
	David Lechner <dlechner@baylibre.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 4/4] mux: gpio-mux: add adi,adg2404 support
Message-ID: <20260116-lurking-beetle-of-imagination-2a05e6@quoll>
References: <20260115121943.23715-1-antoniu.miclaus@analog.com>
 <20260115121943.23715-5-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260115121943.23715-5-antoniu.miclaus@analog.com>

On Thu, Jan 15, 2026 at 02:18:22PM +0200, Antoniu Miclaus wrote:
> Add adi,adg2404 to the compatible list. The ADG2404 is a 4:1 analog
> multiplexer that benefits from the enable GPIO support to prevent
> glitches during channel transitions.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> changes in v3:
>  * integrate with gpio-mux driver instead of standalone adg2404 driver
> ---
>  drivers/mux/gpio.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mux/gpio.c b/drivers/mux/gpio.c
> index 93487483e81f..bd8f0c617dd6 100644
> --- a/drivers/mux/gpio.c
> +++ b/drivers/mux/gpio.c
> @@ -59,6 +59,7 @@ static const struct mux_control_ops mux_gpio_ops = {
>  
>  static const struct of_device_id mux_gpio_dt_ids[] = {
>  	{ .compatible = "gpio-mux", },
> +	{ .compatible = "adi,adg2404", },

Why do you need the compatible? I do not understand this patchset. You
are saying you integrate it into gpio-mux, but what you did is to
duplicate the compatible and binding.

Half of your patches are not necessary, you only needed to add
enable-gpios to gpio-mux with argument that ADG2404 can use such binding
(in complete/full/proper way).

Best regards,
Krzysztof


