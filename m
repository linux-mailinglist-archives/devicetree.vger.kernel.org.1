Return-Path: <devicetree+bounces-238134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A6FC57ACD
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 14:33:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93E014A1FCE
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 13:12:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A0F1352947;
	Thu, 13 Nov 2025 13:10:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e6t/0V3j";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VsvyTmhm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 804C0352942
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 13:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763039444; cv=none; b=MCG/HyZO5wPrKkGQegX3T2e3WTaSl2vPMVvL9mKZeBalhZgvcQJQMZ5Acp0tIPJf5wX5pV2SpZkKrkaND+kyl097VIXI7YcEmp9SMHYZi+pxAXqj3BQyIsiKSdeEY6aU9ZornnISK/BWBWoAhaS3Y1ZJxSRSh5BGnA1Fbt+TmYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763039444; c=relaxed/simple;
	bh=8kfWf5AV71bNUbNyq1hAQQ+knwZPGvXuTtRDrcAWJM8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rsLvVFkH08vesbTAmnljZHUZLi8oFDlspNtatO4RZvs3pVYu95zU9HSmReKe3ckzCy3zoVOUvSq4MGumFjoOtYdRwAzVydlSJbxQEfQ4Uw/fCL/qlydq2tL5Dnp9RKAajL/NK55+500HdLs9HwauPlyVP2IBQxl/vujYRfOwgEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e6t/0V3j; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VsvyTmhm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ADCrTPw3443198
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 13:10:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CZXY1ifhV8YPSwfeBFCqHJXWN9yVpsAT+ynQZq3WMfE=; b=e6t/0V3jRvOdUIEy
	YRTECo2K6P5WJYru25zm1auvl0mq3RCtZe/UIkecg0hG16qNXrdYsyIY9LZXIhhF
	vuxlvBXs0nZspcbsY/gitVt1xqTuCwzYsB7x6qdYII5p9fHL1LxRn+CSLIGfSXHr
	OOZB4RnyvDTNlxJD5zL0n1RV0NURlFwidrpfiWcPfRh0IEQOae6/u+gNFU/LzFnL
	Nng3Y5QtIikk08st4WV2moVIFE3kPUnp7SMIM73FuvwoDoVkFn1Xok6QB360OOex
	iT7gID2V3UWRd2FoEAxAbgWxHKfXaJ9vLCUs8vlNMj/Ive2zE1miA7cd9U0jnWdo
	0OPRsQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ad9789cmn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 13:10:40 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edace8bc76so2822531cf.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 05:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763039440; x=1763644240; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CZXY1ifhV8YPSwfeBFCqHJXWN9yVpsAT+ynQZq3WMfE=;
        b=VsvyTmhmnMmzIJfhgdrdkwMuZ0HG8bZOSOPbuAgx/Leb7klKGcY+hdh7v5VToGhJut
         MA4oxInxy0o78E5MD7bWNT2JFaPCYEq+P556dAfbAg5FwyTJV2yWgdTCntZxwEDF3jBd
         gf7iSkq8TBcb72pySPcCuAjHKAFnF/AWkGNqWUcx8x5P/GspqI7pscdkdTs2Wcfuygmg
         7KBNNPbIcyf/AC60cjQgEQUDj9c7SxK8WD/79oRE6Z2DjWHQaHm/deFLh9u7wFmRXMSk
         SAFsQaDq6QlBbW3R/pFN4qjwXHhrOi4v+XIb3FSwZ2skGlaqdn6HwIA4x8UsyaS2O+b6
         V6VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763039440; x=1763644240;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CZXY1ifhV8YPSwfeBFCqHJXWN9yVpsAT+ynQZq3WMfE=;
        b=tuQIrwtWLikqwM1j2ACzw31SlM2qK3JSy6ikT+HNJaDPZdHvJxWYHO7lAjIMBAjcaC
         0/iujbUEKYSBgV5McUKv6598Bo9E6Zxv4xduPbmPkPhPmdYTAdb6eqOlRtoPrkCTVizm
         5nunyqeNfaS+zkz9WfchwzxMQ9iLpjXwXj+QUnEZdtg9liIH4Gds4zlFLopXBgIDDDVj
         5qtANffbcBuQYVgIvqCr96FEgHpxmYJHRfeojXyXBqmhYiyabSBWiT2YlxcPq9p8B9Fq
         NPSRqnUb5LzrjARU23orPMUUNkc4+P3gt0wXL9liLOLMxuEz3zi6vkl58M1LqPFbRCZD
         Y5xg==
X-Forwarded-Encrypted: i=1; AJvYcCWLqz+ngupg8FAQexkH5PXlOfOPqGLM0bpgIVkORpBmpadRR1CSudm+A/OBR8UPsZ9edvyEFa2wDz6G@vger.kernel.org
X-Gm-Message-State: AOJu0YwURjh1eiyoWY/iWHgTb0pOEdSAYMHPSgrX5O7ZcvLk6Q3kgXYk
	Y9gu1AZ77nYOAdgwmHl9Ch54gakpUt2NwsC8tdUhQi3JE6QNIJauHpwDJzBHmSQ4pERSuPYviQe
	hFMu+R6iLops2DRvnt01jKFbcXnfcvHvUUyt7iFBgoh4sj6upM/ABPqezR8sEnBPA
