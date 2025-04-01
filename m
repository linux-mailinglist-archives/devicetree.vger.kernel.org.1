Return-Path: <devicetree+bounces-162371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFA9A780A2
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 18:38:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 446731624C3
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 16:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB5AE20D4E1;
	Tue,  1 Apr 2025 16:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mHWcTYla"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 806C41C6FE8
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 16:37:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743525447; cv=none; b=QLH/sCuiNKbLBoywcQjpxPus4yb4wTkdG0ZsFchpjVmX0+kAJj5VfDGH08Cy3KYcyxy1x7U32u8dPc5nd/1adJtpd09KmH5KOePofPldmEp9bJX0fzPjC5Ddu2XRMZ44ylc+ArxF9xGaArg+mFdWEvOUabKvAJTgdvq1SkVirmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743525447; c=relaxed/simple;
	bh=xso3yVMv1IMS4sKIOz4iJ1XJ+y9QD15Nm6ONJyFulUc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZfNYnnIyeeLHaq0qUS94dobcrYu8SXEUcrLjT2lNmuEbQhUl/hk9xYDGzykQE12qi71+8dRu1iRsYlsiMYpkCCijDDioTQ7R7dQ4F2U19A/qrIc77FmG2yoT4BvHAGq1P8+YBT/N5Hebbxq4+Xdr6XpBShGFYNGtPhROka+Lm1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mHWcTYla; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 531BfguM014626
	for <devicetree@vger.kernel.org>; Tue, 1 Apr 2025 16:37:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hKbhPlTz0jVjC2n4EBy1zzs4F3CjcmytkwZ1FbdlItY=; b=mHWcTYlaFdmTeZlK
	ql96SP8BJesuYNcqU5Ok4PBJ81iFViUKlCi4oW57Z9ZvRxdnKOZMcerfWCkSEqIA
	aVvcD+RnkfgpSOACL+OneHMz30KafrbMjvLa65EI4J6XQWI9lU95UOeWnqnIOFdA
	XDH5sEbKe7datLiyIxnvWI41o8oAHDOX5tfLpq5GJTrMbessZmkZcknp0dUqzr/b
	8OxeVWicJPdPqGZGnfCMeFK4OlmxjgbbdRLasinPN3CdAg8DoYKbkwmWw3AEcMei
	Fzpk2kbzNpGaKc/5o6alrvLj9ihsbWJ96NBOZJwsqVt9OziU+fhaWd4AdK5p77hy
	b0AGcw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45p7tvgp6w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 16:37:25 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5560e0893so18567285a.1
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 09:37:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743525444; x=1744130244;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hKbhPlTz0jVjC2n4EBy1zzs4F3CjcmytkwZ1FbdlItY=;
        b=odKzfEQHm2gO9u4q5B5HfF3KcqN8dXZHtZl2SsFnqPYS6t/bXNPCaoYvtGk37LrkE3
         CPC1DQuyF6o/p8w/V5IkFc9qkNzBinFz41AoTp1nrdS3sF2itBtaQkG20cgno66lLF3i
         IdIFAqyFwLJyONI0t6Mtf6PNqDSySU2HCbsm5dp9ncCHD7fGYct+ubSnEesSYnPlzMIx
         7DcCZBvfkj998/6c6mHTi471WNIL5MU34avkS3liWVus97U9KPU9n8RB8mOFSOT4Zdg4
         mOUUwNdLvql5QD8yp7DPRZIIAgcF58RXIGMyb26MjsWp9MbKXWlhG1BsCfzQJM26f07J
         AAqw==
X-Forwarded-Encrypted: i=1; AJvYcCV7CLBRNWj8W88abUp9jEAYtVT1tT9ia6fytDazxORJzqIS+pJcMBkrLnKJvVK43UK/flMLze3REUoC@vger.kernel.org
X-Gm-Message-State: AOJu0YzXcaq4gRiba+jT6OvUbLB/YWvCDpEV3VwPDtgic/VYfYiYPT0l
	Qu4Ce28Hn8xh22tcr0baseZMhWuJdtMggTgDm/jJyZZMTiJR/vfAA0hw8IHHXEyR1wTmlGo6Okq
	cl1akVXldkfFTVLSjlsDE67pNzaWN8vnYDhiUSsjcUa12jniWLiO1UugEVZGk
X-Gm-Gg: ASbGncu5hpr6au6zxwPjz9Z9umU6jxtYyIg7SUA1GhF2zgHTh/EVT2gZTKomI+C+N8B
	GmO4yLX+829Lcj3RbawrwTnHkhGsPUseeEKGeH5XfizOa4J7ylBM3qp4XEuSQi6amP4JYMDg9h3
	mL+DeqQWVjEMfNFTCJeNQpGRnDmH+tbQw2POB/Y1/7ZmKEhuIfm6DEHOlzWvO0ZvTU3cUbU0vyF
	VWLEWHSWUQZUzF1r0t93XDCMa7wa02KosNPuI+Ra5+AUz5mk9nyP8PWsgvccau89N8JMwnsVpAw
	BondcREVYQ1kUu/mVZtWjQBfqPoP2zM9VC6N4n0ssLaOBKMvWIp3MlJboaltd8epmevdMA==
X-Received: by 2002:a05:620a:4491:b0:7c0:c2ec:e560 with SMTP id af79cd13be357-7c75cbf574cmr166615985a.15.1743525444336;
        Tue, 01 Apr 2025 09:37:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFY9F3T3aVlxlnrRQFttmbYcyMce6WTdjZjN6/Nqe8LfX/zNfyXhMverLlyrcOeYnZdRL0LaQ==
X-Received: by 2002:a05:620a:4491:b0:7c0:c2ec:e560 with SMTP id af79cd13be357-7c75cbf574cmr166614785a.15.1743525443965;
        Tue, 01 Apr 2025 09:37:23 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac71927b027sm777628666b.47.2025.04.01.09.37.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 09:37:23 -0700 (PDT)
Message-ID: <f105d601-89c3-41b7-8893-f84965a7565f@oss.qualcomm.com>
Date: Tue, 1 Apr 2025 18:37:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: qcs8300: Add CTCU and ETR nodes
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao <quic_jinlmao@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250327024943.3502313-1-jie.gan@oss.qualcomm.com>
 <20250327024943.3502313-3-jie.gan@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250327024943.3502313-3-jie.gan@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OIon3TaB c=1 sm=1 tr=0 ts=67ec1645 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=NSQ7DHjqZRjaoW-GLy4A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: PzpQMTATfBlQyz-Q7y4Cej3OYX-AX9hz
X-Proofpoint-GUID: PzpQMTATfBlQyz-Q7y4Cej3OYX-AX9hz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_06,2025-04-01_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=638 lowpriorityscore=0 malwarescore=0 mlxscore=0 clxscore=1015
 adultscore=0 bulkscore=0 phishscore=0 suspectscore=0 impostorscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504010102

On 3/27/25 3:49 AM, Jie Gan wrote:
> Add CTCU and ETR nodes in DT to enable expected functionalities.
> 
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

