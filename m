Return-Path: <devicetree+bounces-257198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 800DCD3BFE7
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 08:01:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8758C3C4F7C
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 06:54:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C16FB38E5C1;
	Tue, 20 Jan 2026 06:47:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="juYSGFQI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XheDn/TP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2A4F38BF67
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 06:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768891647; cv=none; b=agtSPcQ3qSHlK/EcRyCJxOOX2yyDCiM5IrwmzJ3RazUCyugBqZ4PWHkX8ZFQlEK554zL89D9tdAi8FTQgyjuENBSSUim8Ql25jIVpYfSE/ZfTnCusdOlrr5fRWZlMlZWkcRYNdQt9W+sSbM157ttBTWTCjpJZ/5g0jA73O6mW5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768891647; c=relaxed/simple;
	bh=9zSB0SKPqVytg9E47pDWxjXGCi3GsTUENWtJwJ7fCTo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aZi8B2O8WKcWJmPoDEDxCtmwcQJU5LSUys1oy8r1RUlG2CvgK36scbrr2uZrbpKkOdzLfSIkR9KjWDD5MSzESjrzj2wjFg1TQcnorz+wUeif7sq8sk2zJc/uLt7z0cbip6WBrDcvpB49lNDjoTsdvjIiQiLO8EnMvWK7GwzT2s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=juYSGFQI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XheDn/TP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K3sK2i3252355
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 06:47:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	y58V0VKVCklMwbulqJLagD0oWjzf9cH8p8APFR1p1Aw=; b=juYSGFQI+N5SJ6dn
	rSYViukvo6keLgwIZ3eyA+XG2oRpiANNFcjFcm5EYIvhZ7yqQq5gJNSprCwH1V/D
	TnyrgK7FzWGJF43I1vDrO4hTJKWjCjgwycRV4ZvQ2UUtYQU/60446sAe0SkzdjJR
	cjbKq0HLLmnPzcNzvY4SIfCk3/6iMX5gIefSmATJlHFwHYo4xypujCOFl9mJeXg6
	3vhe6SNmCtUtBlydVYRa4sdKRL8gMm9+ItCX1ahwDjOvrjrp8Nfsw2LWaw5QMqG0
	6V1zWek7veM7C05hXOgmazXq1Q9DrZZDKY+MEJm+cFBsNCuYHzvA99y/e6MjMtt3
	F1ojmw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt27age7t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 06:47:14 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0bb1192cbso46193475ad.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 22:47:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768891634; x=1769496434; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y58V0VKVCklMwbulqJLagD0oWjzf9cH8p8APFR1p1Aw=;
        b=XheDn/TPmrFJGtaHTfjHiAP+RKZ5eA/0Yv9EhrPYp5Unu+MLrzcIeqevzg17nWKNB8
         sQHp0J8tOJQDWPKW1flgXvhCxqattGX4qbvrekyobwFKKItXidGGCDTUWtKDVTpbwcUi
         qb9aNsgrRse1AJgCpxE02w9jZVpn9s/JYWzPWPpcrPKqYezdJ6fI4cqUTeMjm/Hu0OvK
         PtFH7e02A1gMncoCao+IRi7g5PhYZcI3fy4LE2S5OJcxwnxIfwcSIbC0EcxnXRmhBGkm
         vcqFcH3lU5dWKnKL1ELfQnpFtRdO6bpXH3MufNzSxhYE6J7TM5pEhvuadyMC/MN1RHE4
         CfWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768891634; x=1769496434;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y58V0VKVCklMwbulqJLagD0oWjzf9cH8p8APFR1p1Aw=;
        b=CO4ykfgmCZ80kVGwV0G0LoVkGEFpKFFru1m4iloJkdtv/t/VOgpGJsAIomitnZI1rA
         FuDxVg+TB+zTYaN5hddbPrJ9hF1c+MfEkIvcjNyKJzdSHS842lLbpOoP4ymxbAu6wz3c
         zcLo6OTfhrtHk0nZeAtSBqtFFcj+UUsWwNn6sBfz6wnDsU4/WppkD07duWBUO8bkSRnW
         12W4SmvfPkpPOO3WlKCgVRrd1qXviJg3crxAKh2NEmyLVkHUPoIavpkaNABb8sdmtVZT
         d33ghMXnS5VaoKQa7GuYrcwt4/oaNC17s8RAqiMyIyokZWg1Hrs9WoIfX+FiD+h9Bt+G
         Ry0w==
