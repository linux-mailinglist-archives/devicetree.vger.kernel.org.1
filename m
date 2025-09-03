Return-Path: <devicetree+bounces-211886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E18DB4128B
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 04:48:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 248D53BB90A
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 02:47:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A36E1E7660;
	Wed,  3 Sep 2025 02:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="md2rXUYj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A062419F461
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 02:47:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756867674; cv=none; b=TBZdTQ8ZgotWWIEHXIWVYAyeR9ze+3qnchMeLmdUIpU8qZrXjtIQ/uA/AUY9UsIq3r721hySaWXIuGIXIkl23Rup5A1AqHJ7s2ZdkLiflWk9PkuV7fBRSYKpJZMC40N/TwlsNARyfguyygPBqyr1qu++Ahg1tnNdMyWvsgocIC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756867674; c=relaxed/simple;
	bh=bDay9Mb+vLOifItB0nmhRJN4skjtbZAPiZreWnN3X0c=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=hlinlNoG+y9x7ECrUOuCOAHRZqwjj/3E/aogHxWQgpLaFHRsL6Jj2Oq5sZqSBMhtjrDgnpdYKg/lnV2W15JU11fTGxQSqk+lgUBsbs97VXImEbA8LK+az8PMTxlb9o/jnCEVGYwYSEcKmGtrTf51xQFY8VRgo4MH0ssGnKBuXZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=md2rXUYj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5831HFdq012213
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 02:47:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MR4kOjYGWE+3dtlgB4cQLtnV0AU3BFNkg+7eBEnx9Uk=; b=md2rXUYjLn7pvb5o
	QRnLxFk7VUDgATnzM7VFIxeHLiv62syDGG7jSg/vRL0Nhv0R3b1oGLBTYT3+eE9M
	YvCRchozMgSJq0D19sqPCMXRvVPtpX0bF54FU1wKk513xRi0DOw1tjwDLJ1w0bIq
	2S8+M7UtRBB8I4UrP5L/8v/QsWpR30IlesAXxJTAGaYO1Qt507YzHUEopGw00RLP
	DvWj8KXMpZSkrOPwmEWMRIKYSWx1iGpmCnNmxNPHH1nN+X6esaQJG/VRUBi2iWCr
	CGbQ08bFcCPBUmuXJnjqqatayB+iaU45K/Qwadx6v6/1KQhwZYxuWqsn754Y+Rcb
	QdGwog==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ut2fhtse-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 02:47:51 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7724487d2a8so5381659b3a.1
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 19:47:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756867671; x=1757472471;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MR4kOjYGWE+3dtlgB4cQLtnV0AU3BFNkg+7eBEnx9Uk=;
        b=IFtDC74h1QdESujQ9M2iAUwYdCvl8D1ioOkDtamS9ZuA1nXPUCaBHcJEb5+pBNTJH3
         8evLkEfQ8pyKgV/sNHwomIimeqRYyiMEjx6bF/zSxhAoyhWKMBqlT4y7HTQl8G+vb2aI
         DGhoxHrujeWqPlEBg4EsQrR+e5wJdl1+O84KdkQdIM+vUAZ9O33dGGw3UOLQ9TqWRtKa
         usnGIr8AO2wkFn+q14le/SAEdy0YPNMZ56IS1wrjNufYU++0+y7XjrXznOo1rl0i/scI
         DTCNEy4xJHb+ycGUhd19Tt5DwD+5Z6BEZnH/cFdWDYB04ZCT2EMLdNatBytvLEbFiWoT
         FoUA==
X-Forwarded-Encrypted: i=1; AJvYcCXdEKX4dttCZro8vvAP3sAc8REQ7i8EWZZcYX1Zi+1O3uZppZaV48+1oAs1Dv5eM4ihg+Fc6weEQnhn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6rnM0fYPj5c2wtcOqew0cDRTpwz3CuEPJcsA+ZWClCGFbHuNS
	dRWQliGv9Yhj0FXaEacWT++bSGqNgR+TrOXJ9PdSrVBQTkauACPo7i4CwiqK4fyp0gmsibrw2HL
	OZALk2fJ+WjXq8M9DzbbL0R+QwG0gQeUUN0QIAnbACe4LNmyLi1Si1pIv5bLIDaY3cQEBo3ORWc
	k=
