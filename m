Return-Path: <devicetree+bounces-249510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1ACCDC582
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 14:19:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BBD60300CD60
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 13:19:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E8C230C62A;
	Wed, 24 Dec 2025 13:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PGJTom5g";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bxiCy5ek"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B87521CFF6
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 13:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766582348; cv=none; b=Awi7LcoxqjZCc8G3YR7I8mY6QikRc4IHi4j0SZ+0/Tq/p30y3T6ViUt4Io1QTCsxFHONj/E9DBQQj0v5zQ9E8ZsgzMwPA91hevAeTXvmGJ0OkYnhQyrlEU5QHTu4JQ7lA7ZlQ71LWd8ycuFh/fFH2Gh6Ag4sgqXtFCLwhOQ/zZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766582348; c=relaxed/simple;
	bh=nbO59WxEv6kJz5J/qzq9hXscmrSCCG2Is3XZzjDxYnE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eKJ6Z/frYe/g9WFmQPsJlAu4osFMG7gthMnXqhLDpps/dyuiDIJ2YwDu6stp2DXgfmE5gcVLQtCPmFUp9+9vdfa43iATWn8K6EfY5fdPXdHtyC0sufdxGvSRXMEVbmSqqCmBD7oIUHbPE/Azzx7XLQUyS6dQt7S+zTLBxmlg+Cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PGJTom5g; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bxiCy5ek; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO8V6Od1206453
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 13:19:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gLdqPf2jOO7mFzFA7nnGkJ9lAvirM/0WH2whVgXUvVU=; b=PGJTom5gAF001NTM
	AS1NhhZBa1AIantRtPx+6dRAyBM4qQ0gYI5nEMIQgTZQpgOdGRbprHsDKC7LilPu
	Pjs4IrG4mwnzMye3Kd38oz1S5OqWM/ez8uwDJTZnaRCv2G7WSK/9yRyVHzxoK0jM
	TxtfXpyN03mrMhoh9GF1cH2kP9YRhjS5uSAxLYeKTNy0ymy3aaFKLGOiq62IEVp8
	OFycTlvejVWXrmYGyaTFCkj9mR1/WyCf5yTIAqgi+UltKNaUHw1ZfGuqzXZ1adtP
	wmmk/drDLhUfwuq1bGHsd3ghsuwPMwI8YWJ9OxBSKJgpgV0XNCghst0ZyO1K3X9V
	vw0f1w==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b827r26d1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 13:19:05 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34e5a9de94bso12564639a91.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 05:19:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766582344; x=1767187144; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gLdqPf2jOO7mFzFA7nnGkJ9lAvirM/0WH2whVgXUvVU=;
        b=bxiCy5ek01tx+eRf8sQF04baWE+dY9sr2WOAfvyAF08jJf2fshMCQaihqubamwZhff
         KbEWVRox/ea7b892JaKoKWTN+B/2Q5g9fwr+AE5aOvUd4PogHX6XgsmmqwQ5yFEUqevm
         9JJQ+6WhqyIZEQTbzBIQtQJfZiCk12gsiF+0HGqImUst70s04aMAx4xoo+2ymOPNJ30G
         l/E9EaneyrCFfzy5EVdFChtXtNNfkuHl7s08oT6YAhQZFNqUNfdDfIpRmNEt5CQTKDZc
         gVL+aICYFAntiw04FIKO5SyXQ5KM3pM60PiOR49YopJaBxpSFMdmg6CN7GF4XML5dhpz
         BVSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766582344; x=1767187144;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gLdqPf2jOO7mFzFA7nnGkJ9lAvirM/0WH2whVgXUvVU=;
        b=Z7JK/frOfzcNaG6VAdrtYxkI53MlqVZzZRUBwfwSkdDGYXeTm4jv7NjYpyMg2lAvH9
         IywHyRCpHBxLdHjRxvFEBUJTPr6KLKlK+/R4U9Mj32JHSpH2UYcDYHo9wAwfsQY/pdJy
         MSi513d1iZKR0Y+52QwGX4MDMmDw5eFst2x0xShbqB/wepqQlyYObZra1EHSwKxWABUg
         K+xaDBV+pVbrC4lrzDqJvPRUOgnXakxRTaEeth/zWcmjhJgBb3bjEhsHvuScXEp24Fc+
         jRkIXvEk2qQHef+Uf+B2EFWHtMQuMyD0LmKCf8mNepDQQywbL0t2dza9PP2OOL6tAQhk
         OYBQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9J20RxcYj/oTim4OSsh+Z7L0CcrSUGpOEz8ysvG2/9D9+W5tdo8d0aTVPE3IriRIb9Z8p3piUxlcy@vger.kernel.org
