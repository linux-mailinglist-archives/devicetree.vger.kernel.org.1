Return-Path: <devicetree+bounces-244338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF60CA3D05
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 14:31:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F3492300CD46
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 13:30:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90BD0340286;
	Thu,  4 Dec 2025 13:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QiQ/TYI6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ibMVG4Wo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1848B33F38F
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 13:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764855046; cv=none; b=eW812G3X1HvR4fvU6x5AdZEvDXba8m6DK0D3RUZD3qLqqO+wEC2casO21zbwM/WI24++lF8NqnGO8W5VK9CbyuYHMdk03cxT3p8u4rwbwp54/JnNUe22PsJpWGF8Z7UE54+3y5olYjfov9e+tWDZn4+xM7+sCffIX40ng/PtgOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764855046; c=relaxed/simple;
	bh=b8KO40QA93SeoslswGS4/hKu/NZi0pIh3pW0zp4P6zc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EH9UyYdvX9MjR2McnUREKhX/CFe3u41DkmQpHkGOtawG906AJyriCzAoiREb8PSx3ZwvgX+npqkj6CliMXWHxyGZ/YSx6rOmjAWaTK2nwjP3fdphwT571TPl/8laZcZClA+KDQ4Umx93NEX7/ciWzBhbaTKFkSaN1Mp3AlgWkgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QiQ/TYI6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ibMVG4Wo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4AEqqp1130912
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 13:30:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	buqTDMgxwcJdU2rKqNQeB9xrQ21rgt9zzUq0zRH7NEw=; b=QiQ/TYI6APScS+NJ
	niD/QTuZM9Dopbgfnswavv00ciOyPZMwn1dj6Nl4L5whp4ls1c3Z+jVp7Lk/abd9
	89bn90gp3fulPEPZ6kZ9A/9UT81Lj7/8/m9sSc3WwONjqLTWM71UjC7kSI6cPxx1
	EIriU9m7leaaWO/CuMj2FP/gQ7zf94YBCfKKSaU9WE4knki37X5Rdki2fRz7AJxj
	PTY7R9A8T1Q27B5Vn55IzcepLKsYZEPhG5UpPCItC1rTu1Qe8AzcdGb72IofBaWt
	tFQ5uMNkYEnIgSfmQHc0f1/sg43/flis4NFCMJotPGALrPbHUcl9CbUXSL9jf6ZX
	qpSA6g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au1f01tn4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 13:30:43 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b23452ec2bso4923785a.1
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 05:30:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764855043; x=1765459843; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=buqTDMgxwcJdU2rKqNQeB9xrQ21rgt9zzUq0zRH7NEw=;
        b=ibMVG4WowVD59NMkS61gQKfXir+l9N60H3NwudrWlj4QrcIbYczLW6z2ZdsjSyUpiF
         SHFAYDQUfjSNvhrPFWUJSbuQYIMehovFpFYm74kGEfZejb9siahX/QAkk//Y57s1+qix
         ZIrvr9q405D0XMYU16rcqngfuV+K6K9yjKHOmG+4Zc6huXbWF98tdAW5G8wL1u4ZCGDf
         9gQV4Jk19/lAT2YiFPFTRMdu7QrRtthgsUDUk1LiZsgi0gUF2RcueH3Rh9gY0So1YuIR
         OE4MfjowjN52GMr6/PcCmzyiHO6nnmUpPIKtOkU9yu4KE9kGDFEbvZ3d8wwqsRvAuYUf
         8VBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764855043; x=1765459843;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=buqTDMgxwcJdU2rKqNQeB9xrQ21rgt9zzUq0zRH7NEw=;
        b=E9L4RAaXKEI/gtKVBmpWImxFMrmzfdJvc7GgIHa5ZFQfcoMbCtR/xlTo8xmbCRoZsO
         4Fzt9kAVEFlyDoMJsrvJHIzU2liN+J3LhMxDyBjWW5fiywHIy9pryhO7nw3q5Z4A+wxO
         9IsiQNW+plX4mnhh9iJoWn8eGRmq0xYZcVaijMPZXvHvqOpDHHL1FujyjNR87gr2/EGz
         T78b9AWDwxUNvAJRuGG/CHKaEwK/BzV2cf1n5xI+xqAOZuiB3YqV7XZhwtDFCdNY5Ue/
         xU341vO+sfBpW5N1WAHSyFsSLRrpkZ0qJssCLxsECVSQgJhd/lVKrRMQ9QaGkrCWjhq0
         Ligw==
X-Forwarded-Encrypted: i=1; AJvYcCUhKMdz4j/M3MMMHdDKGXcJI3UiXzq6zc4GZeJ30WYBqrvAdkwKxyoue0lG+jR+89vKcCtv5r9IUpdb@vger.kernel.org
X-Gm-Message-State: AOJu0YyvnAipkEJx8Et37yq/lJCBXLrFrLS01YYuPa/2THumBGNZ4xEE
	Z0FDNcciPuNkkrHytryPr+3LChlWc5Gg4bEiZcKB2NSIi5QXJcY4MhUfOM284SFPiz+JB1EQcye
	Ev5S655qvljJHDlZ1sJW1Xwi6UBgafOIFEyxTwkhIExX9yLyE81mjVhSBNppCbvJ3
