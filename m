Return-Path: <devicetree+bounces-54091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1400888F97D
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 09:04:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1BC741C235E7
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 08:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB6CF5811E;
	Thu, 28 Mar 2024 08:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="KETtCOM3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4ED54773
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 08:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711612974; cv=none; b=mAtCog+6Yc/yM65hgRy0VyWhh7zJooW6+9IYAMVnVfxCwLZdmxUKZcX573e+IsL3gnPWTFr9duy7hlb5abKH2NJfDDFlBzgqd17NZ7SDsg8P3QyVT64tIOxjhwyyUAWkMYsVv9nUhC84hP1Nfwh6xFcRAiG7tuOiqfd0SjR1/hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711612974; c=relaxed/simple;
	bh=k3Dl1HzoWenyrHcHGTfhs/kE/sKbFlhvwRRNCYWHZaQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IR5PAV7BSOapJV4U8zzNu3/HQbAG9Vn1gaMRdkIDUJ0V2YZyAgMal87YknAyz7L13nQ4G+LAGQ8D3tYQS5/7326kyF4sgajI9kLiqoBhqPep65lWY3xHeXOkj0Z5hK6n3H6BXirINmrxcWQRTddV3hChwVQnkvMwT29kW7/Wp08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=KETtCOM3; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-41494c040a1so4480895e9.2
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 01:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1711612971; x=1712217771; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KzqAGCME+9DWgy96XnWuIA36ECP5VDCJFfkvCOU0ZbY=;
        b=KETtCOM3+SiBWsiW4qaXBQ/Uck5l55s7YGP7q9BvmrAzeEj+RHiAW/ELQ71DW0qC+m
         FTmSTQpNytKRvsbf6gePij5YMSOT9Iyn1lGsbEAoSlkf/Mu4risiKLIy3Vrg5BiSx/EZ
         MQTnJXYFdpTUBoZpDSMwqEUfPRQ3Nlx0i3OutActHLkgxDjr1CcqOK1CovlxG4lLjyuQ
         KwcZ8tEKMPPUT+WMELWmoZ7hKY69j2ZIuCalkUM6+xPSsRgB7vHpfAP10Wfbw9tT5i1T
         xjwgl/6Cp5yNDzXDh9PnmH2YkzYkZVni4R0Klz2Z1tgk3EeOVPsKfr63dTtTv0GeQcPz
         t8qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711612971; x=1712217771;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KzqAGCME+9DWgy96XnWuIA36ECP5VDCJFfkvCOU0ZbY=;
        b=SyWhtyVPBUFarobCjQH8mJwx6ryqZYyFNJRWkPPHbS2fUkh20ZRVqUHbNB+OkQrGpc
         9KLSMJ5qXaL650BnYL6ZwZHEIpAOX/D7J1IJv6oqIWG71tOY55+rEjvhfaT1clkU9wkz
         cl4Bi8E2fVoPmhVblMcMgi1MI+QtEj0I2+h1xPSRRop1SNLKAmkeiLMfaUHwww1AI0Q9
         iQiD44s1ynD3LcA+dJZXSh3ZLDBSpJgxJMrfqmHLfdrZhWbzIvE4NviaXZxbuRmLLAYj
         f5OODnTDVhZ33tzDc9uE9cfWjv3vpRcV2gw1tUQad5SUlSYeey0aMHTvSEZvqAJFi0yi
         vDyg==
X-Forwarded-Encrypted: i=1; AJvYcCUPM6gqX9v6p+5R3nAeILZzPYZo5wdq5nNqjW0KcEXAiKGEYY9BOrS4P127t6hkrKID30zpzW+sxWYqk10W2iZLH35vX/GSYMTxvA==
X-Gm-Message-State: AOJu0YyOIXzf+5HgMWYK8LJcvkmC7SxZOPJ/dmgp+v/ys+0CdESX+4UK
	v5EGUKWH1TZl0C+Ov+d9bt+6GU5jPuQVq3Co3GuIFeLkyGq+F5a8GbBbIIKv5cFwCVuTQFXprPg
	F
X-Google-Smtp-Source: AGHT+IEMJDC9kZ4+YBqdgfurWaCrkD+u5kObu1T1TGvSf8cmQKgJdj6nAQrCOjyFBOxRD4tVYLeQ+Q==
X-Received: by 2002:a05:600c:3b26:b0:414:a54:ec04 with SMTP id m38-20020a05600c3b2600b004140a54ec04mr1781177wms.4.1711612970919;
        Thu, 28 Mar 2024 01:02:50 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id jg5-20020a05600ca00500b00414850d567fsm4609630wmb.1.2024.03.28.01.02.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Mar 2024 01:02:50 -0700 (PDT)
Message-ID: <4bd3b33d-564a-45e0-905c-d0deb52e6f38@tuxon.dev>
Date: Thu, 28 Mar 2024 10:02:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 08/13] pinctrl: renesas: pinctrl-rzg2l: Add function
 pointers for writing to PFC
Content-Language: en-US
To: Prabhakar <prabhakar.csengg@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20240326222844.1422948-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20240326222844.1422948-9-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240326222844.1422948-9-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Prabhakar,

