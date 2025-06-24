Return-Path: <devicetree+bounces-189220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F24B4AE72C4
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 01:01:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9975C189DA65
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 23:02:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBC13238140;
	Tue, 24 Jun 2025 23:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GzhoyKlO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA93182BC
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 23:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750806110; cv=none; b=JtXaVx2GVzO6KkaE7nC9XQox3KU1X/8xfUHy3vx+4G2YD80RNW71FvftI8OBqAv36+o1PjjRnMIiDkK4SJbJdZijn1spMKfPf7wxquhuW8Qcu7guPdZYAmBZmdE/2z0eRW/IGmAUfT8/dumJBZUqqzERbWhQlgNBFqbsdW4viOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750806110; c=relaxed/simple;
	bh=skPMQQhVgy3pzhQOpPxLAARHXISiG/mywqmRIBrGIqY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Za7FOqF+reRuYaHhqUswB5EdwI98O9ArMeWZeLjrMh62ssDjaZAOKo1zbaylnfd4yaT2HfQqebMHeYWrJSToBF/1XfUIckJeM0agGnPjc9PtxAAgN7iQasKnaZmy6kcKVi8sG3La9f6lhFQWC0HMyaC/R4V/94wcs9tFzauS4rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GzhoyKlO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55OJIxBH030064
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 23:01:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uwlCE4yW5vlEsSV+FkTFfzpjifM+g7PyFZcUvFH9qi8=; b=GzhoyKlOWDmOHYEF
	slqUboFPpz+GhhzaUAz54ivGoo88pyhpE/om0UFmnJxmsjVqVKiLvBJCFAbGRx6L
	LbMYA3WJuJB085sYv+1wfr/sR1fZje6jCoyAIwRqNwo9U31mfpJle+4FXViW+n8R
	JOdpIZ3HPyl41eiTWtzi9We84lYujK1xLmUsJa7gmZWKs8++wv+p14GAiV1I5Zeb
	2QB6ENWbxCQw3oBpujAxTBJQhZuHAECbaUMisHh0UmdAdS1TavJg5tZEPVnVbo4f
	PoinY8msZkHXtzqC4u3nTcl8MIvg/Zl2GxEVo12+/8Q+KRLTj1x+k2U03dOiP2ka
	YH9OMg==
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com [209.85.166.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47g22q8eeg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 23:01:48 +0000 (GMT)
Received: by mail-il1-f200.google.com with SMTP id e9e14a558f8ab-3de0dc57859so60999005ab.2
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 16:01:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750806107; x=1751410907;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uwlCE4yW5vlEsSV+FkTFfzpjifM+g7PyFZcUvFH9qi8=;
        b=Xh4cFwAfJI8JQcAjgWVa5gQysQso8S3ThdxYEnpiGeGvGEKdSPXyNgB35H/zDocYx7
         mW7eV2LXPQe3mUzGyh4uOZS7qMkfR3aE2+6IqjB5vvel7bo/siohA32jLD1Uvp8BylLe
         fPdJwQJr8cGdM/vrWYjaffWRCyYwk++7J0rpvl4wwWgpcU7Ovkx+Qq6Tba4Kz+V743Z8
         KP+4QCjAD8iKJ49ZSVul4yQG3X72jZDhWiMQLZOvNWec0LXXr36HuOzHOZH5WZYw5Mkn
         vk/YocaFni/VwtgzLmDkqjxuBsGMgWi6IY0cRJk1qVfaYJrSWfJeu7dWT6POYXb5liDJ
         m9HA==
X-Forwarded-Encrypted: i=1; AJvYcCXvAMe/ecqfjnPj8R9Dh/7cIw+RpuhTshp38IfZHFTwD9Zaqh0jct1HSa4lIYuNH80/4NL5KFdvsPum@vger.kernel.org
X-Gm-Message-State: AOJu0YxVtnFz2Sowp9Nk4yWN3M6MaR5aRC1wXjbwzfrnO38cAohUByuk
	4MqrOm1nk05RpUO+jmyNPY4N7vEktGjDXGEO49GjxHOvQk03MtomWF/oGBEO6bbFxM8Qn9jwZup
	0LTRHx2UBgaCsdGiV1n109VNdv/ToKqpt77wIXJxS2M/f3LGjz46jQxax52KNaXCA
X-Gm-Gg: ASbGncvScY4P8LWJw0Vjz6IRjNQzYyarsztLJpJ49N8TE5P7m3tEBrBPuBNR2z5GZl9
	80yao013hK1dAUv6qBkMGJxotrOoVBC0sXVsbpLPqJYcqBu/E3TAH9IC1WAg+IVVUj/4QKpWczG
	Kj8s8+xGZ4DrgAfqczBrsdPq28LS/uAN6jM3Vp5t1yYvGUsHYZ/C4tZ68LnLzQyK2/cRRRpwOqu
	UheT/Kz4tmc8ZEVlCsMjnAWPcjfNIFoy5oB3HAJRS8KC07o39jgVkIrKZq6OX9JFSmzIolDQqun
	XOGnf7LhTJljbTJ/RplbuZfm/VmIsvEeFrgTFCJoSyhx5DAv3bvLaEvEcCsBuEQF1GMDaDet+sl
	6b+3Gchhh47VLXyCgWffUtoGM
X-Received: by 2002:a05:6e02:2285:b0:3df:2a3c:53e1 with SMTP id e9e14a558f8ab-3df32a1f475mr13610705ab.21.1750806107376;
        Tue, 24 Jun 2025 16:01:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEAI9ilcnYIJuCqgRflshhJ+t1O8KYfJ9n7xTtHpVWRsIVwSO4vaowELkkrFwPI0xnOBsLZKA==
X-Received: by 2002:a05:6e02:2285:b0:3df:2a3c:53e1 with SMTP id e9e14a558f8ab-3df32a1f475mr13610125ab.21.1750806106916;
        Tue, 24 Jun 2025 16:01:46 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0c3:3a00::4c9? (2001-14ba-a0c3-3a00--4c9.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::4c9])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41c37c4sm1974353e87.170.2025.06.24.16.01.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 16:01:46 -0700 (PDT)
