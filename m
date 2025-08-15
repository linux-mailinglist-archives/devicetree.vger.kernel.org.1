Return-Path: <devicetree+bounces-204919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B6CB27498
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 03:09:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28E303A3B0F
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 01:07:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3016145B3F;
	Fri, 15 Aug 2025 01:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QqBUmt/7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6E4BA3F
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 01:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755220024; cv=none; b=hr7SKCtQUMTGkKGKRxk9GYc+YycQMr+omOT0qwFSZhnb+B/FUTLo6gxyzLaQUkYn5lcaA7+Rutk6qNFF99EhOLEem39gN1Uby88OM4tpUcC8gTQUviMSTAMScNrFu15WNoLnFm/0X4rVN6Jm53BIpqUW7p09PGo1eaNn8q3xeNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755220024; c=relaxed/simple;
	bh=E3W5yNIhlkaRbvT37seZFqLZe5Ju1m39nqAxDnNKIQg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=geo+Ni+2r2IBXzKJ5Ikjo84q+Kiem2DuMPkCmXEfsNhgM8gSsrYaAB3jyZv+H1EowUaSzmQyNopw8q5rwBKm8K2Bb92TzYyhL7HNCr0s3qY69w16X8/QiU9WP+7/nxIKZcsUjpuaTZZ2M51TaVLqJ7v1NExzzRRWDPoUW6sKsBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QqBUmt/7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57EJPVe5025638
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 01:07:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fDTemP53sqqVbxhSCn8l+KTq6D2kUe+G1EUg/hQ0gAk=; b=QqBUmt/7cLOd7nTz
	dSUB6NSleCR7EmG+rTat2h5+TlXarmHeUHP4g3rTNrj0la0EdNw4BmACb08nIf+c
	oU6qYPJUNc/kVKKBjkvufi4gp/UsiVuY6s0MW0M8QdhuOm1DSgy5RAixu0a3EVoz
	1odggMjy3enO8HR5Zikzugq+XHHdz/rRwxFfpIYpoTH+2OdZ95yhimHVTPqnOBGb
	eZIoS32DRLccLlawNU8Xz9kbWMIRFlan4la5zHBSqJz/+64hZP0Ln+CpYZudc8Eo
	gYiUcFNzBFhRdMoZjyc8+3JZHQ77Gx5EKDgRoDul/hEUUPA/J2SSmk+A3PG40N8L
	UPyv5A==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dy3ghgq8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 01:07:01 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2445806b2beso33603305ad.1
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 18:07:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755220021; x=1755824821;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fDTemP53sqqVbxhSCn8l+KTq6D2kUe+G1EUg/hQ0gAk=;
        b=nWKk8odFGPJYcKQNxLp3k4HUl04RFVtMN3wwdJifDlzyRM7e7rT/sUMP8+Z8phQdtK
         drJ+Adh01P1UUW34looh72gFDoDVUgKSGphUCX2WHfC0okT+uB8HgKjySSDqsjNQMr+d
         DoEW6681A6tE5yLMZs+ibH8KQLjq0lyvw986o7XO+4x7jJBlNzOhKrmbVrxe5Yjrq8zz
         p76d8yVLmfAweUQZG+4ZvR/ITPWWzJj/kLLVBw1KC57LSXZ8OAteaYS44uomHVri6fOr
         x7xO+7d3swzFwyWU2VeGhLV65jVO3I5aa+sqKPn+VnePkOBjy+WsgEQiCE4D48Swt/3Y
         X0Lw==
X-Forwarded-Encrypted: i=1; AJvYcCXB1uH59VHbeXUPf8JHF3kKrnNOXW5I2/vvo3dl4H15KIUYirsQTTKhGH12IUGpAeRfexQUlGOmecZ1@vger.kernel.org
X-Gm-Message-State: AOJu0YwsSBlG95qZK6TU0IZT4YCLc8q3IwoqM3/ZOOUmMIy67ylxXbPF
	GZJhNiIhsEBoBANrimfXn/YFfF9NhJD1EIMddiyclXLBwXcQdIVE+Nk5MMGbOkBse14Vks4hxx4
	zSY5Ut1FJKkSouFGHiqo2piDgfYszAthTEwyorbvwJqBhtOxdG8cwZcg56+0Z8eAJ
X-Gm-Gg: ASbGncsab5lIBfZGCynPGV2nGcrrtnazAS0GD0zSkYkd+FlUekj7XJ7OY5Apt4jif9B
	+Ex8HuPFwN1ezGCl7ywkwaGkt0DNW/hPLo255HjIflHX+o7RCrxdkzAWF+ZEupB0hD4FP6Q2reR
	i98VADtIvCs2Eq7eU5hfrOltXriQaFVaATwZH0ZzfvMHqW+BN0DSeSkcpp7WCIwEErCSzFstArL
	+ksUbXpUKti4YYujcfcQ3sVf7Yj+A7BQPxDA9EahNkBRYxEQ2/wi9CpzjTFiM9sNZ2EweBFP8ue
	qWOm0UJkfiIPL9tLSctxtN58QEZatyWrNOas5KRp0oS1xUbeCE3hBDvePjGzUFxUSkNHAF9W19s
	+nc8vdHU4VZhXRceZ/MvIV5F5nxE=
