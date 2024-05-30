Return-Path: <devicetree+bounces-70757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 576D08D466A
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 09:49:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8004AB22C1C
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 07:49:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1BA3142E94;
	Thu, 30 May 2024 07:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="mXFr9zQz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCBF07405C
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 07:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717055326; cv=none; b=RwSQxOZFk1NFXFFnXkTxbdXbhyE5uVVExqjfVMeQwtmzlqdnvCV1sj2WGSLIP4ueI94kv8FFusLPTvLB4Xu8abKpnqiHWxK0AJ441qRCYUD5+c1e2uU1oV1G+B08XxOCBocvBJTp13fnYZverBXchH8xkvqtsIiMmZcMbWNRuXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717055326; c=relaxed/simple;
	bh=WUopOfGXgTPLOpthZYvse5p/tqQTnvAJv7+FdqfK54M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EfHhNdIEkfuWc2kzOhhPKm2Dy0GtGDn9wmRMtcP2Ub2nfT8ojGJvEGeNaPmlPLOyEnuwSVpQYRnHTKYOHOggV9c3TBa5AQ2JYDL4ryFO3pskynR7n1JArNp7Dqo6uwyHRCxQSXs1OE6nhJ/TNzPpcTABXPlNb8nMiBZ4RKpRppI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=mXFr9zQz; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5755fafa5a7so587470a12.1
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 00:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1717055322; x=1717660122; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cf2qIpLDeZcLL2J3hXdH1LJF5JZXb9FIa3/ZwN9zeWQ=;
        b=mXFr9zQzRnJv0W3uh2NtrJZkdlBX3PzqDng5L09p/WAh6QlZ3u2sebgLMeCCj5gnlo
         T5l5dnn/HcFL9H2Qqng0O2CXbQ020krEfVsHI7YfiwtMZH6bp7RbhvEPH1fehFEBS8wD
         rYSWnDY4DhkR7XzKl2Q4Mh8ASqAfAaP+nOx6uhxInqFOk/wYUCVrJPy9vimlo9QCf8Qs
         BKcEy19FoZTUGCMhkMNvo2CFzQhqwGg8R7RnLrl7N6r6Je/V3/vHi+nTLoYNXP4MNvjy
         XiJNZQdveIYQlOigs3IQSKmAjyC2zeJQbmeqR+uhokG6j49cPbuGZ+C9r3nV0XPUlPYS
         wQ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717055322; x=1717660122;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cf2qIpLDeZcLL2J3hXdH1LJF5JZXb9FIa3/ZwN9zeWQ=;
        b=WuyGPu9ScqvaiBWefqPIf9tM6NagjV/eiimsx2KO5OoTBwRxBWhF/ydSsJAO8KUtd/
         r/wE3JAphiqDniXLOwuztHbEt9WmbWuo378nnG/zE/98phn/yQrC4shGXXeetjb+/jVM
         BkSIG9trxjDaVQGIKiclpYnBHLqyGcHU9RSZq+dWPrfhqFc5cM8G6ssKidla0evzej2A
         BMu3d2fRj+3uKRRa/BiaO0Ro7QKO78JyVaTl2GQl3/LZM0byD/aEMxQVVRYZCQvAMBqU
         uzSEnGB4VBgmwRR/L+6rQ3XLG5ey0crPuqHGl8iKFrZRGlSyZ9yaS5uAv5IYGL5URmpP
         Crbg==
X-Forwarded-Encrypted: i=1; AJvYcCVnuIUjb1H0LbIo1zxNtPA1xs1RsilwIBfPCKQqvxvlyO0Md/YihQS+ZDNYku0x8QPzI2hcmeZEtOpr2IBoWQ/Nue/VBvT/2p78FA==
X-Gm-Message-State: AOJu0YxXeT5mDiT59mJoxdvlLTATlrukIDydFspl9NC/XbysfQdlj0lq
	iH8vmGgyuWR1TzAwyFv/ENQmfLak8T4glfTVwVfXY0/MwnlJxAgbThSRFH7nqFE=
