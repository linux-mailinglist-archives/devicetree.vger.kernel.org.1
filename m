Return-Path: <devicetree+bounces-117315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B2B9B5D6E
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 09:12:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D078284159
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 08:12:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C224E1E0DD5;
	Wed, 30 Oct 2024 08:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eSUEP7bJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80EDA1DDC10
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 08:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730275955; cv=none; b=d4qBzpQbmhMp35ru1Qu8s63ffyuwLiYPGJEW+ZjYv7TdIc80bZKj1G/JvflOjFz9fmqS0s3UCpdv6LbWIj+ZWr2uaLzOVo+UCouPQcFGlDmHkd4Zc+vaunM8rWB1bMSg5WZFHFBFrUY3Tkpr9cFDm98MF3/obsmuijrWSLTGuhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730275955; c=relaxed/simple;
	bh=fGOeiitn4cJGXZHbq7R0xn62ncJf2WQGEoz0ME+iMbA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IUnxkeNVtrR6zwh3L+TE+W867Y4u7sEKLgWmWx6PAceeTJsAt7RhAyLteStEYxhGvIsrADjrOW8/0bs+6gKXJyMnj6rXR4ljSgB76y/qq3bPW2q5vUl8ZHQ+lkCc7QEZhc8W4wHrdu6bLTuFiPxOnwQVryfetd/V0MjxWddBQ5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eSUEP7bJ; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a9a2209bd7fso954001366b.2
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 01:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730275951; x=1730880751; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cz9wlAuOkzG9Bsbmp9By5wnGJg5X6riHYobC5TJfVgs=;
        b=eSUEP7bJKkqkcrz1eyGjsm4bPqIfub9MUwuVTzwuywZAHqT3yd6uBXQWic5/Syr59o
         RIbefviOCg2Ekx6ld0rdxkrSJC4Vwcx4evoC+GnMV49L2NbCDgWoXnAoraDAd6CNVuWL
         w75oNiviMvxdsGIIhADhP3SFek0xJpF4DY2msZTuCIEyYKEOi2Wk5P9FafODgXLE+WmD
         4wDmq9V8jKcv/sVQFeZEhv2SqsmGlDhfFsShhsUZMOGvE9XZxBUwtIa6iYmpjRuK1Jmz
         DHft8w26QONvYRQGxtdJN9hmoMskSaHtB/+Ulfm66x2v5KXls/aW6UbhIZFMeEFWXEes
         m/xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730275951; x=1730880751;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cz9wlAuOkzG9Bsbmp9By5wnGJg5X6riHYobC5TJfVgs=;
        b=SVux4GXVebbGNR2cDEc8/Qw8H11Uo1zgRRpJLIeYYnfAJr4xLxYF8uYxaX4BI/Upec
         nuKQgbAn45gXTZ5r4Z6hNCPfkk8Z/isUYfBMxSx9/VQhE5cG+0+jpNglXWSlNyr2VmVQ
         MPU/wxw6BeTfEy1anHmFLSm8foAMCbe5Q4Xh+Pt5TffA3JvhaF3tUe2i0BM0JvAXYqWl
         ZMKHxi4E0BLA276u2Hm5BVPW3ApFirtuu6PcB7pIdAnlINXRNRjZUN8gQXGqR5Q81lY7
         Lgx3KM0JXtuQ9Z8a4y9b0l8DUVWQPXMLGFJkVwUoZPpTQhbncBL8T42CqaJJ9Nf/MxPW
         WWag==
X-Forwarded-Encrypted: i=1; AJvYcCV3zBIL9mLEwaQ7d5w3FXhR/YkzZj3qIeWXuOq+TJ2HcIxsyKBevNzQI+1KxSCGR6Mo89p6kJB5u0S/@vger.kernel.org
X-Gm-Message-State: AOJu0YzLHuTUblDYT5wnpfHKD4sxedreVCda3hQ9FuoD8bhVwXbXADic
	mQnStINeurv5DtLhuCveKsQxU/Bcn3fB/5RyANOIM5hD6YM/3YYnkE/vCDNCZQU=
X-Google-Smtp-Source: AGHT+IEHTQ5wOu9NxUvBgVG3q+Vz5Q9uWU1Gz79aPOENRB/2Xj3YqbpYXp26n28FGcPh+P9z83I7JA==
X-Received: by 2002:a17:906:f591:b0:a9a:13dd:2734 with SMTP id a640c23a62f3a-a9de5f2641fmr1504885266b.36.1730275949334;
        Wed, 30 Oct 2024 01:12:29 -0700 (PDT)
Received: from [192.168.0.157] ([79.115.63.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd8e8549sm13364615e9.10.2024.10.30.01.12.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2024 01:12:28 -0700 (PDT)
Message-ID: <b9d7f990-112a-4cde-8f04-6f8c6cb96f9e@linaro.org>
Date: Wed, 30 Oct 2024 08:12:26 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/11] scsi: ufs: exynos: add check inside
 exynos_ufs_config_smu()
To: Peter Griffin <peter.griffin@linaro.org>, alim.akhtar@samsung.com,
 James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
 avri.altman@wdc.com, bvanassche@acm.org, krzk@kernel.org
Cc: andre.draszik@linaro.org, kernel-team@android.com,
 willmcvicker@google.com, linux-scsi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 ebiggers@kernel.org
References: <20241025131442.112862-1-peter.griffin@linaro.org>
 <20241025131442.112862-3-peter.griffin@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20241025131442.112862-3-peter.griffin@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/25/24 2:14 PM, Peter Griffin wrote:
> Move the EXYNOS_UFS_OPT_UFSPR_SECURE check inside exynos_ufs_config_smu().
> 
> This way all call sites will benefit from the check. This fixes a bug
> currently in the exynos_ufs_resume() path on gs101 which will cause
> a serror.

because resume() calls exynos_ufs_config_smu() and we ended up accessing
register fields that we shouldn't have.
> 
> Fixes: d11e0a318df8 ("scsi: ufs: exynos: Add support for Tensor gs101 SoC")
Cc: stable@vger.kernel.org

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
>  drivers/ufs/host/ufs-exynos.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
> index e25de4b86ac0..939d08bce545 100644
> --- a/drivers/ufs/host/ufs-exynos.c
> +++ b/drivers/ufs/host/ufs-exynos.c
> @@ -724,6 +724,9 @@ static void exynos_ufs_config_smu(struct exynos_ufs *ufs)
>  {
>  	u32 reg, val;
>  
> +	if (ufs->opts & EXYNOS_UFS_OPT_UFSPR_SECURE)
> +		return;
> +
>  	exynos_ufs_disable_auto_ctrl_hcc_save(ufs, &val);
>  
>  	/* make encryption disabled by default */
> @@ -1457,8 +1460,8 @@ static int exynos_ufs_init(struct ufs_hba *hba)
>  	if (ret)
>  		goto out;
>  	exynos_ufs_specify_phy_time_attr(ufs);
> -	if (!(ufs->opts & EXYNOS_UFS_OPT_UFSPR_SECURE))
> -		exynos_ufs_config_smu(ufs);
> +
> +	exynos_ufs_config_smu(ufs);
>  
>  	hba->host->dma_alignment = DATA_UNIT_SIZE - 1;
>  	return 0;

