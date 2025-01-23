Return-Path: <devicetree+bounces-140557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 032F6A1A3AE
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 12:59:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 35E7B169F0C
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 11:59:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3332520E318;
	Thu, 23 Jan 2025 11:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DCozjR71"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F4620D4F2
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 11:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737633581; cv=none; b=BgUOC1OQ9t+H9QPDYAN/9UIth0ZafvmLC78T5no6tXCY3ELrRlQlt80azWMNYyE7tjJzC64IIOWFd5XZaKIzyBrz2p5r0urBt9tPCuzObYS2tH9+TMGyD0wSwXXSgAeizlBq1LWEsC22uu3XSY0QRuS2YXLkwvVsHgO6B2aGkpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737633581; c=relaxed/simple;
	bh=lQiYTjEY3RXRkLXX0bIfEPjtCykBnhhJXIG9IIm2IEo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N6U30xub2bEAKcNWWR062nNVsnOiBAxWEMTz6OzH+Ube4O7HF+ciLSGInqO9dtAusPXY+ddTaiTBfe30w7Zk5SHhHMNaSVuPRb98iJP0emgEoxSx+vIrmPw2PGRkeOnUQURIKnLqK2/kurahJen1gi/go+haVBEd981i2uSUOGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DCozjR71; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50N4rdqF023144
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 11:59:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wXGd4w7cLYLsVkVkk1t8XotN4LpsoRfXv7P5SgJ0Zs0=; b=DCozjR717wo0iRWC
	ygObWPDSrnNO7hn+Ku/H2CiwQLgFOpczLPU99s/qZexZarO+u48jdneM0rgRVc6i
	w9v9+jQl0F1zn9JSYqd1AddVA5HltM9FNDnAin35cvAZsOcFCuzL90SZId9kPaOs
	WEN4aUAGsGBsDOtrvAeHQ7YtdkRa4/nLZ0VVXp/jbT8PZi9lIue+csRM9MVM/tSl
	p0AwskVBDJd1bTWPMogoYXN3FYld9uT1XI2SNOYTbltE4485nOCtNn1Lx+3yuTyB
	EJBwkCw9Q7s6N/8R77ONEI5lG9ZExOEaGXzno6daevr0E+M9f3q8rTas5EvGMeh8
	LPj1Ig==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44bf518y4v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 11:59:38 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6dfba8de3cdso1153216d6.0
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 03:59:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737633577; x=1738238377;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wXGd4w7cLYLsVkVkk1t8XotN4LpsoRfXv7P5SgJ0Zs0=;
        b=JEfE2iMp2pk3pRC41EwmHJROzwYWv4Z4/kPdSP2QPHU7DVqAUiniabWmwq2R+qyIPq
         XdXUnG1zIfSgGfUotqVPZlIb8vOySEqd717xGSB8MxUKIq26r6NBN/CqM4pSTNAw+nEH
         +VMtWs+nGmbOhH/ZpsO/OgduNRynZKUHVx4QWB71+Yj1N8E3c+u+cFeLQBFVznnaYfov
         HHf87vBC3jVEt91k31Qw3FCSB0IRX7kcdeZN7WI3Gir6cGV0HQ/trPwMwuxO9WdchFj9
         C/OCyCUF1gt6D0GlyUf+C4VsGoAvZcsg5NefPjhneXrryTaLuEA26u+p6bUPNBwIN83p
         ZkNg==
X-Forwarded-Encrypted: i=1; AJvYcCW/rJ4umY6nV0WYox6k1cen3MkkVA9dEX1UDO2xloBX7zFzdEgr5B94osaGq1bXRJdotOf3fWLeQ+tH@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6fWeqVRfYF+m6IeiTQ14/r1wFvh7MSafgiXCgp4uslByIkw0u
	/JIgNaXgme9+n9G84Jr56tBZYpRnDY4tAQUtbXws7OcI/BXzXIOm0OLtc0l8U8oKTywh8KyDCr3
	z/Iuwu1Ds+ynaV0w/w6q8fxlbMJ/kygVWZ2cJJZjuepeGX6u48Vnvzm+66T9p
