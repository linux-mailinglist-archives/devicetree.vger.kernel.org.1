Return-Path: <devicetree+bounces-226037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A43CBBD31C4
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:57:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D5CF3A284C
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F2A7261581;
	Mon, 13 Oct 2025 12:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WlHfUsdw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D5292BCFB
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760360228; cv=none; b=uFjwSC0uPJmZKwAW0POtnWATHhUMPLgAqjsPJvvmz49DSmj6NnI+2q9L3eAm6gaNkq6gibBTVyk/uCFOxMpUpXYtDl79AztcLxB4nCsiLNA1NPtPv05kjqq0lky08p+5Vq7V1a9S0jMnKB/D1bTG+UwzgQTPhAXjbQQtHCe/FnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760360228; c=relaxed/simple;
	bh=BpZRKwlkrc+aDngUy60VZ82uqBTrDYEeBA8q5M7Q1PA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UnxkczjPdLk9Vohve9He4w0e1AgxagvG2YEwJZDQwyFF1as/EgypZ3DHByTvviXD34g1F+pNCKsJ6ijepy6Tx2ZHyjwf323DbjAwgTv2d9AbCPn/ODrlvKHA41GGvHTjWijY0QjSicuYF7Bf0R6iDDpmnP2v9H/3uQsnKNQds5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WlHfUsdw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DASe9l029778
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:57:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=T7ASgAQCZwc8dQ6+D3ZRQQ0W
	4+MNsqNTi5Un+hN9NRo=; b=WlHfUsdwjrYM8t8oKL0AdTfVfl3nsZlCkPpwlDHN
	G/qJ+21OcM8f7oH9SHWTAE/ffchQf9nTzDWxYeM5sAcHQmtKk1s0qk3JFRJyQ7kw
	IsP0I5LC3VbqvOp5ut9yxeiXzT/UtQjliZ/js33H2lxIX7XfLgKmzBlEKjVbOVDL
	c+uHAaTGebDPr2Uay49Ltv+y1zUXs6zvmoyLMLm/pQbmhSyPrfTizMOSKIhYFtLj
	ny21uUQu2eCJEBmg7A8AYhBjSW2MdrLzYsmNg/V1kuAgIx7b5mTopnhgA6vbcVY4
	MahLjRmhLpMds32lZue+fOGU6owCcX05UxOuziITaTejqQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff0mka2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:57:05 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-78117fbda6eso6768052b3a.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:57:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760360225; x=1760965025;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T7ASgAQCZwc8dQ6+D3ZRQQ0W4+MNsqNTi5Un+hN9NRo=;
        b=BtyQifVIV8ylOHrDgaoS+QLRzjUVe069o+g39hPQXlQ84mtptX5DgxrCBytYLl1lsh
         15+ybFKpGz4vXG39NLnEPW8+WF2FWwlRPV/+Sp3B1+Q5cc9SdUSXHcdR+9HCaVJXxu/y
         q/fprwwWfNoqC4BtgQ1miv4Ps/8ZvK9TB98iwE9BvHIVgSzwJl6bvGO3oWSb5N9R89x1
         jXf7n9lTuf3L4oddztUbc9mIBdUhT3EQ/9sbGXykV+noBPdIUZ5QlyN6YfXlPsvHpQ6+
         it2k/vSNb62GfJtF7p7ig/42mhBicICZbQ9/4IL5Q1BXePPtAGKziRlfXLvKGXBMdySq
         ULlg==
X-Forwarded-Encrypted: i=1; AJvYcCXPbaYdYZ+M1ZjR96PTYss8vrNGOfOqDYz0UgN3MmpugWZaO4V1kLztDIGEDXMFVNADZanbuh88TrU/@vger.kernel.org
X-Gm-Message-State: AOJu0Ywl1Z+DXH8RAg4TA2J3IOOOsiBblMqubqjpGgDA3jqPPHUQQAv2
	UyMXrFZKdZwbJWDMHWB/lXIIKTT0FfRiGPg4VaakjkbzjY/P2ao8ynsBfh/QCrmbqowc7Kqv732
	iqiFeeIMsaKCQ5Topi+YlmUSojGrbEqcEz0qCt/u+IdT3ftjYvQDLNH0oOtp7yYfB
X-Gm-Gg: ASbGnct6Ovvu/JBx1W0+0/1fTboSs0IjwRiAbbBWmHbwG7qXbnB7Cpx5KrQjx5TouZO
	F9p0E3TyGvGhWWPPdOSQ7nNTCbSZ3+V7TgQIA1NkWNWa4CrLnntPow8wpPr1kcyHGKbgehq6WfE
	nE0tcTVr3b3XPilkf//qwmZRgwvUG2k0EDBTmLbjyyIt0ADGXU4mEd3AE0L0p2qmXeR6odDHxjb
	qyNYhhZZPSqf2FF4+RFOvqPZiGgOnezjROWsIU3WsYe+F9hIqwSPaDRqSl0d68b6of0sw/8U59j
	iNAB6EDDNOPyVMA7k3OO6JnF5rSHMST1meIt9nJDw6jyzA3zrrGeeRULeaEEvh0+aXY=
