Return-Path: <devicetree+bounces-117405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C7D9B6226
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 12:45:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E4DC11F21FD9
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 11:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EA7E1E5721;
	Wed, 30 Oct 2024 11:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XDJHrvzi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB90199223
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 11:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730288722; cv=none; b=iRhBEwGWKpBP1dBdUwdP/ByIHtGy6vwEGnlWnkTyNnQp+xgeVrUPrACrw0TND49ejaOBKSzMoM5tJ/jemG1kiWxfb2kfGwar466ulbxCZ5XVAyHR0P7p2EOo8SviS+8eLFC9xxMpGeumB9mEWHEBiZv0hfCuVV7VPNoW/0reWbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730288722; c=relaxed/simple;
	bh=w0GYEg+LFxq3vLAYtJEuPA8L1iKjtUZHq5licyRLyaE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MU/NPjN+ET9mcUvPXuktnF+qRZXu2qPHm1T8uKAoi/cfLYhVex8Ktn1D1jMOdTtKWXNx82Fvmh49WSLCp+hmdfxQ3fkF7r+gPAMVWc3W1s+llvd9GOflld493iIP9TafqOzbZWZ2QsThWKnHn8dh0ySJZ1obJiE3LL6jxAt5HBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XDJHrvzi; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43161c0068bso60334605e9.1
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 04:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730288717; x=1730893517; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hRTlMMdulNS4t7Utn/teiYYlIAHmyGJd+rw2+dNOPT8=;
        b=XDJHrvzin5IsYQWW5MfOooR+Y0/qc9/EolG5lON3y+o+STcTgsB6l9W0l/WFNEzkwK
         jP5Gy3VXRPdQnM+0ZU4N2S8ylK6Cpx5oYt9yOwDY97wuG90fPgWkGwF0xyMbfbUdSbJI
         sPDahCj7uv9Xa9LKsMmHnxkTGqhLNwghpGmbpUCGmRfLd2GWl7UsJjuCfSuqoS80SHxn
         a1KheuvIX3Nxu9CEF8/0t9ZTrzaAEBETyk0s08Ekk80E4Xq/7HhlgMGTnhNfGDGfs0dL
         oZ3YrCBoYhNeZLbjy3/1scdclWWAnbpcFNk16Nrs+c2EsKHoCsnT9rYEzP+Z7xYwhJge
         eW0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730288717; x=1730893517;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hRTlMMdulNS4t7Utn/teiYYlIAHmyGJd+rw2+dNOPT8=;
        b=bq8d7dK6CekxjRTyaaJt++0jX2IN02l0IA3aXx44UEREIiP0FlVV0oRjB7wQtKX6bp
         LneYnJUsPj79JdJt8XlCSuBV2NMfFr+BADRIzAo7rwLx2rfpH00X5FPnct3DAiTUD0/D
         3MLlzDJk3FxKPfs1IEvW2SjdFBFx6p+nWGWdGbApYUqLNMNNBeUQS/hSwG8B8on/XMTw
         XaYT4xUCLlaERNJfBZ5l09XLsyWUjMk1Qm38BGXKEX3EJfwtZYlyDmUzUFYaOfKeEtRH
         FbV1IaOq2Dif47shWzfrCCY6ovtqsZvHlQd0HbvD1acXI9QSrEHz9DbyrhIiS9EcLJ6q
         NKtg==
X-Forwarded-Encrypted: i=1; AJvYcCUPcz6OVPZ7V1+OTE04x+HjdPrlJ5fMuwzkxEozXjUwk/+UOzte/SmSWG/7T0ZakuCSRxeM4pkZxZN2@vger.kernel.org
X-Gm-Message-State: AOJu0Yzl1wu6T9KxeNpYw4iJAuMFpA2i+dspkJuB0sujri4s1ld5wSRc
	vHq/OjhC2/b+QVXmqAVAhsFXo6K4kQst6LRZZa0kCCSxN0rkBxxHqNj3VsVcrU8=
X-Google-Smtp-Source: AGHT+IFhRIh+9dGeOayOm15oZMXod/rBU6ExE23pj44w94j9FntXD8S6utlDgPeArlr6epPz1dO7fQ==
X-Received: by 2002:a05:600c:35d3:b0:42c:c401:6d8b with SMTP id 5b1f17b1804b1-4319ac7832dmr132578255e9.7.1730288717449;
        Wed, 30 Oct 2024 04:45:17 -0700 (PDT)
Received: from [192.168.0.157] ([79.115.63.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd97d5edsm19091545e9.26.2024.10.30.04.45.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2024 04:45:17 -0700 (PDT)
Message-ID: <f9cb758d-28a5-44bd-9cb5-d7ac5108db1b@linaro.org>
Date: Wed, 30 Oct 2024 11:45:15 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/11] scsi: ufs: exynos: set ACG to be controlled by
 UFS_ACG_DISABLE
To: Peter Griffin <peter.griffin@linaro.org>, alim.akhtar@samsung.com,
 James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
 avri.altman@wdc.com, bvanassche@acm.org, krzk@kernel.org
Cc: andre.draszik@linaro.org, kernel-team@android.com,
 willmcvicker@google.com, linux-scsi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 ebiggers@kernel.org
References: <20241025131442.112862-1-peter.griffin@linaro.org>
 <20241025131442.112862-10-peter.griffin@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20241025131442.112862-10-peter.griffin@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/25/24 2:14 PM, Peter Griffin wrote:
> HCI_IOP_ACG_DISABLE is an undocumented register in the TRM but the
> downstream driver sets this register so we follow suit here.
> 
> The register is already 0 presumed to be set by the bootloader as
> the comment downstream implies the reset state is 1. So whilst this
> is a nop currently, it should help with suspend/resume.

It should help in case the bootloader changes I assume. I see
gs101_ufs_drv_init() gets called only at probe time, via
ufshcd_pltfrm_init().

> 
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

> ---
>  drivers/ufs/host/ufs-exynos.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
> index b0cbb147c7a1..fa4e61f152c4 100644
> --- a/drivers/ufs/host/ufs-exynos.c
> +++ b/drivers/ufs/host/ufs-exynos.c
> @@ -76,6 +76,10 @@
>  #define CLK_CTRL_EN_MASK	(REFCLK_CTRL_EN |\
>  				 UNIPRO_PCLK_CTRL_EN |\
>  				 UNIPRO_MCLK_CTRL_EN)
> +
> +#define HCI_IOP_ACG_DISABLE	0x100
> +#define HCI_IOP_ACG_DISABLE_EN	BIT(0)
> +
>  /* Device fatal error */
>  #define DFES_ERR_EN		BIT(31)
>  #define DFES_DEF_L2_ERRS	(UIC_DATA_LINK_LAYER_ERROR_RX_BUF_OF |\
> @@ -220,10 +224,15 @@ static int exynos_ufs_shareability(struct exynos_ufs *ufs)
>  static int gs101_ufs_drv_init(struct device *dev, struct exynos_ufs *ufs)
>  {
>  	struct ufs_hba *hba = ufs->hba;
> +	u32 reg;
>  
>  	/* Enable WriteBooster */
>  	hba->caps |= UFSHCD_CAP_WB_EN;
>  
> +	/* set ACG to be controlled by UFS_ACG_DISABLE */
> +	reg = hci_readl(ufs, HCI_IOP_ACG_DISABLE);
> +	hci_writel(ufs, reg & (~HCI_IOP_ACG_DISABLE_EN), HCI_IOP_ACG_DISABLE);
> +
>  	return exynos_ufs_shareability(ufs);
>  }
>  

