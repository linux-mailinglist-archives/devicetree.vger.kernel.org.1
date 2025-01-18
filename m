Return-Path: <devicetree+bounces-139478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF68A15DEB
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 17:08:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3E29918877EE
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 16:08:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB845199239;
	Sat, 18 Jan 2025 16:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEM0q6D7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C63192D97;
	Sat, 18 Jan 2025 16:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737216494; cv=none; b=sT6AcS+WRZc2Wp53jRvW99tFzH7F08fXlLclZThr+//n8uP+RkkwF7ekm8YuNQ4jC7R1oowID+TWwtyge6O2hYjxx8zyERE0R0d+KCpgmGWBpyoiFatA9LuigPAbTj8evVe1+PK0IT03GdHspZF3UhVB5HSpOSxxOpbWexRfvjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737216494; c=relaxed/simple;
	bh=ibohityZJYJR2vS9My7/wylHqL05Ro2cTshSmwpPaNY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=okqO53iNtD7Dbs0jOmGYo6gTgfELVeAAg8ldnUi0ACMTmvGURfvJfaZnhvlOXmp60+B7mX/Hr/m+5bs63zzx9Ja/aS9YLsujrlDwvaiBQckefzPM9aDt06Fd1H+VjOGeBwQTk+uOEmf+9Rizl8oXhZpQFRbRrFdwDaRS3MnCqc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEM0q6D7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3238EC4CEE1;
	Sat, 18 Jan 2025 16:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737216494;
	bh=ibohityZJYJR2vS9My7/wylHqL05Ro2cTshSmwpPaNY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tEM0q6D7UIMeyjJ2p05D5o7IZ/kTkuPnNlJwvWVrp4xQU4kDhA2IIgPTnvZlqlmzW
	 xGRCgsmjVbvPmZk6ypAACPDGY3MOk/nkFseYJwBBbYkXrGf9iWtTvjiE2IoPj4rikh
	 ita+dNTZ2UrSw2q0Kcv70n0TlwESzDR0x/xWHSVfXw0JXZeumw9Mvv5F9ieLIDMkmc
	 6IlJF2gaREAFVLVUEiH0aFRpBT4AugWxjXTBZQ2n7LHmOcuw1kzjECBS2Oozw6mhbv
	 o6vnMkHwwIn3XKwvZkiv0Hs+wgdpASnOVTitnujYJfuaFv46bOeGsS7dY/1j7UN1r5
	 eVFrSsKhHCcqg==
Date: Sat, 18 Jan 2025 17:08:10 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Boris Brezillon <boris.brezillon@collabora.com>, 
	Steven Price <steven.price@arm.com>, kernel@collabora.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 2/3] drm/panfrost: Add support for Mali on the MT8370 SoC
Message-ID: <20250118-meticulous-black-caracal-ec7f0d@krzk-bin>
References: <20250116-mt8370-enable-gpu-v1-0-0a6b78e925c8@collabora.com>
 <20250116-mt8370-enable-gpu-v1-2-0a6b78e925c8@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250116-mt8370-enable-gpu-v1-2-0a6b78e925c8@collabora.com>

On Thu, Jan 16, 2025 at 03:25:58PM +0100, Louis-Alexis Eyraud wrote:
> This commit adds a compatible for the MediaTek MT8370 SoC, with an
> integrated ARM Mali G57 MC2 GPU (Valhall-JM, dual core), and adds
> platform data using the same supplies and the same power domain lists
> as MT8186 (one regulator, two power domains).
> 
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
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

No, people, stop this nonsense. This is exactly the same as previous.
Don't duplicate entries just because you want a commit.

> +
>  static const struct of_device_id dt_match[] = {
>  	/* Set first to probe before the generic compatibles */
>  	{ .compatible = "amlogic,meson-gxm-mali",
> @@ -859,6 +868,7 @@ static const struct of_device_id dt_match[] = {
>  	{ .compatible = "mediatek,mt8186-mali", .data = &mediatek_mt8186_data },
>  	{ .compatible = "mediatek,mt8188-mali", .data = &mediatek_mt8188_data },
>  	{ .compatible = "mediatek,mt8192-mali", .data = &mediatek_mt8192_data },
> +	{ .compatible = "mediatek,mt8370-mali", .data = &mediatek_mt8370_data },

No, express properly compatibility or say in bindings commit msg why
devices are not compatible.

Best regards,
Krzysztof