X-Gm-Gg: ASbGnctqYR8+SPEATtWl5aCTrXq5dty8QLQHT7P8KSp93ZB99DKXWC16N7YIdsK6G7P
	430N0hph4fYzXtptA3Gj5HS10DG8OpX55n+P2/m466uvyM09oR3lH9OWRRNTXsapjnagiMQepZ/
	CwEj4ZPr29JRbQylzyuM1kf1MyMhWA7XZJHTdK5vegyGpuv9In5Qmckp4dFj00SFReRXfPVro6i
	wNfGesoUAWWJZ816Ht7jzjmoD1ub327MGm4c109nII6ntmFNifEliI37FJ9SA/b9Md1swb5kfgA
	PslC0NKnHtBcuE2y2GOVQ+SaYzPvryzAsF/hCthqbKSVbsBud0jyZi/haFWZNrvkoucQtBuG9bL
	fWIhx8LOYxHMOEh3/Jmr+us9CJXVv
X-Received: by 2002:a05:6a00:39a0:b0:757:ca2b:48a3 with SMTP id d2e1a72fcca58-7723e259561mr15595214b3a.9.1756867670473;
        Tue, 02 Sep 2025 19:47:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHDO7sTee57O3KQCsZo26R1EkKcAn2uGXwp7NsC8REemaNjEc7JaagReOo8ixwYY9UtqoAwbg==
X-Received: by 2002:a05:6a00:39a0:b0:757:ca2b:48a3 with SMTP id d2e1a72fcca58-7723e259561mr15595192b3a.9.1756867669946;
        Tue, 02 Sep 2025 19:47:49 -0700 (PDT)
Received: from [10.133.33.16] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7725d5b90fasm6884902b3a.100.2025.09.02.19.47.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 19:47:49 -0700 (PDT)
Message-ID: <67e3d491-0af3-4fd7-87f9-5ece1521174d@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 10:47:43 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/3] coresight: tpdm: add static tpdm support
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlmao.mao@oss.qualcomm.com>,
        Tao Zhang <quic_taozha@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250822103008.1029-1-jie.gan@oss.qualcomm.com>
 <20250822103008.1029-3-jie.gan@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20250822103008.1029-3-jie.gan@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzOCBTYWx0ZWRfX47lhx2EF0PcB
 dOuwoPfMkJwRMpwKwp6Y5ZOnyShaoME9whGJWGB3RLvRH2JrGXh3Wl9H6PmSDvFnwU/S+E2Vo7U
 QokMy/g/NqXjTuJTzjKuFiyw/jxODziTIr/u2TdhVE05aZR/UP/gXXYZhNOTAnU4keioXppy9Jh
 hrenkbPopgjblXlSPLa7T8N6VlLiOFoSjtIETHG3utcsWqT0rJOvnJhxBilSp5CA/aeA6mJI/mR
 6Vzmd1V3a8+BWnrty/cC8B7SyB15CGk9P1JeOUpUxK71MHm0vcmzNoJM5VkMEYE3+gy/x3fsAAi
 aNxRv6wxlDdWB5XD8JBAKkpzagaTdQOUkbc58xcVlma41UEs8JxgGvB5aJlGXg2y9ZfOrBSLUxA
 CTFUfSDk
X-Proofpoint-ORIG-GUID: 0E33f7fyTlA-_vnT4w8tIvqnGi9F0L5Q
X-Proofpoint-GUID: 0E33f7fyTlA-_vnT4w8tIvqnGi9F0L5Q
X-Authority-Analysis: v=2.4 cv=U7iSDfru c=1 sm=1 tr=0 ts=68b7ac57 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=DS5xQBhA3tpC-DeSMgwA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300038



On 8/22/2025 6:30 PM, Jie Gan wrote:
> The static TPDM function as a dummy source, however, it is essential
> to enable the port connected to the TPDA and configure the element size.
> Without this, the TPDA cannot correctly receive trace data from the
> static TPDM. Since the static TPDM does not require MMIO mapping to
> access its registers, a clock controller is not mandatory for its
> operation.

