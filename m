Return-Path: <devicetree+bounces-192001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 841C9AF1240
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 12:46:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8EE635257D8
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 10:46:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D63E72571DF;
	Wed,  2 Jul 2025 10:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oDIt/6cU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAACE12CD88
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 10:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751453207; cv=none; b=K7t8ghQytKd5w/lcGiatNppq0Jj9VQk8CloryxOFlZSOAs2TIBiWpT0P9XYSlb1iy5TSmCovAXuteUvtsFhi5sKiEN8WCVvABuGWp5jlclFgc5WIfYnmXx3dVvfhDKhQWs8V7NtnxB+/3rk1Hk74qLHS7fHnKTO7e5pxGEjr0qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751453207; c=relaxed/simple;
	bh=hflC/7EECoo+FWEYujbHOxOfZC61B76JoGLGfoAngoM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h745nEJN3whKPN+IoFhr8Jlmc+mEzsbfBWkVhevCjhdmApaNBU6XJColkpb47mEJ/MaAvhQ7dsctpDh8wowD1Z21U6qaTXlzo2PCLfT3Z9PsF+cswiPQxQ7ks4H6upmx8c3DHjajRjnkSRPeExsmC2fjZ7Zu/V5G8M33Zl/preg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oDIt/6cU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5625EQOb019593
	for <devicetree@vger.kernel.org>; Wed, 2 Jul 2025 10:46:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aHOxsE8EA5bCxjxcI+SDUjFcl+31uQAcsQipjX1gMnQ=; b=oDIt/6cU0of3O2Zm
	tgpG2eB+nl45Av9pnRBhnYscFSBV+pZvylbh+9csIk5RtLOnvq4FMvw3VLII+EzF
	xVJoiqiRAvP0IF/wBFu2kHvwuLwM//EkAVqtCMOoAfNyHSZvAM4LdtRsm6zDwo+T
	QUcjHVbZD/08vYQkYZg2vRIOEscHGWuz34lXjWt7JsK3CthRBoshzjV+PbZG5Zcf
	AOrRlW+mAnk62VZN6I6AUueYsXpqaNgy8ttZTxOfKcfBSxceMYDpyQcmbjDPmvHF
	JhsG94EHmfzYwZzTCicqBOxveSmqQQHKiz2OmTC+gINBsgo43u1DszLw2NqnNifn
	pOKvMw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j8fxmcjx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 10:46:44 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-74913a4f606so3770010b3a.1
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 03:46:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751453203; x=1752058003;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aHOxsE8EA5bCxjxcI+SDUjFcl+31uQAcsQipjX1gMnQ=;
        b=CA+CrB+xpr/H7I0TsiHmGAPU7jzUNI5+g7sntjetoNkTr7bvaH6/lrz/BnnxDtWPKj
         egYU1mIQud0FKYO1diaJyDGKj8hl/oSGxe4AwgDq3bpH2cfFWMW6Wrl/uKTh6fl5FD1O
         Aun15LjQKzbBD2q8l9REWV0oAe0N+kzuBAzXyAFmv88e7wZrbATiqksM2j4SWpIgah9H
         L//vunmGVAfkDiT/aTqrQgnBcr8STHuDaCeYRXGA5kRGl+8yByQqsosPhdUX61sdzfaE
         u92GhNvOZkC5gUauVKaDGRCDbUOXYNI89YGbEs4qwMS2ksNYjWjMi1AD91SD81GPF96L
         eJpg==
X-Forwarded-Encrypted: i=1; AJvYcCXjjMh79hu6rUKf9AtcjBeFlq925HAytWu2UUJP3s1UvfhwbVwQ2IwtjrRRT3sBR6ihSY9G7ruKyWi4@vger.kernel.org
X-Gm-Message-State: AOJu0YwqD1EbxiGYzd2qn9GbTv8qlxZB+KtgEKLNf3sef1+NdOCedaj9
	HonxgYMXX3rYmNAbd2Ne3a0sE1Dpw7SMmQYp7NuBDYpUWB04UWFle1KtLJ7kExE4SmSc9ieKSHk
	l3m7JUOu5pTSyjBPuntEK3F1jWpFhwZww6bYDVR489KXHt1rAbkF5nU6o2yGDjgFb
X-Gm-Gg: ASbGncsRKWYUIvuD0ty/9d09c6ISLAxFGdtQ6E01DIHWvbxMsLguBzEmd6qpfncrCby
	qRvnXvjZnF07tf0ENKZFt5y2xSED5ucmguebUtnauQPm09YIPZ4HyIdmSQMuQhbtwbrSixxFprt
	5Q+cGU38/vquGGv+rrjfcfn/eFzFscNsGQneKzpUkHq37qERhJ6QEvbdRweFynm3mOODDxyhPyn
	eccbB7YhTLE6tDU6ILH3LX9oshJjcGNX8bOhoe9qWlnZ0Al6yFbBPtDxCddNcTadoWGM4Okzdt5
	bGbX5Y1hwNw8+YsE432jAsnYXtEDoSHB1aLyxITCdhCdln9RL6Zh9JdLHaU+Ylc=
