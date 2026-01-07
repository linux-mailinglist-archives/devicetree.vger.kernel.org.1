Return-Path: <devicetree+bounces-252176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F81CFC042
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 05:52:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 989CE3026519
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 04:52:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5BFF21FF35;
	Wed,  7 Jan 2026 04:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ovlL2MeO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gmOXpqaC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096AA35959
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 04:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767761530; cv=none; b=tpKv4JFsbOPmB6GbJ/CJpLwrBTkbiT+PJg1aOzBmP7IRf1O0x+Dvfd6TtETeDSTOH0FvVVsxQ4cv2zpp5aWEn/QkTBP1I2wbh7VHCRNxud1vjvb+abwouFU5AOd31k6hcYY7DCOqSmeS//+DizW4GRkY+H5+9kJ1BRvSXN4+NTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767761530; c=relaxed/simple;
	bh=hOaF1kLzkfJRtvn7I+M9WG6yJE4HAillJiqCOWvLUR0=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=YwI5oy1YnCslzz4pWbYijnRb/6tfGWi9yWbSkypg3v8WH+ZgXIu227UYEwdM8GYQsN/OD8r672JWnUAmTLimcLeLhKUZmtxJFl0Fz4eZH1xTvPqLnhlwZFBmjXh0Od4x/pqYrsAcxKVRGJVibTMZ4/qs3M7p3UWQVEpxryrZbCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ovlL2MeO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gmOXpqaC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6074mW4N1462299
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 04:52:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GS2n8F6W62wUwW8q/efhA1XshLJHulz0DdGZ7wxXKlk=; b=ovlL2MeOifZmOPyO
	eYyNzpN3WQVUO4HfbLbQnqzKrx1cpzKqu+vJ2fpPGGbyio2Q6/PWA1Dm/zL1HQGV
	5UY0m/LE4j9ZLAAQp56OJAriL+rudsZPNTkmVFkv1cSKbKzKdfXBULn9xWPoehls
	E60sYnxL51rcQ6TR/sz11IHicOyVEdqPGNaVr64QgBhB7wgllU88ez2bzMN2YmKd
	lQO0SCjJt9ONJg+0AsarJhBUb2h1uWI7hwjjjC+fyNrHbKS/KHd109d6ak4hILOD
	Lxi2yOZxW+YSxa2+w7tTCOwp1lyOoaQxJryXo6ZBJbwRoCmNtTFNQ7wXm2ySy3dr
	Rt5ozA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh0vm2v7s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 04:52:08 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29f2381ea85so36429665ad.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 20:52:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767761527; x=1768366327; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GS2n8F6W62wUwW8q/efhA1XshLJHulz0DdGZ7wxXKlk=;
        b=gmOXpqaCCDo7ickWmw28w9cQKpOW+AMvG+lr1hFieKMM24SYbRBnFXC3IX1dYVVT+F
         Un69z+58x7mxSqF5lKKrIFYExP33c3sqImi5hvJw3WqVN9hm3VOeUsRJzkbnfDzFsROz
         9NJCBr0LA2Xeq/6TKBpLSNJvRrpJmIb37/ULmm4uFXWXEmL58meSohj1jmFCp+QOYYXA
         remzp+9JIk92Dcf7aAgim5a6unKgpypAAbvMyvgxMRBZ/wJz7Nuw9Mpsu9IqRn4xGvCZ
         CYvDxB/qP1TWztK1Gji2NP9xzMSYF5g6f7mEr5nmRA5oNto0DtmwcQMLZGf6BomMkTC6
         v0nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767761527; x=1768366327;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GS2n8F6W62wUwW8q/efhA1XshLJHulz0DdGZ7wxXKlk=;
        b=NM0EUxGe685cEyoHwahFzukKpAcWTbsyv5Nub1k4AM62LhqUtTvm1G1RpA8vVzgGqJ
         RY9C5rMVOt5BnFx7hOT7SifraTtshBMaI18SXXYq27kU5J4EZLt/3Vo2BXTwH5YRmJ7f
         7QLuQR87otfwK2wL052c4O6TNX1v4IDSvDzSwHdv/1uQKpIdRUm2WC0SqucwRR2I32Vw
         KvEco3boCD9/o1rZIBlfZwo30Pijws0/XPjyg7aUEKKdt9neRI3WDTiVn99eR0yjeWPO
         v7o8fepTxIM5qBgNsaTYi/O8iFUnQxD6/059rioos7U47Ctzf+c7iVL9+40wJ6O+bX+y
         4q+g==
