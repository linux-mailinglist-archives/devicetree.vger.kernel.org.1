Return-Path: <devicetree+bounces-233791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EB290C25A34
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 15:44:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7F2EA4F54E4
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 14:40:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBF9234C997;
	Fri, 31 Oct 2025 14:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cl3fuCcq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BUvh9BTT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700E334A76D
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 14:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761921646; cv=none; b=CMtknuPN8foSRpAU4IkJfYh+9NoZGdo6E4AF55Dev9GVZX5rbUaaINjp7XB6vfeeDMFf6gBL+ESUlBmy0K60jpt9fJT47XT5apBBwJ+tpQtoM25ZiFF3KCb47jNq9fKUIIyAEKKsNdyAPy8KHdq73OfodzSShnkK4NfoxNnWYZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761921646; c=relaxed/simple;
	bh=1WjeL52Ou5NBeKCANEfpX7bxhAFnFSpBFQ1ir5Aps24=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qd33Af4DxEwvVdYKXjgX8F2/GvyXBK3VodjPfNonAgKyB4gb9aVMLOL13eyHZxRQuyVlKskV3+gYn2oKhtcsH6MSrXlGDnXhZwea8aGiX9vbuVUY4kRYH56gTPZ2K17Bzgd3f0yF5i+fI0vQ5USL8mT5C3r61ZqF/xNDQvkJJc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cl3fuCcq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BUvh9BTT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59V80WNH832623
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 14:40:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=x6u3aryrAWIuWoxLABamr7dh
	kWuzvuraC8U4rGQdnls=; b=cl3fuCcqncR2Tai7Am7sixA6EAvM1UqEpDf492cq
	CV8LT/JoTCODQ9BvIi5am5bAnuQUDSA5ONGc7P+UbWfs4IBjiYDYt3BEuSGaW/ue
	M6RE+pUc7zSemn9UI68lPt7QusZpo5aXf3vSHgSy6QU2EEmoweCgOtX+u24K7TbA
	cSvWEoCRx32H97SeEzvXwosr4IsL3XJUd3Kd5tw4NUKRjfswjgjGBvvn3A/UogN2
	PBd08b0BXxz9FstY98MQBzXvkeRgLXkwQVDz2N6xCJ6KSK4uyZ6FVyJ8N2P0uD9a
	NEO0FcEnX9dWh1xtQvyuX0wk1O7/ekcXjOTu0XzjPAV6DQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4ffb2h17-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 14:40:43 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ecf8faf8bdso96072561cf.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 07:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761921643; x=1762526443; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=x6u3aryrAWIuWoxLABamr7dhkWuzvuraC8U4rGQdnls=;
        b=BUvh9BTTxYyOVnahEKSCXsN1Y/VgdJzGBiwNjS1FSyRDcwLJztHvwtMF3YS+pprvvY
         fyD24soGnkojZcqi8QIn5yeeBMWBNG5poo0fDmh9CvhJJTqKTWkszclSfNUTi28bwHnd
         tVn8XaYdKajd8ipbW6D8oZ6lqAUNg1EJ8xFy5xZKPRJhZ6e8Fk4hQw/ithJt+3bAgBXY
         on7RssZiLNuc688EYV7GiXb8m3HgsxDbmxQxpa4NpS+SJ50KmskWtGqBOt6jRlHDklW/
         JLp2Iu7TuhvkGfrILmw95ZkLRJvW+3xBKgZuI72OdxmUUZ/q04OxBgtH2E72O2iHAyv0
         WMRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761921643; x=1762526443;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x6u3aryrAWIuWoxLABamr7dhkWuzvuraC8U4rGQdnls=;
        b=HTYlkrjfDdJEIyZTrjmJpivzemzw3if3H/xgqmRmDlr8urCE4P3VcJvSCJFmvd/Ph+
         ZGFz7tf+/vBpRaQoMHjuU+EyGlb0W719p8Ap0QIqd8ayiMwH69z5Z5VmMZ0p/jMRkFyr
         jmN9V9lQ9zigTuzwkR5s3Fc88hBr/oRrYYpxCqstJgSOJmxT6iwNJeGplqer0+D+LM8E
         064880oNNKEvSNHaAKGRMSIv0EqGHBqVCuzRhyaBvGqLDWi5zF/fm4ndNKkXLV7yjKKC
         lC1Aq50Lsa+OLFMpcmtLSvEcHZkxIpGuEeOob71Kj74SeO6WgJ+mRWItba6jKcxAbTBY
         ryKA==