X-Gm-Gg: ASbGncsapVCyHwmf1DUQwy5zEoPAhk8R7TIj8EdG4fMncRXbgb2Al444GWVHEUfGTUA
	ph4koX9WKVcAHc8mzpGDLzWQvThO0zg3gWpnh3ZMa+i5FUWkOgpjNPLVwiukMw9tAIIVBdaqD3i
	PimMbmlRUmux2oTZPyv84PqmWvuH4qeykVjY3N0j/T8Ae9oKff42E71kJqhLPaGOJ33lC3RIpoR
	EiZwDI8VS90oghQ6XbiXUS5mfP4O+FUZPPqfyfA22puCW8QERsU6C/GUNmyneYEatIzVeHUY0IB
	vRTR6Mfn6SUNjgbUtK8ry6ok40k1pNS+ea5b0D6slIebs7Cu
X-Received: by 2002:a05:6214:528a:b0:6d8:a67e:b2ff with SMTP id 6a1803df08f44-6e1ee731234mr38969216d6.8.1737633577360;
        Thu, 23 Jan 2025 03:59:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF8W42bndH+Tx3Rpbi9b1HXVwp/kXbpWQSwyBro1jIhQlIiJW0rfoo+cJ05uocTDr1+hfh0HQ==
X-Received: by 2002:a05:6214:528a:b0:6d8:a67e:b2ff with SMTP id 6a1803df08f44-6e1ee731234mr38969076d6.8.1737633577014;
        Thu, 23 Jan 2025 03:59:37 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384f22c75sm1042610966b.88.2025.01.23.03.59.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2025 03:59:36 -0800 (PST)
Message-ID: <bc0f90e4-dc66-470b-a771-e52e451aaec4@oss.qualcomm.com>
Date: Thu, 23 Jan 2025 12:59:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sm8650: setup gpu thermal with
 higher temperatures
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250110-topic-sm8650-thermal-cpu-idle-v2-0-5787ad79abbb@linaro.org>
 <20250110-topic-sm8650-thermal-cpu-idle-v2-2-5787ad79abbb@linaro.org>
 <8fc3b958-5c2f-4c79-8dc0-d1eec9f5e47d@quicinc.com>
 <56023e4f-d60b-41c3-a3c9-ba768613e9b2@oss.qualcomm.com>
 <de6a6943-11eb-468a-b6c1-406929c576d3@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <de6a6943-11eb-468a-b6c1-406929c576d3@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: SlFz5ZoxiMTDZKe4jU2QnuaspyzOFdzR
X-Proofpoint-GUID: SlFz5ZoxiMTDZKe4jU2QnuaspyzOFdzR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-23_05,2025-01-22_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 clxscore=1015
 lowpriorityscore=0 bulkscore=0 phishscore=0 priorityscore=1501 spamscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=999 mlxscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501230091

On 22.01.2025 3:09 PM, Akhil P Oommen wrote:
> On 1/17/2025 2:50 AM, Konrad Dybcio wrote:
>> On 13.01.2025 11:28 AM, Akhil P Oommen wrote:
>>> On 1/10/2025 4:06 PM, Neil Armstrong wrote:
>>>> On the SM8650, the dynamic clock and voltage scaling (DCVS) for the GPU
>>>> is done in an hardware controlled loop by the GPU Management Unit (GMU).
>>>>
>>>> Since the GMU does a better job at maintaining the GPUs temperature in an
>>>> acceptable range by taking in account more parameters like the die
>>>> characteristics or other internal sensors, it makes no sense to try
>>>> and reproduce a similar set of constraints with the Linux devfreq thermal
>>>> core.
>>>
>>> Just FYI, this description is incorrect. SM8650's GMU doesn't do any
>>> sort of thermal management.
>>
>> What's this for then? Just reacting to thermal pressure?
>>
>> https://git.codelinaro.org/clo/le/platform/vendor/qcom/opensource/graphics-kernel/-/commit/e4387d101d14965c8f2c67e10a6a9499c1a88af4
>>
> 
> I don't think those TSENSE configs matters on SM8650 in production.

OK, thanks 

Konrad

