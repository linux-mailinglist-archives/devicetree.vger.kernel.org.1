Return-Path: <devicetree+bounces-248924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 06060CD6BAB
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 17:57:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 28E99304E17C
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 16:57:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE09B3502A4;
	Mon, 22 Dec 2025 16:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lye7C4yi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BUvrZjuf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEC234FF7B
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 16:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766422633; cv=none; b=nENnfGApPSV2XaL25nM69VFIkAEIUXLHtJkD0Hk9LIbvUwktcyfLwAOmHTdkbWeU40k85pH8cvh1w9oyBnKEmk2jEJv55r4kRksyh+jIiUW/Y/jyRBjH5Gt9eZ70YC2hwsCl1waspFoFxCM2JXZPWX4QRcdfWVFxMzH1X0woLRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766422633; c=relaxed/simple;
	bh=xV6tWgjxZaXKfkrPw5l/uzOAaZsuSpJiThtogYYnDTU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=momKsHIy8kzNJN8FxRGdXptGuni7EWOIvXNJmEr+hEZI8JztgmuKUBdQYZ7U7c5iKmTxVWvt7kLvFr7aWUd49z9GMIgNfg/EN2+Sw8w1dKrHAnPVfmr8HTj9NNaroz8qHYpm89VxZ8MI1NDHcNmIqGjRJ1U1CaMWC3rCTSAi7kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lye7C4yi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BUvrZjuf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BMEC9xN2199053
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 16:57:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4itgOftOBi39v3+Y6wa7zx7cM8P0meLsOdf8/g/via4=; b=lye7C4yiuqPLel88
	HPjm+8uaBtuxa3yyOHwh+GY3XIatjzgnZCsGY2fsw1lPxqqMMamgVc0ktvkg/0nU
	05DH+C2j7hcGr4pOk30N4qYefy/mBWQnnKLwTWqOBKGZ+imEAVCe1Ozjp6jeiqkn
	i39hcH2pVNn0JxF+ITsmzv+FRazzD4vydZEfLWRzTdEgfTV+tSB9y8JPK8BdM1FE
	d+yG5AVxDufijhKCnBvKHHt8jIkUcB+3ICYyGQtwc0khA3zHQvPZ5+6mjy/HsHi2
	5+ZUuvM9Dxu0ys9sZ3OIOeAgngMdiEVYvcgiXLwOWSmBhMr1oi++5T5Vm/KyTQ1a
	JwEnkA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b73fws4xf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 16:57:09 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a07fa318fdso73840305ad.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:57:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766422629; x=1767027429; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4itgOftOBi39v3+Y6wa7zx7cM8P0meLsOdf8/g/via4=;
        b=BUvrZjufjNZiV46lq+7neHqdgxSSJiH7IMrC7M3zQGKRoT3/ZQBFuP6GAVG8RN/RDc
         shgGHcNdcb/Jsmj0oPuoK84lja9v/vivhWzkcJDg/+d/WObcdOVncvj45aGuLyqEvRJQ
         NH17xh0CsHFSrMZJpPKNqzFISLFRgHH8z17yljCsqs5kZ8Aj/v9RhMcGGkTetBj8J3Vy
         KhMLX49tCHLFTbKBxg1YdL0oNma1m6wxoBrtQS7WrPhU7DM+fBIhWlB4rldVwkt067pb
         ef98vDQb5yJuXdOe/gKYRFZSYn67aBvbzTIXYzEsxcsXTRu+Ko7NJxZcdlTyXkF3ucRc
         merw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766422629; x=1767027429;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4itgOftOBi39v3+Y6wa7zx7cM8P0meLsOdf8/g/via4=;
        b=d3QaLBDGTN26xOUksZWwDS2S7slqWSMevK5pxkvtry10y81RFADVCachnemhDt0job
         3FPoORCQkSbUTwpvU1KfnUTy54fNBYxqh2cQ/UTY8LinlD+RpYDuH886MtJijt6eJpxf
         mIDnA1ggvor0YkP/eT3pgeTfY1CzkvfMObLR84BPX859ul18gWIKmg0EQ3SVCqs7IcHG
         LOSOIR1HJnSkgHQffL9BO1vNQ33wTKD1YpeyhZgzp7ag54fdKNwhwikHaBVvMdWoKO68
         T6lHWuKmeNOzH/Ykp0bTr4ZwbcSYUj92652+mU2mhw1NLsft1HKub1caW/0YXceLYuzg
         6vEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVpj5xAHszS9xhuMrhzjD3YevP5ri7wnfQYcBDjvbgfjzf2Wt2mqIRRWVu+Ra85Kpq6wCh0gGFbwzq@vger.kernel.org
X-Gm-Message-State: AOJu0YwEgl9b+UP0wFppOC7gWEFF0eLsKZ2fKXdInNTrG3MMyLoSEZrc
	J2Z09NFmvKUj09BFTWWNnXDf0gz13MHeR3qiTweJVHmQ1jlomBnvPz45knzEFRO9/dSvf4D7m0D
	u0E3f5GKkY/ctiTCK1vyK/FzxrRASwIoQdkM/r41UVPFwZA6/iEJMbJB4+IwuVSBK
