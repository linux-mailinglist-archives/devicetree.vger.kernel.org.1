Return-Path: <devicetree+bounces-157760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC0AA628FD
	for <lists+devicetree@lfdr.de>; Sat, 15 Mar 2025 09:20:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A122E17882C
	for <lists+devicetree@lfdr.de>; Sat, 15 Mar 2025 08:20:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7B181DFD96;
	Sat, 15 Mar 2025 08:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="TUjsR7U1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5B281DB15B
	for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 08:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742026845; cv=none; b=NeoU4NpzcJ3j3cpx53XAIiN1t7CRukj2OQG0NivNi1gQ/5lM6X2MMjz7l1Dru0AQ8RrqVmE1u+oxnJHG8G3Dstkker1W66EElyqMvwdlSMWYzowpM2aMDecyS43rg6+q5I27EtdUs70XdLwijbFiCfyEMaKx7u2PTxD+PaxBjv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742026845; c=relaxed/simple;
	bh=CiWCL5QKzuzDa5qts9ouljRDgEIWoB9W8nEPBSGgzCg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WDoqBICVO/oovSqlNH6dF1giCyfujIyX4LL3a8RS3fEc2mYASBH1h39tietaXCoYIpaLCcdySeMGbMnIY7ufYCeHjwMOPYl5KfADOHTXMVe5rKsSNe39vZ0LZxE4BhZ90HUh95+MFWpzzVHy8Di7wjKvf632psLAoFJfKIGDA7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=TUjsR7U1; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1742026837;
 bh=3eoq8Ip4Lg2/aL44gQkJ166eIGqKVZnzBY67DvJxGBM=;
 b=TUjsR7U17llZOhlBOnJGfQShNZHHcGHrBMdP+AGqs0riOQESMb5lsXbXns/KMSTsCjsZdfXuu
 gwRTo1Gx+D+EhTqixnhOGveEqhQWodszhjmblV2jdKfhqyE0mf83PKiJYlYPeBkwm6lFkgRIrL6
 1pH3GdyDPEJejCKOKVwXXtyj6fIVSp7/DLlsPBl77SpY9Btyv6Y1UlUGz+WZUqtETHjTTw7ass9
 gla//we90/uBk3nH2Qjzk2WZScgl2XkF/k/uVE2QJctM6r65YsK0CCjxixUoSbRagHJ8T5hLBuN
 fTO/g0PKnxNbt7z8ueafImeE7VftxTlHl6czG/C4RZnQ==
X-Forward-Email-ID: 67d5383dca5d7787a43350e7
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <6c355664-50dd-4efd-94b7-9d93c02d3e80@kwiboo.se>
Date: Sat, 15 Mar 2025 09:20:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/6] thermal: rockchip: Support RK3576 SoC in the
 thermal driver
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Ye Zhang <ye.zhang@rock-chips.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sebastian Reichel
 <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
References: <20250228-rk3576-tsadc-upstream-v3-0-4bfbb3b699b9@collabora.com>
 <20250228-rk3576-tsadc-upstream-v3-3-4bfbb3b699b9@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250228-rk3576-tsadc-upstream-v3-3-4bfbb3b699b9@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Nicolas,

On 2025-02-28 21:06, Nicolas Frattaroli wrote:
> From: Ye Zhang <ye.zhang@rock-chips.com>
> 
> The RK3576 SoC has six TS-ADC channels: TOP, BIG_CORE, LITTLE_CORE,
> DDR, NPU and GPU.
> 
> Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
> [ported to mainline, reworded commit message]
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/thermal/rockchip_thermal.c | 42 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
> index a8ad85feb68fbb7ec8d79602b16c47838ecb3c00..bec1930bebd87859a7e519cfc9f05e10b1c31e87 100644
> --- a/drivers/thermal/rockchip_thermal.c
> +++ b/drivers/thermal/rockchip_thermal.c
> @@ -1061,6 +1061,22 @@ static void rk_tsadcv3_tshut_mode(int chn, void __iomem *regs,
>  	writel_relaxed(val_cru, regs + TSADCV3_HSHUT_CRU_INT_EN);
>  }
>  
> +static void rk_tsadcv4_tshut_mode(int chn, void __iomem *regs,
> +				  enum tshut_mode mode)
> +{
> +	u32 val_gpio, val_cru;
> +
> +	if (mode == TSHUT_MODE_GPIO) {
> +		val_gpio = TSADCV2_INT_SRC_EN(chn) | TSADCV2_INT_SRC_EN_MASK(chn);
> +		val_cru = TSADCV2_INT_SRC_EN_MASK(chn);
> +	} else {
> +		val_cru = TSADCV2_INT_SRC_EN(chn) | TSADCV2_INT_SRC_EN_MASK(chn);
> +		val_gpio = TSADCV2_INT_SRC_EN_MASK(chn);
> +	}
> +	writel_relaxed(val_gpio, regs + TSADCV3_HSHUT_GPIO_INT_EN);
> +	writel_relaxed(val_cru, regs + TSADCV3_HSHUT_CRU_INT_EN);
> +}

This function is identical to rk_tsadcv3_tshut_mode() in mainline.

Should the v3 function be renamed to v4 in mainline to match vendor
kernel to avoid confusion?

> +
>  static const struct rockchip_tsadc_chip px30_tsadc_data = {
>  	/* cpu, gpu */
>  	.chn_offset = 0,
> @@ -1284,6 +1300,28 @@ static const struct rockchip_tsadc_chip rk3568_tsadc_data = {
>  	},
>  };
>  
> +static const struct rockchip_tsadc_chip rk3576_tsadc_data = {
> +	/* top, big_core, little_core, ddr, npu, gpu */
> +	.chn_offset = 0,
> +	.chn_num = 6, /* six channels for tsadc */
> +	.tshut_mode = TSHUT_MODE_GPIO, /* default TSHUT via GPIO give PMIC */
> +	.tshut_polarity = TSHUT_LOW_ACTIVE, /* default TSHUT LOW ACTIVE */
> +	.tshut_temp = 95000,

Here the default is GPIO and 95 deg, in DT node the default is override
to CRU and 120 deg.

Any reason that is not the default here?

Regards,
Jonas

> +	.initialize = rk_tsadcv8_initialize,
> +	.irq_ack = rk_tsadcv4_irq_ack,
> +	.control = rk_tsadcv4_control,
> +	.get_temp = rk_tsadcv4_get_temp,
> +	.set_alarm_temp = rk_tsadcv3_alarm_temp,
> +	.set_tshut_temp = rk_tsadcv3_tshut_temp,
> +	.set_tshut_mode = rk_tsadcv4_tshut_mode,
> +	.table = {
> +		.id = rk3588_code_table,
> +		.length = ARRAY_SIZE(rk3588_code_table),
> +		.data_mask = TSADCV4_DATA_MASK,
> +		.mode = ADC_INCREMENT,
> +	},
> +};
> +
>  static const struct rockchip_tsadc_chip rk3588_tsadc_data = {
>  	/* top, big_core0, big_core1, little_core, center, gpu, npu */
>  	.chn_offset = 0,
> @@ -1342,6 +1380,10 @@ static const struct of_device_id of_rockchip_thermal_match[] = {
>  		.compatible = "rockchip,rk3568-tsadc",
>  		.data = (void *)&rk3568_tsadc_data,
>  	},
> +	{
> +		.compatible = "rockchip,rk3576-tsadc",
> +		.data = (void *)&rk3576_tsadc_data,
> +	},
>  	{
>  		.compatible = "rockchip,rk3588-tsadc",
>  		.data = (void *)&rk3588_tsadc_data,
> 