X-Gm-Gg: ASbGncvqGoAzNkTrOmZsP3dzSbP44SiTTRADYnfAcxkiAapCIbO4Dj747utuKlN9IW/
	wawk8pBTs17jr0V9BZfKQSkqJ+m/WAWJ/48jC6Km4x9cWamjJ2mEB79C6dr0BiJeP8pNUW+eWOQ
	vK0yP90GXWjWzGFkXBx7cZpoxf13j4nFJVQ7iYL24oDGAJxFzBu4VOcH089y6C8lRnTKg434B4o
	dQ5d1mw6ub462ma/8nR876PPSnFgHXVsnjWSUCR647q2A2OTlaTGI+WCPl3NPJJgMvcPnch9dhK
	XgBRc2xzDcyWJbRPAgut6Rhw8fDAmO60Xt+RfP5ZMpdxdD8OLe3/z9VZLRIaE6jjsznnJKgMM9q
	PbJkk6rcWwMv+pOLNFPTVLbX7xu5WZx3669xe8zGNNnjrw2LnbAmIArT5+ESgHeULdw==
X-Received: by 2002:a05:620a:290a:b0:8b2:a3a9:f74b with SMTP id af79cd13be357-8b5f8c1fa04mr559433885a.5.1764855043056;
        Thu, 04 Dec 2025 05:30:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFQbVNCrVse/bjoDzfy1Fu+IxiNUu8UAB9MickHfd23NqRepjSCUo8+osnt4fnvQ4yhGxnlMA==
X-Received: by 2002:a05:620a:290a:b0:8b2:a3a9:f74b with SMTP id af79cd13be357-8b5f8c1fa04mr559426485a.5.1764855042388;
        Thu, 04 Dec 2025 05:30:42 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f4975dcesm129404466b.34.2025.12.04.05.30.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 05:30:41 -0800 (PST)
Message-ID: <7b4bcb6e-fbb1-45f6-921e-dd1340a8cece@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 14:30:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/6] drm/msm/a6xx: Retrieve gmu core range by index
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Dan Carpenter <dan.carpenter@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-qcs615-spin-2-v3-1-9f4d4c87f51d@oss.qualcomm.com>
 <9cc55934-6980-4673-8501-2d1efe2f816e@oss.qualcomm.com>
 <936b6a48-a5e5-4efb-be7c-215ac670677d@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <936b6a48-a5e5-4efb-be7c-215ac670677d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: se1VwtQaGAsNSaajdng8K87b5cLD5y6Q
X-Proofpoint-ORIG-GUID: se1VwtQaGAsNSaajdng8K87b5cLD5y6Q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDEwOSBTYWx0ZWRfX1B2atXgpTWSk
 Zc53atV8/AoVDQZaCLiP5mekuao8l6L7ZZMBdRYK8rckry8JlRjrLv2W+ASRePTFP597z844aAY
 bccnM4J5lyLIhMmzpzZ2eVMOCydvL7Jsq49L4OPxuKxMLBQiTTijQnTm68IDIQYe7GBXFPZaPYV
 TVCq/jSMTNrozs8j+Nz2UsCAtU9SyUKYwtRORA1YJAMJ11Ly2MGHRh1qXIvR5yYnvVQ22D4uuLx
 KEEuzxWwL6bJX50YQdQolEWwQ39x1H7ppIQdEt3NugbGb++MKww/PP4ZKd01Cqg6TQQcIgVFF0l
 TtY8Z9HR0/vUuS/81PhUXwhCiH1fAH/NlzrY9E7CC8WQsjmBu3+zk5/CgwUarIytIHDXiNkclWk
 XospXdeJGElqNTpWF0fZzmNVFQbnlg==
X-Authority-Analysis: v=2.4 cv=Scz6t/Ru c=1 sm=1 tr=0 ts=69318d03 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=OZq_gVfAIbbHJCx-Pr4A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_03,2025-12-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040109

On 12/4/25 2:10 PM, Akhil P Oommen wrote:
> On 11/22/2025 7:08 PM, Konrad Dybcio wrote:
>> On 11/21/25 10:52 PM, Akhil P Oommen wrote:
>>> Some GPUs like A612 doesn't use a named register range resource. This
>>> is because the reg-name property is discouraged when there is just a
>>> single resource.
>>>
>>> To address this, retrieve the 'gmu' register range by its index. It is
>>> always guaranteed to be at index 0.
>>>
>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>>> ---
>>>  drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 14 ++++++--------
>>>  1 file changed, 6 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>>> index 5903cd891b49..9662201cd2e9 100644
>>> --- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
>>> @@ -2029,21 +2029,19 @@ static int cxpd_notifier_cb(struct notifier_block *nb,
>>>  	return 0;
>>>  }
>>>  
>>> -static void __iomem *a6xx_gmu_get_mmio(struct platform_device *pdev,
>>> -		const char *name, resource_size_t *start)
>>> +static void __iomem *a6xx_gmu_get_mmio(struct platform_device *pdev, resource_size_t *start)
>>
>> Can we drop this and just use devm_platform_get_and_ioremap_resource()?
> 
> This API seems to lock the io region and fails with -EBUSY if the region
> is already in use. I am worried it may regress other chipsets. So, I
> dropped this idea at the last moment.

Is there any specific platform where this would be an issue?

Konrad