X-Forwarded-Encrypted: i=1; AJvYcCWqf64pFgHWLpdHZgpCIW4zje3pvnPfzoxjWNxbfX+ja/53YP/8UbtjX68aw4bagapevqH6gCO0rJEd@vger.kernel.org
X-Gm-Message-State: AOJu0YzCao+9UEKC7PiO7DtGjLDTjmdkRzHE+QJYy2gy7g8MGLoY7gs7
	lFC8BYJ9cMDW7EVi3CeSZXzlY0pDUqRg0wDiK+VbxZX/uqWWN8sM/l2JJGDVHyL0+U+E0GiXZAC
	RVPhhCfz1cHIKxfmKyij/Xdef+xCdCKa9ksIQcBO6xGDQ8WA0fqPeYUdYBS6UsCnN
X-Gm-Gg: ASbGnctKTcp1wZdhNRjCPFxZQi4HjP6Y1DPLz2sUFTD6iVwyS56m1z2xC9oWe+BJ4pq
	eQQS8bi9/MbCa/pmMygtGnTG9Dr/ZfTZwV99h7UEXSYS0Wt/5tRjngKRY76VzD4h4ratYvrt/qg
	5YoUEagrT7B36qRKmPSRGeUw6a/Qy5GMpnMyaOkAD+fRZtImydHwAdMPA5QP/2V8mEoASh+vO9w
	KdNlITm+aMmenvW69fhNx0nFDD8uhGb86rcNxSTHnaBfa64LoydrN6aJXa4+rKPi/9p5hdyt8g4
	/j6GJewTk8WJRTyOFmRBH8z+uFQEBI717bweokAUADECe+3QfD/lufOhVPEMSJVoA8+f37pgPig
	66GWdxumKvlxwm311IVq3Ecgpxx8btqWLuUpH4Sl3Hz8iou77o51HA5D6e4NWiAE0DSE1ECo76y
	Ya5Kc+bW/Ankav
X-Received: by 2002:a05:622a:987:b0:4e8:85e8:801a with SMTP id d75a77b69052e-4ed30f8737fmr49106391cf.40.1761921641992;
        Fri, 31 Oct 2025 07:40:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE2+ettvTm/rlPxr5+QDWURz0RmtxNkaZagWptKT2OOfzSE65n8XvrjFNhfMMIWI1cGq4DZQw==
X-Received: by 2002:a05:622a:987:b0:4e8:85e8:801a with SMTP id d75a77b69052e-4ed30f8737fmr49102621cf.40.1761921641100;
        Fri, 31 Oct 2025 07:40:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5941f5c27a4sm531517e87.106.2025.10.31.07.40.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 07:40:40 -0700 (PDT)
Date: Fri, 31 Oct 2025 16:40:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: hrishabh.rajput@oss.qualcomm.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 1/2] soc: qcom: smem: Register gunyah watchdog device
Message-ID: <jnm4djtfiimdj52cg6cfm2kki3munecvbq4rilmqwg6be5y2tx@kxtrthcnee33>
References: <20251031-gunyah_watchdog-v4-0-7abb1ee11315@oss.qualcomm.com>
 <20251031-gunyah_watchdog-v4-1-7abb1ee11315@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251031-gunyah_watchdog-v4-1-7abb1ee11315@oss.qualcomm.com>
