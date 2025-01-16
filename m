Return-Path: <devicetree+bounces-139062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3027FA13CE5
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 15:54:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D4270188F098
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 14:53:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B41A322DFB2;
	Thu, 16 Jan 2025 14:50:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8554623F28D;
	Thu, 16 Jan 2025 14:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737039018; cv=none; b=b6UkgtGk057oU9/bNOqQytnGudXJYFdhvfoioZaJUUQlzRq7vcQRN22Kc1R7hQ4Luv8UjanzKVXkxxizm4NurzcyZ/1Ty7N51fh/2KA5xF3UzRaNI7W+NLRmGapjISmw6AUAN6rIeg8IWDREgb7fs3wJM8VYfSdxDRAGpuraYY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737039018; c=relaxed/simple;
	bh=L/TiURTw9fIq1ZzHb4Y5tVx6JmmSEcSF3T7/EaRNtyo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=htqgeAbEi1HC99iQbO8TUdm5pI8vGl5mc5pB80Mti/BvkVsChWd2XpfvGfphYxkWYpy67si8Av/V+a9pkpDVNY1DbdIWIsrBzbia6pptZ5HT6muCmE8NbJWYThvfv42SFO2+vRQKS679Yt0NleHzxm9/tRKzAcNc/ja/RtmiFFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 294CE339;
	Thu, 16 Jan 2025 06:50:44 -0800 (PST)
Received: from [10.1.37.67] (e122027.cambridge.arm.com [10.1.37.67])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3606B3F673;
	Thu, 16 Jan 2025 06:50:12 -0800 (PST)
Message-ID: <460e6ee5-a6d1-4d93-9720-d6a5589a2434@arm.com>
Date: Thu, 16 Jan 2025 14:50:10 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] drm/panfrost: Add support for Mali on the MT8370 SoC
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20250116-mt8370-enable-gpu-v1-0-0a6b78e925c8@collabora.com>
 <20250116-mt8370-enable-gpu-v1-2-0a6b78e925c8@collabora.com>
From: Steven Price <steven.price@arm.com>
Content-Language: en-GB
In-Reply-To: <20250116-mt8370-enable-gpu-v1-2-0a6b78e925c8@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 16/01/2025 14:25, Louis-Alexis Eyraud wrote:
> This commit adds a compatible for the MediaTek MT8370 SoC, with an
> integrated ARM Mali G57 MC2 GPU (Valhall-JM, dual core), and adds
> platform data using the same supplies and the same power domain lists
> as MT8186 (one regulator, two power domains).
> 
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>

Reviewed-by: Steven Price <steven.price@arm.com>

> ---
>  drivers/gpu/drm/panfrost/panfrost_drv.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
> index 0f3935556ac761adcd80197d87e8e478df436fd5..1d51b64ed0f0660cc95263a289d5dad204540cfd 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_drv.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
> @@ -837,6 +837,15 @@ static const struct panfrost_compatible mediatek_mt8192_data = {
>  	.pm_features = BIT(GPU_PM_CLK_DIS) | BIT(GPU_PM_VREG_OFF),
>  };
>  
> +/* MT8370 uses the same power domains and power supplies as MT8186 */
> +static const struct panfrost_compatible mediatek_mt8370_data = {
> +	.num_supplies = ARRAY_SIZE(mediatek_mt8183_b_supplies) - 1,
> +	.supply_names = mediatek_mt8183_b_supplies,
> +	.num_pm_domains = ARRAY_SIZE(mediatek_mt8186_pm_domains),
> +	.pm_domain_names = mediatek_mt8186_pm_domains,
> +	.pm_features = BIT(GPU_PM_CLK_DIS) | BIT(GPU_PM_VREG_OFF),
> +};
> +
>  static const struct of_device_id dt_match[] = {
>  	/* Set first to probe before the generic compatibles */
>  	{ .compatible = "amlogic,meson-gxm-mali",
> @@ -859,6 +868,7 @@ static const struct of_device_id dt_match[] = {
>  	{ .compatible = "mediatek,mt8186-mali", .data = &mediatek_mt8186_data },
>  	{ .compatible = "mediatek,mt8188-mali", .data = &mediatek_mt8188_data },
>  	{ .compatible = "mediatek,mt8192-mali", .data = &mediatek_mt8192_data },
> +	{ .compatible = "mediatek,mt8370-mali", .data = &mediatek_mt8370_data },
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, dt_match);
> 


