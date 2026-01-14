Return-Path: <devicetree+bounces-255147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 682B9D201B1
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 17:12:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 896F1300647C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:12:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C52A3A1E6B;
	Wed, 14 Jan 2026 16:11:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B72612F5468;
	Wed, 14 Jan 2026 16:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768407119; cv=none; b=kN2wt9MKq431WTcls/XVaHZOxtUq7oHgiIYuPkrO1MH/Sddg1IDyqyxgMXmcmYoRA9+FqjoZwxj7DCxzhiH2v4lwaNQS72pgqyIQDyiZlW6zVYHWj0VnkcTmUC26K6sz6K1WwHjh4NKYB1ZuHDpdUxKWNC3qxnEQeDybOXHUkes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768407119; c=relaxed/simple;
	bh=Ypi2ZH7LGWS/Swm2Qgh8oMtDBj7U+I6gGKL2u/nNlzY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DgZKZpXmPLfwZS4bJFnGC3Ia6DMPWjyAmx0ZC7hIOGWLwRfcg13H0bfp0eSlsx3pNLaGqyj0yfOdDmUKTg8l5O/dNf9jM8QVjofJBeYoip/k6WAR+W9Oh0tIp4mM6D6HvkoQfj0UkzInVfSUHWTni7iBzIdfTj5TSfgOsIk2Sp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 495F81515;
	Wed, 14 Jan 2026 08:11:50 -0800 (PST)
Received: from [10.57.10.71] (unknown [10.57.10.71])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 503BF3F632;
	Wed, 14 Jan 2026 08:11:55 -0800 (PST)
Message-ID: <091e1868-1471-490f-b464-40060f2c53e6@arm.com>
Date: Wed, 14 Jan 2026 16:11:53 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] drm/panfrost: Add Amlogic Meson S4 integration quirk
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, adrian.larumbe@collabora.com,
 boris.brezillon@collabora.com, robh@kernel.org
References: <20260110200426.1461575-1-martin.blumenstingl@googlemail.com>
 <20260110200426.1461575-3-martin.blumenstingl@googlemail.com>
From: Steven Price <steven.price@arm.com>
Content-Language: en-GB
In-Reply-To: <20260110200426.1461575-3-martin.blumenstingl@googlemail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/01/2026 20:04, Martin Blumenstingl wrote:
> The Mali G31-GPU on Amlogic Meson S4 SoCs requires the same quirk as
> previous SoC generations. Wire up that quirk by matching the Meson S4
> compatible string with the existing Amlogic SoC data.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Reviewed-by: Steven Price <steven.price@arm.com>

> ---
>  drivers/gpu/drm/panfrost/panfrost_drv.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
> index 7d8c7c337606..431470af0f36 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_drv.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
> @@ -1056,6 +1056,8 @@ static const struct of_device_id dt_match[] = {
>  	  .data = &amlogic_data, },
>  	{ .compatible = "amlogic,meson-g12a-mali",
>  	  .data = &amlogic_data, },
> +	{ .compatible = "amlogic,meson-s4-mali",
> +	  .data = &amlogic_data, },
>  	{ .compatible = "arm,mali-t604", .data = &default_data, },
>  	{ .compatible = "arm,mali-t624", .data = &default_data, },
>  	{ .compatible = "arm,mali-t628", .data = &default_data, },