X-Gm-Gg: AY/fxX7SJiyHmbe4B6RTAzTIu/u9NYTWRqCYd5BaWZMEyoZkpZi7QmdadMdJduFZj53
	ohuqBZ/1nQp9Q+86eFaV+bjUmqcx67GUQp2YwFav/+jxwvxaoU3GmecZwKq9rnrQiWMuxOecxYn
	OnUUTtbsIec//+cglnbN0chHPyZETB8L84YS/Q/INmGym/6p0wF1vOcNPzZCc6Ci4w5XX1Whxr8
	55JzJOBAYGpYxZe2KfSSjzyY5ZPwv4FS6y/HyqEfAq3JzbAsM8jsBegAP/IO0NOsEi9LCjJEkI4
	j8ja5WKLyFiz/rI6TpM7cCG0ZJgP3T4EIhbrpbTZbiIRZOK7SjcH39yX2KwdIKdfTwk8e2YJqiK
	uxcEupFZyc4mNWperRsebmdcUu6BjJI130NOo
X-Received: by 2002:a17:903:2448:b0:2a0:b7d3:1bf4 with SMTP id d9443c01a7336-2a2f2212833mr125103745ad.5.1766422628899;
        Mon, 22 Dec 2025 08:57:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFDKazaiIoCtCLvy9WCpAv5NHiSa0bEoYQsJ/tn3nK095kVKTp+ibCk6SgPCiILA+nQ1SiDjw==
X-Received: by 2002:a17:903:2448:b0:2a0:b7d3:1bf4 with SMTP id d9443c01a7336-2a2f2212833mr125103405ad.5.1766422628416;
        Mon, 22 Dec 2025 08:57:08 -0800 (PST)
Received: from [192.168.1.5] ([27.57.93.98])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c9b51esm101496025ad.43.2025.12.22.08.57.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 08:57:08 -0800 (PST)
Message-ID: <698bb8b4-d6ae-4a97-8cc3-9e48ea8afd2e@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 22:27:01 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcs8300: Add clocks for QoS
 configuration
To: Krzysztof Kozlowski <krzk@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
References: <20251128150106.13849-1-odelu.kukatla@oss.qualcomm.com>
 <20251128150106.13849-4-odelu.kukatla@oss.qualcomm.com>
 <8b8d35d4-ee88-4d91-aef5-0e77f03f59b0@kernel.org>
Content-Language: en-US
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
In-Reply-To: <8b8d35d4-ee88-4d91-aef5-0e77f03f59b0@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ELgLElZC c=1 sm=1 tr=0 ts=69497865 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=luqpl2TCSyK2LuNNAmtdDg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=P0VVE0QUFgw9kxqKfqoA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDE1NSBTYWx0ZWRfX/ddYaOkV0HTd
 LzE0BNCI9pmKfKkouwRUDc0Nd/2yg8UODBlXGz0Lbz9Pe4dotj/P2QsMXm7Sj6cjcFgHi6za6CN
 d9LrZeTAz9CRsMnkLFo5243NUjYvRE0en5ph151bHPQ5OpRntnEAa/LLECsFub4W2GJQKPOB+14
 MEVsA9foAtzgR3+rDbZKapiLZ00kGuPYu0tnMhBhxaWcnwcINzwrI3G49xqL/QHD8NWRolBvPSI
 fPMFqN3+32EHHbBdbLRK0KhccDhQsFBY6dmtrngm/KIZr6X1nwYvMF70GZZsL8bVxUKG/9rNutR
 Mmuiriwl3R5RdBsFW6+eKyFozzTT3xR7k1u8bpAMu0NuFwoty4ceyRGXRkWpRC3868qcrznFu1w
 nZewOF7OG57m2SMopPC9Rmh3XsjeZUnyK/vkIORsWrorm5kBgYc3JSdXsNURdjWk1ZglzmPlhfq
 4BlCXBduJi3SG0QqbyQ==
X-Proofpoint-GUID: nBRN-ui0Lk-D6lRSRgKDFOzFbM-tK96Y
X-Proofpoint-ORIG-GUID: nBRN-ui0Lk-D6lRSRgKDFOzFbM-tK96Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-22_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0 impostorscore=0
 suspectscore=0 adultscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220155



On 11/29/2025 3:04 PM, Krzysztof Kozlowski wrote:
> On 28/11/2025 16:01, Odelu Kukatla wrote:
>> Add clocks which need to be enabled for configuring QoS on
>> qcs8300 SoC.
>>
>> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/monaco.dtsi | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
>> index 816fa2af8a9a..6139511ea525 100644
>> --- a/arch/arm64/boot/dts/qcom/monaco.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
>> @@ -2226,6 +2226,10 @@
>>  			reg = <0x0 0x016c0000 0x0 0x17080>;
>>  			#interconnect-cells = <2>;
>>  			qcom,bcm-voters = <&apps_bcm_voter>;
>> +			clocks = <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
>> +				 <&gcc GCC_AGGRE_NOC_QUPV3_AXI_CLK>,
>> +				 <&gcc GCC_AGGRE_USB2_PRIM_AXI_CLK>,
>> +				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>;
> 
> Your binding said all interconnects have clocks, so please update all of
> them. Not only three out of 10-or-whatever-in-total-you-have.
> 

Thanks Krzysztof!
Not all interconnects have clocks/MMIO, I will update the bindings as
you suggested in the fix:
https://lore.kernel.org/all/20251129094612.16838-2-krzysztof.kozlowski@oss.qualcomm.com/


Thanks,
Odelu

> 
> Best regards,
> Krzysztof


