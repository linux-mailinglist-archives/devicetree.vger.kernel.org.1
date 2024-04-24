Return-Path: <devicetree+bounces-62254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0938B0774
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 12:35:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8CFFD1F22BFE
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 10:35:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F5371591E4;
	Wed, 24 Apr 2024 10:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rpzFuH91"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69162E827
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 10:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713954933; cv=none; b=HsgwSi7JDAwLzVAUaEMpJvWjUoMjX8vgu+WVOzyq/lyhViKFsg2jnGmZAcFPkoj2lkit9oShmEOYTc7EhJSeVgYfT/1QlsdsRA6u7D9BB9tSCLx8zoHaCJSe8Ks2OciJijDRcO+1GPcuDLwvXlxCe4y0pNNf+9bjJkDIJLdn0U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713954933; c=relaxed/simple;
	bh=leukpZca0q2/w7U4gq9winf/OCrF/5GSKYWVUsuH8u0=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=pA8ETPpBAWSKaeNFl7MocBEmGIwV3zLi/sy1+LB/BLibOUA1gL0AfHWqk/VZbLtV1JqNYfO0AAThoFqtHTaRzJrUZb5SVGzDLQ+/zdRDpoznEwImEOLaUCzkpirpQ4DRsQgyRgQJHMzeraskPUruVJA0g4w+c4XdXe3HxBuesB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=rpzFuH91; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-41b1ed3ffd4so748365e9.0
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 03:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713954928; x=1714559728; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=hYv5alBH1R2EJ4Kww5tLPW6KC2Ui3xFKYOGhL+ALJqk=;
        b=rpzFuH91WRfajQ+DKCTXDld/SMQ/3xlH1F+BzsaKAh0qBJ5WipRDu+9zS5bxBwUMQt
         XzEDJr9NLXKnaFJf9efClD0mGrZEsGXQKWiWwypCGNKYXxaWcmcUDyUzp8rD/vXgImtG
         GNoBM5dYOQWxn1XAUSCQFGiRb3A0I9PTEpnS8XaHamv2e4giMdyRh7O6MP7ekcvTvZoc
         mGtD1KBwT1476t9BdzGbeG47zv0rcSyShfFvI1oHr8EJ/pB3aDVORtFIxlhV7pLz0G5w
         RQ7AHfbtXMMIzWLrAdGX7kBvuWc05fHVigAAjVl5uzKauoeV8EfEfEtSZSbaGDcSugyn
         Twrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713954928; x=1714559728;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hYv5alBH1R2EJ4Kww5tLPW6KC2Ui3xFKYOGhL+ALJqk=;
        b=Iqo+oxn1OXWy40Ma29mQTXIRyWGeV9rQ99Fs22Z40ZE5kNZsZSXc3Mf3eeRpf5UTl/
         +ZRAyHm/M0m90ZeAkj/7r0zUaVMJnpWhXj0q6FTh+cBkJFwmAADbbJy5RHHNcGtfQDvg
         PW2JpQOQKaf+tTUmD8TQSSwNF7uIRb7olVSXUmPCytWp+6NLwH+tpMG042ui60cP1w4Y
         eJf7VH74kKKFNotRY+mhf0ThzcZWJrpXxo7gPu9afZ4KZ5SHWV8c1y0IbneHafa3G1HW
         XnA4S4/28yHf+fPZR8VHpHGvfx+QzUnY9WgkKE9JWdIjDv7tX5KIV+fFWGpXc7+l74bD
         CQcQ==
X-Forwarded-Encrypted: i=1; AJvYcCWP49yBOn47Z6e7N7eMGnlGHF6Cx9yDLqnKtMA1OQrYnBzRPGuolScsdR3J1vcrr/KbiCM7QboSpUxWQ3x0shMN9+PpehN6hOZprg==
X-Gm-Message-State: AOJu0YzHrOyZaVtvyQJjLPk/tpQVXWAC8wmqZwlRDbVZuFG0rusc0H7+
	lvamAulPV3JJG7juD7g0oTAXaEW9h7Vbt59GpppIg+nTdpTaGJkdbYb9j4OEFvM=
X-Google-Smtp-Source: AGHT+IHdW9sTwML+/nRGcnzYahxfLampmfipzvmhxqRnukXjxtxh3gJ9jq8o7pdG5bnvWX2B5JMwEg==
X-Received: by 2002:a5d:60c1:0:b0:34b:5afb:f10d with SMTP id x1-20020a5d60c1000000b0034b5afbf10dmr1250688wrt.38.1713954928040;
        Wed, 24 Apr 2024 03:35:28 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:ab48:1b7:631c:952a])
        by smtp.gmail.com with ESMTPSA id q12-20020adfcd8c000000b00343cad2a4d3sm16709990wrj.18.2024.04.24.03.35.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Apr 2024 03:35:27 -0700 (PDT)
