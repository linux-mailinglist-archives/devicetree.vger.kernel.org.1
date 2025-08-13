Return-Path: <devicetree+bounces-204093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB71EB2408B
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 07:47:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E27A163D6C
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 05:46:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B0F92C031E;
	Wed, 13 Aug 2025 05:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E5swJDKA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E93A28B4FD
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 05:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755063948; cv=none; b=grU5fqMgir2sfXjEjSG5ARyKKbYhP/mpE8Ejo+VLbctcEZxpM8kFMmj/lm4nGMLHLocmQr/gj0nEImjYbalFPw8pxt9eFZp0iqz+8tK5jUCt7Ib8CXOnOpdsAdSGiBAqXEX1cvMQAekG4HGuvkNvqvhrWK9ERT0V/KJALNGql2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755063948; c=relaxed/simple;
	bh=zGwOTcUsz1xirDMHVrkdX/vvxQbHA7GU3AGFpslLXF0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pvA7YmIODhf7GGpXZcM+DWbaFNpoR+hEvgxU4Y9sc9U0gAD5gV1DpZuYh86TD+1vKASZepGlXaQARYSyp2XrJ+FkCIgxz5hlsnQQX+Bz/SujVFRGI5fjLzR1nruEkXqJGiat3pAuD0dDZIEjqs75JmrS3cRAObLnwfXUxAeQQcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E5swJDKA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57D3nr70005734
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 05:45:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Don7/I9Uj7z5dTSOT5GELdMDcLUsYu7/Ujb3hm5duA0=; b=E5swJDKAH1uztF3G
	lhdB7KhgUNjRtjT0vfqGP4EW5tfyQXb90bo8ttURhP7m5PCr8GhE+nv5695XNviu
	zfP76HrSLq3E2bITYiGck0fyfcen8joBvJzgorzFTQbfJy+PRaJ7bs4eriJsUyqj
	kgmRAz2ADTxUFbiDtE2KgfVakZudUdInTwq1imnO9HsJ+d0T0abxgt9Ry2+nd46M
	u/ZYVzH34R4u9ZtikKyVEY7H31YArJGDrkqRcs0mtVDgBMV1y1/485Yoy1m+bOXv
	KdnnnGmY6ZwQgHs0HUS/3z1XkgnoiHDZKNpx3GkqNl4k5nOIQBmxvRIV72kD886w
	S6q2Xg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48g5hmagf4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 05:45:44 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2400a932e59so102303185ad.1
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 22:45:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755063943; x=1755668743;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Don7/I9Uj7z5dTSOT5GELdMDcLUsYu7/Ujb3hm5duA0=;
        b=sTiyOkFhIEpEZGZgJCMwtDh1L+dQYsKNbU7soT3DyboGvmGtYAaNBfwIUlrthRtRr7
         UB7huiHWZrGQiwExfClUMFtfbG0wKMk76u/guQgVeBsCr+NhC0/w1oHKoRA6ivPv9ZQx
         pq316T0EDOHxGcpaQJpvU4ctugwuUC9jo9ENDPNS0gi0wh1riaI/NF2KlliLM6P0zsii
         YBN6p9Z4W3BX2Q0Q3cZLDx7hRD8F1foeTFAAptaHdG7ee2Wr9IPIN/Ota8ZPGikHr2l4
         S4hjuDdZJnJnCP50FJ+vuFink+Qa0pAvRJMRtBVWQ3ZCHxM4W0ufs3MIq+P9V88TYLc5
         oaqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQiohbOHeo0UAw+6/qYbcaSeU+GxXAv/zcxWT2zc6nc/hIb1QFj3DheopajMOOADgcO56nPioWBWJT@vger.kernel.org
X-Gm-Message-State: AOJu0YxTw19DLhdmyf5pVHvfU/yF9mfyYkYCHeQSYfyVx3RzAyFbjR/H
	b5T+Hpu/KSTD5YEGkfE/zEGXXA4q+xjBcxmmv34Q2+rDTwpgI3Coxo7LbkFCJWdZ8bcFldIJxTp
	uTbXGVA4JHZ4BO2m7WcgyjQfo8cf/0ihNwLBpK3F2lmGK4gOpi8++znrHrrDAhXKy
