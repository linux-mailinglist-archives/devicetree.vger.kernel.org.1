Return-Path: <devicetree+bounces-175762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 972BDAB1BE0
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 20:03:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B6D1B1C07FDA
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 18:03:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8876E23BF8F;
	Fri,  9 May 2025 18:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mDasjPpM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E053622FF55
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 18:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746813780; cv=none; b=uKt+g2xZk67xnWcGbewqi8C2S/HYLXBgXOVK9cvxKwh4b1z8mvBpdfphNvMB4ewdEj4UHw6vpCfKxMj8DBB9+rhQ3rbVfAzts3vnXMTyl57lw2YCUCC9vzXkI0rZSncn+cY2fgiK8GB1ZzQEvR4zL2s2wrKgii3qWfBY3Nr5BmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746813780; c=relaxed/simple;
	bh=ZIcyS27rQ44wA2rhUwsJcyfukwsta/XXKcwIdNEYnhw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TT9CZ5WJu/nL1OZXGzm5WX9i25eSNdIOKm2yaptPBflCpx/7R8Vkp5dDOA6+5HGpJzvna3NZ6ZXeN6VU7q2ULdljlAz0P8S7JVwJtTzJ0Cov1yerOJaipdtdFj+6Fkpo15oJRD399KP6D42o0nROcqolykwzTk/Zc50sdE4120Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mDasjPpM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 549Bw1uS016178
	for <devicetree@vger.kernel.org>; Fri, 9 May 2025 18:02:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	E2kTzsEzvc2vSlVV9w7qrpMW0vs7WPrV2tLOCqgo7oM=; b=mDasjPpMC8LUxtnz
	ne7Nc2ZjrGXV2nFeykgiUwnX8vz429Bx/65i5+ScsnW8gWeZhNroBbMHgzy8LqtP
	rwk+esEWBO95ae119kg1xEM8g664kQkiZYLoON1UCa4MkFMS/5+FZQ8BtvVlvV77
	fnFEfkaifXjQlNmeaDNWSscbbRRzcEyOQmbGAf6cw7c7mPuyLkzNu52t+JHcWfz5
	PRMA+iqtA3EI2QAHEldfNf5dygimjjiq30whgMxTVNa2XwhRQRYgCB9o+Zqj/A2Q
	h0WkOCeS9hrNNDnS1vMh/cORsbzCTM1gdD6llQ1b6f2oySyu4xci9NUip3seFSQL
	V1ESyw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnp8wd8a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 May 2025 18:02:50 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-22e39ff4ad4so31224775ad.3
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 11:02:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746813769; x=1747418569;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E2kTzsEzvc2vSlVV9w7qrpMW0vs7WPrV2tLOCqgo7oM=;
        b=WfSKh2oQu5RmlTsZ6pV61b51r3kwqZwt2DaemRVWLWuJiFUIL++SfZR26nXtv1zosT
         FCpU69RByA0GmF1KU9mjE2wTgT2y4A0/Edw0pwMX0PQovWf9hzSlbYsq7v1eRCWnIx+x
         prvh2DP/tBf0EzIcT94FMtW0oNOWgI2jL6nvsrdL4vUTPJGugU6p4Xd8OcEdWV2G12TP
         D9xLJBdv0MjqQlkBBtYm+awFR6KcZUlu2fKo0jyDm8nRQrpQwEwDkVrylSHuqB3b8J4m
         8Q2to3qaNq8qJFAsTafDxvwiKPLpl0M8ivKNG6r4GHHh5h4WO6p7/+VenN3WBJ0ygUeb
         6xmw==
X-Forwarded-Encrypted: i=1; AJvYcCU27LrexkV0Zmu0k1/zQlPRgoJ4hUQ8L3iSSg32iwXeDUBVkw7mJR2aRQgCA8AgFAMcTzAKiZAH2Iyo@vger.kernel.org
X-Gm-Message-State: AOJu0YzpUPCcQM7NGukWsGjcYPty74fp7SD2/M295MYG3GPBeGfLCXjq
	qBUHrx6CNzEQNUDMjrWhXgf78RVDAkD68zHGjLcj7rBFz5qsHeQ1iP8nVrlZQKiqIfkfnQvuZX0
	pbjAEwh2BpY4j2eYUzcgZtJaHSvDAdcQGPeTF8569KPIH1Mb+miiH7tZUOxp8
