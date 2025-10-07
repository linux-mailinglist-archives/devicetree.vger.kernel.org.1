Return-Path: <devicetree+bounces-224184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D387CBC17B8
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 15:23:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6523A3C64F0
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 13:23:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D05A2E03E8;
	Tue,  7 Oct 2025 13:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DPJOcLq6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC5882D9493
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 13:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759843380; cv=none; b=QNkIzIRq8bu4abaxwqJcfYyFLTmPz06M9k0uiCk2CavJbhbCIXpitj7IZNrlkNxlmW3JpgHWFH2TbonU41843ImO5xb0nBXwBU/MQ67f2G30OLcVmPX0T30syEX8JQFt9n2hy1MQgJ2MlZtuwSDh5ocXTCFePnjX84O6f1BYt6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759843380; c=relaxed/simple;
	bh=+7JQ3HJhUGmoU94/qttg4PQSI5TtalY/UBkZ9H2xveo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZF7+gLZsLKIbvZN9Ysikkj+AkhYYk1Aljg10fNx5+95EWvQN6s1rAZydbR2Przr89z6J1ao+/E0lk3ib3CyI1kNwLpfE1u7j3JuiVPtJzU1WmrIjw2UAaP2Ezd3ylUjxGdLGnZWuaqzEiliUOmF82xC3nmmvz/Z/jedNucLzaFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DPJOcLq6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 597C0TbP003197
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 13:22:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Kbgn6/LpSenMee6d8moHn/H3VNhUDIZ8Sq+ZaEVSzVg=; b=DPJOcLq6/Vym1SuM
	por6QyAVbG90qC2mF1NhHX3540Kj1dpdLqpHRRCXXjnu4HpPOFp9tpcJSRtgywix
	+JLClnmBt71UJlBsA6PNA6yZSub92AXmFb1lCsV8L6YYaFKUAFZiTcG0cidf2L6p
	XAb3NL3/pQh2s282bgN3dfwbz9/pKJHhuLNPge7hIh1m9fChzA7iqvPcB8W+Rmvy
	+4ZDggWqZaQw/dWCZupizMp7l2Ri95b+EGbaXs5gxxQWZMLinVt17CM5jnvxyXXx
	rOI4kvY9aMCsVz/p4xvxYGf6q2uh+KDj2IxmFqFKuI0WHRvdCNpBEckU1wOsXylX
	kuOXfQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtk6yc36-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 13:22:57 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-798447d6dd6so17830936d6.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 06:22:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759843376; x=1760448176;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Kbgn6/LpSenMee6d8moHn/H3VNhUDIZ8Sq+ZaEVSzVg=;
        b=r99DFt8ffxcveRXJzy3cBHGuRJIvPklvSjI2OMwRu4USoMLn/S1PXR8sMijm+0ZF/t
         USDf6rplZJdBOqSkFAEMrdGKN6VHdv23Iqi0rwG/8UBADyVv4MCbM4ngopYG2WW98sci
         9a1Mx1x5CrsruAfAZGdu239cjzGL3Z8jlfp1FwVbPlDNPonJBMQ9mmf7xroKC12HveBC
         ZjGlIzGsvbw2ADffOBPXyiTh8eLZRg8QrghPR91YAtPYDjyRQZuRh72ihBBUiJNn7Wr1
         scUyHJbtSgxIM2Kdhy9pLa3Rf6gO+++0Qio9mtCMg0TtclY8Wra5uJsBpHSKY2lDxbdh
         hS6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVkZu4FD5TFQSKFDtq79ntKLhsMB5TsuwH6dlejpInrnnNdh5dNEX/ZyVXPbzsGV6gceFK2kRsX15tK@vger.kernel.org
X-Gm-Message-State: AOJu0YyyJMiOif23NfCbaYEucuUkhcsTWqgcz+ZVA1bvDwpIPf+S93aP
	2yPjEDzUK5BysFMkCFgVDLlknHR0Ts6pQhqoFbiU2mQHB7qepVwG4mizjmshgErW2gaBiXCEvdT
	Q2ZP5U3sse8NS3PX8ftJFcuPpYbsRey3ZdFIs57UbrIw0bZkRmLTv+mEhHod9JXHd
X-Gm-Gg: ASbGncuQub77kOpiqbKfDLyWdBbeLuBqKatsE+f32+veE/m560nJOCFBJIxZWjrvA6V
	AemSCBi07Rff3wZnGzgsVM7MQPlxDCXjI9nK/2/sDSqfXo7vM7bmDTU4ur8RvjWQciZvxF8nhK9
	wbFKX9zFai4azpY+/hsrQdh29sH0WA0upxTDQ76M75tXIst7H7KKNs42cOG/xO9GnNfgYT0Vru6
	3raq/QrHtjzvh1QNA6ZIDt6Cp8LOXX/PWIdhLCJy1FjQzC8qdyedcdxJyDqCYVeLpX7364+iJE2
	0Fzpbdz/d+mmkgyCIN7ePxNP8HUOcr66RTIThrEb2IbkB2Moo3jB6JxSxzFNLPqZE4dIQeN4ZL0
	aVpjHIxMHRa32iySWVN4tEhZh9eU=
