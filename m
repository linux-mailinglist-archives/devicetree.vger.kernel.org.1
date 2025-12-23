Return-Path: <devicetree+bounces-249271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4E2CDA5D5
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 20:29:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 96BCC302DB44
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 19:26:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BC2434B1A1;
	Tue, 23 Dec 2025 19:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HM6w/inr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HyYZ4lkx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE7453128A3
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766517978; cv=none; b=WZ5h2IBkmMQzCDccGXedvTbhRQwbzsLdbKHG0LBHxMbDuDNOUDlDNa7bRuxId4zI2IRzYyf3j0aBuYK6+AGv4hLxlpKyn1PxLznDXIplPEUkxIQ3kuWMa4PBvzMoniT5LshMLqCnh6cCio++aF7JqsFs4xb1M2UBu46IXenhjD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766517978; c=relaxed/simple;
	bh=jD3wPJli5M04n/Ukor1rbIKc1FpVvtX7Dq2wucXk3a0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EopAc8iuf/aVBN79BpgHv2M/ss4zg8OduV/y7gh1R2ZncyL0WIYsk7bEvRnl3ZR6fNBLHG02vyBIKu1ZHjBoVdQck8yZmuFY1AJBdlotjPmieQ3Pk/Ch3cWOJJKpGJ8f0UszNMQOQnFN7JI45Zk/1MsXbrTX1cs6O5rTgA7lRBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HM6w/inr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HyYZ4lkx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNFGDY54044820
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:26:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/NYtc6MEfR+uHVz/Tp0V4I/j
	ptqyq9WvGiSkfSJYvic=; b=HM6w/inriOrYQ5xIB0oHrtIWSvMRlf4K3mayddMO
	SgSAcuN2FqY0+1K30SkgJKwLGrs0boZkU1p5WjUwA2VSZIvrV96yyZ1oEKDaxDTI
	VRlPGYjSAZuK6xI9RKo6uYQjpwZCtp5qjMPgZ72VRzBucAL/JO8vpIKOdmfHy6IA
	CDvGJr2FWGevpzAif2Z39okRTKqz+ma9YsBQsaJMvt0bx5BzKqsy/ODKgqOBb+UA
	ChzXy4+PCWorkB3rWhkUQnBhe1WbDl1SyktN52QqsV+0cIAU7ZJOEQyLUEZi+M0E
	m1/QwefnjR1jwJ/gAVBIk5MO/B3OUcxOPDksLTb6S6je1w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7cuhbv8u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:26:16 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee416413a8so58089121cf.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 11:26:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766517975; x=1767122775; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/NYtc6MEfR+uHVz/Tp0V4I/jptqyq9WvGiSkfSJYvic=;
        b=HyYZ4lkxI/SuiRg1qJ5zKqKHS9Q0w9yY5x5SgK6GmdRNt08j9TnHoB5nKonb1VN8sN
         uDukL5h8Co6GC5thxbsRZjmVHa7lHG+uHsN1wZnJY3pw1kyipKLSKeoXPqCHiS1YAC4F
         dZ3F8Za68fskb54/3aD139uh+8YqkbHhrtBnCYwYYXiLGwrJz+5DjmSkMpQDb/tEBNAG
         8Wb2jxswnqeE3cJbgSlySgmmOtsv1zIW8mK/2SWxxuxRMHgWATfNM6HPdnhEZ47rLDgl
         sxVC60Ol97yWkZXG3Ox0NC0bg8ybBCDv2i5qs+4CmRzORUO0AheJLi8quhJsOGIm6fL2
         aWyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766517975; x=1767122775;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/NYtc6MEfR+uHVz/Tp0V4I/jptqyq9WvGiSkfSJYvic=;
        b=DS/Yi43/4kLug+lXEzxMl/BFG0q+MYuntsqY5fYU+0CI0FSw1VwWkFKmGwu57r+eDt
         BAnmHp6gHZSGt8kgXRm7g/wXSq6KpkavO8G2g8NpgQShpMxBm8k5SkQoqKnyUytdUTa5
         phstRS+I12uCsT0PGEQY2eV5VCKrqvefIJrFiiRwSVM3CJ7ix43IBAB0POVFC8LlSV7Y
         xPzByT1JMjwQAJ6vsGz6TW6wK4h0Ph7plfUH5VnoyF2sAcavDiG2afKT4CuLPO6pOIzo
         zMWvsFt5C4684/3QTg2DmdNVRGA0e0XSkXCIPPOc0dNKMxDpRc0xtHglYzc8642NC62K
         nXSQ==
