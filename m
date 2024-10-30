Return-Path: <devicetree+bounces-117311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC999B5D53
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 09:04:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 92404284100
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 08:04:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 696101E00A1;
	Wed, 30 Oct 2024 08:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l3IIUoYc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2336A194C69
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 08:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730275470; cv=none; b=FG1H8O5QQ/EXSbKfRLUz2Iqvu5g02guBzR9M87H9cN4ZzulPczb/OEmYo4SCg63Jv5xouC3SDxSWVekTrd+WIvEHw2XqiV2CruwUmDY9zvKXsXDo5uF7QET+oeAduJDZIhYPU/BH2YUg9UzpLNrJI9np4KH5PrpQRjbGRxkehrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730275470; c=relaxed/simple;
	bh=B+cw9PA/7VZt/fohppn2aNdkGFc4L/28zmOip6XYSe0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Pug4SzumiSerqBhoHSSstqyHuH+lQLlMBN6jwMxTaDYOUc454JY+XnDRTEIUnb4Vr8qe1RN9ZPkv9u6j7tP/MFqvBG5Tge4X5Tet8Wx0bUJ+vC5zuMhtcCFGf3CIlVCq2Gy0ZgurggnMbWo/3r7u69nkrlonu8029wSk8i839AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l3IIUoYc; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-539983beb19so7477312e87.3
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 01:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730275465; x=1730880265; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H93KKVpJbQ9UgwbZgl1kdPifbCt7HKUU//i7YU4EaJY=;
        b=l3IIUoYc7aPorQTgtEhf4hz3dyiHjXE9Y+obwFQGgd3pXDYinfWdFFjnpphWHee05v
         d+4Ke9Ly7VDhqo3LRk0UFpZTnM/1DoHjsCVI0wtmGa24BhXtmtXT9AfOSciavrgL2vWU
         XsNsdALDkx/626X5fFhtI8JpTAnb9EXccUjngMo+KGGu8kkU7gAZz1E3D7wfiRHDZD5O
         paEXXN5Q1e+CE+rRbXYMv3xf+3WimTO+30iGLArrN771aEsM1l6JKz5lOzuFDk5G9nHd
         HTYmOFjXpqrKFh+uju3uYRdxTwIdEC7lBIIuua277DjjYnpjROVYVJN/5ZaFFoX05LCB
         63Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730275465; x=1730880265;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H93KKVpJbQ9UgwbZgl1kdPifbCt7HKUU//i7YU4EaJY=;
        b=pTvVdlutakB4XMiLc607L9UmhZxXjyN1wgdy2/E1v1CxzqIMoszIVCipe4CxPrDzSq
         5Ruz40K8HNgqJ15AQP2RICvSkT7KDhJr1TPr8vE/BhcDqV8k+2Hml8crpmhqk5tQocfW
         LvlErgJ/Jrg8qp/jsV57iBQBD+0N1/PZliHvEoD0gv6c3cBuc/ZylLHU8hZuwwo/oTMX
         Ve2PL309Qk5BgPKnsoLYIcSsBeHs8SMgDr8BCbRS7206CwwJ5b6ZFP5cOZxEDQSP2oPy
         anD8lyD/cECZNcT4okh9cPAbFlIq0DkmX2uBeiA3ycrbkYd+UwZTtqDeGQhFW2WbXU6P
         cdLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWHEo3AIilQ+3IsYZhet5eAm/XpQOUOoUbY724Eu3O+bWmKR9KRoAV871qax/hD0sodeUqOpBtJjZm@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3m1yiiPr2ihx2RcoXu8bkk7SfSMuPxA5MU0Pp5j/LGDOJpaIj
	rKVebMfrpAS9cjphGrvLjosR+pzaCk16pQyJEEPca7NDMnW7fcAQuMPYsvin/HQ=