X-Received: by 2002:a05:6a00:23d5:b0:776:138a:ec97 with SMTP id d2e1a72fcca58-79387d0f68emr26353056b3a.28.1760360224489;
        Mon, 13 Oct 2025 05:57:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEW9yToX17U2L6kX4KKsT4jqMK3Cx26sRMwuwR5UD83LNayp4z6KSBzvkWGH7yYjw9W9pM2Pw==
X-Received: by 2002:a05:6a00:23d5:b0:776:138a:ec97 with SMTP id d2e1a72fcca58-79387d0f68emr26353002b3a.28.1760360223746;
        Mon, 13 Oct 2025 05:57:03 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992b252f23sm11463856b3a.6.2025.10.13.05.57.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 05:57:03 -0700 (PDT)
Date: Mon, 13 Oct 2025 18:26:56 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 05/13] soc: qcom: mdtloader: Add PAS context aware
 qcom_mdt_pas_load() function
Message-ID: <20251013125656.cujoip46xzs3hpa2@hu-mojha-hyd.qualcomm.com>
References: <20251013-kvm_rprocv5-v5-0-d609ed766061@oss.qualcomm.com>
 <20251013-kvm_rprocv5-v5-5-d609ed766061@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251013-kvm_rprocv5-v5-5-d609ed766061@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX+EYUlhfBi8vQ
 TXVK/NfQFg18/3b3KEO+h2OIcOfR6w7feVb8Lj9nMQt65TV6+GBl5rpoPwEYHesS3p6S9i5vro9
 xHPP/wMErTF4Z9SjwBuPHfI+aryxcknrvR9qaW3O355lT8otS0xaQ6VFVPWbrQGeIT823llxZos
 /45LMTwrD23ahJWoQyvFfuvEaRwplQtk2XneXXysmlj3dPZ/6CcWhP5TYytcMxgu3IBS7uXC3lH
 /A8cKNT5fzQdexidAu4gPrCLd+9+y5b9ZX/iiEeCYEVuVRsk/WQ0QsxYS6viqg9J5uMqfuNHjQp
 QgDSKb1Mrubz0BEL9C87H4ZG3oZbVZ91VPdP4QIEzsQ6R0rmwLpbeEpfV01hsVvhKd3IO6D4PMr
 uFkNjyZoHcT4JlebyrcCxqD2WUsvgA==
X-Proofpoint-GUID: kD2ac2mTPdEzjp5lnt-2AC_YCV6Ufk43
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68ecf721 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=_p9HljgPTWsdKfd2BfYA:9
 a=CjuIK1q_8ugA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: kD2ac2mTPdEzjp5lnt-2AC_YCV6Ufk43
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

