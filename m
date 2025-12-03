Return-Path: <devicetree+bounces-243979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A00DC9ED14
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 12:11:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E82203A254A
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 11:11:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 468192EFD99;
	Wed,  3 Dec 2025 11:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dgCMSV97";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TNe3g8f6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5ED28B415
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 11:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764760300; cv=none; b=a2Ne02DypDX8U1BT+IeBjQl5XRLDDrU8NoNsbsVMqRTZf0anLKaW2jx+Q40KvIFy4GhcVOA9kV5L5SbXhyqP2Qfc0l01IXJcD9Kl3ABN8StwR+gr8UTI3n8kCWsQh0uxZxGYX9Umo6fzMnWq3gHGyKwLxN2Cy0B45viy3y5uTV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764760300; c=relaxed/simple;
	bh=n85kTMlqmXcE7RWsMNi8gILqTWXV+dyrM/nZVGCRogM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eF9tFSnrwT2p88FZaWHctRnGxDGuazodtun2yDSkniyaQN0bOlvBBDy5BDFqHLMMxQ1OnJdD0OIvkBreZBq/TdQYPpisYi9Q5HXBgDxEHjXK8MMDChD+cLP+5oaxG0wTZTgYLHEFZ7T3Bqri9J0WLE+lqm6xA1YY2SocKOiMlxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dgCMSV97; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TNe3g8f6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B39NgbK2113670
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 11:11:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	n85kTMlqmXcE7RWsMNi8gILqTWXV+dyrM/nZVGCRogM=; b=dgCMSV97J85xt1/Z
	FLBsfWisRthlmaMi3Qts476Gi/8JdGM3wi23/GilICBidHsqb4mQeePO0xc2cuSp
	GShgc7oV/n5zJfnWv3xGIMoooEMvz+tK8P4i+ORE5TUZt173DX771R9knlENbKeW
	teEOMyKSutwLwVjFrAuFFh1W6CQYPjpJJql6NPD9zORY8bOxMmGlUgFKmpG2QxyO
	Qk5qNKOY2tsT/DEkjU5cnusW+ytU0QqdloMFlj+QLr0V42ueoT1C0CzAxaBdugMR
	nAybAouG6m09CiveYUqN18coQNSuhTQI4TW/qSjZOfa3jQ0Hv3A8PDwx0YGwlqts
	H+h4MA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atjhpged0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 11:11:37 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88046bc20faso12727616d6.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 03:11:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764760297; x=1765365097; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n85kTMlqmXcE7RWsMNi8gILqTWXV+dyrM/nZVGCRogM=;
        b=TNe3g8f6ajiNYdN371T1acC4sF78tmjx04s/uHRGNDZYTnx/HMIAq8KLtZj9k+9Glq
         f0nxyo2URWDg0RbTIBh6M951fnDIne/yKoFYBTKf0L3DSjVU8f+4srqYQLVCoBBHgX4h
         BY3f3Z3Q3/XNTrRPb1Plaz5PY1PC2r8K87iWRr3TyugMCmiisnJTC7/Nf3oUFjaZD/z/
         arIdMR5nwVxSyiLQVH2AuEBuq92Z8qlPZ461r5KeIyC8OHzdNZ0XpBy+iwZhWtLBrLUQ
         L2D+u8Chg/7O7jrRC8ypgFebIaR4BLxV2O67ZH2fSVXfTmlGstB0ZtqKUfihKE10oyjL
         96pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764760297; x=1765365097;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n85kTMlqmXcE7RWsMNi8gILqTWXV+dyrM/nZVGCRogM=;
        b=Vjym7XuN89XFFbREKcgXOxeB4YmR5t5CvT7QCVnp6qzQQGakLoyOTCXkmwLnZmV8Ue
         PSJiceD0FTFkEiOT5NE8MAMkgYXE775Qzh1xxwBUT8W3rW/aqTiHCJdZfoh6Lb6CePfO
         rdJ4nlzL2aahphJPIsk5Used+oC/uUFKZ5S0Eavs4fxTRvNeetyONPkNM63JVLId5aff
         o7eyFbc5AQD4mjIcraZtoyDAhNfk1IxSzo7StZ68FGjdBD+/xzP7rWyLodEdSTBjCPHI
         NoagEWOI0XqvE8mGrUG9LpWSc1ugt1wRZWXDo7ZsDJxTz8cOUjhHT4pZ629X5LiP2Y2G
         Mi9w==
