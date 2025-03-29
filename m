Return-Path: <devicetree+bounces-161757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5CFA75606
	for <lists+devicetree@lfdr.de>; Sat, 29 Mar 2025 12:42:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3CC7916F375
	for <lists+devicetree@lfdr.de>; Sat, 29 Mar 2025 11:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C188C1C1F22;
	Sat, 29 Mar 2025 11:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C/vbrsxU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8FE438FA6
	for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 11:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743248536; cv=none; b=Wnk4/cvotqJpflU24dmFBSYwYLnx22xg0p03JeMSqZiZFtU51jY/nVACIwRnPOap2SKBb4QK2WddYXHVNGxAAjfPBhXPI5wVVDBIJX0u+ESvHfrMtjH4jgF92WUTpOISfP5hpbxJFRrYr0k4ukjvFvVkhyZMbpCIilsxDfclfJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743248536; c=relaxed/simple;
	bh=/3fUFv9I1+6hyqB935Ue7MnXiU0wbFfGhPTCP5NZvdk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FxZ+YapSrXyai5qvOBUz2pjrdUquS4rneIas5hIg35+UJRTm4bfm01x6b70Ngyme+lEsV+KJOR1JFUQEN3OopUinCgCVpB+zLwvwBN83VMm8uuwYF4UT9Uxc/CRPPMaeSgQAXm0mbZNZG5k3J2Ddwi+yk9lqpWvuHgOSJmxn1II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C/vbrsxU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52T7iQk1014813
	for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 11:42:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Mmm54hP5tMFj63YRNzC7S/gSA1WThy35TAoW/ZFfd30=; b=C/vbrsxU9RKNWNvY
	PAo6sqUhnvDrdDvQG1F+uEFcNNfr6OV/1cVvP1w2MtpZqljllvTTmcyFecwB1u+s
	tycfWw3fAKs9/CDFnQPri7xaXY7OPt76tszYznMnKIvS8g47H96JcK6FWycwcov9
	PKPsprgkMpeFV1xNy60ccevdFFwMdq+f5iqQ3ctCSG5njnFtZwtwR6gm46LU+vjj
	vD0ccxta+SjlDqnuj6GX5boEZMc7TICVXbb15pj1sKF/6gmuOhiiyoeBBazATet9
	bsUMJ96d9cgkja+vD9L1Rc7gjeZlQ8M4+LmCIxomidYWpnObsHG+0jj0ez0sF6cb
	3n4Tdw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45pa1nrj69-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 11:42:07 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8f3c21043so6536506d6.1
        for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 04:42:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743248526; x=1743853326;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mmm54hP5tMFj63YRNzC7S/gSA1WThy35TAoW/ZFfd30=;
        b=IgSkB47ll4c5XBPV5BhAnw2to90HCFmJw6FSA2cV55Tj2g9fONkEFjxbexWR1way3X
         6RvR50FQjE8buqjBI+UNzO0Jy4RlxgjsJ0g6uYuu/I/rFEWdsJpnzNgE198lN0ypj6dh
         S9ER17jAGC2semY7G4aKSBZdy8CbC0uZlyPx/eEUpR80iBKWgG0WHCHy73vEnii+q/zo
         EU0hylvmHcxHBhbs6jbOqslonXu1CuD4XEncsjvwp1n3SO2WaxHerNlITeB+Qp8/tSR8
         HMvUKJXlZv4fg/8yf6U84B8BP6ixw7NEZ0/aRrZP4ruBljxN/OCciSkmN6C9GfsAUos8
         DpyQ==
X-Forwarded-Encrypted: i=1; AJvYcCUeApek02AcmNS3eLgPaxB13xl7Q2ERLGBOvgbgeqeugB4d+xjfzoGnpdOv2JjmRLhOG43F3PHChhyI@vger.kernel.org
X-Gm-Message-State: AOJu0YwJzrR4YfIX/M/gKrvyYlYzDeo3sqM3wbXlV4w5pe2aKE8GaQwd
	pyf4g52OOchcyznyibUVpslqu8hH41S6dk3mnTE3Ps3NqF2RuJklSRNehsUrKl+XhBFP2kQ9KmF
	gKKseBiB8ogFvhOR66/f+UeTKUgwJOc6isbZf1BcPV8AwUVh9dLJxi/KESmh9
X-Gm-Gg: ASbGnctoExrpJ3eWr2GKfHEZdNiqhzKdOrkC3J8W0A90mGAe7l0I2pwFEp+G9sNjfrl
	j0Rc5jwtzE7LqK4oyKgRD8ZGjLnQVNU++HkUKWByj19IBU25sQ5tDixVU38wJirPDAktmrV9slJ
	v7iltVphMjeUSfxrtflzwk1gsis1YJAk5SNoheo1qnnsEJIrSDzGUALL5Q6dACwI9Gkja+DyHc2
	wlgfnzxzb56jJbuiSGVYqgB3JZG2Z7X11iuYXwcTg2DmSo/4n36pDg/SCJAFWdYf7NpgAEl9vf+
	MvlyDhL4ZiQ7ZN1+jNoHk+jqUwI9ZDr+K8KgZlSwXn5xaqSyzFS0lvjZOeRatBR69CYcMg==
