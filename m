Return-Path: <devicetree+bounces-253778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA56D11532
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 09:49:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B374B3058BCC
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:47:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24942344020;
	Mon, 12 Jan 2026 08:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YP3mjYFb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EjEzZxwu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01DC32D47EF
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 08:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768207662; cv=none; b=gQ+roW3sKGP6Mh7qVWjrHddTQ/g7Th/aPW8DR86Y9jPzTgf6fdaIGqwf2P1ferEhHfMcdcJgJ2jfxxAIxl6dlEquTpGWYRDtpp5Q1up+i1lYWRr2NW99Tv5dmWnhzuHhOfsDJN/SpG9jJbEIY+9GW9zMNS/P32Dm72zV0V9ralo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768207662; c=relaxed/simple;
	bh=mdfZDExi3766mMWEZXVmItP78Ha0Pit9tQT+1Lb7zeE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NBlgtLW8fKePDZDpY0byxj48bLPFns7pLon2xwt9NX4E/o48PpEKV2uDZhwre/wJ8WvinpeKIG7u12YTokOueLa6l4I5SLw6Bfsem1maHxGwIMpLt/kXnzx1E2j5/uK1Ah+Ikqkih4bsnLfSzdjFp2iUlnfoGgQ5qHvXG0SIukM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YP3mjYFb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EjEzZxwu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C83uYj112057
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 08:47:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0M9Pe9DoO0IXD+DjDQ2KLBugxF3PBcSogrV/YVUfujA=; b=YP3mjYFbYe6mFoAe
	7d03yFuX9BCBbBVdAzLmLda/jkIalX0BCz1+tvA/a0B5/cHGobLotl64HW0m9DJZ
	jOK/GFfmOPTpGkR9N53lyY1y3VO/ihvs5MtuDlP22kHGR8+BCHrkvVkLN4JC065R
	RJ7yj3Wp+7x7U6RZZ/AxFLzi1sInlcTdq1puOP81sDs0XkPFQBF7duJbN+o3ivf6
	dyAuvPA7GSa0p6ZowQ3p/MoUXN97c5tZhMrHJ7VhPdislSa6xA7meyp+kxl51Nu9
	tU+eTONR4KHYsD8t3IcXkG6ZtVTvMAEYccD+ZW+rHCKdy/6OAp4dIRwMvIT2qNRt
	0LJpTg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bm8kyt9th-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 08:47:38 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c551e6fe4b4so1696998a12.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 00:47:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768207658; x=1768812458; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0M9Pe9DoO0IXD+DjDQ2KLBugxF3PBcSogrV/YVUfujA=;
        b=EjEzZxwutgk2gIP6BBh/eqMcpGpGK2U0m+BGoIBc4qKsN24m16gAFk9G+djrL7byry
         Ob0xOyiZB+Oy7zIzwkqsZL2qqGAxNgmrYY3cprKxR/EjgjZSyAmQoBWM7XlYq1erYiaN
         GbUqvpx704qI8J3OysXFZo9Y4HmK12hfKGQW7HLPAoZe81JJSoqH0uJ6upGdlg4gv4Mm
         ZMSopG7gfyVEJCv6lrglQJfCV4r2fgIiaLH4YlcKZMntlHGWYFEfSljCl2DcEosMDs1B
         CQq6xERcUxnbZfm/dIVRWMdxSf07e5sz8SDoH3FOthcokR7CdZ6kPC4lb05LWbH9z1aJ
         E6iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768207658; x=1768812458;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0M9Pe9DoO0IXD+DjDQ2KLBugxF3PBcSogrV/YVUfujA=;
        b=FUY3HLD+3aCLbm6iAO0npi5F9p8rGB04jILB6aizm9WLvHvpFY/G3g4iuNkKXyP9tQ
         GAzf5J8DUp8xjhXXVVAtYpQ5KOp8nkGcxqC8pa98keNXjfrmoh0wRePAndfqPb+YmsfR
         I3LDGKRrRGQFQzefCwlsBFRYsrD4wm75tNAz/z47O8DChimb56GkIovGCMpVsQzqL00s
         MpINy+MDNsJ6AkIMSQW+9PU3NCMOKj9BzFs/bQfGtNQVaLAQLEDuF8e6nuNzMcvBf4fC
         nZM/F2LTyzg8rmCL3lFfRWkPlC/vnWdmxCOdBodEFrFqYDNXP4fRG9P0vR4kb53zc5j0
         bm8A==
X-Forwarded-Encrypted: i=1; AJvYcCVP/M7kmZl2ySoZNlJelwHpp5FHUHlHN4iMtt0k9GailpeWI2OutzTQy2qKTO4x4mkXIKZrMga9Rn32@vger.kernel.org
X-Gm-Message-State: AOJu0YzbI9cWB1AiMWc5Qsz/x7d4n5Fu5d87jnzzNiCgw4VVJ7kjOnXi
	4Fq0R5doBlstZI5zqz2PiI/AC69F1O8OIs6/cUwZG8vmK7lZh7BdbjaIoaZKiqP2ufu0XdSINiQ
	78GvldWufSggKXMo+du8zDsM4xRZqGFqAx/xP6RKCtprsR5dPc1V25PCEtvFMSZJr
