Return-Path: <devicetree+bounces-232392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 826AEC173CF
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 23:55:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 36F464E3327
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 22:55:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1857369994;
	Tue, 28 Oct 2025 22:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YhoYPg1E";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d2DmbOXP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070D236999D
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 22:55:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761692118; cv=none; b=ed9s/lQ+4/gobMCYQsmKJlvIo1HTdJxV1F8ZyV2v0ktI1KIym4rcNwBBKRWMVsaa6qJNycOHS03ozlQJrtilVfwHbCaDLGGRh8H6AzZUGo8i+DOER4sEH+tXd0LOvCHGrh3wPXDWFl+lRVWJ9FuPYFEOdN9uDL72uITfGc5+9sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761692118; c=relaxed/simple;
	bh=yzwDfwQsi48OmO7FMHn21UWUKfUVcr9ew/gPai8Jm58=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CM0KiRaQQ1eUdIHi085dazayCAT9rPOWQZLUyDAphffxyylD6bxU8gcL8siiCEbmVR8cBPThhB0F9B6ecbXzznQ5uXc1T4C2Sqz5M0RtnuwhxK3UXEijs/Mn+dVyz3JJpA5uA2C3617CDC2h1fqvhyNb8OusxuD7jP4jUo21FVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YhoYPg1E; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d2DmbOXP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SJm1DB2553899
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 22:55:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IWH5Yb4kYBWyOt0Ev0V2vzZdJPpepgJJhZOsAYCisGo=; b=YhoYPg1EgXm2WHsV
	mWbWSk+UtDDbawHTC3JcbcHgk2C9uKVwr+93/RRtt6o5oJNOEgzv4U1q5Xq8du1L
	lUw1OoIMVyAUBwE5aRRqMv80eeNtYmUK7JMfLPvffTj8PyRKugBPfSRyUAuycpcn
	ZA9oUtTvITzbszjuelqynzsbn5ZN+LNJLpC/gU3khwsSVbf/bPwatjI2gcwzRQuA
	ayZTUBMpzYstCn3jd5g1Co1PEk3TF2pqbcZvX34FAqMf64DT4YMnWTlShv6J1nje
	MTmcjWSa3KcZiBaBx6IX2vVPm7ryrzSSiTwGtkSK+11AuTZqAauO3zOUA6ygWG+m
	c73Ydw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a2gfap-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 22:55:15 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7a440d38452so3014050b3a.0
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761692115; x=1762296915; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IWH5Yb4kYBWyOt0Ev0V2vzZdJPpepgJJhZOsAYCisGo=;
        b=d2DmbOXPQQ9wfHuCaBYBSXSit/zG0Ee8jbGJ8vsw/IcT8Fc8a9tIS3oqvVTdtD3C4N
         8N45l9M040XBklVKIqUqj9xka/cTvMApwY8tsf8qjMMYdbvc2Dww3w97hpDesavG/Dfc
         sSBYIB+VHrXb+3Zm4fuR/ijt1R6QBvCwn5wRZZ/gINzWoQ49+rc0DlU0GzrM1YlqHiZk
         sc1LNUUT9k+kmY7FBjHER2JJvm5q8uPzDAwbwalrT8lCtB1Pgl7MWw8xALIWBr3di7wW
         drmKmOqJ4+av/FCz1HHfu0+dCKqIi6Fingk0mAA5HMPSqL+o1btGI+VKS7nLpVNyj9/f
         e7RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761692115; x=1762296915;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IWH5Yb4kYBWyOt0Ev0V2vzZdJPpepgJJhZOsAYCisGo=;
        b=Wk/tLLTirkqWSNR/TEEeNiSZgaeY3fgjP6HoqpG68/pkzcks1urAlF8DOItqbkLViS
         DBl0ZPH/touhHxNi5pXQpx6Dyq5L+yOvO4jO89+FSg2o6vzCAqAMfi3v9NRxdX3DfBg0
         WhZ3HlLoUnjSlEI1Z1rNrESrBnFNAVma4MALqLMxDLJPKHBnYSd16aWA91f++FMsC4FX
         YDMOrvSd39/kVyIAIqGrXxN7Jmtkg/iOsv9o9h9CHlcKm9vOjua6JvGTptJVwp6B5rEe
         XtuHrLygoiaQofHyQJBUfaakUPUoHOQ6bWoxFz1oOnNRUEksgQjR6ArynHWuGNbp1BlF
         Y5Uw==
