Return-Path: <devicetree+bounces-189191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E68FAE7135
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 23:03:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C978817A1D6
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 21:03:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F72C251793;
	Tue, 24 Jun 2025 21:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xle/3ZVb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 836F222A807
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 21:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750799027; cv=none; b=uI1rjOB9U4MWD7x7TY7rX91JX8PuG6JrQaCQljkcsZFviqejJe8M8HxD9Qv0n5avL6v08mrqsV+Fbj381r8jeMZBuIsgyKUQROM9W6W4oNIN0xFg3tnoab4onHihSJeKr+J2433ASrNZK49T8yjHAl+tEfy/YSbe30eCJeSppWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750799027; c=relaxed/simple;
	bh=kRy3R7VfGoc1bssAiwrUHSgpndwIcCOFEjYQX7QEk9E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QEanvJpRMHKkSF40J8DcftGq9+jOjwMwyVJel8nHNzmE09wkruvnb/S7o+KVd3emDdoXtPlj6KyfwuYEqEfjykApdLmV8H1380dTzkGF52P05SKdxPTNvakbSgYNXnkByyduqrDRXpzmFIj3S5y31BIcsAIWJgbyC5pRnMiwvpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xle/3ZVb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55OESwgb032291
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 21:03:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mVJI6aOBGl4t4VmrNckaYkNqLm0/IYYdUwHHZ9TzyaQ=; b=Xle/3ZVbKSl5LU4M
	NV2lwkFhV3XkKoPWc3beKvEv09ETVlRI5aKyLx/HxgVDGiHRJqwwfGeX/8gi+cAF
	ZjCk6iLcelFOcSbr9WuliGdEsTxvg/gQxe5hnDeJB+riplD+KSHRisE7jcA4/j33
	WhW0C2JQEiaKHw4CEeqfzqjbALT3RRcKfQjxPHIOYX+WzJFyThBwcsP1/eDiwd1C
	ETBh5F853UjwHP16GZhTQDO/0pktcgmY8lD7i/Mgi73QOVXevmAaoK1KS8S3cttB
	3WeeQu4U+LNVEtxHfauN+NVJ852kzgURb1fhNHTUAYM4dk/IVCNXbljwh4nrjIeO
	TDaYwA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fbm1v67j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 21:03:44 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d4133a2081so115172785a.3
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 14:03:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750799023; x=1751403823;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mVJI6aOBGl4t4VmrNckaYkNqLm0/IYYdUwHHZ9TzyaQ=;
        b=M+W//bkXxaPUnJaeGKTV9XinunK5UDzNWNxzejqAUV5IASmHe9pvOryHZDbsQYr7Kg
         QBR+wZSYgQ+CYHJr1WQzHPUT1vjnjQ8M4Knc2L4fcDM/Rafm34mNGrOe/3gOH4Q8236k
         AKgJVKLyOHs2V7O48YBICkMQnjGDZINCWYf5nD1FQ/9kysRIYb7neLEDB8Oqm8oEPNvN
         ydJYloxBdtEMjk6p/eumTXOLT5OZhHytVCiihd6YLExMQ+bJLs/t4UB1UpY6b6sJip5E
         1SI68PHNJJQjb2Ek5m9zVmWZxQU2nnW1sDDfxP2dvV5PbOa23yJTl/1Cxzgms9+Z0R4D
         67pQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxAOD0DOgCYFtBmRWVq36PioBGHauV90T79VhPN3DguO/HKcSTPV661Y45wV0thHo2G1mYfVr0mlQY@vger.kernel.org
X-Gm-Message-State: AOJu0YwQRm03ep6+3jn/3yZM1AtjgWL7CoQ5bukgTfD3798lQp915nHl
	yrmmCOuiJ60MaoFlownuyvBbl2PWJg0deNptmHqbOESeMWV5BwhWsWAQQ7ZxBiFJQYf4li7AGh+
	G1FBmGjR0ZARmQv4UtkvXUIzAFSUQSj9zfqVVyWjpIy2iWIX4vBph+W+0qjOHR8vWgSPKFEssv4
	E=
