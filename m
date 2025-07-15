Return-Path: <devicetree+bounces-196470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A2FB05828
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 12:50:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3ECE54E6697
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 10:50:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E56B2D63E8;
	Tue, 15 Jul 2025 10:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NJLk4v5Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2811F204F73
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 10:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752576651; cv=none; b=QAPH3wRmZM5NPHyR19l+wVIAH/7BFrH7IY6wlaDF3yU85d4AruDQjASNhH9ghEeupiyL2sGShD2lfxUAL5upnyQZSFaEicNdsX8JygbMRL82InZ7f3GLwmTl9gLHWy+yOdfXNYDVzZkJ0t2lF3Ln1Fub9dw+nUSXpZ7pPbyy0dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752576651; c=relaxed/simple;
	bh=zO0eVT6bY/HaDWcD10xtv9wGIJ8Et313GZFZC4fkQfA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Tpkb/PEn2d4gYuiAJj8uqAaS67n4GKvWRzOyjf5Zh3QUfnOo8NCSU8W3hknkPzXDT9qONZIdqnJnPsM4qKmHGhPKdqmW5AyNljNXyo8BttzutrB4+NBKFhFnSyBw0DBBikMsPsCMPfjUlM8SCA5mRy0vVj9qV6WuxXM/xDl2AUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NJLk4v5Q; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56F7kjhU028415
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 10:50:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ir9keSX1LMez33Upmie3bS45n+OlybH6S/naM0ST3/w=; b=NJLk4v5QXZqJpg9A
	WyTZ0BP4zBwdehPY9BrRrvm7GMu9TAEPR1KcHVPB8TyzfgOHeqqWx0EIVBu0bGY1
	eRGGUpkLXj+klDomOlu4RicL6KqNelcEe+gMsDA8fe0WbTtG81AVwY1WmsCZHaHX
	Hx4JRUsQ2e1d8kLn/SIUxBHhxbOqZ5Dole17xyuWRU+ThLARQj+OGqFcz8/9a5PF
	m030ROwbXF6EuNgo3IlvStpmdmr42wX00h0Hfm8IuC7gywoGf6CWDa50RLMSyx6L
	G7xQumzyZmhRsG/aPS2TdYvcfstZrgaiyJGURCg3ARSKK4skUd5iurN1i+6v8XqI
	YFNXQQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufut7skb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 10:50:48 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ab5e4f4600so3069181cf.2
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 03:50:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752576648; x=1753181448;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ir9keSX1LMez33Upmie3bS45n+OlybH6S/naM0ST3/w=;
        b=GRn+Jzf73ACCHhAqLJ6QmkjXYMe1SwOxUtJolg8siGaVwtLk6PFKA526U9VC6Tau11
         Vk8feL3XJRlQzqm8oyD5eXXU9JumRJXNOH65480i7kU+dx4JY7OchtDEG33iNEsMJgft
         JPVW2JHKI4pnazIuRPM58j7lYDLxHxInMMPexi4dUotgKT8ylXLTKe2MDQQ5hFiVdzjT
         EyIublD8//62UH+0XGxN+Qk+x4eGIkymXgagp5aUzquP20wJ473bl4FKDCPUXY4RtbKD
         oqDgtezqSLXXxbNb5KOBGOpbe7RAFKKJKcSeqebTgaC6Zh3bftJrTVRYh9nCPuL8dINu
         6f7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUhAAGWSclQtEQu05002Sauwt/T0cKT+lhPrVjB+DblpsaEP5c5jamAPiUcAfmxFpXraWk+quQwChEe@vger.kernel.org
X-Gm-Message-State: AOJu0Yxkk3WerDreyYGGPNaJf90gQxJmh0vxKDnLEs0cfK8FeCQNfQIJ
	/r4vVTm8r2MTvLQccq/H+z5uNCdDmL45C1hsEr2Pmfg8HXi1G1NRwu9eOdsXJadHFF+U2dcLUb7
	o1ax/kwXuLCepXbSHCoj34iGjTt054fm+4r0gur50y6UJz/OtKHs15rthArVu3Go9
X-Gm-Gg: ASbGnctNKfey52MTx07P+JVwAI+27PrCY9deomUMrubeVLvDIDAxqFscI0lpIgAff0r
	VNRJThQXp4R7o6ZwLKS+lnwCzdvheFV/lqsvcAr9as0QjlRCSTqUT0T9ogIZaJ92yLyMv1+ul5r
	h9L9nPP3V+L3ymbk/cjVisAaSP/G24wJfmEr0akoJ+0vNNrU2Wty7MIq7LGb6EiYnR74kzWDkKf
	iuMX2d3bxBAINRkTW2qJAcVJSNzNFllKNJhY2F8vR8nhVxMgtTmdGieyTVtxeNNilFT0sZrBsSL
	r/NAmaHV8lWAZgo8mQL/djnpfz1CXZ0dctU6uejOymrfAN/Qcl+76z9HHGZtiL02kV55SZjiW52
	+GzfahVhGuKTUv6Nd8BAd