X-Forwarded-Encrypted: i=1; AJvYcCXL99ZtF9emmQSOLq3FqEZd2FX0dlEode9tmT/LV1ERW2pKL7DlNloz44xhbrv5C1CZbZzVjfCfpan7@vger.kernel.org
X-Gm-Message-State: AOJu0YyW5bKJ3zgugugjn//NKiCQiiWSjZUry32C0JylO3Yqh01Jn1Nh
	x+Q5q6oo3sBPIqTVS47sIV/o4b5wE6ll8DpYCkoo960o4t3gOjfx1cAr+eSD8m4GJ8fjGOoMjcT
	YkGc0UDrX/8rIsWgrr2GCqlp/FtFfIM9eOF/ZwyXDvWXhCSafuFURg1o5ymCVibEz
X-Gm-Gg: ASbGncvDlKJ0CsAq+DnpmT4ONg48EVZ2zp6i3S9dsdlNl0d48wFiY5K73MRGboCNePz
	LYoYLItX3/rXyn9UADVrOf5uDdLlx/VRttCACLtfCl2zSLZwFRBmawvx89X0NoS2HxEFP+2SJDb
	EPU3ALAXsP8Bbb4eF12YdVUtawrxRyMpzSP31F2kttCbKMWQW1UHW3dfVtvtayb6rC+iigIz0DW
	X28VXOdCxappa5LkOekgUsA87cNb+GCSljkVsUJGyKGfAS3nVlRLScOLOx+GRrhSKrsHqyW+VwW
	soG0z07mMGVqEyuZUBzNJ3/Sd/28Pw6lWJjGNPePcBqinFn21rxx/LcoTpKzh9kt019OWHJ6NHW
	Oa92A5rVxyr38X75Xr3GoRb26/71C3akyLkbQM9rLGYzxTr72o5CthSYlUmD1CA0=
X-Received: by 2002:a05:6a20:6a23:b0:334:8d1f:fa8d with SMTP id adf61e73a8af0-34657f5b867mr750134637.18.1761692114718;
        Tue, 28 Oct 2025 15:55:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEEW5reh+w5hgD74kbP2DyxqWnhWvQGt5/x/EERIqxSbt5YqENq8fvwnso1YY6Zz4H4MxyCZg==
X-Received: by 2002:a05:6a20:6a23:b0:334:8d1f:fa8d with SMTP id adf61e73a8af0-34657f5b867mr750104637.18.1761692114233;
        Tue, 28 Oct 2025 15:55:14 -0700 (PDT)
Received: from [10.71.115.47] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b71268bd810sm11701618a12.6.2025.10.28.15.55.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 15:55:13 -0700 (PDT)
Message-ID: <481ec137-87cf-4448-99e9-4a1477f4854d@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 15:55:11 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: soc: qcom: qcom,pmic-glink: Add
 Kaanapali and Glymur compatibles
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251027212250.3847537-1-anjelique.melendez@oss.qualcomm.com>
 <20251027212250.3847537-2-anjelique.melendez@oss.qualcomm.com>
 <20251028-private-chirpy-earthworm-6fccfe@kuoka>
 <4cb41e69-fb32-4331-a989-529b5af0081c@kernel.org>
 <918fc9d3-2cd5-4442-8bc6-b930596d95c1@oss.qualcomm.com>
 <ba760468-ac41-48e0-a56e-a675c3c0d5b7@kernel.org>
 <2676d88f-89a9-4b1f-895b-3bdc048f6fbf@oss.qualcomm.com>
 <4e7f4211-3194-409a-b33c-e47bfdfdb203@kernel.org>
 <01f419cc-3236-48b9-bd51-e7db07d1e6fe@kernel.org>