X-Gm-Gg: ASbGnctzqKKFVVlad6mg7xl4uXQ0eFv3S5AynfUgthO7r0i8FTE7B+797fGmOzcdkYa
	8FfhUy2T3aS0SUVtvEgyz9n/G1BcSftVT/0IISczGXRt3dOadGAs8u9z2k4aINny6RjP04qEsfh
	Yu0amS7UEgbjPHLVj3BNNMBXlipS4AxGHXXBT8EONm8+4VCWEf8URw/qcfGp7g+Pl26Co3Fjmhr
	loCBx97CvG7DPnHFhbgjq6DeYRQcfSIMhi41qNATH9AcJ/gDIh1KrYd/hDdyIN7eyDvsr2dep5S
	r4YLIsJ9NoPLqJnwjlZWyPqP9PN8/SIU2dRweQ==
X-Received: by 2002:a17:903:46cf:b0:224:2717:7993 with SMTP id d9443c01a7336-22fc91c19a3mr53596525ad.45.1746813769386;
        Fri, 09 May 2025 11:02:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMxsQC/modTBtbEYUAjzYgXPOhyKCnAxgn3ELoCoHFHkwbP5OWPkbs7K6ALzvvJuxOAazQPg==
X-Received: by 2002:a17:903:46cf:b0:224:2717:7993 with SMTP id d9443c01a7336-22fc91c19a3mr53596045ad.45.1746813768988;
        Fri, 09 May 2025 11:02:48 -0700 (PDT)
Received: from [192.168.1.8] ([136.185.65.185])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc828b1bdsm20287155ad.169.2025.05.09.11.02.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 May 2025 11:02:48 -0700 (PDT)
Message-ID: <125b4e86-8a72-4338-91cf-08f7e988b167@oss.qualcomm.com>
Date: Fri, 9 May 2025 23:32:42 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Add adsp fastrpc support
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Alexey Klimov <alexey.klimov@linaro.org>,
        linux-arm-msm@vger.kernel.org
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        quic_ekangupt@quicinc.com, krzysztof.kozlowski@linaro.org
References: <20250502011539.739937-1-alexey.klimov@linaro.org>
 <bf9291e1-bdad-4b4d-b527-b21963970902@oss.qualcomm.com>
 <D9RNPEB01S78.24ONMK7M7HHSK@linaro.org>
 <90a1ce3e-140b-4076-b34d-9545d1b0c568@oss.qualcomm.com>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <90a1ce3e-140b-4076-b34d-9545d1b0c568@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 0egxIisHgFlW-rkL72KwH9KiYGkQUcfP
X-Proofpoint-ORIG-GUID: 0egxIisHgFlW-rkL72KwH9KiYGkQUcfP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA5MDE4MCBTYWx0ZWRfX7aXlilS79qEp
 j62bpIr4hMBXIZ7yhY47NnGnve7VpO1atNoAQ/RD2mn7KmMr+WtOecbISOBJcLVcvzoovU77v9F
 9VkqJwOqn7X8u1lXINQlU7PU3pb5FaTijja71+Q8KTOUrKXQRy7mfmrpl2zUdKMcDkrwKMSztmN
 E34D7IFjkQuup307HmFf8PYCVhmX50iG8juFOmBUYzj/KVDSyhSc5d5ZEkJfYf436bsgtp8T5D4
 7imlEgJv9lBAEqoDNMwct5XHaZd/bRldDhCzUtvgkBXvTV3ap+73ouiUGJ/kpN2StkdG8tB+BXg
 C7GTg1R1o91h54jVKl12ZaNAmVjas3qcEBAgynXDd4oguVna/pH5JjOcrFrEY2nnEg6P6a29wLn
 57szB5PO9y9HpHFbW7LNySfOuglI9ZfhpNQbdUTTeABrQS+CbPILrbSSYROb6VWSNfTeKMqm