On 27.03.2024 00:28, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> On the RZ/G2L SoC, the PFCWE bit controls writing to PFC registers.
> However, on the RZ/V2H(P) SoC, the PFCWE (REGWE_A on RZ/V2H) bit controls
> writing to both PFC and PMC registers. To accommodate these differences
> across SoC variants, introduce set_pfc_mode() and pm_set_pfc() function
> pointers.

I think the overall code can be simplified if you add  1 function that does
the lock/unlock for PWPR. See patch 13.

> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  drivers/pinctrl/renesas/pinctrl-rzg2l.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pinctrl/renesas/pinctrl-rzg2l.c b/drivers/pinctrl/renesas/pinctrl-rzg2l.c
> index 705372faaeff..4cdebdbd8a04 100644
> --- a/drivers/pinctrl/renesas/pinctrl-rzg2l.c
> +++ b/drivers/pinctrl/renesas/pinctrl-rzg2l.c
> @@ -246,6 +246,8 @@ struct rzg2l_variable_pin_cfg {
>  	u32 pin:3;
>  };
>  
> +struct rzg2l_pinctrl;
> +
>  struct rzg2l_pinctrl_data {
>  	const char * const *port_pins;
>  	const u64 *port_pin_configs;
> @@ -256,6 +258,8 @@ struct rzg2l_pinctrl_data {
>  	const struct rzg2l_hwcfg *hwcfg;
>  	const struct rzg2l_variable_pin_cfg *variable_pin_cfg;
>  	unsigned int n_variable_pin_cfg;
> +	void (*set_pfc_mode)(struct rzg2l_pinctrl *pctrl, u8 pin, u8 off, u8 func);
> +	void (*pm_set_pfc)(struct rzg2l_pinctrl *pctrl);
>  };
>  
>  /**
> @@ -526,7 +530,7 @@ static int rzg2l_pinctrl_set_mux(struct pinctrl_dev *pctldev,
>  		dev_dbg(pctrl->dev, "port:%u pin: %u off:%x PSEL:%u\n",
>  			RZG2L_PIN_ID_TO_PORT(pins[i]), pin, off, psel_val[i] - hwcfg->func_base);
>  
> -		rzg2l_pinctrl_set_pfc_mode(pctrl, pin, off, psel_val[i] - hwcfg->func_base);
> +		pctrl->data->set_pfc_mode(pctrl, pin, off, psel_val[i] - hwcfg->func_base);
>  	}
>  
>  	return 0;
> @@ -2607,7 +2611,7 @@ static int rzg2l_pinctrl_resume_noirq(struct device *dev)
>  			writeb(cache->eth_poc[i], pctrl->base + ETH_POC(regs->eth_poc, i));
>  	}
>  
> -	rzg2l_pinctrl_pm_setup_pfc(pctrl);
> +	pctrl->data->pm_set_pfc(pctrl);
>  	rzg2l_pinctrl_pm_setup_regs(pctrl, false);
>  	rzg2l_pinctrl_pm_setup_dedicated_regs(pctrl, false);
>  	rzg2l_gpio_irq_restore(pctrl);
> @@ -2672,6 +2676,8 @@ static struct rzg2l_pinctrl_data r9a07g043_data = {
>  	.variable_pin_cfg = r9a07g043f_variable_pin_cfg,
>  	.n_variable_pin_cfg = ARRAY_SIZE(r9a07g043f_variable_pin_cfg),
>  #endif
> +	.set_pfc_mode = &rzg2l_pinctrl_set_pfc_mode,
> +	.pm_set_pfc = &rzg2l_pinctrl_pm_setup_pfc,
>  };
>  
>  static struct rzg2l_pinctrl_data r9a07g044_data = {
> @@ -2683,6 +2689,8 @@ static struct rzg2l_pinctrl_data r9a07g044_data = {
>  	.n_dedicated_pins = ARRAY_SIZE(rzg2l_dedicated_pins.common) +
>  		ARRAY_SIZE(rzg2l_dedicated_pins.rzg2l_pins),
>  	.hwcfg = &rzg2l_hwcfg,
> +	.set_pfc_mode = &rzg2l_pinctrl_set_pfc_mode,
> +	.pm_set_pfc = &rzg2l_pinctrl_pm_setup_pfc,
>  };
>  
>  static struct rzg2l_pinctrl_data r9a08g045_data = {
> @@ -2693,6 +2701,8 @@ static struct rzg2l_pinctrl_data r9a08g045_data = {
>  	.n_port_pins = ARRAY_SIZE(r9a08g045_gpio_configs) * RZG2L_PINS_PER_PORT,
>  	.n_dedicated_pins = ARRAY_SIZE(rzg3s_dedicated_pins),
>  	.hwcfg = &rzg3s_hwcfg,
> +	.set_pfc_mode = &rzg2l_pinctrl_set_pfc_mode,
> +	.pm_set_pfc = &rzg2l_pinctrl_pm_setup_pfc,
>  };
>  
>  static const struct of_device_id rzg2l_pinctrl_of_table[] = {

