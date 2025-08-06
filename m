Return-Path: <devicetree+bounces-202218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B24B1C748
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 16:06:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0456018A356B
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 14:06:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F57128C845;
	Wed,  6 Aug 2025 14:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hkNFVg4n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DED128C5D1
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 14:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754489168; cv=none; b=jB5/5/K0KDIs45iFHHaWGrPrPCePgVyF8uA6LObfNHYEmin/ztOtYdcbN10N7Uq8lsWlpYVTRavnCwTHgF549plLJLG6gz9egTVd74MAfVH/hsAMqxGJbnYMG5+VX1dnuLNItL15JoyEOxUC5WvwJM1HgvjEe91ZmVXlQU5608g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754489168; c=relaxed/simple;
	bh=L04d4IapOgDjcR2F2e70HlTNO3KjcP85rrCovUQ0cgI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZH5D/t4R0APxuk09vIAMjkfOdyAmnWLErj27TGf0+bxcLNKvYOo2qr2skjJFZE4fbhOM0tzEVDQ+qxP4WiAJof+GzWjGl4zyiP+KcV/sZdLfstFpuRCOf9ypUQpOKP2D7hhe7HLhplwUSbR3L+ta1O0bSkHlIp3TKy5vsWmYRE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hkNFVg4n; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3b783ea502eso679054f8f.1
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 07:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754489164; x=1755093964; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x0bYBE5Rc8e/M69cHJLVxN5LPW+suPMaRJRi77jUT+M=;
        b=hkNFVg4nDmJWVq1IlcofceeyaIYYLtJ4z/mjMIiGaBSFvwdBBhVxLGQ3vUdraPjWpw
         OxuZoN9Gtx5Wj6WQFSQtKz9+KjCUvOzxz6/yaLgGy0qnq0hJ2+pToRoNqiw5xqvF+/OU
         raDbPA+LGfgj0uogOUOWCC2FvCjP8t14NJuGEhMZoFlvnMhgzmH0LRARom7vBeVR9KjO
         MTDuonct5hVc9ErndlRuRK++bTJ+E+DQxa+g+kPRvd7CKUacbj7SODoaL6b+nyBBebsp
         qEQgTU9oDdp7CwHyS47rcTTNSs4gsOjJAznUVCrux/002kHq3AzYXnsZz7WTcjTE2z/5
         0ZIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754489164; x=1755093964;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=x0bYBE5Rc8e/M69cHJLVxN5LPW+suPMaRJRi77jUT+M=;
        b=kodgOjcHUjqyVBjctxZe5nPdZPnbDzKUHs2jTRI6Zd0+BjAjhwLRnfryBfVjPRtFXQ
         ua5YLNrtRyeRhCotB9NwmgQJDftjoOYXTGgsZDy4zBdgYHWQgCJnNckZytUWf3LDTjMn
         edIndlSn+K+dVtV9AXWGkWlnouNv6FjUiRsKGAhqMXq9Kf8F4+E3pz5qihRq5PuAzvxM
         2sezO3sZGsSp7Avo8/1chg4adgJtAsv4u6EoVT2pdgxhbKp3KZf1y4n+b6S+O4B40N1F
         Ju2ULRD6B8FY+S0xYcjOtlt3PUSRdLVNtC+V8/StqneQ3lbcsNezMdcZ8r0bZHk2IuBQ
         azlg==
X-Forwarded-Encrypted: i=1; AJvYcCWRTne+wFiZrcpOooHaBKiqzjqTb9sn9wfwhfMRa/3a6RL37+k44g6TozuEmhA+3UGipjpQCONI/hhm@vger.kernel.org
X-Gm-Message-State: AOJu0Yxd/nBpuQhEVDiIxIXv9yGchYkqdHzu4vQs5V71FVO2mrLbNxq1
	X8tXj0D/OIROug772CBgr6kZSrgi6uhnHk1LDqbbcvYQzMfalfaHOFGVZKU0ElXs8HA=
X-Gm-Gg: ASbGnctE21IIW1ouGS7Eq9GRHs57EF7OrNP5Sj5tI6xnlUIc3W8I5I3+48mFaPDFqV/
	aobvAnEO1zJmLlmaCC7REz3x1iSUe10rjD11qZUrjJnwmYvQN5ulbHq3bnTP7bqxXdNVuOKMt8M
	ARDbGCeAobNE3qHkZnfmxIbjEkyxnOB+vcI2e6ssAz06he8FM7IdgyAXkK35LlFoSGsOpq7c+dN
	UO6rk0tZg+eMSWk6DeRsCyUA0CIF9IJbuaFi3krruyaXLYStx4rAQbYeOiT1lKAJt6rrtt6U18L
	IB8P5PDw6KFRRDObFA9zQy/5x4ys9g5TG7ORwKbaZH/tuFBXoJZSvGatWWEdH79Wp1Xmgiu98hT
	ag4doHDH0roCtFoxTRME2+gpRfijsAMnH7dUask3HvWaxUaOtAiPRJulVB42OB0b+w2g/a78ACB
	M=
X-Google-Smtp-Source: AGHT+IFNsliaM3HeXRT/UHT5m1XgR5iHXWuzq/oQl+/FUCSRikpLg+toUiaSdpLaWfkqAlyBTDQVWQ==
X-Received: by 2002:a5d:5f8b:0:b0:3b7:8f49:94e4 with SMTP id ffacd0b85a97d-3b8f4316157mr2597397f8f.7.1754489164429;
        Wed, 06 Aug 2025 07:06:04 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:96df:e381:55b8:1990? ([2a01:e0a:3d9:2080:96df:e381:55b8:1990])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458bd5a11d3sm94964895e9.0.2025.08.06.07.06.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 07:06:04 -0700 (PDT)
