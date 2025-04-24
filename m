Return-Path: <devicetree+bounces-170592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E38A9B8CA
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 22:08:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 920F29A3E2F
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 20:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 941B01F4614;
	Thu, 24 Apr 2025 20:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AMsspUme"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9B111F4626
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 20:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745525323; cv=none; b=kNc9vVkpC6tL8MGBGlQ9Q1CQrXfhHMH8vOlBS82scMzeqqS7rV0q2Noe9kJ8nuI3tAfyUlaFAtDwyQ3JSZ+do52aOsdhqu2NpZafLNyeZoSh8JZwhUsPQBSgiI05f2juT9RTmhSBJcQX+2Smew6OoSpqsmO0ZgeOYggss7vx3y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745525323; c=relaxed/simple;
	bh=V3f6aXPJbQijd6ipBPnSJT6DHy2KjZMx3Pjb2cb1lhk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LLBteDoBlnDF5xKXK7mVfxjr2VE9/hwlScjMC460Y2dtaoRxiGQr6CRRLE5QOKCdmrPPZFJVVxxiM6xzb6Ia/X02nLQsWkTJuLex74ahPpzqgbKJlp0BzpoWdH5//UG/hfEldyEelaYaTv4NHBEpsDNj7CgcJPOtUiQGoQjS9s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AMsspUme; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53OJn843028299
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 20:08:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G9NkZBB78ocYZoBuxIUW+E3P4tAq4xlMh9aXpLYJZmU=; b=AMsspUmeDDTr6fVs
	Zjc0G+CMRC0lqCwsh5MYoS3ndPg/wnpPgW/yQ6tV+H1CNUnOE6gzirWDXz0FSgoz
	fz/AChZ8VmFt5vqzIbNi5QGeLIEp9TBsnHNT9KnDKhxXd+ERhVTRcgSEhpnAkaCZ
	l3JIOVdpdGqZZssYB9IX6NuqWT6pfBKA6b4hNlaBHZnXODmIcEFSmCY1GYbFIccP
	i4VWrbvJhY/GU+K5Go0sA1Wpso9MOdkJyUaFgzTV9NXpV4nB5Y/AFKym9O50tygz
	VouZvcBUoITRLWpgWZUGkqed3vY6g7BKgOqGm98mYss+KpPqYYIvTjblpPgZVTnL
	F3mt3w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh0pqs7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 20:08:40 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5af539464so37005085a.0
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 13:08:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745525319; x=1746130119;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G9NkZBB78ocYZoBuxIUW+E3P4tAq4xlMh9aXpLYJZmU=;
        b=n0w5Ke2qZsuzniqLn2fqi3NziCvIT4Q37N1xOw/JSyGMShNReckdC741JfApOyqpLS
         JtYbI+qia10SslMgBfdymZJ5RJ5AQFbpk07afdrykPIw3XESMYtWoblqWZiKipEPOnob
         lPHnGLotJfQ1clY87oKdZrgfipFkVsHrhqIs/Tk5s3mZSbDS5Xp1y9Pd+sz4ufrxjbF2
         5Tp+wuDyq/fgw0t5ulK1AG199/dVY8xdO2CK5hcCgr25mQMTJdZso1z98YTnMK0RsC5m
         3tVkZ22b+5FKXYVnJUnm3cROZFmjEZXsxmkuelWkshFx6X4h3nndjBpKwkolxPwYx2Xz
         D+ow==
X-Forwarded-Encrypted: i=1; AJvYcCWqboyYQG1GDwC/muyMT7VpyG5ac1agMAXDpMkLDlEcfoIoB26/UkDTikbb/Covov7SnMMHvAB0WoDv@vger.kernel.org
X-Gm-Message-State: AOJu0YzAhhftsTMS0EkU5za/HNYfnep77BEL8LNFG2TjT/J4lXoHujdj
	1dGcEh1HoH9xZXZLitIFrXbqT2li1AF0sWytJ0lxCYWZO4LII8UtG+26IPoeBdIwc/JhsvNTXct
	CegD/s8/v9DlkYQsvheclAK/x3Nb/PlhDKe9shLkDd6wuUzDEmRXTZqL/6oUk
X-Gm-Gg: ASbGnctOmxO5s1v9e5ftA5izQzneGXBMWWSC+hhFTTz96K3H/Y476bba7Keak5BWYdq
	xIpZAVk1y6+R8D1gy5btQb2lXqensUJFrJJsBhQwJEhGsLcm1geKQTEAJUm0y5uFyOPYbvYlm98
	JKErRq3pMWa7vQp+5ez7wveOsb2rVfT+Rgg+GmL1sEC/QAWErZaWYVEjrBh+hTXbv3+e1TjLrLO
	/XC89VTtxZqVf379pgX4imzLZra5P6BDVqAN1oTp2Foa+Ei4Kn0BjyVLUukj6Sb+AD2OgIUV9CP
	pQza5vdOrfLYNlcOJWi6lCmPzGQ/v0fRPLMjeNsfHwAStbjuEPvmeZePDzJEGZ7yEwk=
X-Received: by 2002:a05:620a:2952:b0:7c5:ac06:af8 with SMTP id af79cd13be357-7c958375c68mr215662085a.9.1745525319573;
        Thu, 24 Apr 2025 13:08:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFMmWKDcjybgaESS6WVurym3NYqKuP+fE4ZJpZgER8xsvh0anBTaORqzLN+6oFTx6wsgHq8Uw==
