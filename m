Return-Path: <devicetree+bounces-176735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 379B3AB55A3
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 15:10:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB7C51889AFC
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 13:10:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2029128E56E;
	Tue, 13 May 2025 13:10:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BgFcqkIz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478D528DB72
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 13:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747141800; cv=none; b=q9/ksX+4hXsB+zsfZ6IEPzn1B4q6gYfB1QTfnTTg4kLCcjVWbfYcggGRQOXp0ucHa9wv1VZK/A3YxayUukW2S6HktuuX4+/VYc2c6/X78e3EFbY1COXuNnSabntejlQE5ZIvrctkqaf9YR1MuZJFKS4G9MS5TjGgaDKu7s/79/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747141800; c=relaxed/simple;
	bh=jfCoKS4Br98qE8qMWlnXf8J24ypY3RI8HsC6GR76r4s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XG+HmOWpJT8iT5buVnmEUhRGcJVx/KQ+C0tbmIOXyq8Bw/d1seLFOMALkrEOVk7DbTKn0vEuMkaQhaxlxgIAk8PtXpU2jsKppi/oxayxpLeS2n3ej8nTrgh/V9KCp2QzTmP9Z3WkR/HP4xqc2uULb+tdEUOv08iy2ec4TeUcl5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BgFcqkIz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54DCRl1T010230
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 13:09:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dgqQjoXn/mz0+0JWmqaVq0Nb/xIIVOaxCiU1TbW7BVQ=; b=BgFcqkIzTxWWbobU
	wwihS5T660k7P57/l/N+Aktm/klgf8K5wF/bCO3yxOR6D4EOWUvkOnpqRbuFrPJR
	tIG7MlCRMPdMMnim4lrWlzmWmzefdHJCsyOEMMsN1yILIGfX1RWvzfLaWGMCnxI1
	SE0XwMMLjHeIsM5WuJ/FI9yGC5bJ6jpQqTR0nLa7iq5yJ/OF9mMjeOBZR5WLCCHT
	3afO4dDtPVtU6oZ5tXG1El0kMtJILDbrx8yndvpf2GmW0sN+g+ui360TVndQLNwi
	OqPwFNamWtJj7SVEdsrUnAfwR8iEZ1jLmz83V95kEZP7LAwsmXHZt0PhGpzn6ecn
	9zE93g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46hv5qg4qb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 13:09:56 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5ad42d6bcso157688985a.2
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 06:09:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747141796; x=1747746596;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dgqQjoXn/mz0+0JWmqaVq0Nb/xIIVOaxCiU1TbW7BVQ=;
        b=UegiqSwPYbkC3yMQmEVmvMezWVXY9qoyFaGJgBv4MQ+mFuWjWaWnKURr4xEDQ73UiN
         zM4lviQ/sZGEAiXWVu7QUGAyvT/+FtKCpE92H1dGTzXVDk5NGP9D8elrnUn5GMM7jwzf
         3zezekMHdxHzFrr+k4UTxZG8bNNt5xlZKDcF2IOi3q5dmsvmsOYTtS1G+LhTT8IIiwdC
         Ab7Q0Mt2mSz9wXB2DFRClpaAOfxwHDEiTS9zbC8vbkjg1o6QOPeO+Sp6VrCHWa5bN4ZR
         mz0d06VW7RuvL0XAOzSpWTawM6v8eIKPZoGGsny/lUNip2Avog1W+wzSEAX9H1issNZw
         i5tA==
X-Forwarded-Encrypted: i=1; AJvYcCWWfEGhnWFiYd5HlazV+0xscG4doraLL9OkhQJMuFrWTIV7/F+FUehtIDvVMtkfu09Tdw3Vx1NOwNdZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ7JV+nEBIAu/D2w6Xw6CAhFzx/QI8bym+aKvXRiJpXa//djBM
	9ezgHoi6013xA0GMgEFe4BH71be3J6MvFeYF9SjMbEFnyEaiNy0UXMGsMCJ+sgZtn4YQ24d1H/P
	P34j76WY2+aMxbYnYmXyCg+zRGRMluXoJ6ufc+RLhiRRRX3ZNpHot7Pqz0knv