X-Gm-Gg: ASbGnct78bcgp5r1npZWzdZ1b/XRxc7bw4Y3iVs2Prg0OHN556N2wPTM3kRkf0vU/IN
	RBfnEVybnz2Ew5YFxzFGYQ8UGH+JHdMVoXUTWzZMCjgJAXHJh035jMGByFoSP/0kKjDt7F3A6Qu
	9Iik7hfYUSPkWFjF2YnkWc0Tr6cSZte9/V4qInYb+IgJMAo37etP1Wv9SaqOoabPcxvx+7N7v00
	l3/hGDKCF4SEdKTj62tib+gtiGle3kz514upVtH+KFzw0IUbjjHgxVxK2SDEzdxRzkbAKP1rzpw
	UCRNlezOJRPnFfsxf7Vo0sXWXETi922bvZSCQd2pzXrwlFWrB45KItb8hZ+Gc5T+XqpXn5QqcuM
	oZ0d5OY2C4JxMrhJPkVTsqYQnqoyK1SmG/A4ijonO7RFJdMy/TMvV49dh
X-Received: by 2002:a05:622a:1316:b0:4ed:b409:ca27 with SMTP id d75a77b69052e-4eddbd65605mr59626061cf.10.1763039440298;
        Thu, 13 Nov 2025 05:10:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IESawNQFUeHeMbh5CviAuecEDsSSa2Db0tmz9JN9G7A61f/DAwZOVKGgRG2h1xYO5nZjtsMBA==
X-Received: by 2002:a05:622a:1316:b0:4ed:b409:ca27 with SMTP id d75a77b69052e-4eddbd65605mr59625541cf.10.1763039439747;
        Thu, 13 Nov 2025 05:10:39 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a4b28bbsm1396845a12.28.2025.11.13.05.10.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 05:10:39 -0800 (PST)
Message-ID: <f7e204ac-28b6-46a7-903d-30b7f31dff8b@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 14:10:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/21] drm/msm/a8xx: Add support for A8x GMU
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse
 <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Connor Abbott <cwabbott0@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org
References: <20251110-kaana-gpu-support-v2-0-bef18acd5e94@oss.qualcomm.com>
 <20251110-kaana-gpu-support-v2-10-bef18acd5e94@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251110-kaana-gpu-support-v2-10-bef18acd5e94@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDA5OSBTYWx0ZWRfX6kGz0OPPjX12
 B2j+4XBQbGVfPfVlCFbLwJgGYnWqETdd6dGlrfdsQy2DhFy8mb765/SDvbMdZihNVLx/mu+jR2o
 9cdIhvaL54r8OfuJetulOA8OYjJF8MlxQXYpRhYzzkj64MMivzgwtnszVcQ0ljbMjzyO4IWFXW0
 lt5xzRcoe1qdtqbik96Bb912d6gohKYZmD7bEb9Iwnm8Q1Xa5gYHqrlS1CfBaRFId/6zkIG2+7+
 f00/U2EEKM8PYPQcSAwD1XLW7F6Ak/lK67r/PrNq9FJ6QZpApplDyghfsOTyt/AJ5u9UjqITSLj
 Bg0l954Z6oP//8jgrAAmAaarujaSKh3EQgx4LaKeld5eXQzoNJoI8FRLewcxTk8doYdkh6E7lnX
 uJvNDMZDWg3BAltQzB3sAXs0DWDeCg==
X-Proofpoint-ORIG-GUID: wIy-st9cjoiOQ1oy-1F1br1REGuuRbZp
X-Proofpoint-GUID: wIy-st9cjoiOQ1oy-1F1br1REGuuRbZp
X-Authority-Analysis: v=2.4 cv=PIYCOPqC c=1 sm=1 tr=0 ts=6915d8d0 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=XMd9o5LtjS6KuIBsTZQA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_02,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130099

On 11/10/25 5:37 PM, Akhil P Oommen wrote:
> A8x GMU configuration are very similar to A7x. Unfortunately, there are
> minor shuffling in the register offsets in the GMU CX register region.
> Apart from that, there is a new HFI message support to pass table like
> data. This patch adds support for  perf table using this new HFI
> message.
> 
> Apart from that, there is a minor rework in a6xx_gmu_rpmh_arc_votes_init()
> to simplify handling of MxG to MxA fallback along with the additional
> calculations for the new dependency vote.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

[...]

>  	/* Make sure there are no outstanding RPMh votes */
> @@ -990,7 +1022,8 @@ static void a6xx_gmu_rpmh_off(struct a6xx_gmu *gmu)
>  	gmu_poll_timeout_rscc(gmu, REG_A6XX_RSCC_TCS3_DRV0_STATUS + seqmem_off,
>  		val, (val & 1), 100, 1000);
>  
> -	if (!adreno_is_a740_family(adreno_gpu))
> +
> +	if (!adreno_is_a740_family(adreno_gpu) && !adreno_is_a8xx(adreno_gpu))

stray double \n above

[...]

>  	/* Check to see if we are doing a cold or warm boot */
> -	if (adreno_is_a7xx(adreno_gpu)) {
> +	if (adreno_is_a7xx(adreno_gpu) || adreno_is_a8xx(adreno_gpu)) {
>  		status = a6xx_llc_read(a6xx_gpu, REG_A7XX_CX_MISC_TCM_RET_CNTL) == 1 ?

You skipped writing to this register above - can we count on it
always being in the right state?

Do we need to map VRB, or is that a topic for the future?

Konrad

