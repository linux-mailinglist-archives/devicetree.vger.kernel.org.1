Return-Path: <devicetree+bounces-152579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0283FA4980D
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 12:07:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 132D71896158
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 11:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62D2426039D;
	Fri, 28 Feb 2025 11:07:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FB6925BAA9
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 11:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740740842; cv=none; b=dVf8pIhA1PVmv27Mxb3sgluQWANvPVn4ev41lVA27IX6+tb9ittPj1Liqf1Bj9xVY3Y2hWs8AltIrAMO4HOFnzoeDwRpLZoaMFDKftYR0XhngyWn4Wm4abMf4/SkMc41FiLhD/wQP8rIJ16Xh2QaW7A7C8ZldW/sRrTJb6NatLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740740842; c=relaxed/simple;
	bh=W5UaioCdnGF1rA6z3ia99nhjJBaJoLBcT4jWT6uYaoE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ATAqRYvLot6RxeGlb/kWVaL7T+cxP+JRGe5koeExyuV976VOTGK+eoRB1TbyZakzO7vt0xytuNhDi4NOGlXRiO7MGJGG7e49lQtxLzwMkeNH+egkkrBi491dqy+ZrDJloO8FF4Nq8lI/ciO+yUfPhq+9kzrMlnHtL4ZIo6NNR9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3E6091692
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 03:07:35 -0800 (PST)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BFE553F673
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 03:07:19 -0800 (PST)
Date: Fri, 28 Feb 2025 11:06:58 +0000
From: Liviu Dudau <liviu.dudau@arm.com>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Sebastian Reichel <sre@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Steven Price <steven.price@arm.com>,
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org, imx@lists.linux.dev
Subject: Re: [PATCH 6/9] drm/panthor: Reset GPU after L2 cache power off
Message-ID: <Z8GY0nWXOxCKF-XL@e110455-lin.cambridge.arm.com>
References: <20250227170012.124768-1-marex@denx.de>
 <20250227170012.124768-7-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250227170012.124768-7-marex@denx.de>

Hi Marek,

On Thu, Feb 27, 2025 at 05:58:06PM +0100, Marek Vasut wrote:
> This seems necessary on Freescale i.MX95 Mali G310 to reliably resume
> from runtime PM suspend. Without this, if only the L2 is powered down
> on RPM entry, the GPU gets stuck and does not indicate the firmware is
> booted after RPM resume.

That doesn't sound right. Can you tell me what GPU firmware are you running
(we are now printing the git sha of the image at boot time).

Best regards,
Liviu

> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Boris Brezillon <boris.brezillon@collabora.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Sebastian Reichel <sre@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Simona Vetter <simona@ffwll.ch>
> Cc: Steven Price <steven.price@arm.com>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: imx@lists.linux.dev
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  drivers/gpu/drm/panthor/panthor_gpu.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panthor/panthor_gpu.c b/drivers/gpu/drm/panthor/panthor_gpu.c
> index 671049020afaa..0f07ef7d9aea7 100644
> --- a/drivers/gpu/drm/panthor/panthor_gpu.c
> +++ b/drivers/gpu/drm/panthor/panthor_gpu.c
> @@ -470,11 +470,12 @@ int panthor_gpu_soft_reset(struct panthor_device *ptdev)
>   */
>  void panthor_gpu_suspend(struct panthor_device *ptdev)
>  {
> -	/* On a fast reset, simply power down the L2. */
> -	if (!ptdev->reset.fast)
> -		panthor_gpu_soft_reset(ptdev);
> -	else
> -		panthor_gpu_power_off(ptdev, L2, 1, 20000);
> +	/*
> +	 * Power off the L2 and soft reset the GPU, that makes
> +	 * iMX95 Mali G310 resume without firmware boot timeout.
> +	 */
> +	panthor_gpu_power_off(ptdev, L2, 1, 20000);
> +	panthor_gpu_soft_reset(ptdev);
>  
>  	panthor_gpu_irq_suspend(&ptdev->gpu->irq);
>  }
> -- 
> 2.47.2
> 

-- 
====================
| I would like to |
| fix the world,  |
| but they're not |
| giving me the   |
 \ source code!  /
  ---------------
    ¯\_(ツ)_/¯