X-Received: by 2002:a05:622a:1495:b0:4ab:8107:6c0f with SMTP id d75a77b69052e-4ab86fc5d66mr6516271cf.10.1752576647870;
        Tue, 15 Jul 2025 03:50:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGrHzbQnSG5UsPwzEKOplY0S2bhAFx47Y1I/loi9Sna7ftnlRubhy2cMFHCBtRP+hsTx5xo7Q==
X-Received: by 2002:a05:622a:1495:b0:4ab:8107:6c0f with SMTP id d75a77b69052e-4ab86fc5d66mr6516121cf.10.1752576647271;
        Tue, 15 Jul 2025 03:50:47 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e82e5309sm991511666b.173.2025.07.15.03.50.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 03:50:46 -0700 (PDT)
Message-ID: <4be1ebb7-1dc7-49e0-aa5d-621f023b3853@oss.qualcomm.com>
Date: Tue, 15 Jul 2025 12:50:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/3] arm64: dts: qcom: sm8750: Add Iris VPU v3.5
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
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
 <ec0f64c3-bd08-4944-817e-f5f67c317b94@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ec0f64c3-bd08-4944-817e-f5f67c317b94@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=e7gGSbp/ c=1 sm=1 tr=0 ts=68763288 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KBVr0NYvNlN9pVTpkDkA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: -eoewcPwGWIT361jPCiVlKtYNwtgeDbo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDA5OCBTYWx0ZWRfX9ymv+731Tr/Z
 mn/ShWFGDfqDAB1f8J22lwpg00ZH8KvQmfxagcSCgZlVvwsVhS++WIyWGofa+rpVraMtlqL+ja3
 +zfWwqtpkXQCMm3sRVzlFSzvnM1tsrBk1AP+sNpOb8GgLXOLZTpczLTL22isSzIZCYXb7k1ojKT
 9nnJEPfmvuCAFunGR5bQPHD8SQ94E41JkFkwBVrPp2Xnm76FKnz0qSyeY9czl+jzQmR5zoKVXs6
 iHiKt49rBZxlV/85jbDwM7Bj+unJqDAAYR6QWMuNvMCztms3Ox0yjCyceJ1I3EfPlIf4r+xWdOy
 YDid17wUslDtVgEDY5ZJwcf70XyxGio2mA2EAOBnxAyAKal5zm6ng+qckFAjQXFnP8gVS8S56vk
 UHuLD5bBjntt4OmG7wLkPovXHfBruqLcOS92iY2ZV/rGdetZmdjxeKrZxbJfG6ms/wN7htEZ
X-Proofpoint-ORIG-GUID: -eoewcPwGWIT361jPCiVlKtYNwtgeDbo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-15_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 spamscore=0 suspectscore=0
 phishscore=0 bulkscore=0 impostorscore=0 clxscore=1015 adultscore=0
 malwarescore=0 mlxlogscore=979 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507150098

On 7/15/25 12:34 PM, Krzysztof Kozlowski wrote:
> On 15/07/2025 12:09, Konrad Dybcio wrote:
>> On 7/15/25 12:07 PM, Krzysztof Kozlowski wrote:
>>> On 15/07/2025 11:32, Krzysztof Kozlowski wrote:
>>>> On 14/07/2025 15:55, Krzysztof Kozlowski wrote:
>>>>> +
>>>>> +		videocc: clock-controller@aaf0000 {
>>>>> +			compatible = "qcom,sm8750-videocc";
>>>>> +			reg = <0x0 0x0aaf0000 0x0 0x10000>;
>>>>> +			clocks = <&bi_tcxo_div2>,
>>>>> +				 <&gcc GCC_VIDEO_AHB_CLK>;
>>>>> +			power-domains = <&rpmhpd RPMHPD_MMCX>;
>>>>
>>>> This is incomplete, need second power domain and I did not check against
>>>> qcom,sm8750-videocc schema before sending. I will send a v2 a bit later
>>>> (maybe some reviews pop up).
>>>
>>> Heh, no. The DTS here is correct. The videocc bindings are not correct
>>> (and that's not my patch).
>>
>> Well, you want two power domains here in either case..
> Are you sure? My point was one is correct and downstream confirms that
> in their bindings (which is a poor argument, I know). Which one would be
> the second? MM? We don't have such...

Historically clock controllers used a pair of CX/MX, with CX powering
the "meat" and MX powering the PLLs (& retention logic, IIUC).
Over time, CX was split into multiple usecase-specific domains (like
GFX), and we now have MMCX (or MM_CX - multimedia CX) for multimedia
hw specifically

In the downstream tree you're looking at, sun-regulators.dtsi aliases
VDD_MMCX_LEVEL as VDD_MM_LEVEL for $reasons, which is admittedly a
little confusing

MX has similarly been split into MXA (MX-Always [on]) and MXC
(MX-Collapsible). For Venus, you want the latter, as the hardware is
not crucial to the functioning of the SoC (the connection is of course
physically determined at SoC design stage, but it's a good heuristic
to keep in mind).

Konrad