X-Gm-Gg: ASbGncuIozivHcdp2uPMtJdMtgBHkxk+3xQfMg9AmQJS+lWTUBWGpb5qZfyOmv9G/B6
	YmJTeaQM9SY8vaCSfHJDa7bZXhI0o+vDTsUSFT2PvFZhAjewnL2uH13NocX0Aj3QTlgjzfAiRcV
	U1y86pLuPppJxVoivjVndBR0tzmD1+Rlcn+YElGXQc6jeHuFyxtc++JVS+BDco1PP34uhBJvwZZ
	ySj0tzjrauxCDqMvz4o3JJeuEjFp+Bckyveic8SweOX6bF8tywp6dRj0+Sli3jQOCyzx9xGxxBk
	HL/Xr5cKzpYrCzUybw7NOZBhRTebdR5rwCLcGDH4L3GTRTpI5REmTnBy/XV2ZvtsHahybvG/uqy
	8UFXtaifh4tiAnRuq+Q2SNMWE
X-Received: by 2002:a05:620a:4053:b0:7d3:8a1a:9a03 with SMTP id af79cd13be357-7d42965f652mr79132585a.14.1750799023307;
        Tue, 24 Jun 2025 14:03:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGdXH0d1f6aDkKnx6CCNg4hy12ddxcs0mjWOfhKxBZypB1VzHs0Gz8oM9mgx/g5oqmSwc4ULw==
X-Received: by 2002:a05:620a:4053:b0:7d3:8a1a:9a03 with SMTP id af79cd13be357-7d42965f652mr79129285a.14.1750799022848;
        Tue, 24 Jun 2025 14:03:42 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0c3:3a00::4c9? (2001-14ba-a0c3-3a00--4c9.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::4c9])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b980f0800sm17872221fa.114.2025.06.24.14.03.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 14:03:41 -0700 (PDT)
Message-ID: <225b94a0-eea5-4061-aebd-da497d349527@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 00:03:40 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Start using rpmpd for power domains on MSM8974
To: Luca Weiss <luca@lucaweiss.eu>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250621-msm8974-rpmpd-switch-v1-0-0a2cb303c446@lucaweiss.eu>
 <amfgwjgstu4hoxz4lo7fqrqz5fqtf3r7o6wqvrrjkcfubwrjyz@5i75peprq3wn>
 <841c41cc-e44d-40c7-9431-a77feaa49b05@lucaweiss.eu>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <841c41cc-e44d-40c7-9431-a77feaa49b05@lucaweiss.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=YYu95xRf c=1 sm=1 tr=0 ts=685b12b0 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=dlmhaOwlAAAA:8 a=6ZqSrkSmcNyY40qCGO8A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=y4cfut4LVr_MrANMpYTh:22
X-Proofpoint-GUID: HMxMrfFqxvwlz0GCbEcoRcsr1JQTKowV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDE2NyBTYWx0ZWRfX367K68Z0i0JL
 cK5ZFFzpaV86JB7c+NJ5SK8PDJpSFPapam2t12oa2oOpiY8VIjlEImHhAq2THKD8QWsoX2G7yeq
 cmrocU6+3zAzEcgYQ5DCeoL41hCW1Srx65tYczndxzeSx2ujBrkjR0MedPQ5bJkz4n+9fwFkSyd
 7fvloPrIK465N729uZ6Jy7zLjAQ1JVOj70HJvOR/oRG8OJn06evPRtxYcwodF7B476sntpU96Aq
 gbPdfDM8I2DKdIPXcIrpzwfmSwzlmZqEubkev6id9suqP46YJfb8WTspzmJtFX3twj9MpIAuOfQ
 uS9powp3riW6xUdyE6oP4DY/7LMA6JHtvnJSFCQBILjsZkMj15W42ho/0mJW9j3t7YilsJyQ0RE
 cltUCLEnnxXFNrgrISJMD+hrU/mypUgyTUn1SHJwxgmJbyeeIDfidTSe/gV8C5ysK7q8TB/A