X-Received: by 2002:a05:6214:19e3:b0:6e8:98ce:dd75 with SMTP id 6a1803df08f44-6eed6240a60mr13440676d6.9.1743248526294;
        Sat, 29 Mar 2025 04:42:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHyNtCjF7eZFHg5e8sgPfDmRiZq6NbJYI+bCAjDsmzT1x0V+Z5zGALW3AuIi5S1IGq561tZRQ==
X-Received: by 2002:a05:6214:19e3:b0:6e8:98ce:dd75 with SMTP id 6a1803df08f44-6eed6240a60mr13440496d6.9.1743248525880;
        Sat, 29 Mar 2025 04:42:05 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac71961f3c7sm320820566b.94.2025.03.29.04.42.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Mar 2025 04:42:05 -0700 (PDT)
Message-ID: <ed8a59ce-0527-4514-91f8-c27972d799d4@oss.qualcomm.com>
Date: Sat, 29 Mar 2025 12:42:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 4/4] PCI: dwc: Add support for configuring lane
 equalization presets
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
        Lorenzo Pieralisi
 <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_mrana@quicinc.com, quic_vbadigan@quicinc.com
References: <20250316-preset_v6-v8-0-0703a78cb355@oss.qualcomm.com>
 <20250316-preset_v6-v8-4-0703a78cb355@oss.qualcomm.com>
 <3sbflmznjfqpcja52v6bso74vhouv7ncuikrba5zlb74tqqb5u@ovndmib3kgqf>
 <92c4854d-033e-c7b5-ca92-cf44a1a8c0cc@oss.qualcomm.com>
 <mslh75np4tytzzk3dvwj5a3ulqmwn73zkj5cq4qmld5adkkldj@ad3bt3drffbn>
 <5fece4ac-2899-4e7d-8205-3b1ebba4b56b@oss.qualcomm.com>
 <abgqh3suczj2fckmt4m2bkqazfgwsfj43762ddzrpznr4xvftg@n5dkemffktyv>
 <622788fa-a067-49ac-b5b1-e4ec339e026f@oss.qualcomm.com>
 <4rep2gvymazkk7pgve36cw7moppozaju7h6aqc3gflxrvkskig@62ykri6v4trs>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <4rep2gvymazkk7pgve36cw7moppozaju7h6aqc3gflxrvkskig@62ykri6v4trs>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: GAuvJEMqIslok3jDmyEmKZGiEM43lbru
X-Proofpoint-GUID: GAuvJEMqIslok3jDmyEmKZGiEM43lbru
X-Authority-Analysis: v=2.4 cv=MPlgmNZl c=1 sm=1 tr=0 ts=67e7dc8f cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=jKyjlexm6IKzr5l-IOMA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-29_01,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 suspectscore=0 phishscore=0 spamscore=0 clxscore=1015
 bulkscore=0 mlxlogscore=999 impostorscore=0 mlxscore=0 adultscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503290083

