Return-Path: <devicetree+bounces-14990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F87B7E7C01
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 12:55:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 50FEE1C2095D
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 11:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D97EF179BD;
	Fri, 10 Nov 2023 11:55:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="j2HO9PT8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F10613FFF
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 11:55:36 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAC1D31E6E;
	Fri, 10 Nov 2023 03:55:34 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3821866073D6;
	Fri, 10 Nov 2023 11:55:32 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699617333;
	bh=38yk6YYYVJElR7zLD5WCKypqClwX0XCjMvdTtIW7UUY=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=j2HO9PT8RWkPtNRS8PtpYBxn3IuQzDgf6neTs/Uzn/JEGoGJRWLbGhRUAx/Tit+gN
	 M6hy63IbVfDDm5gbDANRpIUziwAWbhLYHq6F8pwqkHLPH/+rdLmoBAwcLIRQ5z8J1Q
	 nZ0BRrbmvnUOlS3oDmd4nNrCBdaUb4Iu6Cmu+sa3ZGGtyEhCEwPGmvDOkFi8GLVty8
	 sfAk+sb50KY/tA/h6ZihhdJu6we30NIUN2iyRe2K8sCuDG+YPWoPXbkbx2Nyybts7W
	 Su23RLZb4UaIL4EPJ+Ed2ABMyvDgcBhmNqhMiyj63RrvN6CASgTGkr5RcEQed/UMf2
	 0O6NlE+W8aGFg==
Message-ID: <58b551f2-2d0b-4432-b1fd-edc690f13e4c@collabora.com>
Date: Fri, 10 Nov 2023 12:55:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] watchdog: mediatek: mt7988: add wdt support
To: Daniel Golle <daniel@makrotopia.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <6912f6f406bc45674020681184f3eeca2f2cb63f.1699576174.git.daniel@makrotopia.org>
 <ddb5b6ca88165aa69f73fe2804eedd0231d8d9e7.1699576174.git.daniel@makrotopia.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <ddb5b6ca88165aa69f73fe2804eedd0231d8d9e7.1699576174.git.daniel@makrotopia.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 10/11/23 01:30, Daniel Golle ha scritto:
> Add support for watchdog and reset generator unit of the MediaTek
> MT7988 SoC.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>   drivers/watchdog/mtk_wdt.c | 56 +++++++++++++++++++++++++++++++++++++-
>   1 file changed, 55 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
> index b2330b16b497a..b98b8c29735aa 100644
> --- a/drivers/watchdog/mtk_wdt.c
> +++ b/drivers/watchdog/mtk_wdt.c
> @@ -12,6 +12,7 @@
>   #include <dt-bindings/reset/mt2712-resets.h>
>   #include <dt-bindings/reset/mediatek,mt6795-resets.h>
>   #include <dt-bindings/reset/mt7986-resets.h>
> +#include <dt-bindings/reset/mediatek,mt7988-resets.h>
>   #include <dt-bindings/reset/mt8183-resets.h>
>   #include <dt-bindings/reset/mt8186-resets.h>
>   #include <dt-bindings/reset/mt8188-resets.h>
> @@ -58,6 +59,8 @@
>   #define WDT_SWSYSRST		0x18U
>   #define WDT_SWSYS_RST_KEY	0x88000000
>   
> +#define WDT_SWSYSRST_EN		0xfc
> +
>   #define DRV_NAME		"mtk-wdt"
>   #define DRV_VERSION		"1.0"
>   
> @@ -71,44 +74,85 @@ struct mtk_wdt_dev {
>   	struct reset_controller_dev rcdev;
>   	bool disable_wdt_extrst;
>   	bool reset_by_toprgu;
> +	bool has_swsysrst_en;

mtk_wdt_data is always a const and this has_swsysrst_en member is never supposed
to change during runtime.

At this point, just add a pointer to struct mtk_wdt_data in mtk_wdt_dev, then
instead of mtk_wdt->has_swsysrst_en you check mtk_wdt->pdata->has_swsysrst_en.

>   };
>   
>   struct mtk_wdt_data {
>   	int toprgu_sw_rst_num;
> +	bool has_swsysrst_en;
>   };
>   
>   static const struct mtk_wdt_data mt2712_data = {
>   	.toprgu_sw_rst_num = MT2712_TOPRGU_SW_RST_NUM,
> +	.has_swsysrst_en = false,

false == 0; 0 is init default; this assignment is useless.

>   };
>   
>   static const struct mtk_wdt_data mt6795_data = {
>   	.toprgu_sw_rst_num = MT6795_TOPRGU_SW_RST_NUM,
> +	.has_swsysrst_en = false,
>   };
>   
>   static const struct mtk_wdt_data mt7986_data = {
>   	.toprgu_sw_rst_num = MT7986_TOPRGU_SW_RST_NUM,
> +	.has_swsysrst_en = false,
> +};
> +
> +static const struct mtk_wdt_data mt7988_data = {
> +	.toprgu_sw_rst_num = MT7988_TOPRGU_SW_RST_NUM,
> +	.has_swsysrst_en = true,
>   };
>   
>   static const struct mtk_wdt_data mt8183_data = {
>   	.toprgu_sw_rst_num = MT8183_TOPRGU_SW_RST_NUM,
> +	.has_swsysrst_en = false,
>   };
>   
>   static const struct mtk_wdt_data mt8186_data = {
>   	.toprgu_sw_rst_num = MT8186_TOPRGU_SW_RST_NUM,
> +	.has_swsysrst_en = false,
>   };
>   
>   static const struct mtk_wdt_data mt8188_data = {
>   	.toprgu_sw_rst_num = MT8188_TOPRGU_SW_RST_NUM,
> +	.has_swsysrst_en = false,
>   };
>   
>   static const struct mtk_wdt_data mt8192_data = {
>   	.toprgu_sw_rst_num = MT8192_TOPRGU_SW_RST_NUM,
> +	.has_swsysrst_en = false,
>   };
>   
>   static const struct mtk_wdt_data mt8195_data = {
>   	.toprgu_sw_rst_num = MT8195_TOPRGU_SW_RST_NUM,
> +	.has_swsysrst_en = false,
>   };
>   
> +static int toprgu_reset_sw_enable(struct reset_controller_dev *rcdev,
> +				  unsigned long id, bool enable)