X-Gm-Gg: AY/fxX7uPCoOMbZ2wm7NnyoAmKZ6ClDQsOS7BlrJUIKHTXGqahgFjTsck5xr0+BVMxn
	lWl7KWVXPfK8QRCOKnJ/gix/2f3Bnle8sdU2fAGUWVP9VziikOekym6BeGNZjsgKflcTRAVymQu
	cbMlKuAj9EHmX+U+xsvpPxwLoJPDhn73vC5XmPm5OaPxuCkSdMXXBkvLpUfV+kfRz9ruGQSsQnf
	u55uTGm7JtR37sdngdDZIN2iYoFnQ7ql8oYi4LzzbFuQFZ0HJ5/GL0B/WmroDlozN2fr80EBWmA
	wBIms1cxKnVJwwWDgAzXBtzCJwuu/wY4rXh9faTdpCVziMj9y5R64TgKWAS0Hagdwc20CJ6Fw8b
	dl3BGJnBmDkqGetreyKo5qbVSF6bOikmC+XjKfRcESQ==
X-Received: by 2002:a05:6a21:6d89:b0:37e:8eab:c05f with SMTP id adf61e73a8af0-3898f9e43d8mr17501821637.59.1768207657568;
        Mon, 12 Jan 2026 00:47:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHx0JXNd/sdIU8fX4xkB5Wqtpx1qJuakfOkz7xFVHpceKym2cVnYfqat9y1NQQgyCehuo0l4Q==
X-Received: by 2002:a05:6a21:6d89:b0:37e:8eab:c05f with SMTP id adf61e73a8af0-3898f9e43d8mr17501807637.59.1768207657056;
        Mon, 12 Jan 2026 00:47:37 -0800 (PST)
Received: from [10.218.4.221] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cca06b2edsm16884075a12.32.2026.01.12.00.47.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 00:47:36 -0800 (PST)
Message-ID: <073c34fa-4c19-4905-851d-727722bbf8c2@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 14:17:31 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: qcom: talos: Drop opp-shared from QUP OPP
 table
To: Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, dmitry.baryshkov@linaro.org,
        mukesh.savaliya@oss.qualcomm.com
References: <20251111170350.525832-1-viken.dadhaniya@oss.qualcomm.com>
 <ivinuu2ofm2hf7jvnw67gjfwo46bepunconf5g4kzdcaxs4jvm@6dm5btokf2zi>
 <efec8f09-8bb7-9739-5a1f-ce4a1c54771e@oss.qualcomm.com>
 <nm4hiy6vd5b3t65dagjx5m5qjfjdcnehz2s5w4lyu44eaqnwkc@hnmyhokxufz5>
 <13ea5fd7-b28b-b6c0-752f-a7d4b4677298@oss.qualcomm.com>
 <e5cef414-912e-4387-9a47-494567fe2360@oss.qualcomm.com>
 <vmrpdu7fn776vkwrhwvtuwkpsxaco4gt4worl43mpvk73ft67a@cbkg6gmqss5x>
Content-Language: en-US
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
In-Reply-To: <vmrpdu7fn776vkwrhwvtuwkpsxaco4gt4worl43mpvk73ft67a@cbkg6gmqss5x>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: CwNoDGejPQU_PPrwLzoFAzLlhVjgU3tQ
X-Authority-Analysis: v=2.4 cv=ZuDg6t7G c=1 sm=1 tr=0 ts=6964b52a cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=mCbzp4guXirYtTQ2do4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: CwNoDGejPQU_PPrwLzoFAzLlhVjgU3tQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA2OCBTYWx0ZWRfX15k5hDnArpLM
 dxSpODEyUESN/sXrgN6HYHnen+NRsc2ZTKFtPAmTQIOvmn2MwVDghI5z8r2aiz6oAK0WrQNovsc
 RGLzmOBa+qv13vRGE9hF0WHAAP+o8WKz7MyPVN3i7a7m+V1Y845byz9NDJLXcDMzqcfTKBxBVcR
 IsMltvwAHv5KpFk0MwxvXeRVhTo8T2IyDFxfDikuG/4l+GBCy1iSNACDk966Hlf2fGOxzuuXhok
 Vl/RqQ04zO4lMG4lZ0NlTPtoiBs/E2EkKEK/U3T3tpwWiFjhxotf27JN28dcGqy870BTIguUUor
 XqJzWHeTuV6uLfoYJBUSmx8tUXsNlfkGxKtXx5b/Rbys8rqwiR2CSCOu5YsbM9H5STVC+/mqfD1
 pyYV22N7buZ5NWu1fFt9FThQwurMm8GoOwpT7Q8AoYO0d3Twyni7Ig5CeAwePr4TRJT71eai+Nn
 UsWApWzXCZTDSIW3xAQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120068



