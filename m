Return-Path: <devicetree+bounces-106098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6A6989227
	for <lists+devicetree@lfdr.de>; Sun, 29 Sep 2024 02:34:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB2C3282047
	for <lists+devicetree@lfdr.de>; Sun, 29 Sep 2024 00:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F016C538A;
	Sun, 29 Sep 2024 00:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="da9OAMN/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C4C8488
	for <devicetree@vger.kernel.org>; Sun, 29 Sep 2024 00:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727570089; cv=none; b=BY9e7NLSsR2rqNIQRdmjXFCIDAMXsfzxWqxFR91QhRJwJ3HOCV24Y3NAAWobV3QHKKBPD0IacO+SwBKa0iCNci86BfDypb+Dtzhx+nPLUgWyhcpsI2tKYmg+b7sa8uH/q60OKAPQ5SDZo44O61BtQwDGI0keGbkNo3QY8aoEVWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727570089; c=relaxed/simple;
	bh=FUnK5WsqIt7SFr1ZuMbM54fJeM1wSWwCSGDvqC9enzc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BqHicY4r3ByqVdQitLKzR8TMiPOW1LY/n51P1YZNpypD9JZWOA2Z8GsKnIt2g6ewNPEoPD/9tGoVqtezN0xKQO5ZuKhK61V0WYRWhF2fBQ29YSshDXf0NJ6ukeeTcbZ27eTNEv/T0Fai65x79TPpiAJILXL+W2Q7dpoowB4pftM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=da9OAMN/; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1727570071;
 bh=xENoRDlaw7uEZQLQGR7uTWdX3LD1ukayJIDfRPDH3Vo=;
 b=da9OAMN/U5XBUZyoZfiZdGSYTzXYwpNid04GT0SdGXMxYWmNAWJRxJmiIFDlrmZLsS0HCvuqy
 rq1K0FfgrMY2xq+0UAMgTzf6wEB1R48Pk619RiGzud5pyVexqo3fGlDVMT07Gmbmb1gIS6PMMg1
 2kKbxWGYS3s5aA+PRaXVEMSCeOOgx5T3mNnK8n+57IB/pnBFG3/WUGe4A/4R2NUMa5PiVxUs2/0
 lsRQ7wyDeGMJDGixJG88GMnrkvPTslTdb/c7LKYcycgFeDpyk0e18ABh1W0rF6WJ+cK6OQ+GW2Y
 xF5zi2Aghx5rHt60Z8h+wbmqSXC1jG3uKmABXU636nTw==
Message-ID: <83349da6-17bc-432d-badc-5946c42a53ed@kwiboo.se>
Date: Sun, 29 Sep 2024 02:34:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 3/3] drm/rockchip: Add basic RK3588 HDMI output support
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Simona Vetter <simona@ffwll.ch>,
 Simona Vetter <simona.vetter@ffwll.ch>
References: <20240929-b4-rk3588-bridge-upstream-v8-0-83538c2cc325@collabora.com>
 <20240929-b4-rk3588-bridge-upstream-v8-3-83538c2cc325@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240929-b4-rk3588-bridge-upstream-v8-3-83538c2cc325@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66f8a093ed0aa09774abf316

Hi Cristian,

On 2024-09-29 00:36, Cristian Ciocaltea wrote:
> The RK3588 SoC family integrates the newer Synopsys DesignWare HDMI 2.1
> Quad-Pixel (QP) TX controller IP and a HDMI/eDP TX Combo PHY based on a
> Samsung IP block.
> 
> Add just the basic support for now, i.e. RGB output up to 4K@60Hz,
> without audio, CEC or any of the HDMI 2.1 specific features.
> 
> Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/Kconfig               |   9 +
>  drivers/gpu/drm/rockchip/Makefile              |   1 +
>  drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 425 +++++++++++++++++++++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c    |   2 +
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.h    |   1 +
>  5 files changed, 438 insertions(+)
> 

[snip]

> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> new file mode 100644
> index 000000000000..6103d30d40fb

[snip]

> +static irqreturn_t dw_hdmi_qp_rk3588_irq(int irq, void *dev_id)
> +{
> +	struct rockchip_hdmi_qp *hdmi = dev_id;
> +	u32 intr_stat, val;
> +	int debounce_ms;
> +
> +	regmap_read(hdmi->regmap, RK3588_GRF_SOC_STATUS1, &intr_stat);
> +	if (!intr_stat)
> +		return IRQ_NONE;
> +
> +	val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_CLR,
> +			    RK3588_HDMI0_HPD_INT_CLR);
> +	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
> +
> +	debounce_ms = intr_stat & RK3588_HDMI0_LEVEL_INT ? 150 : 20;
> +	mod_delayed_work(system_wq, &hdmi->hpd_work,
> +			 msecs_to_jiffies(debounce_ms));

If I am understanding this correctly this will wait for 150 ms after HPD
goes high and 20 ms after HPD goes low to trigger the hpd_work.

Would it not make more sense to be the other way around? In order to
reduce unnecessary HOTPLUG=1 uevents from being triggered during short
EDID refresh pulses? At least that is what I am playing around with for
dw-hdmi.

Regards,
Jonas

> +
> +	val |= HIWORD_UPDATE(0, RK3588_HDMI0_HPD_INT_MSK);
> +	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
> +
> +	return IRQ_HANDLED;
> +}

[snip]


