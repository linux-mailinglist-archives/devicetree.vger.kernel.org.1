Return-Path: <devicetree+bounces-56805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 456E689A86E
	for <lists+devicetree@lfdr.de>; Sat,  6 Apr 2024 04:21:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 729801C20FCC
	for <lists+devicetree@lfdr.de>; Sat,  6 Apr 2024 02:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A12A012B75;
	Sat,  6 Apr 2024 02:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XPx5c4z0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8AE4C9F
	for <devicetree@vger.kernel.org>; Sat,  6 Apr 2024 02:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712370091; cv=none; b=Ht0WskWd3RRTa7bAstqVkeJBXc4S0Tju59IXyHNLO6pviyktZ1mp2+hRmqFYlmVnmhHtXDBPqXV814b8S45REEYEzd06oe63VP3sMxAqpoMZtqQsQ5WaihJVNV/2fOuhMRS1WhJ1la3cMJN32XHhMYZyCrR+vJG87I0B2dqrgM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712370091; c=relaxed/simple;
	bh=vaqjKTv70F4pkDalS3mxEEswoun3gV5qA81oMk5KYEc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KoviHiupsyHHctZLf//fEMd/e7EB5iACQk7ZP8BBJLgAgyRr7+HfR+hSWwk+X3KgJbG1rjMkiSGWMv5+eeO43GkHcfij/eiCpmRahO60M8T9B25inT1xS5G8OXIrxQKyRCMNzWueLe846ii8BLXJeUzp0/faaxzZW+fOY6r6hBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XPx5c4z0; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-516d6c1e238so1111752e87.2
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 19:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712370087; x=1712974887; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=e3RQ6maZdShuVraNYItBn9lrjW9BLdIDbgZu10qFIzM=;
        b=XPx5c4z0QVw5WelCJ+5lIiesoDHmNdmWK7gZc/xI6URvBNQSmn1BFcTImMICEyAdQn
         WvDprHhdlcLf6R9RcETcag7TKTP3ExRmXS9ghVkovT7BwhxSUvcmagdtLJfSs0SS50kv
         PkKPf+CZ3hBfNSm181QDx77rMDhiukOAMdSmSunfX1d7ei6Wt2xtgsUxZ1BgttOWhCF9
         rIW8RPQrI/t17aNiNxUgEylO68ogpHSFP17X9kxciSJLTk/7eybVc53XDJA+reSZSQFu
         tqeWvfkAQSseDAdHn54ZGjtTxMXSRQhhfR5ZOQJNvXOErvvWAY07aGV6ow+FRzSx9EHD
         mEvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712370087; x=1712974887;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e3RQ6maZdShuVraNYItBn9lrjW9BLdIDbgZu10qFIzM=;
        b=IVFdzNWP4OJQ046Icf4XRXG03AmaRfCMqvrT8+8g2WVWFX8HKxOpSCqnHkUxH2fXF/
         vjIvQRhKx4cY3uBXn2Y4Qxus7Dk7MtAegbCmHs4nKWscaaTK+DeKo6De0Q8ramueZh0X
         tmDGnka8cGjgwMBX24sRIMCZ5M1AQuQ1qbbMcRCXKVwS9qSkDmPwWAlRGqkdSKZ4MsMM
         4U3UhHL3Xol1Bw+HLtlTysukCAmXOuKbZOhSrbt01JGew177QtfJCQv/Pvdl6IRd8yaA
         P7Ec/VF69MQ/9fUWJuxY8+48FrJQWAvzdOO/uY+Q8gcy7CNyQNDzuUBE5R/sKA8kbAdk
         V4DA==
X-Forwarded-Encrypted: i=1; AJvYcCX5WYRWvG/NekkQ27pSGKl6Z0HKNiEeq24bVzOMkcBMnFbE3zGvE7qhulYDu7CuDEAa/x2A2asZ3PcmGuERygV7htwa9l0NTZSPTw==
X-Gm-Message-State: AOJu0YzXwiyrcDRWNemY9PSlUHFWrXUrOX36LXmVz0h7OEhmK+JMQwqE
	NxgC4YWmvtVKF9vZg6/xahlKJOiFHGmbXFcOqfcGUg0r6UD9LzgjY6Dv+GObojc=
X-Google-Smtp-Source: AGHT+IGCUxPA1x4pPvDKIPymyHQ9MIdDiuKIitgDDF5LRK2zKejYoRo8ce/mKSI+1tszTynrahREJQ==
X-Received: by 2002:ac2:5b91:0:b0:516:d259:ee5f with SMTP id o17-20020ac25b91000000b00516d259ee5fmr1862751lfn.7.1712370087329;
        Fri, 05 Apr 2024 19:21:27 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzyjmhyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a00e:a300::227])
        by smtp.gmail.com with ESMTPSA id w1-20020ac25981000000b00516d6924bc6sm234716lfn.175.2024.04.05.19.21.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 19:21:26 -0700 (PDT)
