Return-Path: <devicetree+bounces-242677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6933BC8DCE0
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 11:37:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 53CFB4E4C0A
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 10:37:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6B1832AABD;
	Thu, 27 Nov 2025 10:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d4XWowcm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P4MjiQ15"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC8E79DA
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764239845; cv=none; b=TaIU6/N5woiKoMsVkHhnTT6qfFsKdZzzJnnkDL4gFoZyXAa0XBsrP8rtxAS9mCLX9hazA96ASC5PrAnJumrGsRSjIAtTCqdt2HlE1+x6ji3m86M5nfTiYCMQ4yuyxGOLxt12X+VhacCW4PCaNa8I50bjPeGY3Gr6Cfv1qzV/CnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764239845; c=relaxed/simple;
	bh=1y7iw0ob2e14nP2XASuQ/K/LoS5tKm3KA9jdEeMU+gQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ijucb2/iFfs590EBCHzgTAbubxziO8Cmm0T4Y/I9vUU9ESMFnMd6yU18gCEFM/Nmai+65/v2zn0+6cbqcHcMRKJkOQrd2EBKNTwpdutt/6nB26z+ViXd2Fq6NRvF4ouYRDwSXspJWHDRoLbG1Fr5bDLHnCptUNuDU9pEMSbpYB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d4XWowcm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P4MjiQ15; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AR9xQfB3840054
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:37:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1y7iw0ob2e14nP2XASuQ/K/LoS5tKm3KA9jdEeMU+gQ=; b=d4XWowcmeUdWzZVN
	ehsy2UcFDx3u/9Cj5tmh34YikcCK0ZtJCUTpWQNfjz2hywJkrdsw1HK1S7a3B4Pb
	Yx1AMaP2RfPhgC7IFmS5uSC9shugPQ0Y25VLWnSz3ZMuVmcdWIbfTIKiAd0CezpF
	x88rC27Lc3np9HCEEPWCjVYnjRZB+KMwWAuKgsbayR+AQiQb6cilxV0SsvmFsAdk
	cFL/1ka/RX+UqnlXn6DgWGAcUtY37agabvJ+8g0c8wX7cTUdh7FyBO5OAdAB/NCy
	8t9uBWxhGBOuMcfFL678W1mq62jtgHPOFPyuPv1ieWWwZuaPcYYP3Zxiz/qQbCaV
	CzfTfw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apdj09cet-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:37:20 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34566e62f16so802537a91.1
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 02:37:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764239839; x=1764844639; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1y7iw0ob2e14nP2XASuQ/K/LoS5tKm3KA9jdEeMU+gQ=;
        b=P4MjiQ15ambMSKamfr8tVsBV6qpnxgg94uy6vZJrEZ/qkIPKj8PkSTHCrQ8DpahCej
         s7IJCVZ/e0woY1LI1k9FOG995y7o6r20Bs6YjOpOaFBSxm37YzVYbcPBY6fwG8LQ0Lza
         nv3/wI7fayYjdw1KZgC5qbJt6oBl7YsbKChZYxUH451B/vIUbKG4mkOtn4ggzXjCXq5F
         W8/yWUVYPId8uyh7I8XiWJKLF8VKKfGf3dyejNIs/AZKKZEIItf5tQpHr2+xWVLjtPzl
         cnAeP1MmrVE6DIyRNGjOIpkZU3TE0EUM8pXPoMYwQQVHJKbiP8Wm5+krmLgCpL2aay8M
         mReQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764239839; x=1764844639;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1y7iw0ob2e14nP2XASuQ/K/LoS5tKm3KA9jdEeMU+gQ=;
        b=qVq0lIxkVv5h2TeHhGw09/Tssrvmpo6w6OmeG8tmJcfgKtNpIws4he6yneP4LQE+Nz
         4Ez9otLhCHQ9CYQcAf+3V4hSKv8LrqpDaVPuejou7K8J0YIs8+dnHRRA567Ae4FgzIq5
         xcNDPL1eXAxlD3UeIHLcKcODDAEmkrg11QtjQXoywo6SvOnqMCFNrGH9Kpck52Y+4XrH
         7CsT9kZW1K/0whYht/1y6Y/riwkSs0frI2l3qkLnA7zFJCPdB2x3PiiJe3TdYJu2LuRX
         DKvmcu+eCliBKwEx7nxg5iDdvlcONPpAIlehT670rG1keRwJDPr0W3cRJmJm67WzOe+o
         qb7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVsoWfw6G/pnTroZDHGyCXthJ/micgFS5KNvf/N5YAn7eRXdbZCKQb5dE82dYY8kLLATsoxfTvSPmc6@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9sg20O1awo78zqixMjGaVpFCBEKIl6orYH2mNe9HNMx6Guwcm
	0gpYB39oon4WLi4aTxfKJfjtQxFNqH/BzYJ3KwhpIctnQbfeqzJ5M0RPaLQsG8EsHT8StrNXAgS
	2k2B+Yp1kl4egEHSD5VLXpERgyJKmJD9kGJXT1Y7o/GqHjab9oufI8wh/LALr57Vj
