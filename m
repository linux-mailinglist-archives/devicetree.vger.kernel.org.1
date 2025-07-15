Return-Path: <devicetree+bounces-196466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 89765B057CB
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 12:29:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E07941885E87
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 10:29:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 858942D8367;
	Tue, 15 Jul 2025 10:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XwLT4iIj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0B126D4C0
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 10:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752575343; cv=none; b=Xqm0+VugD8tuEMzZUEVxT9KiYu3Yi6KE7M+WWB1uWm/0anunoVnZkBt1Xhw4ztzWOXI9tZ1zqh6XvTmP6GcAxQFmTpvsWv3kxA1PowtefVonqcR5DXF4/jVcsGj/5THhl+fsTIQB2NHpIUVPsyMwdho4CRxpIc1yTLIObJBvloU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752575343; c=relaxed/simple;
	bh=ZEgO3lH2hzHF//JMtK2ZnM6seDwOMGELOQYhm4cdrYo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H9JzKwJkKXF/1g3jEEV5sqhHlK/WVvUm7av5AYDldX2zRdxkhWF4c4zqKjMMhDSySDM0k1vy4qtprmVN+LGG7YKKPNkk7eEM/3jR5RekcOz9CJHSffY3AC6Arh7h1rEMig53AttpPmBrOSmcGZsqJaCXqsEAiWtVqF59dMCfE04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XwLT4iIj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56F7aIX6030447
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 10:29:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kVPowsM+d6fWRiJIvpglMMopG/Q1tPU3fDdYNGxzkiA=; b=XwLT4iIjkAhIa174
	rsto9PPMC/1uXlY8m1M9YljnX2GGpbe0WJZo5GgSfaxAu+UYAOSK05uFrFsSTjRQ
	rOsn6mqi+QCzC6hCE+i9o4l2bIANERU7kgvKD66zCY/8CRbTHFt2F6q8R8svb89k
	O8RleXYSIXWC/gA7szwkZYaSX6d52KVRLa26lD9l7fxmGssbVchqVEa2IoNptm4s
	RZ/Ga8Kr6zaasvgkVQojMcY9VbQz3am8F6MqPYnjsg4Bqog0c5RzgY8nWNKQjVZb
	imuyAC35d5mmRcZcCtrr16hA2DWS3eVWhmGwjWABPW5iJ7C6qokbOaEcMrJXw3Xs
	xh2Slw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufu87sb2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 10:29:00 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-236725af87fso87012845ad.3
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 03:29:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752575340; x=1753180140;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kVPowsM+d6fWRiJIvpglMMopG/Q1tPU3fDdYNGxzkiA=;
        b=rf8d/XdsOF8oOmbho7NLVtYMyL7gAsRuz2v9zOL4K1C5WCnahePtMw72uHPLpWiE0f
         i0bBXAsnh4RzoArDDUQkI3b1VcQbyMVRHtTbIiUPgRGvarxOdoJcfkD0/vq4wBCitV81
         aWG0YkS8/KnX93NRZ8MFfuBwTOuRLBfhgFp0NXxLJLYUm01MNGSAlBMbqJj9JbTbP8f2
         PPbZz3l0o7AKAEj5r6yHOR1mR1exX5ZB4nJPhIE4nhjHl76zn4lWltsykUXd5bss1jZz
         pRqwcXkcsmxJIkUVbCmMDjWt91dY0xZKXmZwcdDeLznl3u5seTgnwPbfTrsqnbn2xIzn
         eodA==
X-Forwarded-Encrypted: i=1; AJvYcCXR0HtkX1YdfQvMrxm6qEQqkueHaTCD5UVaBBalSQRtszj4KW6Kg48aKeYoHpCp8rT6wYEvauKHmIcX@vger.kernel.org
X-Gm-Message-State: AOJu0YwfQgvmURF3XIFXuDzK+hu1+gVnkl/VC7daq+E2NkR87qYQapWm
	SjP7knDzsqFuLJvt4MxExTRibeymxGfq5an1r1KIMuHwgavswmGxcsmKuVdM5EHdbbwaeoGuF1g
	/dln3nO+MQc8NtoG2u9D83Bsbd45khPaJzOo03YnFpgXpK5yfIvfo4W8w5O9zUuum
X-Gm-Gg: ASbGnctHsUfOKx/s/OSDVmB5lh3VlSRsW1j7OiLSmCsrx/yTzzQVSaHtx8Guh3S9MpI
	A1ZZMlwhLi4/WbkV//36ZvUiPijUpJZI6PRu+pbMXRqU+YVmnXJN1wksEYuh6d/Ima9QlChZ4fc
	6ialsR0WaR7Buu1PpXnJCMX7Zj1ZebS+pvaMM0OrK/bJRE1ull+WfozLKAWuUGFkPUBhSi4wgvf
	+4iXoQLjb8lV5cmYGyPELqu/ydZh3k5MtyToGnXon0RLtI+1iqLYWqdgfRQqPk3DYTKjStvQCwk
	4NwLiHMOMC685pzUGyt5i8wgSiAeV8eC6RwGQNHVpSfVwqDkoCix69i8PYUk700Eu7RA
