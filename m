Return-Path: <devicetree+bounces-240736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE11C74A3B
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:47:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 247694E61E4
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 14:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C2C42BE03C;
	Thu, 20 Nov 2025 14:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="b1Jz+sDy"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04FD529E10B;
	Thu, 20 Nov 2025 14:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763649736; cv=none; b=RLpUKAnWA86qw3xv9YUljEl/i1j2VNPD8yq86H18XTeSil1ZgTMcmJFP6UDr7R57Ux6yMhMLmUume9AZJHm+e+gpCfQFqmO3Ozfl+pm0SBQoOX+STs2XDNTcY/O6Nfg4C1SrEBH0UdeQ6o2A5GmoABc4IxgNrK0GuVVhpxpEz4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763649736; c=relaxed/simple;
	bh=fa7WHscB8vi69zuem9la5vhtfXoFdBzZsUj1liyFTbs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Pvw9zIxB5aJlL+/H5PX+3nePDZ7yvnudHWULogpXPYifIkesjhyWi0HgCMJ0Uk//Ft872xaVSqAxG7Y1JOk8x8kutgZw24BavphAvxNDV5OWTepwliKU/cR0tu5QKS1XtvlbSc+a1TJahJP6VooYP1FqTRCOUVnrE4VdLItv11I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=b1Jz+sDy; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1763649732;
	bh=fa7WHscB8vi69zuem9la5vhtfXoFdBzZsUj1liyFTbs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=b1Jz+sDyFG1Bc+y7xNUGvb3jxkNem6/6tHWUmd+QeVRcRrUk9PcqW+JN10bFfVTee
	 4kDTP5bMM+aQtsZjtfMK4zD/QJyxCKt5BbG/ZD2XvkExm4iGJleAD+fmAHLSEzyvTA
	 OtlJmZ23Uwad1oQzjOMlakYZRN+Xn15Wyr6HGYRUwryE0XC0ZFqGc7ofOAmzvQryzO
	 PyQb+vr8ARXowbxEu56nkL/yP0iisrd277b6qJQISBI8DaEgi2vOi8qQz2NQSILNyJ
	 5qROPbTFSz0bSf1MHek738fzhR3WMr7EvuXpYb+Rgbx9sLrPGZVyyDyDUzc+Fuf6a2
	 kQ7zbYqrGPrrA==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8082417E00B0;
	Thu, 20 Nov 2025 15:42:11 +0100 (CET)
Message-ID: <76325c39-ea88-48fe-b32d-00c1e0d31024@collabora.com>
Date: Thu, 20 Nov 2025 15:42:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] rtc: mt6397: Add BBPU alarm status reset and
 shutdown handling
To: ot_shunxi.zhang@mediatek.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Eddie Huang <eddie.huang@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Lee Jones
 <lee@kernel.org>, Vince-WL.Liu@mediatek.com, sirius.wang@mediatek.com,
 Jh.Hsu@mediatek.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20251120121805.6775-1-ot_shunxi.zhang@mediatek.com>
 <20251120121805.6775-5-ot_shunxi.zhang@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20251120121805.6775-5-ot_shunxi.zhang@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 20/11/25 13:18, ot_shunxi.zhang@mediatek.com ha scritto:
> From: Shunxi Zhang <ot_shunxi.zhang@mediatek.com>
> 
> Function "mtk_rtc_reset_bbpu_alarm_status" is added to address the
> issue that the RTC BBPU alarm state remains after the RTC alarm
> has occurred.
> 
> Additionally, function "mtk_rtc_shutdown" is added to address the
> issue of the platform being powered on again after shutdown because
> the RTC_BBPU alarm state was not cleared.
> 
> Signed-off-by: Shunxi Zhang <ot_shunxi.zhang@mediatek.com>
> ---
>   drivers/rtc/rtc-mt6397.c | 30 ++++++++++++++++++++++++++++++
>   1 file changed, 30 insertions(+)
> 
> diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
> index b8f44a00de5d..8bf7e0822ef0 100644
> --- a/drivers/rtc/rtc-mt6397.c
> +++ b/drivers/rtc/rtc-mt6397.c
> @@ -37,6 +37,21 @@ static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
>   	return ret;
>   }
>   
> +static void mtk_rtc_reset_bbpu_alarm_status(struct mt6397_rtc *rtc)
> +{
> +	u32 bbpu = RTC_BBPU_KEY | RTC_BBPU_PWREN | RTC_BBPU_RESET_AL;
> +	int ret;
> +
> +	ret = regmap_write(rtc->regmap, rtc->addr_base + RTC_BBPU, bbpu);
> +	if (ret < 0) {
> +		dev_err(rtc->rtc_dev->dev.parent, "%s: write rtc bbpu error\n",
> +			__func__);
> +		return;
> +	}
> +
> +	mtk_rtc_write_trigger(rtc);
> +}
> +
>   static irqreturn_t mtk_rtc_irq_handler_thread(int irq, void *data)
>   {
>   	struct mt6397_rtc *rtc = data;
> @@ -51,6 +66,9 @@ static irqreturn_t mtk_rtc_irq_handler_thread(int irq, void *data)
>   		if (regmap_write(rtc->regmap, rtc->addr_base + RTC_IRQ_EN,
>   				 irqen) == 0)
>   			mtk_rtc_write_trigger(rtc);
> +
> +		if (rtc->alarm_sta_supported)
> +			mtk_rtc_reset_bbpu_alarm_status(rtc);
>   		mutex_unlock(&rtc->lock);
>   
>   		return IRQ_HANDLED;
> @@ -249,6 +267,7 @@ static int mtk_rtc_probe(struct platform_device *pdev)
>   	struct resource *res;
>   	struct mt6397_chip *mt6397_chip = dev_get_drvdata(pdev->dev.parent);
>   	struct mt6397_rtc *rtc;
> +	struct device_node *np = pdev->dev.of_node;
>   	int ret;
>   
>   	rtc = devm_kzalloc(&pdev->dev, sizeof(struct mt6397_rtc), GFP_KERNEL);
> @@ -275,6 +294,8 @@ static int mtk_rtc_probe(struct platform_device *pdev)
>   	if (IS_ERR(rtc->rtc_dev))
>   		return PTR_ERR(rtc->rtc_dev);
>   
> +	rtc->alarm_sta_supported = of_property_read_bool(np, "mediatek,alarm-sta-supported");

You don't need a DT property - the PMIC dictates support for that, not the board.

This means that you also don't need the alarm_sta_supported variable, and you
don't need to check for it.

Just execute the mtk_rtc_reset_bbpu_alarm_status() function when you have to,
without any check.

Cheers,
Angelo

> +
>   	ret = devm_request_threaded_irq(&pdev->dev, rtc->irq, NULL,
>   					mtk_rtc_irq_handler_thread,
>   					IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
> @@ -297,6 +318,14 @@ static int mtk_rtc_probe(struct platform_device *pdev)
>   	return devm_rtc_register_device(rtc->rtc_dev);
>   }
>   
> +static void mtk_rtc_shutdown(struct platform_device *pdev)
> +{
> +	struct mt6397_rtc *rtc = platform_get_drvdata(pdev);
> +
> +	if (rtc->alarm_sta_supported)
> +		mtk_rtc_reset_bbpu_alarm_status(rtc);
> +}
> +
>   #ifdef CONFIG_PM_SLEEP
>   static int mt6397_rtc_suspend(struct device *dev)
>   {
> @@ -346,6 +375,7 @@ static struct platform_driver mtk_rtc_driver = {
>   		.pm = &mt6397_pm_ops,
>   	},
>   	.probe = mtk_rtc_probe,
> +	.shutdown = mtk_rtc_shutdown,
>   };
>   
>   module_platform_driver(mtk_rtc_driver);