X-Forwarded-Encrypted: i=1; AJvYcCUI6b0RTGXaSsR/5Ci6wEKEjkVXArxXLqBQ0yhHdMbIFkx69dLgCy9f8idi/2SwlPbE649wWe6UBaR7@vger.kernel.org
X-Gm-Message-State: AOJu0YzJwNLeIb3ihqADwk91ZJZUOFEv/9PxHeNfSewXyQpUqmFKLfle
	bytBGQFVfk7deLqRMBeYEhN8/uBXrA+ICLZQ6M89wh17Doej5j+7DLcujMpgfOkitp/WVxSG0Ba
	0NbvHLAXrDPaIrpkRFxKXk9GQRqQ5UFTobkgiIehimjLv/kapvvjIJvLch4628pja8ni0O70b
X-Gm-Gg: ASbGnctpfVXYiAB7K22p0TII8FwW0OL6KSVID7Sj9efPWSucsPuPT0nF5As5XO1scfZ
	ZgkP0NMGw88jiuFOnjv5hKb18WfODLdzfGZGrzNgAF44F1O28XbKsbaRGN3tokSDe5kh/kY2ZdG
	J6NV13mztpibKMCYgIspN0JXflhL0+52VswyHv9QQ8iAC86iZbNca1p2RNCUA9I8Y0Y96ixhwnE
	HBkhECtc2o5Yq3mGCNlCgmT2OtwWawBJfZoFs+G5NEwM7izkAugae5SuiAgcefmLMbSAKI/qb2e
	E6FC8Rd6l2qw2fDOj5WVkROgMc90OePMC60mLSJ8b1F624VzKgMMJs7BwqWNax8EN+8fh5emt7C
	VSjYltzYwa/ZUa+GM60a1p1zJgtFOqVDuVz1HE545EPj9E16wM2Ex8ydNfcfHBjpqGg==
X-Received: by 2002:a05:620a:3181:b0:8b2:ec2f:cb3d with SMTP id af79cd13be357-8b5f95115dcmr65962885a.10.1764760297162;
        Wed, 03 Dec 2025 03:11:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IElnsMUtLzikmAApCwL3ONxvQE1UVbBNZQWEl+HETNzeJA8pAYbUGceK1nBB0/k0JiLkwnTew==
X-Received: by 2002:a05:620a:3181:b0:8b2:ec2f:cb3d with SMTP id af79cd13be357-8b5f95115dcmr65960385a.10.1764760296794;
        Wed, 03 Dec 2025 03:11:36 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6475104fd7asm18060135a12.23.2025.12.03.03.11.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 03:11:35 -0800 (PST)
Message-ID: <9252338e-c775-46db-9376-53002edf429a@oss.qualcomm.com>
Date: Wed, 3 Dec 2025 12:11:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] arm64: dts: qcom: sm8550-qrd: remove data-lanes
 property of image sensor
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20251203040538.71119-1-vladimir.zapolskiy@linaro.org>
 <20251203040538.71119-3-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251203040538.71119-3-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=JJg2csKb c=1 sm=1 tr=0 ts=69301ae9 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=voevWY3SEgjA6HzYmqEA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: nI0QhCjsAYbZhHTEKdOk3i4LTj_UaINJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA4OSBTYWx0ZWRfX/FnGTE4pP03B
 rqhqhvnLnzh2uOPhRfhULApOthpYO3mM0hCdY/Itp+98pibJmgXD7ssXDQggvJ24Ycch2Ye0Uv7
 e8LBo42B37x5sRrCM9rPEQds2tI7UN67Frgi8rEHEVArENP3JCDp3Yp/I0aTWPQisyyRskfwZ5S
 HM5u8POOZkDjHt7PDMoug/qMXhG+km7MFr5LfmSK6KPxq8IdyOljnWfbGTCUG0svaFCxf5AiF70
 Po74rJ5wfovv/1yUSQUw2hSdEEw25Sp/0/xkyK4wKrnIymcuyxroALUQ3QoIiC8vcg3G1XDVrfw
 fKH+rgBW9zqKcDeGfDnuAeIKeJZnciwHO2fZHG8GqfhZ3e+KgtIw6YT0KMpqcGpp/ow0RLanPtQ
 NmVHmR5L993VBH0ELENBhQataj2PQw==
X-Proofpoint-GUID: nI0QhCjsAYbZhHTEKdOk3i4LTj_UaINJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 phishscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030089

On 12/3/25 5:05 AM, Vladimir Zapolskiy wrote:
> Samsung S5K3M5 image sensor supports only 4-lane MIPI CSI-2 interface,
> which makes the sensor data-lanes property redundant, and it can be
> safely removed from the board dts file. Noteworthy that the property
> value is incorrect, because conventionally lanes enumeration of image
> sensors starts from index 1.

This seems to vary between sensors

Konrad