X-Received: by 2002:a17:902:ce12:b0:235:88b:2d06 with SMTP id d9443c01a7336-23dede2d033mr232140795ad.6.1752575339657;
        Tue, 15 Jul 2025 03:28:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGQvHlIm2ZFVg3ms0rTHfqoxKjFKkIFJO3VSd6Oiellb8AgeQMN/4FVNCtTp9DnyuFnHGFROg==
X-Received: by 2002:a17:902:ce12:b0:235:88b:2d06 with SMTP id d9443c01a7336-23dede2d033mr232140505ad.6.1752575339226;
        Tue, 15 Jul 2025 03:28:59 -0700 (PDT)
Received: from [10.217.217.109] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4322df2sm107059075ad.111.2025.07.15.03.28.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 03:28:58 -0700 (PDT)
Message-ID: <be19d5d8-c94b-4262-9ba6-84f231911142@oss.qualcomm.com>
Date: Tue, 15 Jul 2025 15:58:55 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/3] arm64: dts: qcom: sm8750: Add Iris VPU v3.5
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250714-b4-sm8750-iris-dts-v1-0-93629b246d2e@linaro.org>
 <20250714-b4-sm8750-iris-dts-v1-1-93629b246d2e@linaro.org>
 <5dd36649-821c-450e-bdcc-871735d10059@linaro.org>
 <15b8b9e0-a211-4102-9b68-994c8ab50a7a@linaro.org>
 <b5a68138-4eca-4bdd-8f72-d80236b02c0a@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <b5a68138-4eca-4bdd-8f72-d80236b02c0a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDA5NSBTYWx0ZWRfXypog3Ui6RJ0k
 yJwPa2Ky6ZowKodSGIn9bDxjntZEDZ7HcxlzqJTxVvgO4/Mga6kyM6QwgXgPa+Do05szM4HFS6K
 QhVmPcBWgBgs1jsTn9ac6Yrv731BDggNG8aojSx1vy3VbSHn9PYlSbihEODnTYx7B8Y5mItbKFU
 /sbnZBteUGV2/PPaBtiICROM4TSUOrrpdZeiXwoNcIBuSvxPN4MHzgVOc0HF8YREBXOZ0LZB9N+
 G/L+X36ovbKG44Psvzo9E95rARxLEkrn4/ficKvF+tenPxLMkxBCzTSQvWi1GWBxAEuaHQpp32+
 5DJ/uXj+LxC26g+KFijbGNCRpSdyybNWVbo9ak8vHkfH90QqU6efamgPdaZaDfeQlQfdxGwSGdJ
 UUlg45ko/47NHpgfmNXD33DETREUwOtYb9b101OMZl26lBvrD49D6S5XOhCNxPzEE0fKk1Ch
X-Proofpoint-ORIG-GUID: aqdLWHzpdvMpexNNxr86oK29lmuyhPs6
X-Proofpoint-GUID: aqdLWHzpdvMpexNNxr86oK29lmuyhPs6
X-Authority-Analysis: v=2.4 cv=f59IBPyM c=1 sm=1 tr=0 ts=68762d6c cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=sUZyiCKN5GdxPoJR-UsA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-15_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 spamscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=749 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507150095



On 7/15/2025 3:39 PM, Konrad Dybcio wrote:
> On 7/15/25 12:07 PM, Krzysztof Kozlowski wrote:
>> On 15/07/2025 11:32, Krzysztof Kozlowski wrote:
>>> On 14/07/2025 15:55, Krzysztof Kozlowski wrote:
>>>> +
>>>> +		videocc: clock-controller@aaf0000 {
>>>> +			compatible = "qcom,sm8750-videocc";
>>>> +			reg = <0x0 0x0aaf0000 0x0 0x10000>;
>>>> +			clocks = <&bi_tcxo_div2>,
>>>> +				 <&gcc GCC_VIDEO_AHB_CLK>;
>>>> +			power-domains = <&rpmhpd RPMHPD_MMCX>;
>>>
>>> This is incomplete, need second power domain and I did not check against
>>> qcom,sm8750-videocc schema before sending. I will send a v2 a bit later
>>> (maybe some reviews pop up).
>>
>> Heh, no. The DTS here is correct. The videocc bindings are not correct
>> (and that's not my patch).
> 
> Well, you want two power domains here in either case..
> 

Videocc code changes are yet to be sent with the fixes.


-- 
Thanks,
Taniya Das