X-Forwarded-Encrypted: i=1; AJvYcCUVrSQnAB9mHUqKHe09q0yzdB0qcLRROAF5yIh7jHbv/8FKrNfts/p4VNsEbuexo2xeNiU0rxuzwDOo@vger.kernel.org
X-Gm-Message-State: AOJu0Yzomf/X6jEuPBZwhG5P/jdIDaPNZrPSNq1V1Xsm5oTkBtyF/44A
	9MkSn+GGiOz96ui/TKHBbEq3oNbRBM0NkN7j76FP2P/KeJt60ph0j4IVOCPLEym72rrZxCwr/ch
	ziw0cUD98Ka3xq/LXqJskhCP7gZ/cssxvKzqWZvIYHh906eTIllOzUtRIyCmv6S7R
X-Gm-Gg: AY/fxX5YWtfW1/ZwpHF9AjpGaI6Sxn6l5RpXSSF3r6BZPAF1AdFCgEPkyfO17I4dlHH
	+pM7xQXZmBr35QuDosv6G0NsHIoYe8phFvYAPBAWgvkvUVjIQoHbx7vO8/V92BzL2o1aDiZASUG
	dmCQGMBDHMBJom1qIIb+fC0ZcVelzIYPZGg75uDRKv80dZFbqLZEHCmfhW1TPBkBxB0GlM4p4i0
	cIuld4sMaBgh2HBDHlFHDdhY9goWP2pLK9erFzoTQIjcuMHs85uXhhtF2uI9XMPCru1fkZmtTUh
	U1yApfgFOTurS3V6pMz232tvi0ohiCe19mmgw5QiR8xcQKlMC7Y+4Cr3MOwjjPvMxzxNzXAsjp3
	vAMEOSYXxoDt2ZlsL2iSToBKcx9xGZppNl4LUjjl5Mw==
X-Received: by 2002:a17:902:d507:b0:2a0:9081:8a6 with SMTP id d9443c01a7336-2a3ee437d3dmr12351305ad.20.1767761527324;
        Tue, 06 Jan 2026 20:52:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFwQaSZV7LEOISvZzlRWnJiqWwwrpfByogVkRGL2DJo0/sCiP6BYzdWZvO2BY/XfKIJ2lY+Fw==
X-Received: by 2002:a17:902:d507:b0:2a0:9081:8a6 with SMTP id d9443c01a7336-2a3ee437d3dmr12350955ad.20.1767761526806;
        Tue, 06 Jan 2026 20:52:06 -0800 (PST)
Received: from [10.218.4.221] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c49037sm36655895ad.36.2026.01.06.20.52.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 20:52:06 -0800 (PST)
Message-ID: <6a94eb00-3a1a-4806-a739-0adc8e6f05c6@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 10:22:02 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: qcom: talos: Drop opp-shared from QUP OPP
 table
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, mukesh.savaliya@oss.qualcomm.com
References: <20251111170350.525832-1-viken.dadhaniya@oss.qualcomm.com>
 <ivinuu2ofm2hf7jvnw67gjfwo46bepunconf5g4kzdcaxs4jvm@6dm5btokf2zi>
 <efec8f09-8bb7-9739-5a1f-ce4a1c54771e@oss.qualcomm.com>
 <nm4hiy6vd5b3t65dagjx5m5qjfjdcnehz2s5w4lyu44eaqnwkc@hnmyhokxufz5>
 <13ea5fd7-b28b-b6c0-752f-a7d4b4677298@oss.qualcomm.com>
 <e5cef414-912e-4387-9a47-494567fe2360@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <e5cef414-912e-4387-9a47-494567fe2360@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Pa3yRyhd c=1 sm=1 tr=0 ts=695de678 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=SUBiSVQ8Hk_AOeo-gBoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: XwICGBf9vfbmI53EC3kkAEH0czOkUUTg