X-Proofpoint-ORIG-GUID: HMxMrfFqxvwlz0GCbEcoRcsr1JQTKowV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_06,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 mlxlogscore=999
 clxscore=1015 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240167

On 24/06/2025 21:46, Luca Weiss wrote:
> Hi Dmitry,
> 
> On 24-06-2025 2:59 a.m., Dmitry Baryshkov wrote:
>> On Sat, Jun 21, 2025 at 03:19:55PM +0200, Luca Weiss wrote:
>>> Switch over the ADSP PIL to use power-domains instead of a regulator,
>>> and have one commit switching over the MSM8974 SoC plus all the devices
>>> to use power-domains.
>>>
>>> Note, that I'm aware that these changes are not backwards compatible and
>>> not really bisectable, but since it only affects the ADSP on these
>>
>> Why? The cx-supply is handled unconditionally. A single-domain usecase
>> is also handled via a special code path. I think this might be
>> backwards-compatible, by the pure luck.
> 
> Honestly I have not tried and not looked much. I mostly added this 
> paragraph to avoid the response that this change might break and is not 
> really backwards compatible. If it does (by accident) work with the 
> updated dts without the driver and the other way around, then even better.

I think it's worth checking that new kernel works with older DTS (that's 
the usual rule). The platform doesn't have many users upstream, but I 
think it has been used by some PmOS users, which might mean 
not-yet-upstreamed DT.

> 
> Regards
> Luca
> 
>>
>>> pretty old boards, I say it's fine to have this. Get all the patches
>>> into the same release (6.17?) and then we're good again.
>>>
>>> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
>>> ---
>>> Luca Weiss (4):
>>>        dt-bindings: remoteproc: qcom,adsp: Make msm8974 use CX as 
>>> power domain
>>>        remoteproc: qcom_q6v5_pas: Use resource with CX PD for MSM8974
>>>        ARM: dts: qcom: msm8974: Sort header includes alphabetically
>>>        ARM: dts: qcom: msm8974: Start using rpmpd for power domains
>>>
>>>   .../devicetree/bindings/remoteproc/qcom,adsp.yaml  | 18 ++------
>>>   .../arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts | 13 ------
>>>   .../qcom/qcom-msm8974-lge-nexus5-hammerhead.dts    | 12 ------
>>>   .../boot/dts/qcom/qcom-msm8974-samsung-hlte.dts    | 12 ------
>>>   .../dts/qcom/qcom-msm8974-sony-xperia-rhine.dtsi   | 12 ------
>>>   arch/arm/boot/dts/qcom/qcom-msm8974.dtsi           | 50 +++++++++++ 
>>> +++++++++--
>>>   .../dts/qcom/qcom-msm8974pro-fairphone-fp2.dts     |  8 ----
>>>   arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts  | 11 -----
>>>   .../dts/qcom/qcom-msm8974pro-oneplus-bacon.dts     |  9 ----
>>>   .../qcom/qcom-msm8974pro-samsung-klte-common.dtsi  | 11 ++---
>>>   ...qcom-msm8974pro-sony-xperia-shinano-common.dtsi | 12 ------
>>>   drivers/remoteproc/qcom_q6v5_pas.c                 |  2 +-
>>>   12 files changed, 56 insertions(+), 114 deletions(-)
>>> ---
>>> base-commit: 7fa2fb97cd28e1d9670da538095565b6fba83977
>>> change-id: 20250621-msm8974-rpmpd-switch-b19b166c02be
>>>
>>> Best regards,
>>> -- 
>>> Luca Weiss <luca@lucaweiss.eu>
>>>
>>
> 


-- 
With best wishes
Dmitry

