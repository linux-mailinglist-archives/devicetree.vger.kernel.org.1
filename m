Return-Path: <devicetree+bounces-177706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCCEAB8ABD
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 17:33:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 15C051BC5777
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 15:33:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAB8A218592;
	Thu, 15 May 2025 15:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jOuIMtDj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E647217664
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747323157; cv=none; b=RyRLZF/mzWXCy1rkj855KX/E0MzXatshWLqBhPVuJJ2hXtg25QtWE3Ts0VNg6WbjLiwT3Wox6iVpIgWZ0LBxr+tMGrfnJcxYjtW6SFP/MzG+aFE8lq38kAzmGX+WrvY9wpMObMC3uSvtw+3G9vmQjRZbbKAXaZi/I0PTCzjBn0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747323157; c=relaxed/simple;
	bh=klIGHXOkD03FDwy8hJgAQXn12TNZp/82FPKxqTsk8qg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bu6L6bVHZHIWmakhGELQEePKy2OceDvLgEXjVdE7DgDLM7uuPYaLLNfbtWbbrONu5tZH8E4pPzlSfg/p1P78WrSonnNNAyVLjOdwjU1wTww1jqB6h/6BNrLI1C0d2Z6y3/Xi9s+M8+K4tTY5ec7P0NQcftOX7zAOtlN8nG9KN24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jOuIMtDj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54FEFCDk024323
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:32:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SZpPiNrvgY4eYUo8F+dgbENw9B8cGscsFLmXIEga59k=; b=jOuIMtDjkRCYwdTC
	6ZW5/cui6PSOEu1f57Iym4l/L0OIlUdzwCM+JIJx7vEqCgrks9tY7YS9kKm74W9Z
	YsJdTr+iR7Nm8L1DldyOoKdHCPjuHfFefVeeKhb/WkPRFCTQNYW388YodpFYgCLx
	5ZoJBa9kdYScIVIjzI3wx82IqP++EhRfU1zxmkpvDbTMEvLXM/rScRRRweCVTVhN
	yCTBL/rFzZSvy25HGJFNdFm0pocp8I2V52PMPQBFTeZcXCIDuZcM9a0Z+P4VUrhJ
	fqtBwUVn1+NPgFYOqVWomgcVKMMlq6hj50aDawt11MurbHkvIZU8PIHXtpHrNfG7
	bHV2aw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcmxuap-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:32:35 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c54734292aso24952285a.2
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:32:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747323153; x=1747927953;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SZpPiNrvgY4eYUo8F+dgbENw9B8cGscsFLmXIEga59k=;
        b=SfYuEHk2Hv+Ph8zU/SPJV0qZw8yBTO5TZqo7RlBOiNF6qtSwmLOWKyhgb5HRhOrd9Q
         U3jFdMZ8hH06gRilTcTuEtPOdFgDUZ1M4c92hv2OlhCHPAXfdPzXPVCbLI8LkwL/nqsR
         JPNBZhl3ZOBGPOFT/n9kUIWr3xJ5YH+NjPCvDhK7fw+hLewjvufqpfVGgMYPI/mh6pK2
         5HmM0mQY+GWpgxW054kunsrV0H9oWU59RSyRqroxjoLhboOGWXOncy9lf7F/cB21YhC9
         iUX6u14Xnheb3ldAWy7B/Eg87qd2SVAFVzbzBtVkf/XdrwPJEUcH16LVJDut19Z5z/gq
         Q2og==
X-Forwarded-Encrypted: i=1; AJvYcCVMG4BhtRkEc54Z+UFCwNVKldX1KIHPUx97O2MO67SDcTQwYJfFB+WXl8/00aIVfWu46sbKVtrmXsbm@vger.kernel.org
X-Gm-Message-State: AOJu0YwBEkP00vaVwM5csRKv0svJq6F6sDbhUpNUxgQ6D4LqM4s3s/8T
	A0Di+QPFH6abEQ9Ci9M2CtdmFi82fW32USjXyOeJ9XmQATfNopXXFA9Cfr/NPl4Q+1PVk+cnLHE
	+JQeCBO0xPDELyUNfR75ay+QdZNVyAcAkjK/WmpZKIWfEtWXX3tcKy5YAgKu0fRvTrv7o
X-Gm-Gg: ASbGncscUBAd0Xa4jlWzY2PKAUUEiWObrYRx37+bo8vogeZOvRAyDXDOZV7siHd9hEC
	FA3bclCaLF8s6c8kFsLmJqCgp9VRBXfahAcRWynmYNmwkxFo2ZwSMAc3iBAzRtYXstF1F6+Pn6l
	NkshX5icbh/qfq8bho5SKp15PNVoZBcSSW1zi4mhGUbcEXp3yaQO0NQCQITV8x9yFsHU8WdVbSk
	pMzm5rVzFqM1QNF3L6mBjhL6Qk1DGjnBM17BAkdEvgNkkHmYrMXxGA0EbDfylDuGXL7cv3Lbxbe
	xsu09DI5Uq9wwxpubn19dbAvzrGjzPkHDCdoC4ucMxy1zeKNA35eKzd36fbIv1KUXw==
X-Received: by 2002:a05:620a:4392:b0:7c9:23d7:6dd6 with SMTP id af79cd13be357-7cd2885d23cmr433864385a.13.1747323153326;
        Thu, 15 May 2025 08:32:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHzzoBcSI7/4KawwWcUr7lewYJfqXtiBxcRJbuYEJLwKVy9KuCKwkIxCWmGuEw19Y7kK14/iw==