X-Received: by 2002:a05:6214:624:b0:77a:fa17:551d with SMTP id 6a1803df08f44-879dc8b7dd6mr144031166d6.4.1759843376429;
        Tue, 07 Oct 2025 06:22:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYfzh6eg2S5/sqTEv1qfMsJQUgQ63LkFoFtHJOHxmw7dYvN6n2iJms5yBCNClV1aC2TjYugA==
X-Received: by 2002:a05:6214:624:b0:77a:fa17:551d with SMTP id 6a1803df08f44-879dc8b7dd6mr144030556d6.4.1759843375774;
        Tue, 07 Oct 2025 06:22:55 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63788111f1fsm12568864a12.36.2025.10.07.06.22.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 06:22:55 -0700 (PDT)
Message-ID: <ac56b74d-de7e-4440-894d-7251b2b893e9@oss.qualcomm.com>
Date: Tue, 7 Oct 2025 15:22:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/8] media: iris: Move vpu register defines to common
 header file
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <quic_bvisredd@quicinc.com>
References: <20250925-knp_video-v1-0-e323c0b3c0cd@oss.qualcomm.com>
 <20250925-knp_video-v1-5-e323c0b3c0cd@oss.qualcomm.com>
 <ab28a715-6b5e-4adc-8889-f47ee2e18d5c@oss.qualcomm.com>
 <404e40cf-8c51-d12c-d39c-6cc83779e3ca@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <404e40cf-8c51-d12c-d39c-6cc83779e3ca@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxNyBTYWx0ZWRfX4uqPcqkIIVmI
 qaux/9D+wsvHKwgpXaQaRf40ZnddmT47tKpmcyK1qznW+C0kTYD2nt4wqbXOq729nwcNGO40d3v
 W4zb+W5uGxJzvR7v1iDcsbPp+B5g8WsQZZVDU9r7VEStRvg32i8BWZp+3r8VNETJBgyVzZhuHhd
 ll1KcqzN8am6e3cXcA8khcH/gok723rN/s2BNgqfPuZ//sUE3e67jQKhNqpt7nA0bggAG+Bn6/u
 v5f8RV/u4QDKBOVj0yNN7+mizXP1dc7z1/0Hg3fzAEm+SZZo8Xbkyv6SKsvCGiXN3NDTghCDr8u
 dKo0TJZJyDOom33c5F38/m27+xCan1XFWmIsr01QnfLDIfmNpPsx8uz/3dFviSPHplwpqUQB8wX
 Xwoo4EAdzVsIWY1Ng650U8V+klpFhA==
X-Authority-Analysis: v=2.4 cv=do3Wylg4 c=1 sm=1 tr=0 ts=68e51431 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=Pu8XC-7BNdI2FKyOeZwA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: BsHWIvGA_9g-ppLfN4-fjC7T4XYi7c7d
X-Proofpoint-ORIG-GUID: BsHWIvGA_9g-ppLfN4-fjC7T4XYi7c7d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-07_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040017

On 10/2/25 11:35 AM, Vikash Garodia wrote:
> 
> On 9/25/2025 2:40 PM, Konrad Dybcio wrote:
>> On 9/25/25 1:14 AM, Vikash Garodia wrote:
>>> Some of vpu4 register defines are common with vpu3x. Move those into the
>>> common register defines header. This is done to reuse the defines for
>>> vpu4 in subsequent patch which enables the power sequence for vpu4.
>>>
>>> Co-developed-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
>>> Signed-off-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
>>> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
>>> ---
>>>  drivers/media/platform/qcom/iris/iris_vpu3x.c      | 36 ----------------------
>>>  drivers/media/platform/qcom/iris/iris_vpu_common.c | 23 --------------
>>>  .../platform/qcom/iris/iris_vpu_register_defines.h | 29 +++++++++++++++++
>>
>> This is a slippery slope. I think it's better if you explicitly say
>> the header file contains the register map of VPU3 instead, as let's say
>> VPU5 may add a random register in the middle (pushing some existing ones
>> +0x4 down). Such changes are annoying to debug, and we've unfortunately
>> been there on Adreno..
>>
>> Because you're using this for a single common function that is both acting
>> upon the same registers and performing the same operations on them across
>> VPU35 and VPU4, it's okay to de-static-ize the function from iris_vpu3.c and
>> refer to it from vpu4 ops, keeping the register map private to the former
>> file which I think will end up less error-prone for the future.
> 
> Appreciate your thoughts on this and trying to bring the design issues faced in
> adreno. I peeked into vpu5 register map, and it follows the offsets from vpu4
> and should reuse them from "iris_vpu_register_defines.h". IMO, we should be good
> in reusing them for vpu4 and atleast for next generation.

If you're confident in that, go ahead with the current approach

Konrad

