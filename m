Return-Path: <devicetree+bounces-152237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 205BEA48678
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 18:22:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 68D021645C5
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 17:18:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9948B1D61B9;
	Thu, 27 Feb 2025 17:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="RJwb/Ot9"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26B714BF8F
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 17:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740676678; cv=none; b=P1kPgNSd8bNN1/n0S9ztU3w7+nu9vTl0nYMv/YWkRN7lS3B+OkMYRIAqTCpe6/K2TDSoG944K6jDEG8rhAsr0/wJKZoE8MCLllmt4nTvbZdCh8spv8wr+RnWMZv0ESLxEmQeEYrdSOcbVW3b4Ta0UTb9Vr1o3/uj9oZL2gGCDbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740676678; c=relaxed/simple;
	bh=hxQY0yRqvwsxj3tZRp3k9/6ZjAfhlAbWVvGg1ApCM6k=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=u44CNI0xwEnG/GGrSxZf4j3ihkaM3jg99Eu/pQP2aFtw9famW5W+4gg2lde+cCkRIQVpMAJVRAVR3iqCZC5l59d7PUO/K//xBEg8n83KJBKOuT6Lof/1U5aYWV2wPvHK17AxbOQMH38Ana7j0HoRS/h5ZPJA4/sKtgUHLk5lpdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=RJwb/Ot9; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740676673;
	bh=hxQY0yRqvwsxj3tZRp3k9/6ZjAfhlAbWVvGg1ApCM6k=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=RJwb/Ot9/XVpXFQbOQONVL2lxfhSIHxSMuRaCA7wbnbRRd4QhyuwwcuiyJ/b3O7fu
	 xf3NijODTeJPp5kGhdpbmh2SyUb1dq/pAfaxC3KFltwu0HLz04g09ttKOcrhh7spWP
	 oOtEdYDqLMKgxLEB7uUb15U7a08j2sfdXchhqtf26Cv2bgfphx7fe3J6EpiN9h8Cp5
	 ajYFB9pvhAS0soCEHDTLEehUB3ZfBYksXmRMBjAvINTavwIzDEUC+gGZ4wEs/PVjK3
	 RrTn2RbqYuUitPcwPiyfoq+IvAMpqOelH2uz4iuvg3NIXLPfRrgQIGomDZbNbYwbaI
	 yhToA1UEgbdwA==
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 160A117E061D;
	Thu, 27 Feb 2025 18:17:53 +0100 (CET)
Date: Thu, 27 Feb 2025 18:17:48 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley
 <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, Fabio Estevam
 <festevam@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Liviu Dudau
 <liviu.dudau@arm.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Philipp Zabel
 <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Sebastian Reichel <sre@kernel.org>, Shawn Guo
 <shawnguo@kernel.org>, Simona Vetter <simona@ffwll.ch>, Steven Price
 <steven.price@arm.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 imx@lists.linux.dev
Subject: Re: [PATCH 6/9] drm/panthor: Reset GPU after L2 cache power off
Message-ID: <20250227181748.3f99d67e@collabora.com>
In-Reply-To: <20250227170012.124768-7-marex@denx.de>
References: <20250227170012.124768-1-marex@denx.de>
	<20250227170012.124768-7-marex@denx.de>
Organization: Collabora
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 27 Feb 2025 17:58:06 +0100
Marek Vasut <marex@denx.de> wrote:

> This seems necessary on Freescale i.MX95 Mali G310 to reliably resume
> from runtime PM suspend. Without this, if only the L2 is powered down
> on RPM entry, the GPU gets stuck and does not indicate the firmware is
> booted after RPM resume.
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

Unfortunately, if you do that unconditionally we no longer have a
fast-reset. Would be good to figure out why the fast-reset doesn't work
on this platform.

