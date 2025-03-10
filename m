Return-Path: <devicetree+bounces-156056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 781D4A5901F
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 10:47:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0D1173ACB6E
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 09:46:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75AFD22540A;
	Mon, 10 Mar 2025 09:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ur26tFll"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341F41624C3
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 09:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741599978; cv=none; b=jqpVQrv7fd4znpEN9Gjvn/uZ/tdEyRId8I7VjE+2sH3u97CCp9JthQqgHy1gJY2c3pBtETRJlJmwuUISb05PSRkC7WeRJSfYrfU0GiWfMcdxjY/J6grvcx9uFm8455ce9Xr2myyi1Dj8WOavw0y+Ntq5v/9nKuh/dkgTofeB0EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741599978; c=relaxed/simple;
	bh=krYk4WbPLSa7xPokXjwiZrkpXfridSMHzxiI6uZ0eYU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YGYhOrD4o+5TNtX/+PtdUsQs36Qo4jOcHsPMgZ/+0XXNmzkoxOhum552h8aIbwOpRx0D0ZY0AvzzkXKsOvqOeh0evUTe5Sqh8xS9V/joQEH1cSef0NvJn48wbMoFFOrYx2avNve6/8uuZh7w0/2jxKNxfRMtnmORIAAzjrXCHG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ur26tFll; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52A92q2R028866
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 09:46:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ih4+jHDjFRiA69gnHwzJvT/5UWdEO8jOvDrfGXowHW8=; b=Ur26tFllRqWg3bp8
	zrTPDYoFq4wRonBIXz9aJTZx4kZLz+AGWI8lOIj26/WN0knnfyVT3JpAEJRAb32e
	6v62GwAn3rBZI0VT0PtsY/frrnlua1QrAK9ZCewEE1VEg0Y1qgaW8ms57o4o+PwE
	mNK88HHL+6jHFrISjByy+w9u6PWr6sm2+XhdgzrtxHD8G6NLYNvvU/DzMPJmF+8a
	cikikbdqkTX4XnxIOt+kwYsy69rgeco0u1e5/JHB7VC4bY868a7V8xpnIt/YdxLG
	mH22jH6KXLdm4uySxxn34xLLWFKTgtL8TRYkcQIPunhlWNDvklPZkjU39RHYolN1
	TzZ8bg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458ewk4btt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 09:46:14 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c552802e9fso4003285a.0
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 02:46:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741599974; x=1742204774;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ih4+jHDjFRiA69gnHwzJvT/5UWdEO8jOvDrfGXowHW8=;
        b=U8H8y0xglca3HMSAU4dAfQqZUODFIY70ofwjY5g8vywUi5NE+0cgpDnWpxJnPfmJg5
         nUvWpyQFp18a6UeI9ASugHsF8oi63IWF5SpZAHx/01+OmMQXiKXRlH8YoVWYmsgFyNy/
         0snMFaemRFFGyhUeFZavqxm3j2Icysbay8FYOL63Cwu8V+cyYy1bJZ/JDaGaUkN/FArS
         qXU9X5tXA0RNENNOn7ahstpiqs92FpXxOiPyh8sljUaI+wB55tlg7hRyQJPXEY1rU4Sa
         s0yGtA91RGoittIjzNr1iWM/37JMvv1rVQmYESHO+4U4SDr7ZAAzZs7VCVwasBTzwf0P
         kEsQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5WmALjg5Kmej0r/UDw37dO8ZlnEY1Z3iMCCnFOAXGVmfPIPHhSkZyyoBYHeJQbOykAK79v0Yy59mh@vger.kernel.org
X-Gm-Message-State: AOJu0YzthznHY9p4TrsiVobgJSfNhTy/ZGLc03mMyvYIdvhZm/HP11js
	8hLn87zWZOLoHHjuvKNWIk8J7IL+ptTf/62p1E2QoQYnCnBWvBmYIxicQIxHEe6LDa+32GGwuug
	QoHPz6r3wyg4UQz5s5gExxVyklPm9z/T5AAABigfQ/NYablNUzAiifbUJc09T
