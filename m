Return-Path: <devicetree+bounces-125606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3549DEB57
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 17:56:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C4A30B20FE9
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 16:56:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1B9919884C;
	Fri, 29 Nov 2024 16:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SRjC66XG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1F6AD23
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 16:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732899380; cv=none; b=LxKU+Oh3O2xs8i5inocHmN+inndWV2q2S7CjkoVgo1Q9FhhtO55NLmqTBMeTuMt0nGPZ7IHRehqHUAMaWdDsIXRQZlXyD54BU23Pi1+e1cYRyUvWxbS8z9Vdf8GMYbJZvO+qNOPjW52jHgCkEpL8UQKakNN73lM1yGumRvpjyFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732899380; c=relaxed/simple;
	bh=lQwbTwapAcxU9HUYx7ZhzBw2LZBa1rj3PgCAZS97aqM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FOy+zyUVkv4csHKpusDSyvLkj3J9MyTidsYlinKmULHy+3snpI7NN2m5TdF6224Gx9oG46YbJ2WvZ/gEQcp1keycf+D08KQQacszen1voxKpuS3tuT97BfpULfNrHNGIQrrIv9L5D+ziVDJtdZjaWThPTp2d04ucsDRCfF10W4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SRjC66XG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AT83nca004319
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 16:56:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9N9+0StuwjFo78qzxGpA7gT4M9KWRW0S+SLyWV8Ydm4=; b=SRjC66XG6ukxUnql
	QAhvEXXLmYdoqEywLif+5a3pD/fEzyeJuaE0KBFTyGuG1X+ROPeAHW7006tzhx1l
	f9udFt63+k7gOJuAr+Mc+zVUSZ5f7NBfzvExm443ilGKpTkSSu5TN8LIpnPYZ6O1
	osmCx1REcNLc9/9SBWPmRVHX6kDBmL/zXwY1HMimUH4Qc7vWmGcsA9cYqrMH7dZa
	TbYxQN9uEe479CJDCsHoWQtAU4/t2f8V/LOJ70kMhqyjlKHMzIhAolRiTrXwibC2
	9UKh85kPXc/1SwY7hg49nqJDvgzXwmHTulsifK4301kz1u7eKafttQGiiyPIOk1G
	H0dyRg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4379s6s9c1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 16:56:16 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4667cab5e1bso3164591cf.3
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 08:56:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732899373; x=1733504173;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9N9+0StuwjFo78qzxGpA7gT4M9KWRW0S+SLyWV8Ydm4=;
        b=k+fwx3EFgVN6fh2jinorsiiImd+mPPaj53s/QDt2z24i+qTdAMhWtRGSAmXdnTG+Zu
         BI4Zj27CUrNsa/zkNBztRD9UBtmzW1cGw5qNApqHOxQUoHqzIHXUT/6mEWO+jnrA4+jp
         2UOB2KfcAUUfljYr5ZaKYvEY82tTRpsQ6Puu61BHY8oXnTEMcPsp+Fr3KSEgrWQN9366
         oabxGbrPTA0y3BoKmzJJ7G5sXq3OtWBF8OmPhBucqxWamLHZdt0DG8/KT5BfZyDiUuQS
         00CysIX5nSKFJhyXdhb4kW7dKmK5MEt1keSFefuqSa+GJ4xIc1UVuI6Bv8DWChx/Wkih
         epBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLMqWlB3BA2tRB6hz8CcPe+xUveGTl1m6tVraP83RVlzvTr66ITQXSA5OBtGEhvl3pt5CCNntFXq5F@vger.kernel.org
X-Gm-Message-State: AOJu0YzgzzN+wjLRREg2v902AQRXUwrt3Fc4WhAkHyKB020anoDKLzsP
	1m7o/oVz92zhCunXE3WhquF3Pmg8iI76gk/e9O3CiZ5VTNlc+Im01evqF8O5ZZiZlgXmKNjbIaY
	qTixneleyb3uUs3yLgJoubZxMqvTIp1HTmVds8766JXiReDo/FoiQRi45S5J2
X-Gm-Gg: ASbGncsuI84lyOxx88ZbAad7Sd2UD8tcAGyFG6eZMy7oCBGtjMcx0cSC+Kq8gdctMvI
	58Xli0LpX863eCvQoHn3sRYytbGNfzG8s+eIL3U7OiWPu3uS+86Y+YP6mRRY49UUi5MjmqSD8tP
	RX9BNt58OTeUxTJbgAJr9ahcFvvCdN33JRIgy1ujkBeGR+CpzN0QWjqGONvV23wsBoB3k/mTNZy
	yv1mxVLW40ZNydB2OBLPkVmXx/37p9h7q0fpGaeaLWynp8f7/BAIifarsxe6btsRd/KQTT2p7uf
	jt/B7wcTwRzh0NcRDmJw116E9GJM+bY=
X-Received: by 2002:a05:622a:389:b0:462:fb65:cbb5 with SMTP id d75a77b69052e-466b36886b8mr76651361cf.16.1732899372940;
        Fri, 29 Nov 2024 08:56:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGVQSLO78wLDzRLA3VpDJ6fBlRPS9lgHqu+R15VZlArJvaDZj5w/JO/kqnnSs0mQp12UhVnIQ==