References: <20240424-s4-pwm-v4-0-ee22effd40d0@amlogic.com>
 <20240424-s4-pwm-v4-1-ee22effd40d0@amlogic.com>
User-agent: mu4e 1.10.8; emacs 29.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: kelvin.zhang@amlogic.com, George Stark <gnstark@salutedevices.com>
Cc: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, Neil
 Armstrong
 <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, Jerome
 Brunet <jbrunet@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Junyi Zhao
 <junyi.zhao@amlogic.com>
Subject: Re: [PATCH v4 1/2] pwm: meson: Add support for Amlogic S4 PWM
Date: Wed, 24 Apr 2024 12:32:36 +0200
In-reply-to: <20240424-s4-pwm-v4-1-ee22effd40d0@amlogic.com>
Message-ID: <1jil07f3ps.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Wed 24 Apr 2024 at 18:28, Kelvin Zhang via B4 Relay <devnull+kelvin.zhang.amlogic.com@kernel.org> wrote:

> From: Junyi Zhao <junyi.zhao@amlogic.com>
>
> This patch adds support for Amlogic S4 PWM.
>
> Signed-off-by: Junyi Zhao <junyi.zhao@amlogic.com>
> Signed-off-by: Kelvin Zhang <kelvin.zhang@amlogic.com>
> ---
>  drivers/pwm/pwm-meson.c | 37 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 37 insertions(+)
>
> diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
> index ea96c5973488..6abc823745e4 100644
> --- a/drivers/pwm/pwm-meson.c
> +++ b/drivers/pwm/pwm-meson.c
> @@ -462,6 +462,35 @@ static int meson_pwm_init_channels_meson8b_v2(struct pwm_chip *chip)
>  	return meson_pwm_init_clocks_meson8b(chip, mux_parent_data);
>  }
>  
> +static int meson_pwm_init_channels_meson_s4(struct pwm_chip *chip)
> +{
> +	int i, ret;
> +	struct device *dev = pwmchip_parent(chip);
> +	struct device_node *np = dev->of_node;
> +	struct meson_pwm *meson = to_meson_pwm(chip);
> +	struct meson_pwm_channel *channel;
> +
> +	for (i = 0; i < MESON_NUM_PWMS; i++) {
> +		channel = &meson->channels[i];
> +		channel->clk = of_clk_get(np, i);
> +		if (IS_ERR(channel->clk)) {
> +			ret = PTR_ERR(channel->clk);
> +			dev_err_probe(dev, ret, "Failed to get clk\n");
> +			goto err;
> +		}
> +	}
> +
> +	return 0;
> +
> +err:
> +	while (--i >= 0) {
> +		channel = &meson->channels[i];
> +		clk_put(channel->clk);

Fine on error but leaks on module unload.

Same as George,

Add the devm variant of of_clk_get() if you must.
Use devm_add_action_or_reset() otherwise

Could please synchronize this series with George and deal with all the
supported SoCs ? a1, s4, t7, c3 ...

> +	}
> +
> +	return ret;
> +}
> +
>  static const struct meson_pwm_data pwm_meson8b_data = {
>  	.parent_names = { "xtal", NULL, "fclk_div4", "fclk_div3" },
>  	.channels_init = meson_pwm_init_channels_meson8b_legacy,
> @@ -500,6 +529,10 @@ static const struct meson_pwm_data pwm_meson8_v2_data = {
>  	.channels_init = meson_pwm_init_channels_meson8b_v2,
>  };
>  
> +static const struct meson_pwm_data pwm_meson_s4_data = {
> +	.channels_init = meson_pwm_init_channels_meson_s4,
> +};
> +
>  static const struct of_device_id meson_pwm_matches[] = {
>  	{
>  		.compatible = "amlogic,meson8-pwm-v2",
> @@ -538,6 +571,10 @@ static const struct of_device_id meson_pwm_matches[] = {
>  		.compatible = "amlogic,meson-g12a-ao-pwm-cd",
>  		.data = &pwm_g12a_ao_cd_data
>  	},
> +	{
> +		.compatible = "amlogic,meson-s4-pwm",
> +		.data = &pwm_meson_s4_data
> +	},
>  	{},
>  };
>  MODULE_DEVICE_TABLE(of, meson_pwm_matches);


-- 
Jerome