I would transfer this logic inside of toprgu_reset_update() (not literally!).

Doing so means that you would change this function to become

/**
  * toprgu_reset_sw_en_unlocked - What this function does
  * params
  * warn about this *requiring* to be called in locked state
  * check kerneldoc documentation :)))
  */
static void toprgu_reset_sw_en_unlocked(struct mtk_wdt_dev *mtk_wdt,
					unsigned long id, bool assert)
{
	u32 tmp;

	tmp = readl....
	if (...
	blahblah

	return 0;
}

and then call it in toprgu_reset_update(), before spin_unlock_irqrestore() like

{
	stuff...
	....

	writel(.... SWSYSRST);

	if (data->pdata->has_swsysrst_en)
		toprgu_reset_sw_en_unlocked(data, id, assert);

	spin_unlock_irqrestore(...)

	return 0;
}

> +{
> +	unsigned int tmp;
> +	unsigned long flags;
> +	struct mtk_wdt_dev *data =
> +		 container_of(rcdev, struct mtk_wdt_dev, rcdev);
> +
> +	if (!data->has_swsysrst_en)
> +		return 0;
> +
> +	spin_lock_irqsave(&data->lock, flags);
> +
> +	tmp = readl(data->wdt_base + WDT_SWSYSRST_EN);
> +	if (enable)
> +		tmp |= BIT(id);
> +	else
> +		tmp &= ~BIT(id);
> +
> +	writel(tmp, data->wdt_base + WDT_SWSYSRST_EN);
> +
> +	spin_unlock_irqrestore(&data->lock, flags);
> +
> +	return 0;
> +}
> +
>   static int toprgu_reset_update(struct reset_controller_dev *rcdev,
>   			       unsigned long id, bool assert)
>   {
> @@ -135,13 +179,20 @@ static int toprgu_reset_update(struct reset_controller_dev *rcdev,
>   static int toprgu_reset_assert(struct reset_controller_dev *rcdev,
>   			       unsigned long id)
>   {
> +	int ret;
> +
> +	ret = toprgu_reset_sw_enable(rcdev, id, true);
> +	if (ret)
> +		return ret;
> +
>   	return toprgu_reset_update(rcdev, id, true);

...so you don't even touch this function...

>   }
>   
>   static int toprgu_reset_deassert(struct reset_controller_dev *rcdev,
>   				 unsigned long id)
>   {
> -	return toprgu_reset_update(rcdev, id, false);
> +	toprgu_reset_update(rcdev, id, false);
> +	return toprgu_reset_sw_enable(rcdev, id, false);

...nor that one.

>   }
>   
>   static int toprgu_reset(struct reset_controller_dev *rcdev,

Cheers!
Angelo