X-Received: by 2002:a05:622a:389:b0:462:fb65:cbb5 with SMTP id d75a77b69052e-466b36886b8mr76651111cf.16.1732899372416;
        Fri, 29 Nov 2024 08:56:12 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5998e64c4sm190708566b.97.2024.11.29.08.56.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Nov 2024 08:56:11 -0800 (PST)
Message-ID: <00941d91-7366-4836-9d3a-7e505528a4e8@oss.qualcomm.com>
Date: Fri, 29 Nov 2024 17:56:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/7] drm/msm: adreno: dynamically generate GMU bw table
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20241128-topic-sm8x50-gpu-bw-vote-v3-0-81d60c10fb73@linaro.org>
 <20241128-topic-sm8x50-gpu-bw-vote-v3-3-81d60c10fb73@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241128-topic-sm8x50-gpu-bw-vote-v3-3-81d60c10fb73@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 8tWW4QjY6o2XMnE6juAvMzaJTN8KJtW8
X-Proofpoint-GUID: 8tWW4QjY6o2XMnE6juAvMzaJTN8KJtW8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 phishscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 clxscore=1015
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2411290137

On 28.11.2024 11:25 AM, Neil Armstrong wrote:
> The Adreno GPU Management Unit (GMU) can also scale the ddr
> bandwidth along the frequency and power domain level, but for
> now we statically fill the bw_table with values from the
> downstream driver.
> 
> Only the first entry is used, which is a disable vote, so we
> currently rely on scaling via the linux interconnect paths.
> 
> Let's dynamically generate the bw_table with the vote values
> previously calculated from the OPPs.
> 
> Those entried will then be used by the GMU when passing the

entries

> appropriate bandwidth level while voting for a gpu frequency.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

[...]

>  drivers/gpu/drm/msm/adreno/a6xx_hfi.c | 39 ++++++++++++++++++++++++++++++++---
>  1 file changed, 36 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_hfi.c b/drivers/gpu/drm/msm/adreno/a6xx_hfi.c
> index cb8844ed46b29c4569d05eb7a24f7b27e173190f..fe1946650425b749bad483dad1e630bc8be83abc 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_hfi.c
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_hfi.c
> @@ -621,6 +621,35 @@ static void a740_build_bw_table(struct a6xx_hfi_msg_bw_table *msg)
>  	msg->cnoc_cmds_data[1][0] = 0x60000001;
>  }
>  
> +static void a740_generate_bw_table(const struct a6xx_info *info, struct a6xx_gmu *gmu,
> +				   struct a6xx_hfi_msg_bw_table *msg)

This should work for all targets

> +{
> +	unsigned int i, j;
> +
> +	msg->ddr_wait_bitmask = 0x7;

GENMASK; also should be generated based on BCM data dynamically, there's
logic for it in bcm-voter.c : tcs_list_gen()

> +
> +	for (i = 0; i < GMU_MAX_BCMS; i++) {
> +		if (!info->bcms[i].name)
> +			break;
> +		msg->ddr_cmds_addrs[i] = cmd_db_read_addr(info->bcms[i].name);

A7xx share a common list of BCMs, the buswidth may differ per soc and it's
something already stored in ICC drivers

> +	}
> +	msg->ddr_cmds_num = i;
> +
> +	for (i = 0; i < gmu->nr_gpu_bws; ++i)
> +		for (j = 0; j < msg->ddr_cmds_num; j++)
> +			msg->ddr_cmds_data[i][j] = gmu->gpu_ib_votes[i][j];
> +	msg->bw_level_num = gmu->nr_gpu_bws;
> +
> +	/* TODO also generate CNOC commands */

We only do on/off (0/100 units - kbps?), it seems

> +
> +	msg->cnoc_cmds_num = 1;
> +	msg->cnoc_wait_bitmask = 0x1;
> +
> +	msg->cnoc_cmds_addrs[0] = cmd_db_read_addr("CN0");
> +	msg->cnoc_cmds_data[0][0] = 0x40000000;
> +	msg->cnoc_cmds_data[1][0] = 0x60000001;
> +}
> +
>  static void a6xx_build_bw_table(struct a6xx_hfi_msg_bw_table *msg)
>  {
>  	/* Send a single "off" entry since the 630 GMU doesn't do bus scaling */
> @@ -664,6 +693,7 @@ static int a6xx_hfi_send_bw_table(struct a6xx_gmu *gmu)
>  	struct a6xx_hfi_msg_bw_table *msg;
>  	struct a6xx_gpu *a6xx_gpu = container_of(gmu, struct a6xx_gpu, gmu);
>  	struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
> +	const struct a6xx_info *info = adreno_gpu->info->a6xx;
>  
>  	if (gmu->bw_table)
>  		goto send;
> @@ -690,9 +720,12 @@ static int a6xx_hfi_send_bw_table(struct a6xx_gmu *gmu)
>  		a690_build_bw_table(msg);
>  	else if (adreno_is_a730(adreno_gpu))
>  		a730_build_bw_table(msg);
> -	else if (adreno_is_a740_family(adreno_gpu))
> -		a740_build_bw_table(msg);
> -	else
> +	else if (adreno_is_a740_family(adreno_gpu)) {
> +		if (info->bcms && gmu->nr_gpu_bws > 1)
> +			a740_generate_bw_table(info, gmu, msg);

This if should come before the hardcoded if-else chain, as it
applies to all platforms

Konrad