X-Forwarded-Encrypted: i=1; AJvYcCULcCPzsoyC4OhrYWsR5Tnuv8fK+zex9j2jjkBj6p2bdjKzBVwu/90hsj9gdLqTJiWgz+BUYNXbxF8O@vger.kernel.org
X-Gm-Message-State: AOJu0YxdgOzhl3nZIcfM3JYbMMVcotfmOJuS09W1d446Ah/BL8xJzn0W
	/ozrlYSpUBsfWU0VIBGWF4nVqxQQHGlnj4ySHRHRxzXNkx/q+FYxmHkV3X8LiOnrtoK1O/M5Rlo
	k8g/xkQ5aKRbYqMVn1SFZY24rxqdhPqAV2Pl1pVQG/NN+fjv+7/xmDvLx7cpBGcfK
X-Gm-Gg: AY/fxX4fDWpLcXE7JNWRSESVm+Ahef5cl+EuUJck5/rtv2U1+CDplkB8znSc4qtQ/qu
	V/PbubJyUgBE4gPEbT0VyS3520YJhv2KNmUx0wt/Vx+zNiHU5m0BFJx7gQ010eRs9xzmxaBVYlt
	Khd32YGVypfWMQY+uqtScJLmMNV444xb2A/Kjb4TCj5Do9p52yujx8t2xKqbKgnJLwXSkcKMgYm
	DALkJRrrg53srQ3ET3/jS4RCb2Z/Ui0v3ws0fz1xEMIkKK5ZOEDeOQ4PWVGo3ApVP1iyNPrzVOL
	RBtL+sUnnLn4LxZWazEwDFcjoCqYaFJNsx9dOQJ7ig+qF7zaqXukzSXqWpD9vMX8ij8yL+Dd8/O
	x7Ge7Czj/DJyjrTmgh4AG2dlctYCUZeZib9nP6ubQcmkny5p+4tWxaukM0IgALA2mKN9SNmkupc
	womaW/yS9hJMurlTAz1JlUHHc=
X-Received: by 2002:a05:622a:a0f:b0:4ee:4157:c052 with SMTP id d75a77b69052e-4f4abcf8ffbmr259243481cf.37.1766517974998;
        Tue, 23 Dec 2025 11:26:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG3nSfLtNNG1mYtxwZ5ck+QvwIRjWqM7KYjX4twHjicEHH8cRmfcMqrflZDKS3PInnMaYHohQ==
X-Received: by 2002:a05:622a:a0f:b0:4ee:4157:c052 with SMTP id d75a77b69052e-4f4abcf8ffbmr259242781cf.37.1766517974313;
        Tue, 23 Dec 2025 11:26:14 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18620337sm4244179e87.86.2025.12.23.11.26.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 11:26:13 -0800 (PST)
Date: Tue, 23 Dec 2025 21:26:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rafael@kernel.org,
        daniel.lezcano@linaro.org, rui.zhang@intel.com, lukasz.luba@arm.com,
        konradybcio@kernel.org, amitk@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org
Subject: Re: [PATCH v1 2/8] remoteproc: qcom: probe all child devices
Message-ID: <fesspo7vvkyrjfyaoisnuxdku3geeizqobc4ottu7scy25skcx@gq6omi5gbe6s>
References: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
 <20251223123227.1317244-3-gaurav.kohli@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223123227.1317244-3-gaurav.kohli@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: q8thd-4xZKepXaqecW3a7JoSLAaB2Krf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE2MiBTYWx0ZWRfX81w5NiEXnbRv
 VoYmqG1H9h0a03RdlWB6lp526TKfodiSiMqE22pISB2WIvmJH5/rQAnTsHAIOLr/MGHXwwT0INc
 jTxkaZZuJG3wb7SiDV8DpnS7PMNHwRy9M7v7tQepIU1PMcGKeg/3fEFQe/MbUQW/FLFdx0uCKnB
 S9ihqI8p9MKHwT7eESp1BK+OqfmWED0NEtc2A00yajCKDCyDFn3eCUAcwT84Plzl1PgjcpDGPRJ
 Gfoowx1qprWaSGhxgli4rK1zF1D9YgXKRyhzUI/YY4Cds15xyn1x08ah7hRhliLbRhRvCrpt+9/
 /O/M1eRwBeQUvuPJNeSvIAnEDNf/hELDfv5+qrGzWlCCBdsl69pq3bdJDWh9w3NBK8BNuKOaCei
 Ms61Phrd9mQ+YM1eepLBClRSgaVPPcj/07hEITHxbB4m1dsCVw2N2Of68g1HGMfReHOieiqP1kS
 ix36ww8Vu9dMPG5sHbQ==