Content-Language: en-US
From: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
In-Reply-To: <01f419cc-3236-48b9-bd51-e7db07d1e6fe@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: DdMgcbqdJ9qxMYVGTa1nhwW6W3873dAx
X-Proofpoint-ORIG-GUID: DdMgcbqdJ9qxMYVGTa1nhwW6W3873dAx
X-Authority-Analysis: v=2.4 cv=PcvyRyhd c=1 sm=1 tr=0 ts=690149d3 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=-iQ0l0JE6UEMKG4t3oYA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDE5MyBTYWx0ZWRfX95XrOXWmrcnk
 lEMJWE/kY7OecY5t7XNu9HLC1uc0nfc+LfE8ou4n7YTqZm3DhhMRHb6KibLh6csBNjfii4fAQ7A
 uhYmsamx1L1MUJ078Z54FogBZ82ggh3QM2C3k6kK0G8xNMCioj0uR5DWuPykXTXVahbu+JtjXmn
 Us0EmXVlklA/HAIA19zo79CqVW8yuLC/vd1hQ6vNL6xWJ/d/EMXEcM66+O19EG+bbXplSfhXcg6
 LQAlAxtrgdX3wEpQeDSdOtDF9ro3btx4EVTF4LVNl3QEL0p72qWsqZ/aTZajarZ1e274S5Z16A4
 Hb8Lr0M/gbi7OWSJno/80aqYAQ4Kg8RV8W7tm8l+o4tS1+JgQ7wS2wzFRmO8o+9lO2AS569KqNS
 Jpc/jfQEO+T2Vll9aRID4oUswBaPAg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_09,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 spamscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 suspectscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510280193



On 10/28/2025 2:30 AM, Krzysztof Kozlowski wrote:
> On 28/10/2025 10:21, Krzysztof Kozlowski wrote:
>> On 28/10/2025 10:19, Konrad Dybcio wrote:
>>>>>
>>>>>>>>
>>>>>>>> Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
>>>>>>>> ---
>>>>>>>>   .../devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml      | 7 +++++++
>>>>>>>>   1 file changed, 7 insertions(+)
>>>>>>>>
>>>>>>>> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
>>>>>>>> index 7085bf88afab..c57022109419 100644
>>>>>>>> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
>>>>>>>> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
>>>>>>>> @@ -37,12 +37,19 @@ properties:
>>>>>>>>             - const: qcom,pmic-glink
>>>>>>>>         - items:
>>>>>>>>             - enum:
>>>>>>>> +              - qcom,kaanapali-pmic-glink
>>>>>>>>                 - qcom,milos-pmic-glink
>>>>>>>>                 - qcom,sm8650-pmic-glink
>>>>>>>>                 - qcom,sm8750-pmic-glink
>>>>>>>
>>>>>>> Why qcom,kaanapali-pmic-glink is not compatible with
>>>>>>> qcom,sm8750-pmic-glink? If Glymur is compatible with previous
>>>>>>> generation, I would expect that here too.
>>>>>>
>>>>>> And again to re-iterate:
>>>>>>
>>>>>> If X1E is compatible with SM8550 AND:
>>>>>> SM8750 is compatible with SM8550 THEN
>>>>>> WHY Glymur is compatible with previous generation but Kaanapali is not
>>>>>> compatible with previous generation?
>>>>>
>>>>> The announcement date does not directly correlate to 'generation'
>>>> I don't know exactly this IP block/component, but in general these SoCs
>>>> follow some sort of previous design, thus term "generation" is correct
>>>> in many cases. Anyway don't be picky about wording.
>>>>
>>>> You can remove the generation and statement will be the same.
>>>>
>>>> If A is compatible with B AND
>>>> C is compatible with B
>>>> THEN
>>>>
>>>> WHY D is compatible with (A and B) but E is not
>>>> compatible with (C and B)?

I think some of the confusion is relating to both UCSI and battmngr aux 
drivers using SM8550 as compatible strings...