X-Authority-Analysis: v=2.4 cv=e/4GSbp/ c=1 sm=1 tr=0 ts=681e434a cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=20agjGjj1uVRDl60VMvrOw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=o_OlpikLB100usM1RrUA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-09_07,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0 clxscore=1015
 mlxlogscore=993 spamscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 mlxscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505090180



On 5/9/2025 7:01 PM, Srinivas Kandagatla wrote:
> On 5/9/25 14:16, Alexey Klimov wrote:
>> On Fri May 2, 2025 at 11:51 AM BST, Srinivas Kandagatla wrote:
>>> On 5/2/25 02:15, Alexey Klimov wrote:
>>>> While at this, also add required memory region for fastrpc.
>>>>
>>>> Tested on sm8750-mtp device with adsprpdcd.
>>>>
>>>> Cc: Ekansh Gupta <quic_ekangupt@quicinc.com>
>>>> Cc: Srinivas Kandagatla <srini@kernel.org>
>>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>>>> ---
>>>>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 70 ++++++++++++++++++++++++++++
>>>>  1 file changed, 70 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>>>> index 149d2ed17641..48ee66125a89 100644
>>>> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>>>> @@ -7,6 +7,7 @@
>>>>  #include <dt-bindings/clock/qcom,sm8750-gcc.h>
>>>>  #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
>>>>  #include <dt-bindings/dma/qcom-gpi.h>
>>>> +#include <dt-bindings/firmware/qcom,scm.h>
>>>>  #include <dt-bindings/interconnect/qcom,icc.h>
>>>>  #include <dt-bindings/interconnect/qcom,sm8750-rpmh.h>
>>>>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>>>> @@ -523,6 +524,14 @@ llcc_lpi_mem: llcc-lpi@ff800000 {
>>>>  			reg = <0x0 0xff800000 0x0 0x800000>;
>>>>  			no-map;
>>>>  		};
>>>> +
>>>> +		adsp_rpc_remote_heap_mem: adsp-rpc-remote-heap {
>>>> +			compatible = "shared-dma-pool";
>>>> +			alloc-ranges = <0x0 0x00000000 0x0 0xffffffff>;
>>>> +			alignment = <0x0 0x400000>;
>>>> +			size = <0x0 0xc00000>;
>>>> +			reusable;
>>>> +		};
>>>>  	};
>>>>  
>>>>  	smp2p-adsp {
>>>> @@ -2237,6 +2246,67 @@ q6prmcc: clock-controller {
>>>>  						};
>>>>  					};
>>>>  				};
>>>> +
>>>> +				fastrpc {
>>>> +					compatible = "qcom,fastrpc";
>>>> +					qcom,glink-channels = "fastrpcglink-apps-dsp";
>>>> +					label = "adsp";
>>>> +					memory-region = <&adsp_rpc_remote_heap_mem>;
>>>> +					qcom,vmids = <QCOM_SCM_VMID_LPASS
>>>> +						      QCOM_SCM_VMID_ADSP_HEAP>;
>>>> +					qcom,non-secure-domain;
>>> Any reason why we what to mark adsp as non-secure domain by default?
>> No particular reason. That's what we went with on other platforms, so this just follows
>> the same. If we need to update this flag to secure then most likely that should be done
>> for some other platforms as well.
>> The only thing I know that adsprpcd + audio pd works with non-secure flag.
>> I can try to re-test with secure flag.
>>
> I know that this is loosely enforced in the current state.
> We want adsp to be always in secure mode as it will have access to some
> of the IP blocks inside the DSP other than just hexagon compute.
>
>
>> Ekansh, do we have any preference here regarding this?
> @Ekansh, we should provide that clarity in dt bindings.

qcom,non-secure-domain should actually represent the DSPs supporting
unsigned PD(low privileged) and secure only supports Signed PD(privileged).
I had added some details here[1] also.

I agree with Srini's point about providing clarity in dt bindings for this
property. I'll send some changes for this.

[1] https://lore.kernel.org/all/412fe24e-ce70-4733-ace5-d3fbe43476c4@oss.qualcomm.com/

//Ekansh

>
> --srini
>> Best regards,
>> Alexey