Message-ID: <c887babc-4a6c-4f53-9501-1ae66cd25c51@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 02:01:45 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] soc: qcom: pmic_glink: Add support for subsystem
 restart (SSR)
To: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250624225535.2013141-1-anjelique.melendez@oss.qualcomm.com>
 <20250624225535.2013141-3-anjelique.melendez@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20250624225535.2013141-3-anjelique.melendez@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=cuqbk04i c=1 sm=1 tr=0 ts=685b2e5c cx=c_pps
 a=i7ujPs/ZFudY1OxzqguLDw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=7Ilphcs5pd63uBFtIagA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=Ti5FldxQo0BAkOmdeC3H:22
X-Proofpoint-GUID: skg8xKx6Hq1EFo6tc_jSXsZCZbXSP48k
X-Proofpoint-ORIG-GUID: skg8xKx6Hq1EFo6tc_jSXsZCZbXSP48k
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDE4MyBTYWx0ZWRfX59HBx24ErXq8
 Y8b4NJWTAu3V8fX58D/XOlgJI/ThELmzmd7Lw4d72Kfx/kI4bRoYbgHOUCdf4UHUylcWU0rZEQ4
 grQZfPYDGeyWitTe5B/C1t6HwQS5GCTwJgIZ25zy7W/+BcYAE/nOBfTjOCIxDDiJzmST8990HA9
 nHrM9JbMsCP1IL9u9VVfgbSrcutlIFRSdag9F6OPa4vDPpb+NtyI/vikcQ1heCHv3G9n8DxhT1q
 tC43a/sFdwx6GZmkBwLsHfBOVOTIaoZaw+XqlkE3V8zjYw7dbK9bxz3br/g+hilS7Ei+E04pygG
 jSi7c/H2DD3K/+8/Pee/KWJIN/IgK5PJdULBLW+aSX3TMoepkFvy44PjxxfrXxe42NqU96dQn9z
 qY+RkNTvUnqYSHuOw2BrG0aPzqUlPVjRT1ld6gGFp8wmcl5UmBPOEBD50pHLoQpphwG16AzD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_06,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 bulkscore=0 mlxlogscore=999
 malwarescore=0 adultscore=0 suspectscore=0 clxscore=1015 mlxscore=0
 lowpriorityscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240183