X-Google-Smtp-Source: AGHT+IFIeanpx5enxM2FTVYmjkv113mgaIe8FHzjBzKNk+0WMcY8HVdoc+0Tq0Oi2QHF4QvHRs4aOg==
X-Received: by 2002:a50:d4d7:0:b0:578:656b:d287 with SMTP id 4fb4d7f45d1cf-57a177b369fmr651380a12.17.1717055321817;
        Thu, 30 May 2024 00:48:41 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.124])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5785b2c4d97sm9061915a12.56.2024.05.30.00.48.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 May 2024 00:48:41 -0700 (PDT)
Message-ID: <862d7d16-367b-492e-b7be-e2fe71b904c2@tuxon.dev>
Date: Thu, 30 May 2024 10:48:39 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/13] pinctrl: renesas: pinctrl-rzg2l: Add support to
 set pulling up/down the pins
Content-Language: en-US
To: Prabhakar <prabhakar.csengg@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>,
 linux-renesas-soc@vger.kernel.org
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>,
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20240423175900.702640-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20240423175900.702640-11-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240423175900.702640-11-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Prabhakar,

On 23.04.2024 20:58, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Add support to configure bias-disable, bias-pull-up and bias-pull-down
> properties of the pin.
> 
> Two new function pointers get_bias_param() and get_bias_val() are
> introduced as the values in PUPD register differ when compared to
> RZ/G2L family and RZ/V2H(P) SoC,
> 
> Value | RZ/G2L        | RZ/V2H
> ---------------------------------
> 00b:  | Bias Disabled | Pull up/down disabled
> 01b:  | Pull-up       | Pull up/down disabled
> 10b:  | Pull-down     | Pull-down
> 11b:  | Prohibited    | Pull-up
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
> RFC->v2
> - New patch
> ---
>  drivers/pinctrl/renesas/pinctrl-rzg2l.c | 73 +++++++++++++++++++++++++
>  1 file changed, 73 insertions(+)
> 
> diff --git a/drivers/pinctrl/renesas/pinctrl-rzg2l.c b/drivers/pinctrl/renesas/pinctrl-rzg2l.c
> index 102fa75c71d3..c144bf43522b 100644
> --- a/drivers/pinctrl/renesas/pinctrl-rzg2l.c
> +++ b/drivers/pinctrl/renesas/pinctrl-rzg2l.c
> @@ -122,6 +122,7 @@
>  #define IOLH(off)		(0x1000 + (off) * 8)
>  #define SR(off)			(0x1400 + (off) * 8)
>  #define IEN(off)		(0x1800 + (off) * 8)
> +#define PUPD(off)		(0x1C00 + (off) * 8)
>  #define ISEL(off)		(0x2C00 + (off) * 8)
>  #define SD_CH(off, ch)		((off) + (ch) * 4)
>  #define ETH_POC(off, ch)	((off) + (ch) * 4)
> @@ -140,6 +141,7 @@
>  #define IEN_MASK		0x01
>  #define IOLH_MASK		0x03
>  #define SR_MASK			0x01
> +#define PUPD_MASK		0x03
>  
>  #define PM_INPUT		0x1
>  #define PM_OUTPUT		0x2
> @@ -265,6 +267,8 @@ struct rzg2l_pinctrl_data {
>  	void (*pmc_writeb)(struct rzg2l_pinctrl *pctrl, u8 val, void __iomem *addr);
>  	u32 (*read_oen)(struct rzg2l_pinctrl *pctrl, u32 caps, u32 offset, u8 pin);
>  	int (*write_oen)(struct rzg2l_pinctrl *pctrl, u32 caps, u32 offset, u8 pin, u8 oen);
> +	int (*get_bias_param)(u8 val);
> +	int (*get_bias_val)(enum pin_config_param param);
>  };
>  
>  /**
> @@ -1081,6 +1085,38 @@ static int rzg2l_write_oen(struct rzg2l_pinctrl *pctrl, u32 caps, u32 offset, u8
>  	return 0;
>  }
>  
> +static int rzg2l_get_bias_param(u8 val)
> +{
> +	switch (val) {
> +	case 0:
> +		return PIN_CONFIG_BIAS_DISABLE;
> +	case 1:
> +		return PIN_CONFIG_BIAS_PULL_UP;
> +	case 2:
> +		return PIN_CONFIG_BIAS_PULL_DOWN;
> +	default:
> +		break;
> +	}
> +
> +	return -EINVAL;
> +}
> +
> +static int rzg2l_get_bias_val(enum pin_config_param param)
> +{
> +	switch (param) {
> +	case PIN_CONFIG_BIAS_DISABLE:
> +		return 0;
> +	case PIN_CONFIG_BIAS_PULL_UP:
> +		return 1;
> +	case PIN_CONFIG_BIAS_PULL_DOWN:
> +		return 2;
> +	default:
> +		break;
> +	}
> +
> +	return -EINVAL;
> +}
> +
>  static int rzg2l_pinctrl_pinconf_get(struct pinctrl_dev *pctldev,
>  				     unsigned int _pin,
>  				     unsigned long *config)
> @@ -1139,6 +1175,25 @@ static int rzg2l_pinctrl_pinconf_get(struct pinctrl_dev *pctldev,
>  		arg = rzg2l_read_pin_config(pctrl, SR(off), bit, SR_MASK);
>  		break;
>  
> +	case PIN_CONFIG_BIAS_DISABLE:
> +	case PIN_CONFIG_BIAS_PULL_UP:
> +	case PIN_CONFIG_BIAS_PULL_DOWN: {

Block { } can be removed here.

> +		if (!(cfg & PIN_CFG_PUPD))
> +			return -EINVAL;
> +
> +		ret = pctrl->data->get_bias_param(rzg2l_read_pin_config(pctrl,
> +									PUPD(off),
> +									bit, PUPD_MASK));
> +		if (ret < 0)
> +			return ret;
> +
> +		if (ret != param)
> +			return -EINVAL;

Can this happen? Otherwise it can be removed.

> +		/* for PIN_CONFIG_BIAS_PULL_UP/DOWN when enabled we just return 1 */