X-Proofpoint-GUID: 4C7rkyIW07s9XuJaQ94YUngDNccezo54
X-Authority-Analysis: v=2.4 cv=fpjRpV4f c=1 sm=1 tr=0 ts=6904ca6b cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=kq2FUEKZF3Nr8Tfa17QA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: 4C7rkyIW07s9XuJaQ94YUngDNccezo54
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDEzMSBTYWx0ZWRfX5bzVWVdmWVA/
 BCegOKhdE3qNo6zL0dK+K3FM3PqjfwIhXGU6sqjrlNXqpX+buPki8e2NrEt15j57UdTTDwxQ4Cy
 O5zm45zGZkH2Wma1KXgdp8eXht5/aDMWWJTMudSL88q2Sh4cWB2AL85d1/rOhdMFnijbK6d9oo2
 N08f5zO93PS1g+ZRaxB2uih8eqqrZuNtsqwELx6R+0Q9nxHJFySa85FKAztkrEl0OSQNMC2s7CV
 eLcN7BSkbGwHhTmzGZAZ7g6qTAA9E3s9RK9UgFEx3A00LSsMqGiGBs7cjDuK4Y4Xlwb7PqBoGdd
 lFoZO2+9MvcrzHp3FfDXitLcyYn7nr5mdQlk5OGgTUN4bRmQTh4z84NEbIz+Qv4ebOyzDnYZCjk
 g+mhmWKcuamC8eOhQ9/ZkrRuySr/hA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_04,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310131

On Fri, Oct 31, 2025 at 10:18:13AM +0000, Hrishabh Rajput via B4 Relay wrote:
> From: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
> 
> To restrict gunyah watchdog initialization to Qualcomm platforms,
> register the watchdog device in the SMEM driver.
> 
> When Gunyah is not present or Gunyah emulates MMIO-based
> watchdog, we expect Qualcomm watchdog or ARM SBSA watchdog device to be
> present in the devicetree. If none of these device nodes are detected,
> we register the SMC-based Gunyah watchdog device.
> 
> Signed-off-by: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
> ---
>  drivers/soc/qcom/smem.c | 37 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 
> diff --git a/drivers/soc/qcom/smem.c b/drivers/soc/qcom/smem.c
> index cf425930539e..40e4749fab02 100644
> --- a/drivers/soc/qcom/smem.c
> +++ b/drivers/soc/qcom/smem.c
> @@ -1118,6 +1118,34 @@ static int qcom_smem_resolve_mem(struct qcom_smem *smem, const char *name,
>  	return 0;
>  }
>  
> +static int register_gunyah_wdt_device(void)
> +{
> +	struct platform_device *gunyah_wdt_dev;
> +	struct device_node *np;
> +
> +	/*
> +	 * When Gunyah is not present or Gunyah is emulating a memory-mapped
> +	 * watchdog, either of Qualcomm watchdog or ARM SBSA watchdog will be
> +	 * present. Skip initialization of SMC-based Gunyah watchdog if that is
> +	 * the case.
> +	 */

Should this also be limited to the platforms which had the particular
version of Gunyah?

> +	np = of_find_compatible_node(NULL, NULL, "qcom,kpss-wdt");
> +	if (np) {
> +		of_node_put(np);
> +		return 0;
> +	}
> +
> +	np = of_find_compatible_node(NULL, NULL, "arm,sbsa-gwdt");
> +	if (np) {
> +		of_node_put(np);
> +		return 0;
> +	}
> +
> +	gunyah_wdt_dev = platform_device_register_simple("gunyah-wdt", -1,
> +							 NULL, 0);
> +	return PTR_ERR_OR_ZERO(gunyah_wdt_dev);
> +}
> +
>  static int qcom_smem_probe(struct platform_device *pdev)
>  {
>  	struct smem_header *header;
> @@ -1236,11 +1264,20 @@ static int qcom_smem_probe(struct platform_device *pdev)
>  	if (IS_ERR(smem->socinfo))
>  		dev_dbg(&pdev->dev, "failed to register socinfo device\n");
>  
> +	ret = register_gunyah_wdt_device();
> +	if (ret)
> +		dev_dbg(&pdev->dev, "failed to register watchdog device\n");
> +
>  	return 0;
>  }
>  
>  static void qcom_smem_remove(struct platform_device *pdev)
>  {
> +	/*
> +	 * Gunyah watchdog is intended to be a persistent module. Hence, the
> +	 * watchdog device is not unregistered.
> +	 */
> +
>  	platform_device_unregister(__smem->socinfo);
>  
>  	hwspin_lock_free(__smem->hwlock);
> 
> -- 
> 2.43.0
> 
> 

-- 
With best wishes
Dmitry