Gentle ping.

Can you please help to review the patch?
This patch has a dependency:
https://lore.kernel.org/all/20250806080931.14322-1-jie.gan@oss.qualcomm.com/

Thanks,
Jie

> 
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>   drivers/hwtracing/coresight/coresight-tpda.c |   9 ++
>   drivers/hwtracing/coresight/coresight-tpdm.c | 148 ++++++++++++++-----
>   drivers/hwtracing/coresight/coresight-tpdm.h |   8 +
>   3 files changed, 131 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-tpda.c b/drivers/hwtracing/coresight/coresight-tpda.c
> index 333b3cb23685..4e93fa5bace4 100644
> --- a/drivers/hwtracing/coresight/coresight-tpda.c
> +++ b/drivers/hwtracing/coresight/coresight-tpda.c
> @@ -68,6 +68,15 @@ static int tpdm_read_element_size(struct tpda_drvdata *drvdata,
>   	int rc = -EINVAL;
>   	struct tpdm_drvdata *tpdm_data = dev_get_drvdata(csdev->dev.parent);
>   
> +	if (coresight_is_static_tpdm(csdev)) {
> +		rc = fwnode_property_read_u32(dev_fwnode(csdev->dev.parent),
> +					      "qcom,dsb-element-bits", &drvdata->dsb_esize);
> +		rc &= fwnode_property_read_u32(dev_fwnode(csdev->dev.parent),
> +					       "qcom,cmb-element-bits", &drvdata->cmb_esize);
> +
> +		goto out;
> +	}
> +
>   	if (tpdm_data->dsb) {
>   		rc = fwnode_property_read_u32(dev_fwnode(csdev->dev.parent),
>   				"qcom,dsb-element-bits", &drvdata->dsb_esize);
> diff --git a/drivers/hwtracing/coresight/coresight-tpdm.c b/drivers/hwtracing/coresight/coresight-tpdm.c
> index 7214e65097ec..1766b0182819 100644
> --- a/drivers/hwtracing/coresight/coresight-tpdm.c
> +++ b/drivers/hwtracing/coresight/coresight-tpdm.c
> @@ -495,7 +495,9 @@ static int tpdm_enable(struct coresight_device *csdev, struct perf_event *event,
>   		return -EBUSY;
>   	}
>   
> -	__tpdm_enable(drvdata);
> +	if (!coresight_is_static_tpdm(csdev))
> +		__tpdm_enable(drvdata);
> +
>   	drvdata->enable = true;
>   	spin_unlock(&drvdata->spinlock);
>   
> @@ -551,7 +553,9 @@ static void tpdm_disable(struct coresight_device *csdev,
>   		return;
>   	}
>   
> -	__tpdm_disable(drvdata);
> +	if (!coresight_is_static_tpdm(csdev))
> +		__tpdm_disable(drvdata);
> +
>   	coresight_set_mode(csdev, CS_MODE_DISABLED);
>   	drvdata->enable = false;
>   	spin_unlock(&drvdata->spinlock);
> @@ -1342,10 +1346,9 @@ static const struct attribute_group *tpdm_attr_grps[] = {
>   	NULL,
>   };
>   
> -static int tpdm_probe(struct amba_device *adev, const struct amba_id *id)
> +static int tpdm_probe(struct device *dev, struct resource *res)
>   {
>   	void __iomem *base;
> -	struct device *dev = &adev->dev;
>   	struct coresight_platform_data *pdata;
>   	struct tpdm_drvdata *drvdata;
>   	struct coresight_desc desc = { 0 };
> @@ -1354,32 +1357,33 @@ static int tpdm_probe(struct amba_device *adev, const struct amba_id *id)
>   	pdata = coresight_get_platform_data(dev);
>   	if (IS_ERR(pdata))
>   		return PTR_ERR(pdata);
> -	adev->dev.platform_data = pdata;
> +	dev->platform_data = pdata;
>   
>   	/* driver data*/
>   	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
>   	if (!drvdata)
>   		return -ENOMEM;
> -	drvdata->dev = &adev->dev;
> +	drvdata->dev = dev;
>   	dev_set_drvdata(dev, drvdata);
>   
> -	base = devm_ioremap_resource(dev, &adev->res);
> -	if (IS_ERR(base))
> -		return PTR_ERR(base);
> +	if (res) {
> +		base = devm_ioremap_resource(dev, res);
> +		if (IS_ERR(base))
> +			return PTR_ERR(base);
>   
> -	drvdata->base = base;
> +		drvdata->base = base;
> +		ret = tpdm_datasets_setup(drvdata);
> +		if (ret)
> +			return ret;
>   
> -	ret = tpdm_datasets_setup(drvdata);
> -	if (ret)
> -		return ret;
> +		if (drvdata && tpdm_has_dsb_dataset(drvdata))
> +			of_property_read_u32(drvdata->dev->of_node,
> +					     "qcom,dsb-msrs-num", &drvdata->dsb_msr_num);
>   
> -	if (drvdata && tpdm_has_dsb_dataset(drvdata))
> -		of_property_read_u32(drvdata->dev->of_node,
> -			   "qcom,dsb-msrs-num", &drvdata->dsb_msr_num);
> -
> -	if (drvdata && tpdm_has_cmb_dataset(drvdata))
> -		of_property_read_u32(drvdata->dev->of_node,
> -			   "qcom,cmb-msrs-num", &drvdata->cmb_msr_num);
> +		if (drvdata && tpdm_has_cmb_dataset(drvdata))
> +			of_property_read_u32(drvdata->dev->of_node,
> +					     "qcom,cmb-msrs-num", &drvdata->cmb_msr_num);
> +	}
>   
>   	/* Set up coresight component description */
>   	desc.name = coresight_alloc_device_name(&tpdm_devs, dev);
> @@ -1388,34 +1392,51 @@ static int tpdm_probe(struct amba_device *adev, const struct amba_id *id)
>   	desc.type = CORESIGHT_DEV_TYPE_SOURCE;
>   	desc.subtype.source_subtype = CORESIGHT_DEV_SUBTYPE_SOURCE_TPDM;
>   	desc.ops = &tpdm_cs_ops;
> -	desc.pdata = adev->dev.platform_data;
> -	desc.dev = &adev->dev;
> +	desc.pdata = dev->platform_data;
> +	desc.dev = dev;
>   	desc.access = CSDEV_ACCESS_IOMEM(base);
> -	desc.groups = tpdm_attr_grps;
> +	if (res)
> +		desc.groups = tpdm_attr_grps;
>   	drvdata->csdev = coresight_register(&desc);
>   	if (IS_ERR(drvdata->csdev))
>   		return PTR_ERR(drvdata->csdev);
>   
>   	spin_lock_init(&drvdata->spinlock);
>   
> -	/* Decrease pm refcount when probe is done.*/
> -	pm_runtime_put(&adev->dev);
> -
>   	return 0;
>   }
>   
> -static void tpdm_remove(struct amba_device *adev)
> +static int tpdm_remove(struct device *dev)
>   {
> -	struct tpdm_drvdata *drvdata = dev_get_drvdata(&adev->dev);
> +	struct tpdm_drvdata *drvdata = dev_get_drvdata(dev);
>   
>   	coresight_unregister(drvdata->csdev);
> +
> +	return 0;
> +}
> +
> +static int dynamic_tpdm_probe(struct amba_device *adev,
> +			      const struct amba_id *id)
> +{
> +	int ret;
> +
> +	ret = tpdm_probe(&adev->dev, &adev->res);
> +	if (!ret)
> +		pm_runtime_put(&adev->dev);
> +
> +	return ret;
> +}
> +
> +static void dynamic_tpdm_remove(struct amba_device *adev)
> +{
> +	tpdm_remove(&adev->dev);
>   }
>   
>   /*
>    * Different TPDM has different periph id.
>    * The difference is 0-7 bits' value. So ignore 0-7 bits.
>    */
> -static const struct amba_id tpdm_ids[] = {
> +static const struct amba_id dynamic_tpdm_ids[] = {
>   	{
>   		.id	= 0x001f0e00,
>   		.mask	= 0x00ffff00,
> @@ -1423,17 +1444,76 @@ static const struct amba_id tpdm_ids[] = {
>   	{ 0, 0, NULL },
>   };
>   
> -static struct amba_driver tpdm_driver = {
> +MODULE_DEVICE_TABLE(amba, dynamic_tpdm_ids);
> +
> +static struct amba_driver dynamic_tpdm_driver = {
>   	.drv = {
>   		.name   = "coresight-tpdm",
>   		.suppress_bind_attrs = true,
>   	},
> -	.probe          = tpdm_probe,
> -	.id_table	= tpdm_ids,
> -	.remove		= tpdm_remove,
> +	.probe          = dynamic_tpdm_probe,
> +	.id_table	= dynamic_tpdm_ids,
> +	.remove		= dynamic_tpdm_remove,
>   };
>   
> -module_amba_driver(tpdm_driver);
> +static int tpdm_platform_probe(struct platform_device *pdev)
> +{
> +	struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	int ret;
> +
> +	pm_runtime_get_noresume(&pdev->dev);
> +	pm_runtime_set_active(&pdev->dev);
> +	pm_runtime_enable(&pdev->dev);
> +
> +	ret = tpdm_probe(&pdev->dev, res);
> +	pm_runtime_put(&pdev->dev);
> +	if (ret)
> +		pm_runtime_disable(&pdev->dev);
> +
> +	return ret;
> +}
> +
> +static void tpdm_platform_remove(struct platform_device *pdev)
> +{
> +	struct tpdm_drvdata *drvdata = dev_get_drvdata(&pdev->dev);
> +
> +	if (WARN_ON(!drvdata))
> +		return;
> +
> +	tpdm_remove(&pdev->dev);
> +	pm_runtime_disable(&pdev->dev);
> +}
> +
> +static const struct of_device_id static_tpdm_match[] = {
> +	{.compatible = "qcom,coresight-static-tpdm"},
> +	{}
> +};
> +
> +MODULE_DEVICE_TABLE(of, static_tpdm_match);
> +
> +static struct platform_driver static_tpdm_driver = {
> +	.probe		= tpdm_platform_probe,
> +	.remove		= tpdm_platform_remove,
> +	.driver		= {
> +		.name	= "coresight-static-tpdm",
> +		.of_match_table = static_tpdm_match,
> +		.suppress_bind_attrs = true,
> +	},
> +};
> +
> +static int __init tpdm_init(void)
> +{
> +	return coresight_init_driver("tpdm", &dynamic_tpdm_driver, &static_tpdm_driver,
> +				     THIS_MODULE);
> +}
> +
> +static void __exit tpdm_exit(void)
> +{
> +	coresight_remove_driver(&dynamic_tpdm_driver, &static_tpdm_driver);
> +}
> +
> +module_init(tpdm_init);
> +module_exit(tpdm_exit);
>   
>   MODULE_LICENSE("GPL");
>   MODULE_DESCRIPTION("Trace, Profiling & Diagnostic Monitor driver");
> diff --git a/drivers/hwtracing/coresight/coresight-tpdm.h b/drivers/hwtracing/coresight/coresight-tpdm.h
> index b11754389734..9f52c88ce5c1 100644
> --- a/drivers/hwtracing/coresight/coresight-tpdm.h
> +++ b/drivers/hwtracing/coresight/coresight-tpdm.h
> @@ -343,4 +343,12 @@ struct tpdm_dataset_attribute {
>   	enum dataset_mem mem;
>   	u32 idx;
>   };
> +
> +static inline bool coresight_is_static_tpdm(struct coresight_device *csdev)
> +{
> +	struct device_node *node = csdev->dev.parent->of_node;
> +
> +	return (csdev &&
> +		of_device_is_compatible(node, "qcom,coresight-static-tpdm"));
> +}
>   #endif  /* _CORESIGHT_CORESIGHT_TPDM_H */


