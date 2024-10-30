Return-Path: <devicetree+bounces-117323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 733E39B5E4C
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 09:56:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E244FB22349
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 08:56:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E24B21E1C29;
	Wed, 30 Oct 2024 08:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oY4DCPSY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF221D6194
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 08:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730278580; cv=none; b=D5F+PjIphwBzvY5UKnMFrW46J12pNBiHpH21OG9cpLIPAKVwmr7tUzlhMTH9w59akknCMMnU9ZFT9ztTsERnN0eTx3QAy4LNuN8L8wxOmLSK0SLFraFWiC1ud8+j7X5yB4svxytYaEB6VeH8Qab0tlPUbwp7PsZanECwl7QRz3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730278580; c=relaxed/simple;
	bh=40rOiv7LbiYEvzP2QI3665SNXkeGbF02kc7yZ2+ubd0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XgLk0FI0zfTyoaHjkM6nQHN9f0K0vExQ0K2nZBCumqeVStYbcR6bLfABRnZx27M8FkYcOzfXQa0iADHI463FyO64NWKqy2FS5rsEh1jzCnWl/vek2b09DwOh3qwekyYuscHSbkXbUnnR+ucLoRKCKhf//IUNIDASGrASX3cfEZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oY4DCPSY; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43155abaf0bso62112055e9.0
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 01:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730278576; x=1730883376; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vwQhJkDhRGyNYzUhzrUe8VLzlsZC7UDKp+wauW+M1cA=;
        b=oY4DCPSYL2SO6Am/XkGp2hpTtq66+BkcZJCJqXW/03x3Djid/8bw+kf/7Izi3qp/g4
         8Rw8G6nk1GdmQOsLTzn7VkdyqO3d3xOOoSVh+ocgQ76eHtMI3sJ3t/FVeu8osk2nlgUN
         f/9gfMAKmGpjDLF7GVZ/A3gKrowY+Tg0OUWvUDgZ7q/MOBPSDhKlN8lgL34ccTCKya4v
         hYmNep6BGP4K4dL+dVk36HdfHcuvprpO2PNs+u6koGmX5R/kl+mk1ntb1VjXSqMLf25s
         UQkSbOu5VKlxxSd9nY5203W7WBqpzfFfmehrk6O4B++T2jQbivSXBPEyqG1yThwqOvHM
         E4eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730278576; x=1730883376;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vwQhJkDhRGyNYzUhzrUe8VLzlsZC7UDKp+wauW+M1cA=;
        b=hwVZOO1kUc8U+BK5Y1oMdwW48js1gk6ky7rRbWXF4GSQ5B7EwuWf02F/7EjEq74aNY
         L6sINUhsF9jqHPLCFtB+vnusNoAlsoTOApLiM3UEPl9kY6MVgxmACHlx82gIOaegh/rK
         cN6Drjk7TPl3SoqejZP3t7LWM4oOuFutH0tZlTvkQ743BGw8skg0T57dD0h+wk0w6ZOo
         zpalBkURBVU2Obnz+COnjemBLt9FSTCa9pHwSiivkahTjJkEHiqeuiWboO/cb8IBQ232
         u/qyQJQwzRWOKDtR5zi0V7n1HtbgriqD5TgEGdfiWfqaNKRIPDoNERy7kIHoUfn9kifG
         Ea0g==
X-Forwarded-Encrypted: i=1; AJvYcCXRjU3qdSDhQ7CxamTSx4nJcSBix6DhgMgtMP7yVvCiyeog0ok5e80yQMO19o87WTAbPcIEPZJUYhXS@vger.kernel.org
X-Gm-Message-State: AOJu0YyG2dSlHc5/NxSPBbUTiJ7PF7E/H+5v6/Z9vRuiPKzFbsEQtIh1
	TrfLdnRrAVAIlQkTt3/q9dAeE3cUI1jbkvyzBFEQrChaww40ZckrrsH/3FzFVUM=
X-Google-Smtp-Source: AGHT+IHMAWPWqhusmSGEG8xKoTYKcseUAUiA+2AO0mWI+eaxCx/6d+Nl2JonxwY2qbCw2Xe3p7M++g==
X-Received: by 2002:a05:600c:3d05:b0:42a:a6d2:3270 with SMTP id 5b1f17b1804b1-4319acb8f59mr131260055e9.21.1730278575803;
        Wed, 30 Oct 2024 01:56:15 -0700 (PDT)
Received: from [192.168.0.157] ([79.115.63.43])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b132fbsm14824903f8f.4.2024.10.30.01.56.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2024 01:56:15 -0700 (PDT)
Message-ID: <f5ac07e3-3fde-4ac8-8cfc-fb7918ffb2a7@linaro.org>
Date: Wed, 30 Oct 2024 08:56:13 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/11] scsi: ufs: exynos: Add
 EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR check
To: Peter Griffin <peter.griffin@linaro.org>, alim.akhtar@samsung.com,
 James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
 avri.altman@wdc.com, bvanassche@acm.org, krzk@kernel.org
Cc: andre.draszik@linaro.org, kernel-team@android.com,
 willmcvicker@google.com, linux-scsi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 ebiggers@kernel.org
References: <20241025131442.112862-1-peter.griffin@linaro.org>
 <20241025131442.112862-5-peter.griffin@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20241025131442.112862-5-peter.griffin@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/25/24 2:14 PM, Peter Griffin wrote:
> The values calculated in exynos_ufs_specify_phy_time_attr() are only used
> in exynos_ufs_config_phy_time_attr() and exynos_ufs_config_phy_cap_attr()

all values set in exynos_ufs_specify_phy_time_attr() are used *only* in
exynos_ufs_config_phy_time_attr(). Or did I miss something?

> if EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR flag is not set.

yep, wonderful.

> 
> Add a check for this flag to exynos_ufs_specify_phy_time_attr() and
> return for platforms that don't set it.
> 
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
>  drivers/ufs/host/ufs-exynos.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
> index d685d3e93ea1..a1a2fdcb8a40 100644
> --- a/drivers/ufs/host/ufs-exynos.c
> +++ b/drivers/ufs/host/ufs-exynos.c
> @@ -546,6 +546,9 @@ static void exynos_ufs_specify_phy_time_attr(struct exynos_ufs *ufs)
>  	struct exynos_ufs_uic_attr *attr = ufs->drv_data->uic_attr;
>  	struct ufs_phy_time_cfg *t_cfg = &ufs->t_cfg;
>  
> +	if (ufs->opts & EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR)
> +		return;
> +
>  	t_cfg->tx_linereset_p =
>  		exynos_ufs_calc_time_cntr(ufs, attr->tx_dif_p_nsec);
>  	t_cfg->tx_linereset_n =

tx_linereset_n, rx_hibern8_wait is set but not used anywhere. Can we
remove it? Not related to this patch though.