X-Google-Smtp-Source: AGHT+IEZj9cR0ATu/JOPSB5irJVr/RnXyRQtlMK8w5XGhoTtI+E9S/Awq23Np24Aq1OO/+nXkl58yg==
X-Received: by 2002:ac2:4c41:0:b0:539:f65b:3f9 with SMTP id 2adb3069b0e04-53b347c0b08mr8580322e87.10.1730275464885;
        Wed, 30 Oct 2024 01:04:24 -0700 (PDT)
Received: from [192.168.0.157] ([79.115.63.43])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b3bf85sm14792889f8f.42.2024.10.30.01.04.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2024 01:04:24 -0700 (PDT)
Message-ID: <74458ba4-af0f-4c41-92f5-c6c0cb79e930@linaro.org>
Date: Wed, 30 Oct 2024 08:04:22 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/11] scsi: ufs: exynos: Allow UFS Gear 4
To: Peter Griffin <peter.griffin@linaro.org>, alim.akhtar@samsung.com,
 James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
 avri.altman@wdc.com, bvanassche@acm.org, krzk@kernel.org
Cc: andre.draszik@linaro.org, kernel-team@android.com,
 willmcvicker@google.com, linux-scsi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 ebiggers@kernel.org
References: <20241025131442.112862-1-peter.griffin@linaro.org>
 <20241025131442.112862-2-peter.griffin@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20241025131442.112862-2-peter.griffin@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/25/24 2:14 PM, Peter Griffin wrote:
> UFS Gear 4 offers faster speeds, and better power usage so lets
> enable it.
> 
> Currently ufshcd_init_host_params() sets UFS_HS_G3 as a default,
> so even if the device supports G4 we end up negotiating down to
> G3.
> 
> For SoCs like gs101 which have a UFS major controller version
> of 3 or above advertise Gear 4. This then allows a Gear 4 link
> on Pixel 6.
> 
> For earlier controller versions keep the current default behaviour
> of reporting G3.
> 
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

some nits/personal preferences below, no need to address them

> ---
>  drivers/ufs/host/ufs-exynos.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
> index 9ec318ef52bf..e25de4b86ac0 100644
> --- a/drivers/ufs/host/ufs-exynos.c
> +++ b/drivers/ufs/host/ufs-exynos.c
> @@ -771,6 +771,21 @@ static void exynos_ufs_config_sync_pattern_mask(struct exynos_ufs *ufs,
>  	exynos_ufs_disable_ov_tm(hba);
>  }
>  
> +#define UFS_HW_VER_MAJOR_MASK   GENMASK(15, 8)
> +
> +static u32 exynos_ufs_get_hs_gear(struct ufs_hba *hba)
> +{
> +	u8 major;
> +
> +	major = FIELD_GET(UFS_HW_VER_MAJOR_MASK, hba->ufs_version);
> +
> +	if (major >= 3)
> +		return UFS_HS_G4;
> +
> +	/* Default is HS-G3 */
> +	return UFS_HS_G3;
> +}
> +
>  static int exynos_ufs_pre_pwr_mode(struct ufs_hba *hba,
>  				struct ufs_pa_layer_attr *dev_max_params,
>  				struct ufs_pa_layer_attr *dev_req_params)
> @@ -787,6 +802,8 @@ static int exynos_ufs_pre_pwr_mode(struct ufs_hba *hba,
>  	}
>  
>  	ufshcd_init_host_params(&host_params);

blank line

> +	/* This driver only support symmetric gear setting e.g. hs_tx_gear == hs_rx_gear */
> +	host_params.hs_tx_gear = host_params.hs_rx_gear = exynos_ufs_get_hs_gear(hba);

I find it easier to read if you split inits on their own line:
	host_params.hs_tx_gear = exynos_ufs_get_hs_gear(hba);
	host_params.hs_rx_gear = exynos_ufs_get_hs_gear(hba);

>  
>  	ret = ufshcd_negotiate_pwr_params(&host_params, dev_max_params, dev_req_params);
>  	if (ret) {

