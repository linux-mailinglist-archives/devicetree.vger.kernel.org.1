Return-Path: <devicetree+bounces-200847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C43CB16463
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 18:16:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84F7A5A587A
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 16:13:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CCB02DEA8A;
	Wed, 30 Jul 2025 16:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hWdheP60"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B2F72DEA7D
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 16:10:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753891819; cv=none; b=U57CDzCgzSaIqzJPrepApqSCvQJPWJEYERdbRQHKk56OdSBrvK019j6LQY0d9LhWbTa74jbatVdc7AijAS43lEefhGtt27adeGozHE/+4b5C0jwlLVFlOgdL1RYLvF9KVdvUa7HTRYQaWkyWOxit/3rs7/fAchQw7Xq8Lp6Mglg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753891819; c=relaxed/simple;
	bh=AQ6vuDxhEytlekZaYlH8XfS4ZO3JTfZECFeATrSwhLQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IGFGabi0GnT+fjuv2WXJlJ6CadLsULS6mZa7ns8ysGCLRQWqAvEslJCQqrxcfCXIYCiHfRAVWjgYroLwQOztD3ysyG6dmjvDmxznd5L/JvEWxFE0MqeRrXSEtLajD/thiO0HdpONrtZkm6TjgJfYFfvoWGTByHqZBLyUM8bNwX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hWdheP60; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56UCbAZA006487
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 16:10:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tIHRX0L2loDM3GRbyCm/tSaU7Q+F+UpeXTABbm/Giv8=; b=hWdheP60guVymOht
	8iShteoXLTmdJa8ln29N8pPLihRsAJphbTJ/nwWoFJxWtYt0RAK89NkDMRuIZn2m
	mIXG37LYpBEMFRxsqYsqVinHJVGDWHIekGqXlaLggE5jjpz9OsrrBSZWswTE03dq
	FSnkrnpWMWnDEZ0E2JdA21D3nTJlS8/p6stJUkbhh4Q/zjFbA6JaQuvf7eAdN5rB
	NaBsl1ZhQUanyg97QEO0DF4Qwz8qdjzvA6NMxKDfg1VqWxSACIVn+eSVOYX2n7M6
	LkgAhN/qil3GZycj1qLJ5z6UXVKPjucjwljpBDRRrJRiRcYSCVHKrIRzArKGh/ep
	UCQJ5A==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 485v1xhvqd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 16:10:16 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-23fc5b1c983so13309225ad.0
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 09:10:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753891816; x=1754496616;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tIHRX0L2loDM3GRbyCm/tSaU7Q+F+UpeXTABbm/Giv8=;
        b=GIgT8Z9Iek9mi9HI9K2pcP3YyeD9wjuNI4A4mccp0vNGVd2qwcwoywMQ5NeqAJBfFl
         WT1iaKfbvcLHtzEIi/gU2Cl6gQLj02adydXpjYfywI44UvIYPxEjASycPuaVFO9hLzFs
         iwTzl69C6rvZCIQ1tucqn4yL1S6hXW7K+lBS96A78rTPkAaicy27MRYAt0NnS6920Cq/
         B0RhvYdcCj2DbXstGbAcoJny90PuIMPP09RyPBgDcJKuWOE/DoCMntFXKpeQGbvF9YCR
         lX8QK+LgfsgUGCZWEnNKPNtDkOr1/njG/zv7E9jfHeYWXwfZkPXO9u+ZGCz4Jatm6SkP
         SJiw==
X-Forwarded-Encrypted: i=1; AJvYcCX1rAoZHizCTMswGNPoAHk8mruMEuTEZCIqLmotjJ9imZ/h7LBiRevcmaqKvHcNmzGYMz3kvU5FguKy@vger.kernel.org
X-Gm-Message-State: AOJu0YzUbBtr296gLV0owdYJiRdXEYVUOK1D+AXzIVeGtfVY+SEFYV0N
	kMY6u7qG203uLKtNG4UY3T59sboPbp1DrekIwkw1D9hJbTLRRHZZp6E/ccvBd6lig2a19IZmJ6a
	VCTNNrO0EbvlX24zfez4c9c+lrv5zNrWpk+mu/lGXtCYoNrka7VjIXk2ot5m5l0BF