On 1/10/2026 1:10 AM, Bjorn Andersson wrote:
> On Wed, Dec 17, 2025 at 09:20:09PM +0530, Viken Dadhaniya wrote:
>> Hi Bjorn and Dmitry,
>>
>> On 11/24/2025 3:10 PM, Viken Dadhaniya wrote:
>>>
>>>
>>> On 11/21/2025 5:33 PM, Dmitry Baryshkov wrote:
>>>> On Fri, Nov 21, 2025 at 03:37:21PM +0530, Viken Dadhaniya wrote:
>>>>>
>>>>>
>>>>> On 11/12/2025 1:25 AM, Bjorn Andersson wrote:
>>>>>> On Tue, Nov 11, 2025 at 10:33:50PM +0530, Viken Dadhaniya wrote:
>>>>>>> QUP devices are currently marked with opp-shared in their OPP table,
>>>>>>> causing the kernel to treat them as part of a shared OPP domain. This
>>>>>>> leads to the qcom_geni_serial driver failing to probe with error
>>>>>>> -EBUSY (-16).
>>>>>>>
>>>>>>> Remove the opp-shared property to ensure the OPP framework treats the
>>>>>>> QUP OPP table as device-specific, allowing the serial driver to probe
>>>>>>> successfully
>>>>>>>
>>>>>>> Fixes: f6746dc9e379 ("arm64: dts: qcom: qcs615: Add QUPv3 configuration")
>>>>>>
>>>>>> This was merged 11 months ago, and Yu Zhang added bluetooth support 3
>>>>>> months ago. What changed to break the QUP users? I think it's reasonable
>>>>>> to use this "Fixes", but we should document - at least on the mailing
>>>>>> list, where the regression happened.
>>>>>>
>>>>>> Regards,
>>>>>> Bjorn
>>>>>
>>>>> I’ve checked the older Linux versions and found that this issue started occurring after the following change:
>>>>> https://lore.kernel.org/linux-devicetree/20250630064338.2487409-1-viken.dadhaniya@oss.qualcomm.com/
>>>>
>>>> Hmm, but it's your patch. How was it tested?
>>>
>>> For this patch, I had verified only the I²C instance and compared it against other SoCs (like sc7280.dtsi). But missed to validate all other instances from  SPI/Serial.
>>> I realized now and will make sure to test all possible nodes in future changes to avoid such gap.
>>>
>>
>> I hope the above information addresses your question. 
>> The current change has been validated for the SPI, Serial, and I2C drivers,
>> and it is functioning as expected.
> 
> I'm sorry, but above you write "verified only I2C ... But missed to
> validate all other instances" and here you write "validated SPI, Serial,
> and I2C drivers".
> 
> Did you test it or not?
> 
> Or are you saying that you only tested I2C, but have now verified also
> SPI and Serial?
> 
> Regards,
> Bjorn

Hi Bjorn,

Seems there is some confusion, let me clarify:

For the earlier patch which caused regression:
https://lore.kernel.org/linux-devicetree/20250630064338.2487409-1-viken.dadhaniya@oss.qualcomm.com/
I had verified the I²C protocol only and compared it against other SoCs
(such as sc7280.dtsi). Unfortunately, I missed validating the SPI and
Serial instances at that time. I acknowledge this gap and will ensure
comprehensive testing across all relevant nodes in future changes.

For the current patch providing the solution for above issue:
https://lore.kernel.org/all/vmrpdu7fn776vkwrhwvtuwkpsxaco4gt4worl43mpvk73ft67a@cbkg6gmqss5x/
I have validated the SPI, Serial, and I²C drivers, and they are
functioning as expected.

Hope it clarifies, Please let me know if there is anything else needed
from my side.

Regards,
Viken

> 
>> Please let us know if you have any further queries.
>>
>>>>
>>>>>
>>>>>>
>>>>>>> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
>>>>>>> ---
>>>>>>>  arch/arm64/boot/dts/qcom/talos.dtsi | 1 -
>>>>>>>  1 file changed, 1 deletion(-)
>>>>>>>
>>>>>>> diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
>>>>>>> index eb6f69be4a82..ed89d2d509d5 100644
>>>>>>> --- a/arch/arm64/boot/dts/qcom/talos.dtsi
>>>>>>> +++ b/arch/arm64/boot/dts/qcom/talos.dtsi
>>>>>>> @@ -536,7 +536,6 @@ cdsp_smp2p_in: slave-kernel {
>>>>>>>  
>>>>>>>  	qup_opp_table: opp-table-qup {
>>>>>>>  		compatible = "operating-points-v2";
>>>>>>> -		opp-shared;
>>>>>>>  
>>>>>>>  		opp-75000000 {
>>>>>>>  			opp-hz = /bits/ 64 <75000000>;
>>>>>>> -- 
>>>>>>> 2.34.1
>>>>>>>
>>>>