X-Proofpoint-ORIG-GUID: XwICGBf9vfbmI53EC3kkAEH0czOkUUTg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDAzNyBTYWx0ZWRfX9hF9OjlZrsS+
 1qRUR1T09iX9Ecni+jONoDcgB9zwijdZ+YlzbHByXYdUaPQgPhDJSLWVlsR/dxwpjyFoL/cYWxS
 JJOTTavz6L11B36QGEbecHem69UhsgaI28Tc2TzOP1QRe/XaE7LOzlLKriDVMgT0z8zfnyayehT
 CicBmfkblrvZWhYz9PjDEzO5iZSht3WYjlYTpJaVYWByJrVhW/1d37CTlTlGg6FWsndf6xBYZza
 khd+D2xfx1nSDeG1f2eFVlCn3qnMB/MUYmNg+YBUTg6m0yMiiLecZnydYmGLqqKQAACThvW+7Rs
 CRexpjQ/xVVB+coBNrBLISx5jphrAOgiZSnWUHtdmeIOzXYsxhr1VhpmCEBEn1vBdXYUwSu3SUN
 Ns660slz/iV8clIkT0H0JTPYEIYe9KUUhnFd9AyVM9rbmLn1g0yykKZrllYjjPsYZOTu2I7kQy+
 WejW2HZx2cNRQkfaBhA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 adultscore=0 suspectscore=0 phishscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070037

Hi Bjorn,

Just a quick reminder to pick this change if there are no other open items.
Please let me know if you need any additional details.

Thanks
Viken.

On 12/17/2025 9:20 PM, Viken Dadhaniya wrote:
> Hi Bjorn and Dmitry,
> 
> On 11/24/2025 3:10 PM, Viken Dadhaniya wrote:
>>
>>
>> On 11/21/2025 5:33 PM, Dmitry Baryshkov wrote:
>>> On Fri, Nov 21, 2025 at 03:37:21PM +0530, Viken Dadhaniya wrote:
>>>>
>>>>
>>>> On 11/12/2025 1:25 AM, Bjorn Andersson wrote:
>>>>> On Tue, Nov 11, 2025 at 10:33:50PM +0530, Viken Dadhaniya wrote:
>>>>>> QUP devices are currently marked with opp-shared in their OPP table,
>>>>>> causing the kernel to treat them as part of a shared OPP domain. This
>>>>>> leads to the qcom_geni_serial driver failing to probe with error
>>>>>> -EBUSY (-16).
>>>>>>
>>>>>> Remove the opp-shared property to ensure the OPP framework treats the
>>>>>> QUP OPP table as device-specific, allowing the serial driver to probe
>>>>>> successfully
>>>>>>
>>>>>> Fixes: f6746dc9e379 ("arm64: dts: qcom: qcs615: Add QUPv3 configuration")
>>>>>
>>>>> This was merged 11 months ago, and Yu Zhang added bluetooth support 3
>>>>> months ago. What changed to break the QUP users? I think it's reasonable
>>>>> to use this "Fixes", but we should document - at least on the mailing
>>>>> list, where the regression happened.
>>>>>
>>>>> Regards,
>>>>> Bjorn
>>>>
>>>> I’ve checked the older Linux versions and found that this issue started occurring after the following change:
>>>> https://lore.kernel.org/linux-devicetree/20250630064338.2487409-1-viken.dadhaniya@oss.qualcomm.com/
>>>
>>> Hmm, but it's your patch. How was it tested?
>>
>> For this patch, I had verified only the I²C instance and compared it against other SoCs (like sc7280.dtsi). But missed to validate all other instances from  SPI/Serial.
>> I realized now and will make sure to test all possible nodes in future changes to avoid such gap.
>>
> 
> I hope the above information addresses your question. 
> The current change has been validated for the SPI, Serial, and I2C drivers,
> and it is functioning as expected.
> Please let us know if you have any further queries.
> 
>>>
>>>>
>>>>>
>>>>>> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
>>>>>> ---
>>>>>>  arch/arm64/boot/dts/qcom/talos.dtsi | 1 -
>>>>>>  1 file changed, 1 deletion(-)
>>>>>>
>>>>>> diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
>>>>>> index eb6f69be4a82..ed89d2d509d5 100644
>>>>>> --- a/arch/arm64/boot/dts/qcom/talos.dtsi
>>>>>> +++ b/arch/arm64/boot/dts/qcom/talos.dtsi
>>>>>> @@ -536,7 +536,6 @@ cdsp_smp2p_in: slave-kernel {
>>>>>>  
>>>>>>  	qup_opp_table: opp-table-qup {
>>>>>>  		compatible = "operating-points-v2";
>>>>>> -		opp-shared;
>>>>>>  
>>>>>>  		opp-75000000 {
>>>>>>  			opp-hz = /bits/ 64 <75000000>;
>>>>>> -- 
>>>>>> 2.34.1
>>>>>>
>>>