X-Gm-Gg: ASbGncvg8d4iqrDMRItEM/Q4W7zHGzh6dUT0z00y4GGT5ZIN/zY+Ku5QxuKuP2jjcUD
	fI8PFy11cXeyXRpgwfyalaZ9lLGYvzq9ufI/bVKhoOILfiN3TsxXmSFm9diYfMsVxcUVWw/SaxY
	AmzRE1ovM7nYL5PxrsWqm8SkZv7y+JJU4h4TX72SIUQKeCJEo+5jyfIJugk3Mz3vguuWvsiIlaL
	gD6jA77TQtNF7ujgmqLtdO0T+SHLfue6v8LDeEtRhQ1PBwFuEQP/tHgbG6yxaJbJJHsQgECAPJc
	UOyZqhVzLnnp5goU9cMJiqG7rct+GxdVX9xErV0cj8dEfvFBp2mJHVOD+9UQrHt/
X-Received: by 2002:a17:903:2f87:b0:240:b630:e600 with SMTP id d9443c01a7336-240b630e7admr27941775ad.11.1753891815807;
        Wed, 30 Jul 2025 09:10:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IESpaWOxmNYWoJxFhgXCazhVQZS2S0Iu1Mkn/tVp0EPP8Wf9SOkPH5bbEOsVSgOrIyQZIT8Lg==
X-Received: by 2002:a17:903:2f87:b0:240:b630:e600 with SMTP id d9443c01a7336-240b630e7admr27941245ad.11.1753891815298;
        Wed, 30 Jul 2025 09:10:15 -0700 (PDT)
Received: from [192.168.1.5] ([106.222.235.239])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2401a335b37sm77767365ad.124.2025.07.30.09.10.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 09:10:14 -0700 (PDT)
Message-ID: <d11496a2-5a43-4b6b-9a8a-d8e05a89587a@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 21:40:08 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] arm64: dts: qcom: qcs615: Add clock nodes for
 multimedia clock
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org
References: <20250702-qcs615-mm-cpu-dt-v4-v5-0-df24896cbb26@quicinc.com>
 <20250702-qcs615-mm-cpu-dt-v4-v5-2-df24896cbb26@quicinc.com>
 <ff6eee04-d191-4dfb-82e5-7e3a6c896025@oss.qualcomm.com>
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <ff6eee04-d191-4dfb-82e5-7e3a6c896025@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDExNyBTYWx0ZWRfX1SC5IXZKBFD/
 umSHq8ieSy96ozh6TBcFMOc7zCl9cSVk8QvH6S/gnfeJNEekIxu6ie2GF1xPpVwLgKqaqr8gUb/
 0gWgCXRCmUChFxMFNVs/kJsrpdKYEyhhYg+ynBMRBYxV3nSo3UsEy+A8kCJMdQY5PSSzOQZSjvu
 hGC4g6+DjTFtltu4Mx64SDE9MnjV0yyvM9bp8DBgTS0ZVs7QNgzkGjYYFXBj9geTzDNWbz+SpmZ
 M32IWTyTU1Own2bxjUMdyM6YzhHJkzEGmgRQDRVQWaL5J+7DNrk04eFUTjcotVWTyp3zapluWKO
 ENnF28mRqiXiqq6Cqd8JB5/t1XP8Is5nCRolULMyp1gEhhAx3TcK8HdCU4NRl665J9X9UruBeGY
 1meBCOOXITuOOmFkGk+9EOSHiBYiffpPetqgF8E4pVftm7Ed9ooF0gqygq5pOlWT4u4nE3LK
X-Authority-Analysis: v=2.4 cv=JKw7s9Kb c=1 sm=1 tr=0 ts=688a43e8 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=HRpvt/FSzHA3SJMKks594A==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=J94FwCPnZ0hQmDvvoVYA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 690V2xBc_QekReu1xWHGxb56bf1lm60U
X-Proofpoint-GUID: 690V2xBc_QekReu1xWHGxb56bf1lm60U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_05,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=964 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507300117

On 7/30/2025 7:07 PM, Konrad Dybcio wrote:
> On 7/2/25 11:13 AM, Taniya Das wrote:
>> Add support for video, camera, display and gpu clock controller nodes
>> for QCS615 platform.
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
>> ---
> 
> Bjorn mentioned offline that these controllers should
> probably have power-domains attached to them (perhaps bar
> GPU_CC, that's under discussion..)

QCS615 has an rgmu which doesn't manage gpucc. So this is a different
case from the other discussion. Are we talking about scaling mx and cx
rail while setting clk rate? Downstream clk driver does that on behalf
of the clients. I suppose you are not talking about that here.

-Akhil.

> 
> Konrad
> 