X-Received: by 2002:a05:620a:2952:b0:7c5:ac06:af8 with SMTP id af79cd13be357-7c958375c68mr215660285a.9.1745525319127;
        Thu, 24 Apr 2025 13:08:39 -0700 (PDT)
Received: from [192.168.65.221] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e41c71csm15120766b.4.2025.04.24.13.08.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 13:08:38 -0700 (PDT)
Message-ID: <d0958f7e-db81-4e4f-93e5-24ba0cd853fd@oss.qualcomm.com>
Date: Thu, 24 Apr 2025 22:08:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/5] dt-bindings: media: Add qcom,x1e80100-camss
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-0-edcb2cfc3122@linaro.org>
 <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-2-edcb2cfc3122@linaro.org>
 <3ec3fd62-bf21-47e7-873c-ce151589d743@linaro.org>
 <54eeb470-cd90-4bc2-b415-6dea1ce2321d@linaro.org>
 <0ab31397-580f-4e5a-b9ad-d9bf79d29106@linaro.org>
 <36feffed-4558-4e59-97db-2f0e916dbfc7@linaro.org>
 <6a4ec36c-c003-4ce8-9433-8c12ed3188ee@linaro.org>
 <d97194a7-2b7d-4a76-998b-92da495e8bd2@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d97194a7-2b7d-4a76-998b-92da495e8bd2@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: ZV16xuSu3eH_o_h5mbw_Iv0r1KEMJsqf
X-Authority-Analysis: v=2.4 cv=ftfcZE4f c=1 sm=1 tr=0 ts=680a9a48 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=Wno-CeEu7Fx5tZoO0NsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: ZV16xuSu3eH_o_h5mbw_Iv0r1KEMJsqf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDE0MSBTYWx0ZWRfX6rugpFzYfSDJ SgJ2ZoHCkL7rXSicBAV8AO3wh5dkDyH+3VOLtuHA/QM5dG3OG1pEUetZznSCXW9Y1gwivYutFOK okEyFfJoX0nU7iN9a3L9CJejF5ErlwVgO0Mt4NwfQDkCkEBsyRBF19km5rZu5AnKwLpoUN/Ch59
 Cagy3hzCgESV9qNM2Is0buoVqstC9RE/y5PWLBJXvp3gwyGt9jSyp4yxN1eZdrDawcVGYs7Fdb9 Z5T3sVURghjVwz2iQlE2fxlHvd+rRGiFPbDTNCRLOHFZZXgdvQ+Hw5MhPHjte/MQIVrxrYj6oVH EfZKl6ad2PoZA3YOMfPb1TRfEpUwv+uH7DdQ6tL0XKQ+dlSsSLJFhAiL3tmrNXeH6ysDi0i/MSy
 sVTo1y70tNgAJhN1xukYoZNM2+375URSxpaZoaoN9qbr8ktmOc4uoni+DBtxBDKxC+EZxjiT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-24_09,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 suspectscore=0 mlxlogscore=999 lowpriorityscore=0 phishscore=0
 malwarescore=0 impostorscore=0 adultscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504240141

On 4/24/25 6:13 PM, Bryan O'Donoghue wrote:
> On 24/04/2025 16:54, Krzysztof Kozlowski wrote:
>> On 24/04/2025 12:17, Bryan O'Donoghue wrote:
>>> On 24/04/2025 11:07, Krzysztof Kozlowski wrote:
>>>> On 24/04/2025 11:34, Bryan O'Donoghue wrote:
>>>>> On 24/04/2025 07:40, Krzysztof Kozlowski wrote:
>>>>>>> +  vdd-csiphy-0p8-supply:
>>>>>> Same comment as other series on the lists - this is wrong name. There
>>>>>> are no pins named like this and all existing bindings use different name.
>>>>>
>>>>> The existing bindings are unfortunately not granular enough.
>>>>>
>>>>> I'll post s series to capture pin-names per the SoC pinout shortly.
>>>> How are the pins/supplies actually called?
>>>>
>>>> Best regards,
>>>> Krzysztof
>>>
>>> I don't think strictly algning to pin-names is what we want.
>>>
>>> Here are the input pins
>>>
>>> VDD_A_CSI_0_1_1P2
>>> VDD_A_CSI_2_4_1P2
>>> VDD_A_CSI_0_1_0P9
>>> VDD_A_CSI_2_4_0P9
>>>
>>> I think the right way to represent this
>>>
>>> yaml:
>>> csiphy0-1p2-supply
>>> csiphy1-1p2-supply
>>
>> But there is no separate supply for csiphy0 and csiphy1. Such split
>> feels fine if you have separate CSI phy device nodes, which now I wonder
>> - where are they?
>>
>> Best regards,
>> Krzysztof
> 
> The main hardware argument for it is probably these PHYs do live inside of the TITAN_TOP_GDSC power-domain, which is the same collapsible power-domain that all of the other CAMSS components live inside of.
> 
> As I recall we had a four way - albeit long discussion on this in Dublin, you, me, Vlad and Neil and my memory was we would implement multiple rails in the existing CAMSS PHY structure and then look at how to model the PHYs differently in DTS.
> 
> The Test Pattern Generators - TPGs would then also fit into this new model for the PHYs.

Maybe we could consider modeling various camss subdevices as separate DT nodes,
perhaps on some sort of a `camss` simple-pm-bus or something alike

Konrad