On 25/06/2025 01:55, Anjelique Melendez wrote:
> Add support for PMIC Glink clients to receive notificiation when
> the subsystem goes down and comes up again.
> 
> Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
> ---
>   drivers/soc/qcom/pmic_glink.c | 43 +++++++++++++++++++++++++++++++++--
>   1 file changed, 41 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/soc/qcom/pmic_glink.c b/drivers/soc/qcom/pmic_glink.c
> index 0a6d325b195c..5121f19d63e5 100644
> --- a/drivers/soc/qcom/pmic_glink.c
> +++ b/drivers/soc/qcom/pmic_glink.c
> @@ -2,6 +2,7 @@
>   /*
>    * Copyright (c) 2019-2020, The Linux Foundation. All rights reserved.
>    * Copyright (c) 2022, Linaro Ltd
> + * ​​​​Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>    */
>   #include <linux/auxiliary_bus.h>
>   #include <linux/cleanup.h>
> @@ -9,6 +10,7 @@
>   #include <linux/module.h>
>   #include <linux/of.h>
>   #include <linux/platform_device.h>
> +#include <linux/remoteproc/qcom_rproc.h>
>   #include <linux/rpmsg.h>
>   #include <linux/slab.h>
>   #include <linux/soc/qcom/pdr.h>
> @@ -39,10 +41,14 @@ struct pmic_glink {
>   	struct mutex state_lock;
>   	unsigned int client_state;
>   	unsigned int pdr_state;
> +	unsigned int ssr_state;
>   
>   	/* serializing clients list updates */
>   	spinlock_t client_lock;
>   	struct list_head clients;
> +
> +	struct notifier_block ssr_nb;
> +	void *ssr_handle;
>   };
>   
>   static struct pmic_glink *__pmic_glink;
> @@ -205,10 +211,12 @@ static void pmic_glink_state_notify_clients(struct pmic_glink *pg)
>   	unsigned long flags;
>   
>   	if (pg->client_state != SERVREG_SERVICE_STATE_UP) {
> -		if (pg->pdr_state == SERVREG_SERVICE_STATE_UP && pg->ept)
> +		if ((pg->pdr_state == SERVREG_SERVICE_STATE_UP ||
> +		     pg->ssr_state == QCOM_SSR_AFTER_POWERUP) && pg->ept)

carriage return after &&

>   			new_state = SERVREG_SERVICE_STATE_UP;
>   	} else {
> -		if (pg->pdr_state == SERVREG_SERVICE_STATE_DOWN || !pg->ept)
> +		if (pg->pdr_state == SERVREG_SERVICE_STATE_DOWN ||
> +		    pg->ssr_state == QCOM_SSR_BEFORE_SHUTDOWN || !pg->ept)

carriage return after ||

>   			new_state = SERVREG_SERVICE_STATE_DOWN;
>   	}
>   
> @@ -231,6 +239,18 @@ static void pmic_glink_pdr_callback(int state, char *svc_path, void *priv)
>   	pmic_glink_state_notify_clients(pg);
>   }
>   
> +static int pmic_glink_ssr_callback(struct notifier_block *nb, unsigned long code, void *data)
> +{
> +	struct pmic_glink *pg = container_of(nb, struct pmic_glink, ssr_nb);
> +
> +	mutex_lock(&pg->state_lock);
> +	pg->ssr_state = code;
> +
> +	pmic_glink_state_notify_clients(pg);
> +	mutex_unlock(&pg->state_lock);
> +	return 0;
> +}
> +
>   static int pmic_glink_rpmsg_probe(struct rpmsg_device *rpdev)
>   {
>   	struct pmic_glink *pg;
> @@ -281,6 +301,7 @@ static struct rpmsg_driver pmic_glink_rpmsg_driver = {
>   static int pmic_glink_probe(struct platform_device *pdev)
>   {
>   	const unsigned long *match_data;
> +	const char *subsys_name = NULL;
>   	struct pdr_service *service;
>   	struct pmic_glink *pg;
>   	int ret;
> @@ -333,6 +354,22 @@ static int pmic_glink_probe(struct platform_device *pdev)
>   		goto out_release_aux_devices;
>   	}
>   
> +	if (device_property_present(&pdev->dev, "qcom,subsys-name")) {
> +		device_property_read_string(&pdev->dev, "qcom,subsys-name", &subsys_name);

No need to read it from DT. Use a static value here.
If it differs from platform to platform, then add it to platform data 
and select it depending on the compat string.

> +		if (!subsys_name) {
> +			ret = dev_err_probe(&pdev->dev, PTR_ERR(pg->ssr_handle),
> +					"failed to read subsys_name string from dt\n");
> +			goto out_release_aux_devices;
> +		}
> +		pg->ssr_nb.notifier_call = pmic_glink_ssr_callback;
> +		pg->ssr_handle = qcom_register_ssr_notifier(subsys_name, &pg->ssr_nb);
> +		if (IS_ERR(pg->ssr_handle)) {
> +			ret = dev_err_probe(&pdev->dev, PTR_ERR(pg->ssr_handle),
> +					"failed adding ssr notifier\n");
> +			goto out_release_aux_devices;
> +		}
> +	}
> +
>   	mutex_lock(&__pmic_glink_lock);
>   	__pmic_glink = pg;
>   	mutex_unlock(&__pmic_glink_lock);
> @@ -360,6 +397,8 @@ static void pmic_glink_remove(struct platform_device *pdev)
>   
>   	pdr_handle_release(pg->pdr);
>   
> +	if (pg->ssr_handle)
> +		qcom_unregister_ssr_notifier(pg->ssr_handle, &pg->ssr_nb);
>   	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_BATT))
>   		pmic_glink_del_aux_device(pg, &pg->ps_aux);
>   	if (pg->client_mask & BIT(PMIC_GLINK_CLIENT_ALTMODE))


-- 
With best wishes
Dmitry