Date: Sat, 6 Apr 2024 05:21:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/6] soc: qcom: smem: Add pcode/fcode getters
Message-ID: <zc5u7ixaser6ekl3sltzxccstu63tpydxybquxz5hcasj4cmfo@csjwfifugeod>
References: <20240405-topic-smem_speedbin-v1-0-ce2b864251b1@linaro.org>
 <20240405-topic-smem_speedbin-v1-2-ce2b864251b1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240405-topic-smem_speedbin-v1-2-ce2b864251b1@linaro.org>

On Fri, Apr 05, 2024 at 10:41:30AM +0200, Konrad Dybcio wrote:
> Introduce getters for SoC product and feature codes and export them.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  drivers/soc/qcom/smem.c       | 66 +++++++++++++++++++++++++++++++++++++++++++
>  include/linux/soc/qcom/smem.h |  2 ++
>  2 files changed, 68 insertions(+)
> 
> diff --git a/drivers/soc/qcom/smem.c b/drivers/soc/qcom/smem.c
> index 7191fa0c087f..e89b4d26877a 100644
> --- a/drivers/soc/qcom/smem.c
> +++ b/drivers/soc/qcom/smem.c
> @@ -795,6 +795,72 @@ int qcom_smem_get_soc_id(u32 *id)
>  }
>  EXPORT_SYMBOL_GPL(qcom_smem_get_soc_id);
>  
> +/**
> + * qcom_smem_get_feature_code() - return the feature code
> + * @id:	On success, we return the feature code here.
> + *
> + * Look up the feature code identifier from SMEM and return it.
> + *
> + * Return: 0 on success, negative errno on failure.
> + */
> +int qcom_smem_get_feature_code(u32 *code)
> +{
> +	struct socinfo *info;
> +	u32 raw_code;
> +
> +	info = qcom_smem_get(QCOM_SMEM_HOST_ANY, SMEM_HW_SW_BUILD_ID, NULL);
> +	if (IS_ERR(info))
> +		return PTR_ERR(info);
> +
> +	/* This only makes sense for socinfo >= 16 */
> +	if (__le32_to_cpu(info->fmt) < SOCINFO_VERSION(0, 16))
> +		return -EINVAL;
> +
> +	raw_code = __le32_to_cpu(info->feature_code);
> +
> +	/* Ensure the value makes sense */
> +	if (raw_code >= SOCINFO_FC_INT_RESERVE)
> +		raw_code = SOCINFO_FC_UNKNOWN;
> +
> +	*code = raw_code;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(qcom_smem_get_feature_code);
> +
> +/**
> + * qcom_smem_get_product_code() - return the product code
> + * @id:	On success, we return the product code here.
> + *
> + * Look up feature code identifier from SMEM and return it.
> + *
> + * Return: 0 on success, negative errno on failure.
> + */
> +int qcom_smem_get_product_code(u32 *code)
> +{
> +	struct socinfo *info;
> +	u32 raw_code;
> +
> +	info = qcom_smem_get(QCOM_SMEM_HOST_ANY, SMEM_HW_SW_BUILD_ID, NULL);
> +	if (IS_ERR(info))
> +		return PTR_ERR(info);
> +
> +	/* This only makes sense for socinfo >= 16 */
> +	if (__le32_to_cpu(info->fmt) < SOCINFO_VERSION(0, 16))
> +		return -EINVAL;
> +
> +	raw_code = __le32_to_cpu(info->pcode);
> +
> +	/* Ensure the value makes sense */
> +	if (raw_code >= SOCINFO_FC_INT_RESERVE)
> +		raw_code = SOCINFO_FC_UNKNOWN;

This looks like a c&p from the previous function. Should we be comparing
the raw_code with a SOCINFO_PC_ constant?

> +
> +	*code = raw_code;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(qcom_smem_get_product_code);
> +
>  static int qcom_smem_get_sbl_version(struct qcom_smem *smem)
>  {
>  	struct smem_header *header;
> diff --git a/include/linux/soc/qcom/smem.h b/include/linux/soc/qcom/smem.h
> index a36a3b9d4929..aef8c9fc6c08 100644
> --- a/include/linux/soc/qcom/smem.h
> +++ b/include/linux/soc/qcom/smem.h
> @@ -13,5 +13,7 @@ int qcom_smem_get_free_space(unsigned host);
>  phys_addr_t qcom_smem_virt_to_phys(void *p);
>  
>  int qcom_smem_get_soc_id(u32 *id);
> +int qcom_smem_get_feature_code(u32 *code);
> +int qcom_smem_get_product_code(u32 *code);
>  
>  #endif
> 
> -- 
> 2.40.1
> 

-- 
With best wishes
Dmitry