Really we should be thinking about this as:

	SM8750 is compatible with SM8550 UCSI and SM8550 BATTMGR
	X1E is compatible with SM8550 UCSI and X1E BATTMGR

or
	A is compatible with B and C
	E is compatible with B and D


More specifically:

SM8750 has the same UCSI quirks (UCSI_DELAY_DEVICE_PDOS) as SM8550, so 
we would want to use SM8550 compatible string in UCSI driver.
SM8750 also exposes the same features, state of health and charge 
control, in battmgr driver, so should use the SM8550 compatible string 
for battmgr driver as well.

Like SM8750, X1E has the same UCSI quirks (UCSI_DELAY_DEVICE_PDOS) as 
SM8550, so will use the SM8550 compatible.
BUT X1E only wants to have charge control exposed in battmngr driver. So 
instead of using the SM8550 compatible, we should use the X1E compatible 
in battmgr driver [1]



Now we have Kaanapali and Glymur being introduced...

Kaanapali IS compatible with SM8750, however since SM8750 did not 
introduce any new "quirks" or features that Kaanapali should inherit, we 
can simply define Kaanapali as compatible as SM8550 as well.

Glymur IS compatible with X1E and since X1E introduces a new "feature" 
that we would like Glymur to inherit, we need to explicitly defined 
Glymur as compatible to X1E.



If the reuse of SM8550 as compatible in both drivers is causing 
confusion, perhaps we instead add an X1E compatible string to the UCSI 
driver. i.e.

--- a/drivers/usb/typec/ucsi/ucsi_glink.c
+++ b/drivers/usb/typec/ucsi/ucsi_glink.c
@@ -319,6 +319,7 @@ static const struct of_device_id 
pmic_glink_ucsi_of_quirks[] = {
     {.compatible = "qcom,sm8350-pmic-glink", .data = &quirk_sc8180x, },
     {.compatible = "qcom,sm8450-pmic-glink", .data = &quirk_sm8450, },
     {.compatible = "qcom,sm8550-pmic-glink", .data = &quirk_sm8450, },
+   {.compatible = "qcom,x1e80100-pmic-glink", .data = &quirk_sm8450, },
     {}
  };



Then we can have the bindings like:

--- a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
@@ -29,6 +29,7 @@ properties:
                - qcom,sm8350-pmic-glink
                - qcom,sm8450-pmic-glink
                - qcom,sm8550-pmic-glink
+              - qcom,x1e80100-pmic-glink
            - const: qcom,pmic-glink
        - items:
            - enum:
@@ -37,12 +38,17 @@ properties:
            - const: qcom,pmic-glink
        - items:
            - enum:
+              - qcom,kaanapali-pmic-glink
                - qcom,milos-pmic-glink
                - qcom,sm8650-pmic-glink
                - qcom,sm8750-pmic-glink
-              - qcom,x1e80100-pmic-glink
            - const: qcom,sm8550-pmic-glink
            - const: qcom,pmic-glink
+      - items:
+          - enum:
+              - qcom,glymur-pmic-glink
+          - const: qcom,x1e80100-pmic-glink
+          - const: qcom,pmic-glink


[1] 
https://lore.kernel.org/all/20250917-qcom_battmgr_update-v5-5-270ade9ffe13@oss.qualcomm.com/
> 
> 
> Heh, and don't get me started on driver...
> 
> { .compatible = "qcom,glymur-pmic-glink", .data =
> &pmic_glink_kaanapali_data },
> { .compatible = "qcom,kaanapali-pmic-glink", .data =
> &pmic_glink_kaanapali_data },
> 
> So how is now Glymur using Kaanapali, so basically compatible with it?
> 
> Even more questions I did not consider.
> 
> 

Both Kaanapali and Glymur are running on SOCCP, so we should not define 
PDR paths. Since both platforms have will have the same pmic_glink 
services running(i.e. altmode, ucsi, and battmgr),we can reuse the 
pmic_glink_data for both. I have no problem with instead defining 
pmic_glink_kaanapali_data and pmic_glink_glymur_data separately but I 
figured upstream would not like code reuse.


> 
> Best regards,
> Krzysztof