X-Proofpoint-GUID: q8thd-4xZKepXaqecW3a7JoSLAaB2Krf
X-Authority-Analysis: v=2.4 cv=NZDrFmD4 c=1 sm=1 tr=0 ts=694aecd8 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=awArVJ-I-ykW2PDkjA0A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 impostorscore=0 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230162

On Tue, Dec 23, 2025 at 06:02:21PM +0530, Gaurav Kohli wrote:
> From: Casey Connolly <casey.connolly@linaro.org>
> 
> Generalise the qcom,bam-dmux child node support by probing all
> remoteproc children with of_platform_populate(). This will be used to
> enable support for devices which are best represented as subnodes of the
> remoteproc, such as those representing QMI clients.

Bindings first.

> 
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> ---
>  drivers/remoteproc/qcom_q6v5.c     | 4 ++++
>  drivers/remoteproc/qcom_q6v5_mss.c | 8 --------
>  2 files changed, 4 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/remoteproc/qcom_q6v5.c b/drivers/remoteproc/qcom_q6v5.c
> index 58d5b85e58cd..a02839c7ed8c 100644
> --- a/drivers/remoteproc/qcom_q6v5.c
> +++ b/drivers/remoteproc/qcom_q6v5.c
> @@ -6,6 +6,7 @@
>   * Copyright (C) 2014 Sony Mobile Communications AB
>   * Copyright (c) 2012-2013, The Linux Foundation. All rights reserved.
>   */
> +#include <linux/of_platform.h>
>  #include <linux/kernel.h>
>  #include <linux/platform_device.h>
>  #include <linux/interconnect.h>
> @@ -351,6 +352,8 @@ int qcom_q6v5_init(struct qcom_q6v5 *q6v5, struct platform_device *pdev,
>  		return dev_err_probe(&pdev->dev, PTR_ERR(q6v5->path),
>  				     "failed to acquire interconnect path\n");
>  
> +	of_platform_populate(q6v5->dev->of_node, NULL, NULL, q6v5->dev);

Missing error handling. Also please use devm_of_platform_populate().

> +
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(qcom_q6v5_init);
> @@ -361,6 +364,7 @@ EXPORT_SYMBOL_GPL(qcom_q6v5_init);
>   */
>  void qcom_q6v5_deinit(struct qcom_q6v5 *q6v5)
>  {
> +	of_platform_depopulate(q6v5->dev);
>  	qmp_put(q6v5->qmp);
>  }
>  EXPORT_SYMBOL_GPL(qcom_q6v5_deinit);
> diff --git a/drivers/remoteproc/qcom_q6v5_mss.c b/drivers/remoteproc/qcom_q6v5_mss.c
> index 91940977ca89..d40565c1cc62 100644
> --- a/drivers/remoteproc/qcom_q6v5_mss.c
> +++ b/drivers/remoteproc/qcom_q6v5_mss.c
> @@ -238,7 +238,6 @@ struct q6v5 {
>  	struct qcom_rproc_pdm pdm_subdev;
>  	struct qcom_rproc_ssr ssr_subdev;
>  	struct qcom_sysmon *sysmon;
> -	struct platform_device *bam_dmux;
>  	bool need_mem_protection;
>  	bool has_alt_reset;
>  	bool has_mba_logs;
> @@ -2029,7 +2028,6 @@ static int q6v5_alloc_memory_region(struct q6v5 *qproc)
>  static int q6v5_probe(struct platform_device *pdev)
>  {
>  	const struct rproc_hexagon_res *desc;
> -	struct device_node *node;
>  	struct q6v5 *qproc;
>  	struct rproc *rproc;
>  	const char *mba_image;
> @@ -2163,10 +2161,6 @@ static int q6v5_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto remove_sysmon_subdev;
>  
> -	node = of_get_compatible_child(pdev->dev.of_node, "qcom,bam-dmux");
> -	qproc->bam_dmux = of_platform_device_create(node, NULL, &pdev->dev);
> -	of_node_put(node);
> -
>  	return 0;
>  
>  remove_sysmon_subdev:
> @@ -2186,8 +2180,6 @@ static void q6v5_remove(struct platform_device *pdev)
>  	struct q6v5 *qproc = platform_get_drvdata(pdev);
>  	struct rproc *rproc = qproc->rproc;
>  
> -	if (qproc->bam_dmux)
> -		of_platform_device_destroy(&qproc->bam_dmux->dev, NULL);
>  	rproc_del(rproc);
>  
>  	qcom_q6v5_deinit(&qproc->q6v5);
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

