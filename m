Return-Path: <devicetree+bounces-170764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F4209A9C3E8
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 11:39:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9894D4C0EAF
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 09:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76ECB241682;
	Fri, 25 Apr 2025 09:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C5hl9uK4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D874C241CB0
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745573756; cv=none; b=teKl8u18t9pWt8J7HbTItBgBkqRDqQ6RCW4oKUcbNSRbOTM2gbxTkwnnsrz33THP1kEzDpEHxwUX9vegIYavYWm0dH6aSGdXsEje7nfdLxeJxl783SfD2myPD2I2+G4iHRflarTR3Q3KKKWb4krOQDg9uoV23hYyj/pF4tHrqrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745573756; c=relaxed/simple;
	bh=sToWdQKy4Ilj8vtZl1fJZYV45WUmXfqIRGKxYDJBgAM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZBK3saEVNE3+8PPnPvxW8YK4UdEzC34feqAzdighjo403zwRV22Dq4eImDhsTcMTNDOflHS6SR40ieiMkm+A+VRSEyaIbsUcxs/tjcfZgCPLnRjIcpTPkmQXrJsgOCYXn+Pz6S1eUwepxbntS9xnPHjNQ6LMeESdxHA4NCtU4ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C5hl9uK4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53P8T7Hb030826
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:35:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AJDl4omv7ndvFsud7bHAzIbFbElPaQdLGmav6WIPsh4=; b=C5hl9uK4YRXvDPx6
	U9Eaw4kphDAc62d/9ms3w+qqqJojv0NqT5rUazrhs4eo7M0bM4dLANit7ovWPzrG
	QNcZpuciVA6kgtv9STJZwENx1b16lMINP5UQiVO6pGrIHF6xDo8sQczChxxLV3l2
	ws/fZmbuq1ucBjV72OG0hrOnV3j4fqL7XjNkeJECTRudgZU0E5qjJ1iTMA9PyVgB
	Jv2qRJSrPORvsStQHksdH6rs0QAn2CHAYTEtwztzaSH51QwJUP4kf9g4bbXnqqqs
	uMr8tpHuIaTI8UCrAlVTHkqp88eM40HD1gRyTeL9VAPO2m/TYIMSuVEGMFOH0o8W
	4fs6/Q==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh5gh98-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:35:48 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c552802e9fso38779385a.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 02:35:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745573748; x=1746178548;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AJDl4omv7ndvFsud7bHAzIbFbElPaQdLGmav6WIPsh4=;
        b=ikWFQxsG5ADvxQAnKxsRCR32atT3N6Tv7MFH3bi4GaZGzRTw7vYB4ncQlsLtKx7Ylw
         PWqfZ1XlVq/qEB8cccVb9t5TjOOFbDz97uimsS9WpZVyIv3MG49Tzaii01pUOo8tdzH4
         zxvjnNhiprSCVBGAVJamR2SYXOXoumDy5cRb9XhFppI66IGHRIdb+6YUJGWxbfiHSnJZ
         qVkQYYi09KXh0qL8mTSFSNCFObanNEzMFZ88YrHSfE2y97E7U/NM2h+N3+8IWaxOyFvz
         qO+m+2/qltkNZ5wTPfqe5FtPICiiN3/+CSlq91iNQH5DA59L7JP5XqOIqkitqUEh8bJQ
         ijPA==
X-Forwarded-Encrypted: i=1; AJvYcCX7fkX1c41KbtDwGPdThtD+2A9hdSjnJoDUftcHTYzGzhbL5EvKxqsQmI+PR//K/NwMU66Ixm+3iFoR@vger.kernel.org
X-Gm-Message-State: AOJu0Yxckw2FbixiAp0LtjeyvqqwUZeODzrOvxdNZ74PFyb3Mvz/8RaZ
	VO/6srUngZah7i5VDpYruUMADdNcoBmiMuVv5zCdpIvwkAbnZy0iFEfZULTVPZ8t/NKz3LbTTkS
	whxmK0qWyudRGuxPL0/OIjJNN3KAr3GtitSe8801MMczbwBslrtDiDUxfp7Dw
X-Gm-Gg: ASbGnctKYAPih8hufCmEdTJDPVRm57Rie0eRMeVV0bW9BA6G754azHeDwr1R3OdJkHp
	jkoGYKqlJ9KTwb/muwaZGcGRVqXLm3f/EvadJSvxDsLSBfOtgkrYr/YcN9Qluybo61o3TmyL1Ag
	9uT1x1iAWOuaThLmNnotbLnE6sFq0urXGQk4RoUbQ54/PXF98hbo7BmLaRzYsAp1u55brpKpxMo
	N6T5lXO/+JKINUhVvbTRsVQW1Qusgviiqwhqx8acfkvuNbPGTBLXuYE3dhjfo0XTEe+I+xh6Xhy
	wx+C4AivXZNtfpQvVlljJW6JIRQzziUE4uxdF6+0o+QrUx4QFoMoLQPQBPj1hSk2