X-Forwarded-Encrypted: i=1; AJvYcCUfMZqoKKPRCnk84ajz8LZDgIZPR9kjNWhtE4cTDXiGN7Go2YFPWKjVAZDdtr5V6E757vG1rF93HE4z@vger.kernel.org
X-Gm-Message-State: AOJu0YxeXyzqs6b9gkKrmI2OD2cEl74Zr87YumcK/sdBA2EsGsdbHMsk
	oEdar1CN2wI5f8rbq4ro/iofNQ9Rr1TKaNrR6eVmHUnUe+fx33w99NZ56fQ7Q5e4ZNmzNfUubNg
	LAa0JCCT3zmJ9733XPgavj/xZTi04Su3p1k40pazPz2DVdx668WkRZnTgBX8p0cm8
X-Gm-Gg: AZuq6aJ5xRbl0pGHZLZ29W8ndnXwjswrQgzLapt8Pwm9yqwFBtdUTSReUXgPAjFz90S
	wrl9nh11RVpdlC87v0Yox68nBX7OH3fKGk1Xm8RWoT/WmQ25Cwq8n681LeiQ8OgHPxxP0cjTtlL
	kcWmA6qpehjmd6qN4szSlE48/dD8cddQhRfMrqq0ULSWI2kGpd/vRk+b6grOv+fKISFpK4wyD1+
	1VEjqlUwrIh1TEw/My9J2vfH1DUQniikN3P3HDiwPob8Sk1Nz5rvFsDV7mT770k/yi+ioIhGDF/
	2HE5one22UnAwQchS+PRtNs6XvZzU0rnpg3rGJx06mnWpzeVeuv/LCJ4anZJslSLki9M3EOL8sk
	IU8bGP5GD7UWT+ADY3juA/3RQsC1IYayOrRDcShjqrlELoqypwwZlMBnhKgtLspTQ6sxDQo7ZPm
	i+WhQ=
X-Received: by 2002:a17:902:d503:b0:267:a5df:9b07 with SMTP id d9443c01a7336-2a7175189a1mr108743495ad.12.1768891633614;
        Mon, 19 Jan 2026 22:47:13 -0800 (PST)
X-Received: by 2002:a17:902:d503:b0:267:a5df:9b07 with SMTP id d9443c01a7336-2a7175189a1mr108743205ad.12.1768891633028;
        Mon, 19 Jan 2026 22:47:13 -0800 (PST)
Received: from [10.133.33.151] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190abc79sm111372985ad.9.2026.01.19.22.47.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 22:47:12 -0800 (PST)
Message-ID: <110b87e9-4f74-4a81-bc98-a1f965e03c66@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 14:47:05 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com>
 <20260116104136.2922032-4-yijie.yang@oss.qualcomm.com>
 <d15bbe2a-a88a-4a88-a685-ecd4f058c3af@kernel.org>
 <3404f2f4-7edb-4bff-925b-0a6a7a450f5c@oss.qualcomm.com>
 <eawxuhblnho4pyeyskvk5s4ouqser7o5jh267ttinzeeowxfxs@y6nl2qbdydb2>
 <e1c00e57-cac9-495a-9d27-f77ceac5c5ce@oss.qualcomm.com>
 <7sbof5mgm7mqtm4gh45f4w7264akplqtkfyplrerek4w6seipl@ith7sc3wmgih>
 <d1d05b31-f70e-4250-8ff0-bfcba7f5923d@oss.qualcomm.com>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <d1d05b31-f70e-4250-8ff0-bfcba7f5923d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: TMjT_BTDcqPe77CX2bs0q2lkbX1_-NB6