X-Received: by 2002:a17:902:ced0:b0:240:a889:554d with SMTP id d9443c01a7336-2446d99d42emr3600075ad.45.1755220020966;
        Thu, 14 Aug 2025 18:07:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEoRXWzdGiF1XsdVWPHqQWYLwIu/sVwT0LWw97cxh/M0gcCmu5vNZ2VC719kSjTBipHI5cloQ==
X-Received: by 2002:a17:902:ced0:b0:240:a889:554d with SMTP id d9443c01a7336-2446d99d42emr3599685ad.45.1755220020441;
        Thu, 14 Aug 2025 18:07:00 -0700 (PDT)
Received: from [10.133.33.40] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4384baf139sm12438271a12.36.2025.08.14.18.06.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 18:07:00 -0700 (PDT)
Message-ID: <81ed09ed-67e8-438d-b057-28a21d8cf70c@oss.qualcomm.com>
Date: Fri, 15 Aug 2025 09:06:53 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/3] Initial support for Qualcomm Hamoa IOT EVK board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Yingying Tang <quic_yintang@quicinc.com>,
        Shuai Zhang <quic_shuaz@quicinc.com>,
        Yongxing Mou <quic_yongmou@quicinc.com>
References: <20250814-hamoa_initial-v5-0-817a9c6e8d47@oss.qualcomm.com>
 <5reeryefhw7burzf2lymhg5wivaq2n4gq5hszvfp57dergvpyx@qehaf334gdrn>
 <7e5d39e0-115e-40be-b44f-0195a4827a0c@oss.qualcomm.com>
 <63ecde5c-8234-4630-97e8-5806b9ff3eea@kernel.org>
 <a56b3e85-0d42-4945-8b6b-dcff20c7b104@oss.qualcomm.com>
 <nruypjmek7f76m5nbv6vs63koscrwcqknswfm67rkcjtqxpwhe@3ijzkbbaxj2p>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <nruypjmek7f76m5nbv6vs63koscrwcqknswfm67rkcjtqxpwhe@3ijzkbbaxj2p>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=X4lSKHTe c=1 sm=1 tr=0 ts=689e8835 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=FDvvkfF-Sd8HMvbO3OkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzMSBTYWx0ZWRfX/L/dbI93PGeD
 kZZ/FWjzZQwThCZZ30aUCujXSkX5zjGermGDmSGuu/0e4BUsVqxjz2Uo/+bq2ErKdYBT4H4/JrQ
 NjJ/c4sCRef9hDUpfgwsUpt2hSt4SgbGWG6tr0HDx0oW8Tp8Jus1ahbLETT3feAJ25ZgbtvEDs4
 9t1J0DXLEVM9bt2drTvQCMERBW/d0vfNPeUsHEoiBp45X5v9hIJgWJuMCXVEe7uhqEOsNLnsTcr
 B8aUrIicvfX2mmSEPiIZaM2TIptfi4SW1VT8lBrCyYGH7Eo/Is/Bi5PFbq35wLkSlIaZXX6UpyC
 oDFJazPeApGtWZeSAe8+qLC3lU/082QjpUFK9nsqW4knTMybw3xF79t/9J1YlezKObN/VPFtAcc
 pPWO0yWj
X-Proofpoint-GUID: 901A4oV2QORUFfWmWx_z6-OsYVPR9pwy
X-Proofpoint-ORIG-GUID: 901A4oV2QORUFfWmWx_z6-OsYVPR9pwy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 adultscore=0
 spamscore=0 bulkscore=0 suspectscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090031