X-Gm-Gg: ASbGncvDJus7M1ETySYRnv8OyK0DYTs9k1VxO5qUJbrBw6PGLz6qNWT8IE/rZ/wBOE4
	VsBcHM+lXySdY+LjXyV1ASuNY4hF4JPTxqJeBy8kW6b+PJGj+E6olHyOL3uziODIkE22N3Qbx3E
	39AZ8FVV1j82im1O75/cjX2pHc0pmL3InfzifqNBmVzusBlTrYlH3ycCYtl6e/dTS8Of08Y6KVr
	+L6me1G486bD4ga5ENmzG4z16ABaunQidR3VUdwshhAW3TCgBmwY21jll9bl59e1/qwfxANXY8I
	Txp7l8wi0KfWEjcb5woACZ3rgqFXzz78U4alAztHwuQGNQuIUTS52IO6OUCXDcc2/A==
X-Received: by 2002:a05:620a:4621:b0:7c3:cccc:8790 with SMTP id af79cd13be357-7cd01209dcbmr1133996085a.5.1747141795994;
        Tue, 13 May 2025 06:09:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHdFtK9juUmc0ai1W7MGI4fFewuXp29EYzh0Mnsqifnw7jvpAjmStbjPMKlcmyqOWJnBAZi1g==
X-Received: by 2002:a05:620a:4621:b0:7c3:cccc:8790 with SMTP id af79cd13be357-7cd01209dcbmr1133993485a.5.1747141795533;
        Tue, 13 May 2025 06:09:55 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad22ba47376sm658958666b.53.2025.05.13.06.09.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 May 2025 06:09:55 -0700 (PDT)
Message-ID: <3f346bdc-81a4-4620-9a31-25c41d591c58@oss.qualcomm.com>
Date: Tue, 13 May 2025 15:09:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Add adsp fastrpc support
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Alexey Klimov <alexey.klimov@linaro.org>, andersson@kernel.org,
        konradybcio@kernel.org, linux-arm-msm@vger.kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        srini@kernel.org, quic_ekangupt@quicinc.com,
        krzysztof.kozlowski@linaro.org,
        "Bharath Kumar (QUIC)" <quic_bkumar@quicinc.com>,
        "Chenna Kesava Raju (QUIC)" <quic_chennak@quicinc.com>
References: <20250502011539.739937-1-alexey.klimov@linaro.org>
 <10f69da3-6f94-4249-a8f3-459dc48fa5e1@oss.qualcomm.com>
 <D9R4NCKH46WP.14C8F7W4M58ZQ@linaro.org>
 <3c0fea8d-0715-40e6-bed9-e0961bf034e0@oss.qualcomm.com>
 <bb68da04-ef52-4172-8b6e-f4027bcc2786@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <bb68da04-ef52-4172-8b6e-f4027bcc2786@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=DqtW+H/+ c=1 sm=1 tr=0 ts=682344a4 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=KKAkSRfTAAAA:8 a=UvE4O2ndLqCJbkWAjTIA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: YO3QLSbhWwd3UVx0xgr3R0sjLbfD9Kk0
X-Proofpoint-GUID: YO3QLSbhWwd3UVx0xgr3R0sjLbfD9Kk0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTEzMDEyNSBTYWx0ZWRfX2VP5GhTIqyrr
 YpMM4yAsnE65N3IOlZYfd0ZNIJN9QNxazGemH88B5ZmM1nUNUS8HNSUQC379ngV9k8Zjn1APLkF
 QibQe3MBw/L9BKPqfjhzOJ/lCFdtfzlloJG/lUft/sR/1cedSextKrf0RHqQLcfu6t6wKARg1ZJ
 z13Ujiu5EMTZKn3tQfpNMzlG1tG/6BmSDx1QC6G1A6qmdqT3YZODfvAgM+6ZL+pcQHuo1W2KF/g
 K3QTmZUVNBB6/EiFoMAyHvw32JRYPxu+W7NAlWQa93PwXIDC7p5fbgpGqCUMWVUpNfX6LhIzzHm
 noBVjQ/3E6C6GkByNKVqvNJr66CYS/2RSv+OnYkwMvYXbGUaBtUjrMWBTUW0Afzd9aMVnHnmvtG
 zMFHx3UWlQvj0u+rTYcDZtwMTEk0P+9YX4yzcUNSyico4jIYY8fKmO8mSJickxu2uuvr+8ep
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-13_01,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 bulkscore=0 phishscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 mlxlogscore=999 malwarescore=0
 suspectscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505130125