X-Gm-Gg: ASbGncsGsld2BthBRp0oR2RWfEjQ7eN/ZAU/Qf0ieZwDONZzKxsbi1Yco1eyXxD7aIQ
	MOpW10xWcPQSLt0s3zVgT3/md1Fs4zYyOSEB+4zfmUzzuUohWxcIW63i4o+QpkvxqMC+SGYxN/Q
	amnDsrw+ubpeNL8rrXOQTDJUHIBTukidwHGkCV8crmXU9MIc1/8EBxcydfWm94MCyYQlVpDFS+Y
	xCMn5Jalcpfmhiy/dREeTtM6KIEy60OeB0/45SlCC4vD73iTRfQ4qhmcQcl5E3ovFZZFfivURbS
	mu1Ei0cbN6Y2ebdIHbW6ptpHFvf0HivS4Ug3Lfng4Gvo6nB3n6yhAqNDBSTvvdOQnNG5BQ==
X-Received: by 2002:a05:620a:2612:b0:7c5:18b7:4f25 with SMTP id af79cd13be357-7c53e1c4375mr521303685a.9.1741599974089;
        Mon, 10 Mar 2025 02:46:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7YuheYHS6PGU9dToJsmdjfNsj9OapzQsAAm6IkqoYz7wDIJ4He+ANVKbuM5AnL8AZiUxVHw==
X-Received: by 2002:a05:620a:2612:b0:7c5:18b7:4f25 with SMTP id af79cd13be357-7c53e1c4375mr521302185a.9.1741599973726;
        Mon, 10 Mar 2025 02:46:13 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2394826absm747393566b.55.2025.03.10.02.46.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Mar 2025 02:46:13 -0700 (PDT)
Message-ID: <dcbdeb90-d274-4914-84d3-24bd1d6e826e@oss.qualcomm.com>
Date: Mon, 10 Mar 2025 10:46:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v15 10/10] arm64: dts: qcom: sa8775p: Add CTCU and ETR
 nodes
To: Jie Gan <quic_jiegan@quicinc.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao <quic_jinlmao@quicinc.com>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250303032931.2500935-1-quic_jiegan@quicinc.com>
 <20250303032931.2500935-11-quic_jiegan@quicinc.com>
 <0be31ecd-4386-4eb6-ad6f-a4409a3fc6ad@arm.com>
 <942d0b2f-c3c1-466d-b894-9dd32ec4e6a1@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <942d0b2f-c3c1-466d-b894-9dd32ec4e6a1@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Tr8chCXh c=1 sm=1 tr=0 ts=67ceb4e6 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=7CQSdrXTAAAA:8 a=YlNZv3wqyhfgsvI1z0IA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-GUID: Yz-McI4BHmAA67a3tFkLzwI2Q3jrpFZ5
X-Proofpoint-ORIG-GUID: Yz-McI4BHmAA67a3tFkLzwI2Q3jrpFZ5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-10_04,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 priorityscore=1501 mlxlogscore=630 spamscore=0 lowpriorityscore=0
 mlxscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 bulkscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503100076

On 10.03.2025 3:57 AM, Jie Gan wrote:
> 
> 
> On 3/4/2025 8:28 PM, Suzuki K Poulose wrote:
>> On 03/03/2025 03:29, Jie Gan wrote:
>>> Add CTCU and ETR nodes in DT to enable related functionalities.
>>>
>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>> Signed-off-by: Jie Gan <quic_jiegan@quicinc.com>
>>
>> Assuming this goes via the soc tree,
>>
>> Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> 
> Hi Bjorn, Konrad
> 
> Gentle ping.
> 
> The driver part has applied. BTW, I found this patch has a conflict on tag next-20250307, do you need me to send a new rebased patch?

Yes, please resend this just this one, rebased on next/master

Konrad