X-Gm-Message-State: AOJu0YwdGwEpk1ePTq1/lO1x8faI/SdBkaORs7utVK/JQwT8O2W6xrYn
	FjSdEIei/hLki45Xk5ynUxW82b59/iGmUtODBPWCN0xGuF991f2ZymJdfh87ncFGCbR3iTmdReQ
	PEVylAXJOkIwgnwSe72Vrb8FGa+TlwGoTk0dATCx8DwyegIpCm1ZyQn2AK89lZXa6
X-Gm-Gg: AY/fxX4dC7e7UHKVmp879BRm2peFoW3121erq/N8ohsO+T2nRyBtUL7IFYSFEWT94GP
	/rswuY0q7lVKG3PWADQMsiluJp0cUhxTdboGiDVAiG0gV4oJ2Wq+T7mzN4UnQZK54BtYA44HdHP
	9ixPE2r7KMIEFlnJ55bXK161VF0eIgIMTl0mscHJqKT9sTcz0rQwLBZpvPJd9FO9XLEQ9dc4/GR
	rOGg9btKpsPkEEMhoi+ZxpRaP4jzHZdLeai5Iu6HiUbVoAWftUtqKSechxdmzF+FdtSnvfq4F+F
	O7eEuLB/zt6WeaW1f8ypSr92t/PGao6bI7g1VaV+BKB1Q3SlpiP4LD0TJUyxbPHrtZzavqmOPrC
	lUS9Ui0VeonoXpY/3kcXKqFYUxwW9i3GXLg==
X-Received: by 2002:a05:6a20:12ca:b0:363:bb19:ed30 with SMTP id adf61e73a8af0-376a81dc166mr17027346637.5.1766582344358;
        Wed, 24 Dec 2025 05:19:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGAWQ5IeWJUtjC5wvZMgjwfXx7WDoB4F6DacQQkKYtbWinA6GcDgnW4NpMjovfVk+F+tuc+WA==
X-Received: by 2002:a05:6a20:12ca:b0:363:bb19:ed30 with SMTP id adf61e73a8af0-376a81dc166mr17027312637.5.1766582343799;
        Wed, 24 Dec 2025 05:19:03 -0800 (PST)
Received: from [192.168.1.7] ([106.222.230.144])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7bc69728sm15290452a12.19.2025.12.24.05.18.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Dec 2025 05:19:03 -0800 (PST)
Message-ID: <4a3041af-efda-4345-8298-9602561cb57e@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 18:48:53 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sdm845-oneplus: Update firmware
 paths
To: David Heidelberg <david@ixit.cz>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251222-oneplus6-new-fw-path-v1-0-a2d366f9eb89@ixit.cz>
 <20251222-oneplus6-new-fw-path-v1-1-a2d366f9eb89@ixit.cz>
 <a8cc09c0-6acd-409a-a907-c3809b4f4db3@oss.qualcomm.com>
 <17490007-73b9-423b-af49-b89e33ee51f3@ixit.cz>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <17490007-73b9-423b-af49-b89e33ee51f3@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: qwlVGtzrd2tRbENB3TdQrSN8Nrjl1qR2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDExNiBTYWx0ZWRfXx22PCtqjoIZh
 g7biJ9zEtObXy4+qrZpV4krXHOXYWCoeYZCD6ymhYChVZNoDt6kT+98XTApLpPDnYfjtpblgURp
 8eJ2KpEG9TTi0ZoDpz5qWa+OTcDB3LeyNjhHHxiLTyzHzIFzZIRQz0SnjQj56WB3IpRo5M2tP/L
 9LSIrjKHHXXfIKI8yqZxwsf52EADOfYZGSYNHqbdh4lm0LAh7p3s1r43tmvtX+8NLCPlzw313aB
 tP9Jkfnz6Y1eeD2PSu63wF/3Y9ctXj4lA+02iGJ8V+pcVuCZo5G2t4lVHRUx3ZX96NBSBh32zWJ
 J9RB/8SdLwZoEBfNvX1b6WwiosVZvBkx9fN2DmwSfvF7MP/HDC77zfkI93WxLXiiSrU1AYnSypp
 f1FI/3fN/q6H7xCzph4WbXMAVN2IuECL27VAIXeLKO+PcThk8j1I7fuOR761MjF3RTVZ+B70xDD
 jopOMobfa/Ac5X0LEtg==
X-Proofpoint-GUID: qwlVGtzrd2tRbENB3TdQrSN8Nrjl1qR2
X-Authority-Analysis: v=2.4 cv=RbSdyltv c=1 sm=1 tr=0 ts=694be849 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=9Goc2DGw7r6NbAdAXxNxgg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8
 a=0MS-um4iTv7t2dz4xcIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240116