X-Proofpoint-GUID: TMjT_BTDcqPe77CX2bs0q2lkbX1_-NB6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDA1NSBTYWx0ZWRfX8pFBjgW3mlgF
 tG3QANFP7DEW/P2zy9l05uwUWZlWo/gkaixv41F3rqMo/7hDClc3GxFQTIzxBrEZSlN+JHt1LxS
 anqTsc68FMQGxaBa5IBA9ydL8JoJzaBmRkpy1ccJR7e598dWIL0DNRHWeg8P/72RIZqueaprQVz
 vDXw8duBReMF57CpS10OamVkf5r8oZG3Nt96NFuNElGOnQlovL+8IvFR3SlPfwCS426UXd00Fnz
 PSYqjX2afc3f7hY4eMnBxpAc/uWCzD6cL5th5Hp4nET2RrQLoojVTSjGhLfP8sk+Fn0thY3RLKs
 0VjxxLi1sOKCNQkxh3j3prCMntTDZGLI8KzhP6f0vM3ciKc9RL2kZhaaz3Y1ZDDhjulJr3ghc31
 xCpHNHFS6D9z92ovigzU7DEqWSA01oann9mqQSKFYdBj5iX9T/embOSvJfpeYzM/+UZfeAMGxcW
 K0LvWCqvf1RfoWNSauw==
X-Authority-Analysis: v=2.4 cv=P6U3RyAu c=1 sm=1 tr=0 ts=696f24f2 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=25GqE7iRlsqttpV648YA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_01,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0 impostorscore=0
 phishscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200055



On 1/19/2026 9:31 PM, Konrad Dybcio wrote:
> On 1/19/26 10:46 AM, Dmitry Baryshkov wrote:
>> On Mon, Jan 19, 2026 at 04:48:20PM +0800, Yijie Yang wrote:
>>>
>>>
>>> On 1/19/2026 2:33 PM, Dmitry Baryshkov wrote:
>>>> On Mon, Jan 19, 2026 at 11:13:29AM +0800, Yijie Yang wrote:
>>>>>
>>>>>
>>>>> On 1/17/2026 12:19 AM, Krzysztof Kozlowski wrote:
>>>>>> On 16/01/2026 11:41, YijieYang wrote:
>>>>>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>>>>
>>>>>>> The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
>>>>>>> the Purwa IoT SoM and a carrier board. Together, they form a complete
>>>>>>> embedded system capable of booting to UART.
>>>>>>>
>>>>>>> PURWA-IOT-EVK uses the PS8833 as a retimer for USB0, unlike HAMOA-IOT-EVK.
>>>>>>> Meanwhile, USB0 bypasses the SBU selector FSUSB42.
>>>>>>>
>>>>>>
>>>>>> NAK.
>>>>>>
>>>>>> Warnings were reported at v3. Did you address them? No, you completely
>>>>>> ignored them, so warnings are reported again at v4.
>>>>>>
>>>>>> What do you think these emails are for?
>>>>>
>>>>> This warning is caused by the pcie3_phy node in purwa.dtsi, which is not
>>>>> introduced by this patch set. Since it does not impact functionality, would
>>>>> it be appropriate to fix it in a separate patch?
>>>>
>>>> Why can't it be fixed as a part of this patchset?
>>>
>>> 'qcom,4ln-config-sel' is a property related to bifurcated PHY support, which
>>> Purwa’s PCIe3 does not provide. Therefore, introducing a new compatible with
>>> a corresponding binding would be more appropriate than simply adding this
>>> property. Is it acceptable to address this within the current patch set?
>>
>> Within this or in the separate patchset, but it needs to be fixed before
>> this patch can go in. Otherwise we are enabling broken PCIe3.
> 
> https://lore.kernel.org/linux-arm-msm/20260119-topic-purwa_phy_shutup_warning-v1-1-997a692b31c6@oss.qualcomm.com/T/#u

Thanks, I can add this as a dependency.

> 
> Konrad

-- 
Best Regards,
Yijie