On 2025-08-14 19:27, Dmitry Baryshkov wrote:
> On Thu, Aug 14, 2025 at 05:28:01PM +0800, Yijie Yang wrote:
>>
>>
>> On 2025-08-14 17:05, Krzysztof Kozlowski wrote:
>>> On 14/08/2025 10:54, Yijie Yang wrote:
>>>>
>>>>
>>>> On 2025-08-14 16:24, Dmitry Baryshkov wrote:
>>>>> On Thu, Aug 14, 2025 at 03:27:27PM +0800, Yijie Yang wrote:
>>>>>> Introduce the device tree, DT bindings, and driver modifications required
>>>>>> to bring up the HAMOA-IOT-EVK evaluation board—based on the X1E80100 SoC—to
>>>>>> a UART shell.
>>>>>> This patch set focuses on two key hardware components: the HAMOA-IOT-SOM
>>>>>> and the HAMOA-IOT-EVK carrier board.
>>>>>> The HAMOA-IOT-SOM is a compact System on Module that integrates the SoC,
>>>>>> GPIOs, and PMICs. It is designed to be modular and can be paired with
>>>>>> various carrier boards to support different use cases.
>>>>>> The HAMOA-IOT-EVK is one such carrier board, designed for IoT scenarios.
>>>>>> It provides essential peripherals such as UART, on-board PMICs, and
>>>>>> USB-related components.
>>>>>> Together, these components form a flexible and scalable platform, and this
>>>>>> patch set enables their initial bring-up through proper device tree
>>>>>> configuration and driver support.
>>>>>>
>>>>>> Qualcomm SoCs often have multiple product variants, each identified by a
>>>>>> different SoC ID. For instance, the x1e80100 SoC has closely related
>>>>>> variants such as x1e78100 and x1e001de. This diversity in SoC identifiers
>>>>>> can lead to confusion and unnecessary maintenance complexity in the device
>>>>>> tree and related subsystems.
>>>>>> To address this, code names offer a more consistent and project-agnostic
>>>>>> way to represent SoC families. They tend to remain stable across
>>>>>> development efforts.
>>>>>> This patch series introduces "hamoa" as the codename for the x1e80100 SoC.
>>>>>> Going forward, all x1e80100-related variants—including x1e81000 and others
>>>>>> in the same family—will be represented under the "hamoa" designation in the
>>>>>> device tree.
>>>>>> This improves readability, streamlines future maintenance, and aligns with
>>>>>> common naming practices across Qualcomm-based platforms.
>>>>>>
>>>>>> Features added and enabled:
>>>>>> - UART
>>>>>> - On-board regulators
>>>>>> - Regulators on the SOM
>>>>>> - PMIC GLINK
>>>>>> - USB0 through USB6 and their PHYs
>>>>>> - Embedded USB (eUSB) repeaters
>>>>>> - USB Type-C mux
>>>>>> - PCIe6a and its PHY
>>>>>> - PCIe4 and its PHY
>>>>>> - Reserved memory regions
>>>>>> - Pinctrl
>>>>>> - NVMe
>>>>>> - ADSP, CDSP
>>>>>> - WLAN, Bluetooth (M.2 interface)
>>>>>> - USB DisplayPort
>>>>>>
>>>>>> DTS Dependency:
>>>>>> https://lore.kernel.org/all/20250724-move-edp-endpoints-v1-3-6ca569812838@oss.qualcomm.com/
>>>>>>
>>>>>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>>> ---
>>>>>> To: Bjorn Andersson <andersson@kernel.org>
>>>>>> To: Konrad Dybcio <konradybcio@kernel.org>
>>>>>> To: Rob Herring <robh@kernel.org>
>>>>>> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
>>>>>> To: Conor Dooley <conor+dt@kernel.org>
>>>>>> Cc: linux-arm-msm@vger.kernel.org
>>>>>> Cc: devicetree@vger.kernel.org
>>>>>> Cc: linux-kernel@vger.kernel.org
>>>>>>
>>>>>> ---
>>>>>> Changes in v5:
>>>>>> - Update base commit.
>>>>>> - Drop an already merged patch:
>>>>>> https://lore.kernel.org/all/20250804-hamoa_initial-v4-2-19edbb28677b@oss.qualcomm.com/
>>>>>> - Link to v4: https://lore.kernel.org/r/20250804-hamoa_initial-v4-0-19edbb28677b@oss.qualcomm.com
>>>>>
>>>>> Please keep full changelog rather than trimming previous iterations.
>>>>
>>>> Sure, I will restore them.
>>>>
>>>>>
>>>>> Also, is there a reason why you didn't pick up audio and display chunks
>>>>> as it was requested on the corresponding reviews?
>>>>
>>>> Display-related changes have been merged into '[PATCH v5 3/3] arm64:
>>>> dts: qcom: Add base HAMOA-IOT-EVK board' and are already present there.
>>>>
>>>> Audio support is still under debugging due to unresolved issues, and
>>>> it's unclear when it will be ready. Would it be acceptable to proceed
>>>> without it for now?
>>> Audio was sent to the lists, so this is confusing. What was the point of
>>> that posting? It clearly said:
>>>
>>> "Basic test is good in Hamoa-IOT-EVK board."
>>
>> Additional issues with audio were discovered during further testing, and
>> the current audio series on the list is not suitable to be merged into
>> this series at this time.
> 
> What if the maintainer had picked up that series, with the issues?
> If you uncover an issue, please respond to the patchset, descring that
> it should not be merged (together with the reason and the description of
> a problem).

OK, I will inform the author of the audio to do so.

> 
>>
>>>
>>> So was that true or not?
>>>
>>> Best regards,
>>> Krzysztof
>>
>> -- 
>> Best Regards,
>> Yijie
>>
> 

-- 
Best Regards,
Yijie