On Mon, Oct 13, 2025 at 03:33:09PM +0530, Mukesh Ojha wrote:
> Introduce a new PAS context-aware function, qcom_mdt_pas_load(), for
> remote processor drivers. This function utilizes the PAS context
> pointer returned from qcom_scm_pas_ctx_init() to perform firmware
> metadata verification and memory setup via SMC calls.
> 
> The qcom_mdt_pas_load() and qcom_mdt_load() functions are largely
> similar, but the former is designed for clients using the PAS
> context-based data structure. Over time, all users of qcom_mdt_load()
> can be migrated to use qcom_mdt_pas_load() for consistency and
> improved abstraction.
> 
> As the remoteproc PAS driver (qcom_q6v5_pas) has already adopted the
> PAS context-based approach, update it to use qcom_mdt_pas_load().
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---
>  drivers/remoteproc/qcom_q6v5_pas.c  | 24 +++++-------------------
>  drivers/soc/qcom/mdt_loader.c       | 32 ++++++++++++++++++++++++++++++++
>  include/linux/soc/qcom/mdt_loader.h | 10 ++++++++++
>  3 files changed, 47 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
> index e9dcab94ea0c..ee0ea35803c6 100644
> --- a/drivers/remoteproc/qcom_q6v5_pas.c
> +++ b/drivers/remoteproc/qcom_q6v5_pas.c
> @@ -239,15 +239,9 @@ static int qcom_pas_load(struct rproc *rproc, const struct firmware *fw)
>  			return ret;
>  		}
>  
> -		ret = qcom_mdt_pas_init(pas->dev, pas->dtb_firmware, pas->dtb_firmware_name,
> -					pas->dtb_pas_id, pas->dtb_mem_phys,
> -					pas->dtb_pas_ctx);
> -		if (ret)
> -			goto release_dtb_firmware;
> -
> -		ret = qcom_mdt_load_no_init(pas->dev, pas->dtb_firmware, pas->dtb_firmware_name,
> -					    pas->dtb_mem_region, pas->dtb_mem_phys,
> -					    pas->dtb_mem_size, &pas->dtb_mem_reloc);
> +		ret = qcom_mdt_pas_load(pas->dtb_pas_ctx, pas->dtb_firmware,
> +					pas->dtb_firmware_name, pas->dtb_mem_region,
> +					&pas->dtb_mem_reloc);
>  		if (ret)
>  			goto release_dtb_metadata;
>  	}
> @@ -256,8 +250,6 @@ static int qcom_pas_load(struct rproc *rproc, const struct firmware *fw)
>  
>  release_dtb_metadata:
>  	qcom_scm_pas_metadata_release(pas->dtb_pas_ctx);
> -
> -release_dtb_firmware:
>  	release_firmware(pas->dtb_firmware);
>  
>  	return ret;
> @@ -305,14 +297,8 @@ static int qcom_pas_start(struct rproc *rproc)
>  		}
>  	}
>  
> -	ret = qcom_mdt_pas_init(pas->dev, pas->firmware, rproc->firmware, pas->pas_id,
> -				pas->mem_phys, pas->pas_ctx);
> -	if (ret)
> -		goto disable_px_supply;
> -
> -	ret = qcom_mdt_load_no_init(pas->dev, pas->firmware, rproc->firmware,
> -				    pas->mem_region, pas->mem_phys, pas->mem_size,
> -				    &pas->mem_reloc);
> +	ret = qcom_mdt_pas_load(pas->pas_ctx, pas->firmware, rproc->firmware,
> +				pas->mem_region, &pas->mem_reloc);
>  	if (ret)
>  		goto release_pas_metadata;
>  
> diff --git a/drivers/soc/qcom/mdt_loader.c b/drivers/soc/qcom/mdt_loader.c
> index fe35038c5342..52de8adcc4f2 100644
> --- a/drivers/soc/qcom/mdt_loader.c
> +++ b/drivers/soc/qcom/mdt_loader.c
> @@ -486,5 +486,37 @@ int qcom_mdt_load_no_init(struct device *dev, const struct firmware *fw,
>  }
>  EXPORT_SYMBOL_GPL(qcom_mdt_load_no_init);
>  
> +/**
> + * qcom_mdt_pas_load - Loads and authenticates the metadata of the firmware
> + * (typically contained in the .mdt file), followed by loading the actual
> + * firmware segments (e.g., .bXX files). Authentication of the segments done
> + * by a separate call.
> + *
> + * The PAS context must be initialized using qcom_scm_pas_context_init()
> + * prior to invoking this function.
> + *
> + * @ctx:        Pointer to the PAS (Peripheral Authentication Service) context
> + * @fw:         Firmware object representing the .mdt file
> + * @firmware:   Name of the firmware used to construct segment file names
> + * @mem_region: Memory region allocated for loading the firmware
> + * @reloc_base: Physical address adjusted after relocation
> + *
> + * Return: 0 on success or a negative error code on failure.
> + */
> +int qcom_mdt_pas_load(struct qcom_scm_pas_context *ctx, const struct firmware *fw,
> +		      const char *firmware, void *mem_region, phys_addr_t *reloc_base)
> +{
> +	int ret;
> +
> +	ret = qcom_mdt_pas_init(ctx->dev, fw, firmware, ctx->pas_id, ctx->mem_phys,
> +				ctx->metadata);

s/ctx->metadata/ctx

This has been done 6/13, missed here in patch reordering.

> +	if (ret)
> +		return ret;
> +
> +	return __qcom_mdt_load(ctx->dev, fw, firmware, mem_region, ctx->mem_phys,
> +			       ctx->mem_size, reloc_base);
> +}
> +EXPORT_SYMBOL_GPL(qcom_mdt_pas_load);
> +
>  MODULE_DESCRIPTION("Firmware parser for Qualcomm MDT format");
>  MODULE_LICENSE("GPL v2");
> diff --git a/include/linux/soc/qcom/mdt_loader.h b/include/linux/soc/qcom/mdt_loader.h
> index 07c278841816..7d57746fbbfa 100644
> --- a/include/linux/soc/qcom/mdt_loader.h
> +++ b/include/linux/soc/qcom/mdt_loader.h
> @@ -23,6 +23,9 @@ int qcom_mdt_load(struct device *dev, const struct firmware *fw,
>  		  phys_addr_t mem_phys, size_t mem_size,
>  		  phys_addr_t *reloc_base);
>  
> +int qcom_mdt_pas_load(struct qcom_scm_pas_context *ctx, const struct firmware *fw,
> +		      const char *firmware, void *mem_region, phys_addr_t *reloc_base);
> +
>  int qcom_mdt_load_no_init(struct device *dev, const struct firmware *fw,
>  			  const char *fw_name, void *mem_region,
>  			  phys_addr_t mem_phys, size_t mem_size,
> @@ -52,6 +55,13 @@ static inline int qcom_mdt_load(struct device *dev, const struct firmware *fw,
>  	return -ENODEV;
>  }
>  
> +static inline int qcom_mdt_pas_load(struct qcom_scm_pas_context *ctx,
> +				    const struct firmware *fw, const char *firmware,
> +				    void *mem_region, phys_addr_t *reloc_base)
> +{
> +	return -ENODEV;
> +}
> +
>  static inline int qcom_mdt_load_no_init(struct device *dev,
>  					const struct firmware *fw,
>  					const char *fw_name, void *mem_region,
> 
> -- 
> 2.50.1
> 

-- 
-Mukesh Ojha