On 5/9/25 5:42 AM, Ekansh Gupta wrote:
> 
> 
> On 5/9/2025 4:27 AM, Konrad Dybcio wrote:
>> On 5/9/25 12:20 AM, Alexey Klimov wrote:
>>> On Fri May 2, 2025 at 10:38 AM BST, Konrad Dybcio wrote:
>>>> On 5/2/25 3:15 AM, Alexey Klimov wrote:
>>>>> While at this, also add required memory region for fastrpc.
>>>>>
>>>>> Tested on sm8750-mtp device with adsprpdcd.
>>>>>
>>>>> Cc: Ekansh Gupta <quic_ekangupt@quicinc.com>
>>>>> Cc: Srinivas Kandagatla <srini@kernel.org>
>>>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>>>>> ---
>>>>>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 70 ++++++++++++++++++++++++++++
>>>>>  1 file changed, 70 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>>>>> index 149d2ed17641..48ee66125a89 100644
>>>>> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
>>>>> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>>>>> @@ -7,6 +7,7 @@
>>>>>  #include <dt-bindings/clock/qcom,sm8750-gcc.h>
>>>>>  #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
>>>>>  #include <dt-bindings/dma/qcom-gpi.h>
>>>>> +#include <dt-bindings/firmware/qcom,scm.h>
>>>>>  #include <dt-bindings/interconnect/qcom,icc.h>
>>>>>  #include <dt-bindings/interconnect/qcom,sm8750-rpmh.h>
>>>>>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>>>>> @@ -523,6 +524,14 @@ llcc_lpi_mem: llcc-lpi@ff800000 {
>>>>>  			reg = <0x0 0xff800000 0x0 0x800000>;
>>>>>  			no-map;
>>>>>  		};
>>>>> +
>>>>> +		adsp_rpc_remote_heap_mem: adsp-rpc-remote-heap {
>>>>> +			compatible = "shared-dma-pool";
>>>>> +			alloc-ranges = <0x0 0x00000000 0x0 0xffffffff>;
>>>>> +			alignment = <0x0 0x400000>;
>>>>> +			size = <0x0 0xc00000>;
>>>>> +			reusable;
>>>>> +		};
>>>>>  	};
>>>>>  
>>>>>  	smp2p-adsp {
>>>>> @@ -2237,6 +2246,67 @@ q6prmcc: clock-controller {
>>>>>  						};
>>>>>  					};
>>>>>  				};
>>>>> +
>>>>> +				fastrpc {
>>>>> +					compatible = "qcom,fastrpc";
>>>>> +					qcom,glink-channels = "fastrpcglink-apps-dsp";
>>>>> +					label = "adsp";
>>>>> +					memory-region = <&adsp_rpc_remote_heap_mem>;
>>>> IIUC the driver only considers this on the sensor DSP
>>> Memory region is required for audio protection domain + adsprpdcd as far as I know.
>> next-20250508
>>
>> rmem_node = of_parse_phandle(rdev->of_node, "memory-region", 0);
>> if (domain_id == SDSP_DOMAIN_ID && rmem_node) {
>> 	// ...
>> }
>>
>> maybe some driver changes are still pending?
> 
> Would like to add some more details here:
> 
> Memory region is required for audio PD for dynamic loading and remote heap memory
> requirements. Some initial memory(~2MB) is allocated initially when audio daemon
> is getting attached[1] and this memory is added to audio PD memory pool.
> 
> Additionally, if there is some additional memory requirement from audio PD, the
> PD can request for more memory using remote heap request[2]
> 
> The support for SDSP was added sometime back[3] to support SDSP usecases on some old
> platform as there were no dedicated context banks for SDSP there. On recent platforms,
> context banks are available wherever SDSP is supported. 
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/misc/fastrpc.c#n1273
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/misc/fastrpc.c#n1884
> [3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/misc/fastrpc.c?id=c3c0363bc72d4d0907a6d446d7424b3f022ce82a

Ok, this was mildly confusing given there's specific "normal" region
handling, but the DMA allocator takes care of this one

Konrad