On 3/29/25 10:39 AM, Manivannan Sadhasivam wrote:
> On Sat, Mar 29, 2025 at 09:59:46AM +0100, Konrad Dybcio wrote:
>> On 3/29/25 7:30 AM, Manivannan Sadhasivam wrote:
>>> On Fri, Mar 28, 2025 at 10:53:19PM +0100, Konrad Dybcio wrote:
>>>> On 3/28/25 7:45 AM, Manivannan Sadhasivam wrote:
>>>>> On Fri, Mar 28, 2025 at 11:04:11AM +0530, Krishna Chaitanya Chundru wrote:
>>>>>>
>>>>>>
>>>>>> On 3/28/2025 10:23 AM, Manivannan Sadhasivam wrote:
>>>>>>> On Sun, Mar 16, 2025 at 09:39:04AM +0530, Krishna Chaitanya Chundru wrote:
>>>>>>>> PCIe equalization presets are predefined settings used to optimize
>>>>>>>> signal integrity by compensating for signal loss and distortion in
>>>>>>>> high-speed data transmission.
>>>>>>>>
>>>>>>>> Based upon the number of lanes and the data rate supported, write
>>>>>>>> the preset data read from the device tree in to the lane equalization
>>>>>>>> control registers.
>>>>>>>>
>>>>>>>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>>>>>>>> ---
>>>>>>>>   drivers/pci/controller/dwc/pcie-designware-host.c | 60 +++++++++++++++++++++++
>>>>>>>>   drivers/pci/controller/dwc/pcie-designware.h      |  3 ++
>>>>>>>>   include/uapi/linux/pci_regs.h                     |  3 ++
>>>>>>>>   3 files changed, 66 insertions(+)
>>>>>>>>
>>>>>>>> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
>>>>>>>> index dd56cc02f4ef..7c6e6a74383b 100644
>>>>>>>> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
>>>>>>>> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
>>>>>>>> @@ -507,6 +507,10 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
>>>>>>>>   	if (pci->num_lanes < 1)
>>>>>>>>   		pci->num_lanes = dw_pcie_link_get_max_link_width(pci);
>>>>>>>> +	ret = of_pci_get_equalization_presets(dev, &pp->presets, pci->num_lanes);
>>>>>>>> +	if (ret)
>>>>>>>> +		goto err_free_msi;
>>>>>>>> +
>>>>>>>>   	/*
>>>>>>>>   	 * Allocate the resource for MSG TLP before programming the iATU
>>>>>>>>   	 * outbound window in dw_pcie_setup_rc(). Since the allocation depends
>>>>>>>> @@ -808,6 +812,61 @@ static int dw_pcie_iatu_setup(struct dw_pcie_rp *pp)
>>>>>>>>   	return 0;
>>>>>>>>   }
>>>>>>>> +static void dw_pcie_program_presets(struct dw_pcie_rp *pp, enum pci_bus_speed speed)
>>>>>>>> +{
>>>>>>>> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>>>>>>>> +	u8 lane_eq_offset, lane_reg_size, cap_id;
>>>>>>>> +	u8 *presets;
>>>>>>>> +	u32 cap;
>>>>>>>> +	int i;
>>>>>>>> +
>>>>>>>> +	if (speed == PCIE_SPEED_8_0GT) {
>>>>>>>> +		presets = (u8 *)pp->presets.eq_presets_8gts;
>>>>>>>> +		lane_eq_offset =  PCI_SECPCI_LE_CTRL;
>>>>>>>> +		cap_id = PCI_EXT_CAP_ID_SECPCI;
>>>>>>>> +		/* For data rate of 8 GT/S each lane equalization control is 16bits wide*/
>>>>>>>> +		lane_reg_size = 0x2;
>>>>>>>> +	} else if (speed == PCIE_SPEED_16_0GT) {
>>>>>>>> +		presets = pp->presets.eq_presets_Ngts[EQ_PRESET_TYPE_16GTS - 1];
>>>>>>>> +		lane_eq_offset = PCI_PL_16GT_LE_CTRL;
>>>>>>>> +		cap_id = PCI_EXT_CAP_ID_PL_16GT;
>>>>>>>> +		lane_reg_size = 0x1;
>>>>>>>> +	} else {
>>>>>>>
>>>>>>> Can you add conditions for other data rates also? Like 32, 64 GT/s. If
>>>>>>> controller supports them and if the presets property is defined in DT, then you
>>>>>>> should apply the preset values.
>>>>>>>
>>>>>>> If the presets property is not present in DT, then below 'PCI_EQ_RESV' will
>>>>>>> safely return.
>>>>>>>
>>>>>> I am fine to add it, but there is no GEN5 or GEN6 controller support
>>>>>> added in dwc, isn't it best to add when that support is added and
>>>>>> tested.
>>>>>>
>>>>>
>>>>> What is the guarantee that this part of the code will be updated once the
>>>>> capable controllers start showing up? I don't think there will be any issue in
>>>>> writing to these registers.
>>>>
>>>> Let's not make assumptions about the spec of a cross-vendor mass-deployed IP
>>>>
>>>
>>> I have seen the worse... The problem is, if those controllers start to show up
>>> and define preset properties in DT, there will be no errors whatsoever to
>>> indicate that the preset values were not applied, resulting in hard to debug
>>> errors.
>>
>> else {
>> 	dev_warn(pci->dev, "Missing equalization presets programming sequence\n");
>> }
>>
> 
> Then we'd warn for controllers supporting GEN5 or more if they do not pass the
> presets property (which is optional).

Ohh, I didn't think about that - and I can only think about solutions that are
rather janky.. with perhaps the least janky one being changing the else case I
proposed above into:

else if (speed >= PCIE_SPEED_32_0GT && eq_presets_Ngts[speed - PCIE_SPEED_16_0GT][0] != PCI_EQ_RESV) {
	...
}> 
>>>
>>> I'm not forseeing any issue in this part of the code to support higher GEN
>>> speeds though.
>>
>> I would hope so as well, but both not programming and misprogramming are
>> equally hard to detect
>>
> 
> I don't disagree. I wanted to have it since there is no sensible way of warning
> users that this part of the code needs to be updated in the future.

I understand, however I'm worried that the programming sequence or register
may change for higher speeds in a way that would be incompatible with what
we assume here

Konrad