X-Gm-Gg: ASbGnct1vp84PXcx5j3VokPwiUrgSBC+awZ9m+OzYBTWdCyVwFhtUnE/lo0hAdAUo15
	0fzokrcYucOAyOVAIqwL7YjjAljgPAWFpMXfEKNb4fPTegvXDohFYw2GODXR6HTDV2OXvkBqrze
	uleZyb7DZ1sIK+uA9EU7gikM+ckYa2LviWCtpJDHyE94Gcvm4lR8eOykHwLMkZe8+tKtLWE+QUu
	+vKLR4q5J1gz1A9yw+JGTkO9d7BF4mukSpyrxfGSxiEPH1Be5UdHqKyUY+13QwdbuqX79dOu9fC
	Oy9CoEC0AHorsBZ7lgUeZzCMOm+r8PAfDP8AsbRW4PNcypAZm7eN5XkLEjkz2VpqYUL3x10=
X-Received: by 2002:a17:903:2f8f:b0:240:8262:1a46 with SMTP id d9443c01a7336-2430d10f333mr24296825ad.25.1755063943172;
        Tue, 12 Aug 2025 22:45:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFKxGK3btWcsA2MMJlDGujnyNgU79WdDiyIV0PIuwBRiNdl1y38tWiB/pb09bnsoSZftYKpXw==
X-Received: by 2002:a17:903:2f8f:b0:240:8262:1a46 with SMTP id d9443c01a7336-2430d10f333mr24296635ad.25.1755063942755;
        Tue, 12 Aug 2025 22:45:42 -0700 (PDT)
Received: from [192.168.1.7] ([223.230.83.199])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e899a51esm317556405ad.115.2025.08.12.22.45.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 22:45:42 -0700 (PDT)
Message-ID: <7c96f881-23ae-484c-82b8-d388a5c637ca@oss.qualcomm.com>
Date: Wed, 13 Aug 2025 11:15:34 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sa8775p: Add clocks for QoS
 configuration
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
References: <20250808140300.14784-1-odelu.kukatla@oss.qualcomm.com>
 <20250808140300.14784-4-odelu.kukatla@oss.qualcomm.com>
 <857f56a9-0fe7-4c10-a55d-b00740a8be02@oss.qualcomm.com>
Content-Language: en-US
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
In-Reply-To: <857f56a9-0fe7-4c10-a55d-b00740a8be02@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEyMDExOSBTYWx0ZWRfX/R5gDtjN9EtU
 KtPyF/+nFawq0We0BbTkC9IkZ4kIpNyvqQRYhDyawUpF1qzDSzvQTdyGJai40SQJAdXifWfd39m
 yHuC0TvRc3QDXVNw0PcCUzmbwKb/8VlOuiFdDXQcJAyBW4Mdc5sQa1Ff7LjMzt2tdnRsdPRoRjS
 MlRBkcQ3O8dg8DilRCyGkEZMxarBmfILIUS+7CJYb+WyWDQyxcd09Viu/5agLZvyMRbM5LeSmvV
 kJjOgPRerS6RL/if0eva6K7+cJMby9glcEWZKIse7EM1rJBf6LehUiQ5ev7M0NqJhMwec5KkUxW
 bhd+9IAtPR9Oqtev/iZIDl20JrvXBwRf466FtUrC6ux4jRPvqzC8vQvexeXgy8XyAJq0UwByfmw
 8axUb4xi
X-Proofpoint-GUID: S8ZZ3sgdXrWREfPMKdyHC2-952G3Popx
X-Proofpoint-ORIG-GUID: S8ZZ3sgdXrWREfPMKdyHC2-952G3Popx
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=689c2688 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=SiMmawhtwnuHYgKqZ0PRSA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=XLPuD3OmIq6EDVKOuGgA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_08,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 spamscore=0 phishscore=0 adultscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508120119



On 8/12/2025 3:21 PM, Konrad Dybcio wrote:
> On 8/8/25 4:03 PM, Odelu Kukatla wrote:
>> Add register addresses and clocks which need to be enabled for
>> configuring QoS on sa8775p SoC.
>>
>> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +		system_noc: interconnect@01680000 {
> 
> stray leading zero
> 
Thanks for the review, i will address this in next revision.> I also see there's a camera noc.. are these controlled internally
> by Titan nowadays?
> 
Yes, camera NoC is controlled internally.
> Konrad