What about bias disable? I haven't checked in detail, is it OK to do
arg = 1 here?

> +		arg = 1;
> +		break;
> +	}
> +
>  	case PIN_CONFIG_DRIVE_STRENGTH: {
>  		unsigned int index;
>  
> @@ -1254,6 +1309,20 @@ static int rzg2l_pinctrl_pinconf_set(struct pinctrl_dev *pctldev,
>  			rzg2l_rmw_pin_config(pctrl, SR(off), bit, SR_MASK, arg);
>  			break;
>  
> +		case PIN_CONFIG_BIAS_DISABLE:
> +		case PIN_CONFIG_BIAS_PULL_UP:
> +		case PIN_CONFIG_BIAS_PULL_DOWN: {

Block { } can be removed in this case.

> +			if (!(cfg & PIN_CFG_PUPD))
> +				return -EINVAL;
> +
> +			ret = pctrl->data->get_bias_val(param);
> +			if (ret < 0)
> +				return ret;
> +
> +			rzg2l_rmw_pin_config(pctrl, PUPD(off), bit, PUPD_MASK, ret);
> +			break;
> +		}
> +
>  		case PIN_CONFIG_DRIVE_STRENGTH:
>  			arg = pinconf_to_config_argument(_configs[i]);
>  
> @@ -2746,6 +2815,8 @@ static struct rzg2l_pinctrl_data r9a07g044_data = {
>  	.pmc_writeb = &rzg2l_pmc_writeb,
>  	.read_oen = &rzg2l_read_oen,
>  	.write_oen = &rzg2l_write_oen,
> +	.get_bias_param = &rzg2l_get_bias_param,
> +	.get_bias_val = &rzg2l_get_bias_val,
>  };
>  
>  static struct rzg2l_pinctrl_data r9a08g045_data = {
> @@ -2761,6 +2832,8 @@ static struct rzg2l_pinctrl_data r9a08g045_data = {
>  	.pmc_writeb = &rzg2l_pmc_writeb,
>  	.read_oen = &rzg2l_read_oen,
>  	.write_oen = &rzg2l_write_oen,
> +	.get_bias_param = &rzg2l_get_bias_param,
> +	.get_bias_val = &rzg2l_get_bias_val,
>  };
>  
>  static const struct of_device_id rzg2l_pinctrl_of_table[] = {