X-Received: by 2002:a05:6a00:929e:b0:748:e1e4:71d9 with SMTP id d2e1a72fcca58-74b512a4b63mr3111387b3a.22.1751453203270;
        Wed, 02 Jul 2025 03:46:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGA7+CiZe4GA2cMk4Bhuat5NfBqDvPTJs1RWS1RavlKQ1uFs+BBJ1Y7wgYQ7e7I4vItRWBvcQ==
X-Received: by 2002:a05:6a00:929e:b0:748:e1e4:71d9 with SMTP id d2e1a72fcca58-74b512a4b63mr3111356b3a.22.1751453202802;
        Wed, 02 Jul 2025 03:46:42 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74af541bdeasm14377283b3a.53.2025.07.02.03.46.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jul 2025 03:46:42 -0700 (PDT)
Message-ID: <37695966-1d7c-46c3-9717-30da4e8d1930@oss.qualcomm.com>
Date: Wed, 2 Jul 2025 16:16:37 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] dt-bindings: sram: qcom,imem: Document Qualcomm IPQ
 SoC's IMEM compatibles
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250702-imem-v1-0-12d49b1ceff0@oss.qualcomm.com>
 <20250702-imem-v1-1-12d49b1ceff0@oss.qualcomm.com>
 <a68f46f0-8053-4d9f-96f7-55de33bb301f@kernel.org>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <a68f46f0-8053-4d9f-96f7-55de33bb301f@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAyMDA4NyBTYWx0ZWRfXzuCkPR4Mm9zM
 vhKcbDeHdMTBBQTw78TsU27+2myXisfYX+hnzbrFFNTsYaoLtS/BbdKOFZury3Ri2nhbQ7ZeUfP
 uaItpMWWjQlXOsiOzuTYDgjMSIDv1dPleUexL+3XuSGksfbLw2OKqaYoL7bIGZzj9AG2Q3LUPRo
 tpHpF4lMiW0GENrMDGZQnQrnqOTzTvhIHUT7jqYXfJmz2RM1tTWQ2jKW0BYyv7UzRE3t/QfC7+r
 hnLi0pzRLmnTO4EGJLFsSVUyaAL9cyIJurvrzoHmASzIV55i9f34KAmZG2KpsrZQ9+iSeEqqDbm
 J5DjLe/0qusAbkPDrqOFLdqlib5l624BpU5s498xxwPR7OZ2uJ71VZDY9X/Q8nMMG4VbtCAr3yz
 v8vmBTDZ2+LtzdLE72gX/iuZhucNxI2QxKF7uv7WPJ/nRW+H7LAVR9GHmQYU3tYSOifqzUzz
X-Proofpoint-GUID: OpLS5lvQHqmQOuBBBYW3SkxykinSlu_s
X-Proofpoint-ORIG-GUID: OpLS5lvQHqmQOuBBBYW3SkxykinSlu_s
X-Authority-Analysis: v=2.4 cv=TqPmhCXh c=1 sm=1 tr=0 ts=68650e14 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=z-AMgQe07C8pQQwPwfQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-02_01,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 mlxlogscore=784 suspectscore=0 adultscore=0
 phishscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 mlxscore=0
 impostorscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507020087


On 7/2/2025 3:49 PM, Krzysztof Kozlowski wrote:
> On 02/07/2025 12:17, Kathiravan Thirumoorthy wrote:
>> IMEM is present in the Qualcomm's IPQ SoCs as well. Document the same.
>>
>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/sram/qcom,imem.yaml | 6 ++++++
>>   1 file changed, 6 insertions(+)
>
> Where is the changelog? This is not a v1.

This is the v1. The series[1] I pointed out describes only for the 
IPQ5424 SoC. Since I have added few more SoCs, thought v1 is the 
appropriate numbering.

[1] 
https://lore.kernel.org/linux-arm-msm/20250610-wdt_reset_reason-v5-0-2d2835160ab5@oss.qualcomm.com/

>
>> diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>> index 72d35e30c439ccf4901d937f838fe7c7a81f33b1..48e2f332e0e9fc9fa4147fa12d9c6c70a77fafda 100644
>> --- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>> +++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>> @@ -18,6 +18,12 @@ properties:
>>       items:
>>         - enum:
>>             - qcom,apq8064-imem
>> +          - qcom,ipq8074-imem
>> +          - qcom,ipq6018-imem
>> +          - qcom,ipq5018-imem
>> +          - qcom,ipq9574-imem
>> +          - qcom,ipq5332-imem
>> +          - qcom,ipq5424-imem
> Random order, no, follow existing style. This applies for every qcom
> binding and you received such feedbacks in the past.

Apologies — I arranged them based on the evolutionary order of SoCs. 
I’ll correct this in v2 and ensure it’s handled properly in the future.

>
> Best regards,
> Krzysztof