Message-ID: <9549b800-2205-428a-8056-cfc6b5255850@linaro.org>
Date: Wed, 6 Aug 2025 16:06:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/5] phy: renesas: rcar-gen3-usb2: Store drvdata pointer
 in channel
To: Prabhakar <prabhakar.csengg@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Biju Das <biju.das.jz@bp.renesas.com>,
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250805122529.2566580-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20250805122529.2566580-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Neil Armstrong <neil.armstrong@linaro.org>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20250805122529.2566580-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/08/2025 14:25, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Store the SoC-specific driver data pointer (struct rcar_gen3_phy_drv_data)
> directly in struct rcar_gen3_chan instead of copying individual flags
> into separate fields. Update all references to use channel->drvdata->flags,
> removing the redundant soc_no_adp_ctrl and utmi_ctrl members from the
> channel structure.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>   drivers/phy/renesas/phy-rcar-gen3-usb2.c | 17 +++++++----------
>   1 file changed, 7 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> index 47beb94cd424..cfa9667c7680 100644
> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> @@ -122,6 +122,7 @@ struct rcar_gen3_phy {
>   struct rcar_gen3_chan {
>   	void __iomem *base;
>   	struct device *dev;	/* platform_device's device */
> +	const struct rcar_gen3_phy_drv_data *drvdata;

Why not phy_data ?

>   	struct extcon_dev *extcon;
>   	struct rcar_gen3_phy rphys[NUM_OF_PHYS];
>   	struct regulator *vbus;
> @@ -133,8 +134,6 @@ struct rcar_gen3_chan {
>   	bool extcon_host;
>   	bool is_otg_channel;
>   	bool uses_otg_pins;
> -	bool soc_no_adp_ctrl;
> -	bool utmi_ctrl;
>   };
>   
>   struct rcar_gen3_phy_drv_data {
> @@ -204,7 +203,7 @@ static void rcar_gen3_enable_vbus_ctrl(struct rcar_gen3_chan *ch, int vbus)
>   	u32 val;
>   
>   	dev_vdbg(ch->dev, "%s: %08x, %d\n", __func__, val, vbus);
> -	if (ch->soc_no_adp_ctrl) {
> +	if (ch->drvdata->no_adp_ctrl) {
>   		if (ch->vbus)
>   			regulator_hardware_enable(ch->vbus, vbus);
>   
> @@ -290,7 +289,7 @@ static bool rcar_gen3_check_id(struct rcar_gen3_chan *ch)
>   	if (!ch->uses_otg_pins)
>   		return (ch->dr_mode == USB_DR_MODE_HOST) ? false : true;
>   
> -	if (ch->soc_no_adp_ctrl)
> +	if (ch->drvdata->no_adp_ctrl)
>   		return !!(readl(ch->base + USB2_LINECTRL1) & USB2_LINECTRL1_USB2_IDMON);
>   
>   	return !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_IDDIG);
> @@ -421,7 +420,7 @@ static void rcar_gen3_init_otg(struct rcar_gen3_chan *ch)
>   	      USB2_LINECTRL1_DMRPD_EN | USB2_LINECTRL1_DM_RPD;
>   	writel(val, usb2_base + USB2_LINECTRL1);
>   
> -	if (!ch->soc_no_adp_ctrl) {
> +	if (!ch->drvdata->no_adp_ctrl) {
>   		val = readl(usb2_base + USB2_VBCTRL);
>   		val &= ~USB2_VBCTRL_OCCLREN;
>   		writel(val | USB2_VBCTRL_DRVVBUSSEL, usb2_base + USB2_VBCTRL);
> @@ -487,7 +486,7 @@ static int rcar_gen3_phy_usb2_init(struct phy *p)
>   	if (rphy->int_enable_bits)
>   		rcar_gen3_init_otg(channel);
>   
> -	if (channel->utmi_ctrl) {
> +	if (channel->drvdata->utmi_ctrl) {
>   		val = readl(usb2_base + USB2_REGEN_CG_CTRL) | USB2_REGEN_CG_CTRL_UPHY_WEN;
>   		writel(val, usb2_base + USB2_REGEN_CG_CTRL);
>   
> @@ -778,6 +777,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>   		ret = -EINVAL;
>   		goto error;
>   	}
> +	channel->drvdata = phy_data;

Replace the whole block with:
	
	channel->drvdata = device_get_match_data(dev);
	if (!channel->drvdata) {
		ret = -EINVAL;
		goto error;
	}

and drop the local phy_data.

>   
>   	platform_set_drvdata(pdev, channel);
>   	channel->dev = dev;
> @@ -788,12 +788,9 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>   			goto error;
>   	}
>   
> -	channel->soc_no_adp_ctrl = phy_data->no_adp_ctrl;
>   	if (phy_data->no_adp_ctrl)
>   		channel->obint_enable_bits = USB2_OBINT_IDCHG_EN;
>   
> -	channel->utmi_ctrl = phy_data->utmi_ctrl;
> -
>   	spin_lock_init(&channel->lock);
>   	for (i = 0; i < NUM_OF_PHYS; i++) {
>   		channel->rphys[i].phy = devm_phy_create(dev, NULL,
> @@ -808,7 +805,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>   		phy_set_drvdata(channel->rphys[i].phy, &channel->rphys[i]);
>   	}
>   

Thanks,
Neil
> -	if (channel->soc_no_adp_ctrl && channel->is_otg_channel)
> +	if (channel->drvdata->no_adp_ctrl && channel->is_otg_channel)
>   		channel->vbus = devm_regulator_get_exclusive(dev, "vbus");
>   	else
>   		channel->vbus = devm_regulator_get_optional(dev, "vbus");