On 12/23/2025 1:21 AM, David Heidelberg wrote:
> On 22/12/2025 20:31, Akhil P Oommen wrote:
>> On 12/23/2025 12:35 AM, David Heidelberg via B4 Relay wrote:
>>> From: David Heidelberg <david@ixit.cz>
>>>
>>> Conform to the new firmware path scheme.
>>> Includes cosmetic cleanups.
>>>
>>> Signed-off-by: David Heidelberg <david@ixit.cz>
>>> ---
>>>   .../arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi | 23 +++++++++++
>>> +++--------
>>>   1 file changed, 15 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi b/
>>> arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
>>> index db6dd04c51bb5..f1c63794db979 100644
>>> --- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
>>> @@ -181,8 +181,9 @@ panel_vddi_poc_1p8: panel-vddi-poc-regulator {
>>>   };
>>>     &adsp_pas {
>>> +    firmware-name = "qcom/sdm845/OnePlus/enchilada/adsp.mbn";
>>> +
>>>       status = "okay";
>>> -    firmware-name = "qcom/sdm845/oneplus6/adsp.mbn";
>>>   };
>>>     &apps_rsc {
>>> @@ -353,8 +354,9 @@ vreg_s3c_0p6: smps3 {
>>>   };
>>>     &cdsp_pas {
>>> +    firmware-name = "qcom/sdm845/OnePlus/enchilada/cdsp.mbn";
>>> +
>>>       status = "okay";
>>> -    firmware-name = "qcom/sdm845/oneplus6/cdsp.mbn";
>>>   };
>>>     &gcc {
>>> @@ -370,7 +372,7 @@ &gpu {
>>>   };
>>>     &gpu_zap_shader {
>>> -    firmware-name = "qcom/sdm845/oneplus6/a630_zap.mbn";
>>> +    firmware-name = "qcom/sdm845/OnePlus/enchilada/a630_zap.mbn";
>>
>> I believe this is considered as breaking backward compatibility. How
>> about creating a symlink in linux-firmware instead.
> 
> See discussion here:
> 
> https://lore.kernel.org/linux-arm-msm/
> CAO9ioeW9=TPde4P=AOcQANvPv90K-9MkcRRgb7HNwe8KiOpFjQ@mail.gmail.com/
> 
> I understood the conclusion was "let's do it".
> 
> We have more-less 3 consumers here,
>  - postmarketOS (Alpine)
>  - Mobian (Debian)
>  - NixOS Mobile (NixOS)
> 
> some of these using droid-juicer, which can be easily updated to update
> paths.
> 

Dmitry,

How is this "not breaking backward compatibility"?

-Akhil.

> David
> 
>>
>> -Akhil.
>>
>>>   };
>>>     &i2c10 {
>>> @@ -422,7 +424,8 @@ rmi4_f12: rmi4-f12@12 {
>>>   &ipa {
>>>       qcom,gsi-loader = "self";
>>>       memory-region = <&ipa_fw_mem>;
>>> -    firmware-name = "qcom/sdm845/oneplus6/ipa_fws.mbn";
>>> +    firmware-name = "qcom/sdm845/OnePlus/enchilada/ipa_fws.mbn";
>>> +
>>>       status = "okay";
>>>   };
>>>   @@ -474,8 +477,10 @@ &mdss_dsi0_phy {
>>>     /* Modem/wifi */
>>>   &mss_pil {
>>> +    firmware-name = "qcom/sdm845/OnePlus/enchilada/mba.mbn",
>>> +            "qcom/sdm845/OnePlus/enchilada/modem.mbn";
>>> +
>>>       status = "okay";
>>> -    firmware-name = "qcom/sdm845/oneplus6/mba.mbn", "qcom/sdm845/
>>> oneplus6/modem.mbn";
>>>   };
>>>     &pm8998_gpios {
>>> @@ -593,7 +598,8 @@ &qup_uart9_tx {
>>>   };
>>>     &slpi_pas {
>>> -    firmware-name = "qcom/sdm845/oneplus6/slpi.mbn";
>>> +    firmware-name = "qcom/sdm845/OnePlus/enchilada/slpi.mbn";
>>> +
>>>       status = "okay";
>>>   };
>>>   @@ -744,7 +750,7 @@ bluetooth {
>>>            * This path is relative to the qca/
>>>            * subdir under lib/firmware.
>>>            */
>>> -        firmware-name = "oneplus6/crnv21.bin";
>>> +        firmware-name = "OnePlus/enchilada/crnv21.bin";
>>>             vddio-supply = <&vreg_s4a_1p8>;
>>>           vddxo-supply = <&vreg_l7a_1p8>;
>>> @@ -906,8 +912,9 @@ speaker_default: speaker-default-state {
>>>   };
>>>     &venus {
>>> +    firmware-name = "qcom/sdm845/OnePlus/enchilada/venus.mbn";
>>> +
>>>       status = "okay";
>>> -    firmware-name = "qcom/sdm845/oneplus6/venus.mbn";
>>>   };
>>>     &wcd9340 {
>>>
>>
> 