X-Gm-Gg: ASbGncusBvAi/sEKjjBvUwfHboGMSUoQsIfC+ti/5Z8P3576kDIKdi8iUvepw14ZZ+K
	EgUh6wYzJvauR8wiG0ikNdWvmXGIvpxfc1oH0VfBi5VSzi4KmnNLGZsL4Y9Tcw0o9+4OjxNNkVG
	UXOSgshNg/8kD6NZOzSz9QykkVC0TsgME1Woycm+0Xp2A/lDi85jl2sWS+veizAKJedPQ0e2jb1
	OmeHghSTGzraF40BiyQxKW5LBhTKU3NwLXKWyiF1G15GXBRK61yGM2Nde6yjmRKa48E3u4hNehK
	K9WwXrcBIsarNScr173cfHRCmqSa/IFNcg2dyDLzzOL4t6KMfJbKkOSyTKKf/3BbF9Oa11juJC3
	Yf9aA6KUrd5co6Yu2QMNe6jCii4Xqf1K52NpwAPY486tCdSXZzunJmidx+Dz3tl1f8QjcDGZSdr
	bvmFOXfUF6QOaCbfhhw9Ce90Is9l1M
X-Received: by 2002:a17:90b:2543:b0:340:9cf1:54d0 with SMTP id 98e67ed59e1d1-34733e4ccf1mr19718167a91.1.1764239839308;
        Thu, 27 Nov 2025 02:37:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFnmdipQGlMWE4OwwHLbdcFRyy5E2ppt8YoS89aQix+KF6nHnCZS6tf6pM5xyCJxE3838KHDA==
X-Received: by 2002:a17:90b:2543:b0:340:9cf1:54d0 with SMTP id 98e67ed59e1d1-34733e4ccf1mr19718132a91.1.1764239838830;
        Thu, 27 Nov 2025 02:37:18 -0800 (PST)
Received: from [10.190.200.209] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3477b74b8f1sm1472835a91.14.2025.11.27.02.37.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 02:37:18 -0800 (PST)
Message-ID: <19ebab89-e0f2-425a-a95d-01637f324170@oss.qualcomm.com>
Date: Thu, 27 Nov 2025 16:07:14 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] soc: qcom: llcc-qcom: Add support for Glymur
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>,
        Jonathan Cameron <jonathan.cameron@huawei.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251125-glymur_llcc_enablement-v2-0-75a10be51d74@oss.qualcomm.com>
 <20251125-glymur_llcc_enablement-v2-3-75a10be51d74@oss.qualcomm.com>
 <80c26f33-aaee-44f2-ab7f-767467423396@oss.qualcomm.com>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <80c26f33-aaee-44f2-ab7f-767467423396@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI3MDA3NyBTYWx0ZWRfXwU0tOP6wHuK5
 hMfVzVgvit10IZIB11u/vXIK2CmbXEoVtMherCsvi+XqHIiGDj4CQNVEF0e1ghXuR2cJ4jiEKcZ
 zwVrZMEtkxDF5GPS2V+iAQ9vMMnY3G3kd30JzI33TdJ17ehCXPqJTEqQ2LaHvOtn36jMkhGJ/ht
 qp41UYuzmEyM2UsWKQD9kJeXOyAKvFRbCSSwRJcXTtWhEFgZ/GzmSbR2b6LSGyMF3zzo7JQj2M4
 1KVhob+t6n4oL0MpYGbcuacETiTPcfXTSBysZ6l4rDlizyolauyM+ww6DaN73n+1oTnm+GOOfCH
 vzoKn4itdYKQsncDaLxARGtAFKWNQ9q3Cg+gunnK61U5lVFHEr3qBwF+SlWwPZ8oJqN3t4RWQCe
 qzM+CEyD6sSfjrgHWV+gVwU74Jyj8g==
X-Proofpoint-GUID: lMp77bo7qR_e5pIWwQLMCuUagmAYIYN7
X-Proofpoint-ORIG-GUID: lMp77bo7qR_e5pIWwQLMCuUagmAYIYN7
X-Authority-Analysis: v=2.4 cv=PJoCOPqC c=1 sm=1 tr=0 ts=692829e0 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=XIfWN14xvu2QelebLYUA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 clxscore=1015 adultscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511270077

On 11/27/2025 3:52 PM, Konrad Dybcio wrote:
> On 11/25/25 10:16 AM, Pankaj Patil wrote:
>> Add system cache table(SCT) and configs for Glymur SoC
>> Updated the list of usecase id's to enable additional clients for Glymur
>>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>> ---
> What happened to my tag? :(
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> Konrad
The commit was updated since I squashed the patch for enabling additional
usecase id's.
That makes the tag obsolete?