X-Received: by 2002:a05:620a:4392:b0:7c9:23d7:6dd6 with SMTP id af79cd13be357-7cd2885d23cmr433861485a.13.1747323152744;
        Thu, 15 May 2025 08:32:32 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6004d502736sm5585a12.25.2025.05.15.08.32.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 May 2025 08:32:32 -0700 (PDT)
Message-ID: <d0caa0c0-3b5c-4020-8ad5-7742dc32c6f0@oss.qualcomm.com>
Date: Thu, 15 May 2025 17:32:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 4/6] arm64: dts: qcom: ipq5332: add nodes to bringup q6
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Gokul Sriram P <gokul.sriram.p@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, quic_mmanikan@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, quic_srichara@quicinc.com,
        vignesh.viswanathan@oss.qualcomm.com
References: <20250417061245.497803-1-gokul.sriram.p@oss.qualcomm.com>
 <20250417061245.497803-5-gokul.sriram.p@oss.qualcomm.com>
 <242f6059-a32f-4ee2-a794-8a29b6449e96@oss.qualcomm.com>
 <7d4f174f-18e6-402f-9a29-c4c461d0db0b@oss.qualcomm.com>
 <wzij5uhbc6yqxnqhgfrni64gds33chsuiac3no73otdkihft4c@wgvrfio26sze>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <wzij5uhbc6yqxnqhgfrni64gds33chsuiac3no73otdkihft4c@wgvrfio26sze>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: V1EZmFWhTexDzt02mtQEZKwiQ_uil-5F
X-Authority-Analysis: v=2.4 cv=HZ4UTjE8 c=1 sm=1 tr=0 ts=68260913 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=TaugYdf9BiJrfqk99gEA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: V1EZmFWhTexDzt02mtQEZKwiQ_uil-5F
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE1MDE1NCBTYWx0ZWRfX8wuepdOnh6x1
 9wJtOJqLQdLO/0w6LxYVzlLS5xv1nEYiOVS2sXB/73lLbxjrQnNJ8G9IzefWVejvmNBkgfoI/6A
 eSajbJ0SYpmTHTAvweCkG+RUDBFcjoAiWBtu6CaqSeOS6aVEO4zpYfa4Wv3jzRdB8gmSBCe14b+
 awDROA1K6U7l9+8EU7aon+LqL/0chI8yJ94nW/1K+qOddlQbRcCL8j1motngSG+NXuCKFgqpNDP
 91MxvBD52jjqQaYi7qd06wUhJNerfOZAXe40ZxxtX72OH7IZk5UFVH5jYQCxuJfckqCZEdprJcc
 Uu61BK1GufZE3m74svWJd7fM2ngnC5V7VV+BRKtuV5rQlLkp+4VKbTDi6kBwrDczm16jJFX+PWe
 afaRBFx3sTIP0h0QOqK+FTv8X1q2H4Qx7dQ8ZDeXIURTKOkJrqzOralbstseof907C0GwG+p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-15_06,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 mlxscore=0 mlxlogscore=899 lowpriorityscore=0 malwarescore=0
 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505150154

On 5/15/25 10:15 AM, Dmitry Baryshkov wrote:
> On Thu, May 15, 2025 at 09:46:50AM +0530, Gokul Sriram P wrote:
>>
>> On 4/26/2025 1:53 AM, Konrad Dybcio wrote:
>>> On 4/17/25 8:12 AM, Gokul Sriram Palanisamy wrote:
>>>> From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
>>>>
>>>> Enable nodes required for q6 remoteproc bring up.
>>>>
>>>> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
>>>> Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
>>>> ---
>>>> changes since v3:
>>>>         - added necessary padding for 8digt hex address in dts 
>>>>         - fixed firmware-name to use .mbn format
>>>>
>>>>  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 64 ++++++++++++++++++++++++++-
>>>>  1 file changed, 63 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
>>>> index 69dda757925d..fc120fd8b274 100644
>>>> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
>>>> @@ -2,7 +2,7 @@
>>>>  /*
>>>>   * IPQ5332 device tree source
>>>>   *
>>>> - * Copyright (c) 2022-2023 Qualcomm Innovation Center, Inc. All rights reserved.
>>>> + * Copyright (c) 2022-2025 Qualcomm Innovation Center, Inc. All rights reserved.
>>>>   */
>>>>  
>>>>  #include <dt-bindings/clock/qcom,apss-ipq.h>
>>>> @@ -146,6 +146,11 @@ smem@4a800000 {
>>>>  
>>>>  			hwlocks = <&tcsr_mutex 3>;
>>>>  		};
>>>> +
>>>> +		q6_region: wcss@4a900000 {
>>>> +			reg = <0x0 0x4a900000 0x0 0x2b00000>;
>>>> +			no-map;
>>>> +		};
>>>>  	};
>>>>  
>>>>  	soc@0 {
>>>> @@ -545,6 +550,39 @@ frame@b128000 {
>>>>  				status = "disabled";
>>>>  			};
>>>>  		};
>>>> +
>>>> +		q6v5_wcss: remoteproc@d100000 {
>>>> +			compatible = "qcom,ipq5332-wcss-sec-pil";
>>>> +			reg = <0x0d100000 0x4040>;
>>> This is 0x10_000-long
>>>
>>>> +			firmware-name = "ath12k/IPQ5332/hw1.0/q6_fw0.mbn";
>>> Is the firmware OEM signed?
>>>
>> No. This isn't OEM signed. userPD firmwares will only be OEM signed.
> 
> Indeed, it contains only Qualcomm / QTI signature, OEM signature is not
> present.

Good, thanks for confirming

with the size changed

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


