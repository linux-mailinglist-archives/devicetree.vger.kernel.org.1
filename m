Return-Path: <devicetree+bounces-175635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB6EAB1542
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 15:33:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0D1D3A8C53
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 13:31:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EB1928DF10;
	Fri,  9 May 2025 13:31:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aUWlu45A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C15C52749F6
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 13:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746797504; cv=none; b=mTXlT6i1DOubOYOkxFUy9Hc7HAyrnTF/3AyYQF/R5LIPP6yccEiKyX0A5BzZILOMzNS1MweVdkzARDu4bujPb/pTfqWgmlnGggzVnDCX8wlQt/q379EKzR/jd1DeH2XsMLcXODQoX53CJhgrf5qaNAkN42nWjKW4mIOaDFkaJUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746797504; c=relaxed/simple;
	bh=QpUpPbG5svYT68qq1x+MaBeqBT1A0NlqpUGMuN3j95I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hcjgDKu0/+fU2+ohRyJiWjMZqix6nNQY+WUWX2hP1iK7IrIxPVO2k4Hn4EhZwfHk6RxxftxKE6jat2MnKxuYbgmUNyixCdYkYnaV4w/y7qNXMFOkVaJpMdpg/t/JjRNBe/HQX2MgGAH3PyJ6+cLQua1sA1JnOhRHpYwcJfgxvMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aUWlu45A; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 549C5Evg022793
	for <devicetree@vger.kernel.org>; Fri, 9 May 2025 13:31:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H/mFBQYhKgbj0hFzRcljV/UBoTZzDtA2j70YoMKBcnw=; b=aUWlu45AWReBAs8C
	NkJlMLyVy0N3RHeudCpffh6A38sQTXir03AJYx50K4JnnfRLz2vjhg0MchQzZtLo
	HBY1bP44z5PVsMkUwgLNjrc886lTsxS/1O949AVP+gTkMcgGuWM8N1/qU6lwseBA
	zjYW8Old6otzLv9udA7d9Nn+hUZwYSS4T+I9uRr3tVzd2LUOU85LtWlsnJxkY7ua
	/SrYID9eofFuMZBWI+mXf9I6AB1Tawd7OgjYOjCVRED/LEQdvTGSiMLeKxTwNb+h
	i0aWvND4KUBRsV5UjeGsfFtSBZ45RewMlW8X5C0YSKlfjWtJd4TDMbZob2NfpApo
	uzHJaQ==
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com [209.85.166.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnp84uqh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 May 2025 13:31:39 +0000 (GMT)
Received: by mail-il1-f200.google.com with SMTP id e9e14a558f8ab-3da720e0c93so46621075ab.2
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 06:31:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746797488; x=1747402288;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H/mFBQYhKgbj0hFzRcljV/UBoTZzDtA2j70YoMKBcnw=;
        b=ET4Klggxc86bT/aKD8h9hwk4A3hcZXAoNhtxjaRM5c24ap3vO9Kn4LkY7EFivQCimX
         JBfm+LBRuDoMWWdYWUegAmLHvZ1unMzrQIUT7LOrfOO3aW1j3MOEDDZd9Q8Dr3f4uxB0
         +myiVLAqiL+xe9NjiM1hDnsv8a5BEKCae2+FLIh4yhhjRQorG3P5vauZudu4mAu1lufH
         5JNn8rT7T4gb9nMmWT575edHovqhyJGdgqTsQXRv6z7TJaXzNwv2CiwsABsYLYYSgBdt
         wwzzG7qYZp9h1kTHeV4OdGwCE5c+v9S8Jw+gu6lXBfKV/wXYabLwhd2oeDRcOykc1ixv
         JaXA==
X-Forwarded-Encrypted: i=1; AJvYcCWHQj08MS9T12NpqYGemLo9NXJNlLMvaoDLrrnDLNY4mw/Q831spuK8D/CT0myKrZ262XOpSAvWiqBz@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+Q86BQ7SmD9sDHh4CaD/V1QEvcw1ENVCGcEGjmbQw7uMwHii7
	EJE4D+Cz2gepXV0H72aRqH54llDzKFk5wFIyLHQGPnZthhLNKFMwBZC038zv3kd3Hru9lO4M5cg
	oz48fX+u/EMHQr5rZUTZ/GNUilUJ6CfHTNjT5C9kdUOmKWkPBSNuDimx1KMWP
X-Gm-Gg: ASbGncvS7BgGGIVVSU39Dl86tcewFhVqn198a8ouGoxgzF9dPKEHj7WsWDgy33SC7MR
	TYpX1wG76ufpuVlIu9WcdAg1+3BCBdpXNoEvs6tEH3h9DHXALnpW6t81L6SE1B8ivhlkmIt7gQ7
	iI2s7Sth68XwrnRMzEYsB0Y/+7OKQyAOrITQ4BfFmOaUiFQZtK8QQ/HXoQYttupesKcgeOc84sz
	cQ8KZaVXWU5s+1G7S/Es48XTkVVO1ExhDTK9hNHWCxv4FVR+4QJP5j+BKyX/PWdwIgKpQ07yCt6
	Pkqtp+ZAlbcffywOTjJlqySShpD6OrAUtw+E3w==
X-Received: by 2002:a05:6e02:214b:b0:3d9:2aa3:fe2e with SMTP id e9e14a558f8ab-3da7e1eefa7mr40722035ab.10.1746797488422;
        Fri, 09 May 2025 06:31:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKXDET+rSLEQgjqZr+KTAcq1z75SyEGSZHd2zD6MhrKtJtI7oJokPFT73x1xhjijYU4XXf9g==
X-Received: by 2002:a05:6e02:214b:b0:3d9:2aa3:fe2e with SMTP id e9e14a558f8ab-3da7e1eefa7mr40721625ab.10.1746797488019;
        Fri, 09 May 2025 06:31:28 -0700 (PDT)
Received: from [192.168.68.106] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3a1f58f2fe6sm3347590f8f.58.2025.05.09.06.31.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 May 2025 06:31:27 -0700 (PDT)
Message-ID: <90a1ce3e-140b-4076-b34d-9545d1b0c568@oss.qualcomm.com>
Date: Fri, 9 May 2025 14:31:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Add adsp fastrpc support
To: Alexey Klimov <alexey.klimov@linaro.org>, ekansh.gupta@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, srini@kernel.org,
        quic_ekangupt@quicinc.com, krzysztof.kozlowski@linaro.org
References: <20250502011539.739937-1-alexey.klimov@linaro.org>
 <bf9291e1-bdad-4b4d-b527-b21963970902@oss.qualcomm.com>
 <D9RNPEB01S78.24ONMK7M7HHSK@linaro.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <D9RNPEB01S78.24ONMK7M7HHSK@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=M7xNKzws c=1 sm=1 tr=0 ts=681e03bb cx=c_pps
 a=i7ujPs/ZFudY1OxzqguLDw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=kV5Bgjj1i6tpFY9TKI8A:9 a=QEXdDO2ut3YA:10
 a=Ti5FldxQo0BAkOmdeC3H:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: CXAIxpiQ7d-wSXZlQGVF2Ug9iFgK0bYy
X-Proofpoint-GUID: CXAIxpiQ7d-wSXZlQGVF2Ug9iFgK0bYy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA5MDEzMiBTYWx0ZWRfX0rKrbBlo2IWj
 BgOOb6Vd68LSFXIg/C48z7AvMfJLd4AioxId0uMKgCHnskBpkbth7tM5sZIdIZHd7cGCtxaypsk
 MrTwqHt5P2TJz7goc/+WG8Mnxt378/XG7I807rqb6zburHdLDtWPV4U0YZoKSLb/AnKhueRYkrX
 XYH+49eUwZ6a1LjCV+oj9x95vA5lwbBJM6OCLTL0Fq8ZsQXtSkEqDLgiCWNKTTaif6LOIlwbPUO
 OTv76+fZvopjVG1AOKOkmNRKAi5rBt9czxh2eCgYUNCU8av8HB+sXHkb2Qxag/w9gPmZCtI3GcQ
 gAjZhvadiHIvc8+Y22LugTqW23+tdDRtFeNyICCl1JfwqfMHIFn+W4mjsEIYqUStr/MsAuZxkrc
 gW/MZEff8CzhOnxzppbdPRBCbzB40RBcwIrphrnoVLn5gKKTm8Ag6eWMtWBD7Z7PUEaIRko3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-09_05,2025-05-08_04,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 mlxscore=0 priorityscore=1501
 spamscore=0 mlxlogscore=999 bulkscore=0 impostorscore=0 clxscore=1015
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505090132

On 5/9/25 14:16, Alexey Klimov wrote:
> On Fri May 2, 2025 at 11:51 AM BST, Srinivas Kandagatla wrote:
>> On 5/2/25 02:15, Alexey Klimov wrote:
>>> While at this, also add required memory region for fastrpc.
>>>
>>> Tested on sm8750-mtp device with adsprpdcd.
>>>
>>> Cc: Ekansh Gupta <quic_ekangupt@quicinc.com>
>>> Cc: Srinivas Kandagatla <srini@kernel.org>
>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>>> ---
>>>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 70 ++++++++++++++++++++++++++++
>>>  1 file changed, 70 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>>> index 149d2ed17641..48ee66125a89 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>>> @@ -7,6 +7,7 @@
>>>  #include <dt-bindings/clock/qcom,sm8750-gcc.h>
>>>  #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
>>>  #include <dt-bindings/dma/qcom-gpi.h>
>>> +#include <dt-bindings/firmware/qcom,scm.h>
>>>  #include <dt-bindings/interconnect/qcom,icc.h>
>>>  #include <dt-bindings/interconnect/qcom,sm8750-rpmh.h>
>>>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>>> @@ -523,6 +524,14 @@ llcc_lpi_mem: llcc-lpi@ff800000 {
>>>  			reg = <0x0 0xff800000 0x0 0x800000>;
>>>  			no-map;
>>>  		};
>>> +
>>> +		adsp_rpc_remote_heap_mem: adsp-rpc-remote-heap {
>>> +			compatible = "shared-dma-pool";
>>> +			alloc-ranges = <0x0 0x00000000 0x0 0xffffffff>;
>>> +			alignment = <0x0 0x400000>;
>>> +			size = <0x0 0xc00000>;
>>> +			reusable;
>>> +		};
>>>  	};
>>>  
>>>  	smp2p-adsp {
>>> @@ -2237,6 +2246,67 @@ q6prmcc: clock-controller {
>>>  						};
>>>  					};
>>>  				};
>>> +
>>> +				fastrpc {
>>> +					compatible = "qcom,fastrpc";
>>> +					qcom,glink-channels = "fastrpcglink-apps-dsp";
>>> +					label = "adsp";
>>> +					memory-region = <&adsp_rpc_remote_heap_mem>;
>>> +					qcom,vmids = <QCOM_SCM_VMID_LPASS
>>> +						      QCOM_SCM_VMID_ADSP_HEAP>;
>>> +					qcom,non-secure-domain;
>>
>> Any reason why we what to mark adsp as non-secure domain by default?
> 
> No particular reason. That's what we went with on other platforms, so this just follows
> the same. If we need to update this flag to secure then most likely that should be done
> for some other platforms as well.
> The only thing I know that adsprpcd + audio pd works with non-secure flag.
> I can try to re-test with secure flag.
> 
I know that this is loosely enforced in the current state.
We want adsp to be always in secure mode as it will have access to some
of the IP blocks inside the DSP other than just hexagon compute.


> Ekansh, do we have any preference here regarding this?

@Ekansh, we should provide that clarity in dt bindings.

--srini
> 
> Best regards,
> Alexey