X-Received: by 2002:a05:6214:1c49:b0:6e8:fef8:8b06 with SMTP id 6a1803df08f44-6f4cb9a3465mr12148976d6.2.1745573747736;
        Fri, 25 Apr 2025 02:35:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEoiv4MlBzWT6NZGwE45WPs9WN6M0wjAeYYYXs2TXJ84tsBTXEo8eVE4CzqSua4OQ5eBomYJA==
X-Received: by 2002:a05:6214:1c49:b0:6e8:fef8:8b06 with SMTP id 6a1803df08f44-6f4cb9a3465mr12148856d6.2.1745573747358;
        Fri, 25 Apr 2025 02:35:47 -0700 (PDT)
Received: from [192.168.65.5] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7038340b7sm982484a12.79.2025.04.25.02.35.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 02:35:46 -0700 (PDT)
Message-ID: <f74d8b50-35a1-4ce8-bfdd-4c90782b8db5@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 11:35:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: clock: Add Qualcomm SC8180X Camera clock
 controller
To: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250422-sc8180x-camcc-support-v1-0-691614d13f06@quicinc.com>
 <H56Iba_grof22uzTtGCI-APhiDAGSejNod6jsSVIykm9ijaaj7PWqyszShCEGjIpM2wCLOn4a3Vfb8Hjziqklg==@protonmail.internalid>
 <20250422-sc8180x-camcc-support-v1-1-691614d13f06@quicinc.com>
 <621d8556-f95b-4cbe-809b-864417f0d48a@linaro.org>
 <b96f8432-132b-4c16-951e-718e91ec52a5@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <b96f8432-132b-4c16-951e-718e91ec52a5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDA2OSBTYWx0ZWRfX4BCIx0YE18QK AOodeuCau4z2nb6Lp0y4JzUels8xk0CdO2Guznz9UFAqXoODR7mGXACvjDFfv91l5lnMB6uSjTE 5JyottQ8x0a5BYfITePaocdu/PyiVIGPklB/uJki24HbXWlrTGkDDvcjeeqqJRdqOmFgAm4o96N
 UAL4n18l6YuRCZKHy2ECc19YnZ/FpfTaXx1YJe+yttJAd8dGImyKGzlL6Afpr5sSQZk08ZfpY86 2Mi4yqHYgQ+l+GYxdiq0t54ToIFvFrppsnI8dJEwRCQzef4NFDSU25eV//AOWx2XjD9tnqIHJrA Hh3Vuuddn4WvixeM+Y32IQgQjf6Ec3yQ8hA5pfiGs4iZCnn+2UD0T9E6OmZfUMi1GNVqlcZ1t5I
 9PxTUrBh5t760BdKkPeb9ZX37p87ZIRccQlnp4CUeJuI+DUnXWZGvwB4keGNy50C+l++4Qsh
X-Proofpoint-GUID: tdNBuPdaKpS7jvTDiNIGseCmqureVblG
X-Authority-Analysis: v=2.4 cv=B/S50PtM c=1 sm=1 tr=0 ts=680b5774 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=4NoTk0SwpzZkwhluMIYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: tdNBuPdaKpS7jvTDiNIGseCmqureVblG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250069

On 4/24/25 12:38 PM, Satya Priya Kakitapalli wrote:
> 
> On 4/22/2025 5:11 PM, Bryan O'Donoghue wrote:
>> On 22/04/2025 06:42, Satya Priya Kakitapalli wrote:
>>> Add device tree bindings for the camera clock controller on
>>> Qualcomm SC8180X platform.
>>>
>>> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
>>> ---

[...]

>>> +  required-opps:
>>> +    maxItems: 1
>>> +    description:
>>> +      A phandle to an OPP node describing required MMCX performance point.
>>> +
>>> +allOf:
>>> +  - $ref: qcom,gcc.yaml#
>>
>> A suspicious lack of clock depends here. No AHB clock ? No dependency on gcc ?
>>
>> You call out the gcc above.
>>
>> Could you please recheck your list of clock dependencies.
> 
> The dependent GCC clocks are marked always on from gcc probe, hence did not mention the dependency here.

Let's do what was done on x1e80100 - describe the AHB clock in CAMCC
bindings regardless of how we handle it.

This way the DT represents the real hw dependency, but the OS takes steps
to get them out of the way (and then ignores the GCC_CAMERA_AHB_CLK entry
because the clock is never registered with GCC)

Konrad

