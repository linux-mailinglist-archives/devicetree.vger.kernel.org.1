Return-Path: <devicetree+bounces-161742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E14A75545
	for <lists+devicetree@lfdr.de>; Sat, 29 Mar 2025 10:00:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 948F3188BA09
	for <lists+devicetree@lfdr.de>; Sat, 29 Mar 2025 09:00:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09A69135A53;
	Sat, 29 Mar 2025 08:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LmqL8gTd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C660282F5
	for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 08:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743238795; cv=none; b=oU2jH+5/YBHe08nB1sqOLlvzI85f8n4SaRM1LOo4S0E/5+ypHjOFZvRdv2ElyaBet5oER1gxSp7B76N16MmlZhCuBjAaNOLfc7w4uUQ6ejLtKooRUkfugK0y4nZRog6PRrquEiUYImN1Vo6zdQGUn+UQ/Z0wNfAtkhM8mR1S0es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743238795; c=relaxed/simple;
	bh=P43UgQWtBugO4yRa9AP1UE8y4mvRbi7MD/UbP3JyaSQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EVMQMRcBwTZw9oTK6WtbzZebpEUG+weMyTS6ewY8oSG9L9twT8NMuxHcYlTpSaoL+hJeLO1dCBPzfkM1baTZhiKV7+UEFhAY1+aE0+zkcpwxDcOynF1vhe2uezOG5sgEetUxI0r3bRxNtw4XwDsikr124RoW8cH7IHU6hFS/GxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LmqL8gTd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52T7iQd5014813
	for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 08:59:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	37x3gXvWIZO0z5ax79P5XurFvsK6woppiUhnedErM2g=; b=LmqL8gTdUd0Bu9AF
	6QOw6p6dL3yY60z8waGf1yxCMThOsM//qAHS7dflxVgP/iZx8K0HP0ELZeCTYgra
	nzWLz/fnWwWvkZYzIM15G6bYEcakTvcKD4nBcO/q4xsA9qSXKkF23KPDe1DrnyRC
	99k4rQp/67FznM1tjNvyvobVhJbwyzHjM2ZcuMFRp0HkOOg4tbvUl5o7/Q6Mai38
	BNzQKotGelBXu9yYFwEV6JGHHaakUrXlRy7ABB4BXYpWXwKGoDXW/cn7NoVX7kl/
	du1HRgny/FLtKrajUvNLP5slu0z4LYQ5Ey/zHAQ8Y4dXj+mOSQJuTwTiNGRJVnX9
	L0raMw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45pa1nraj0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 08:59:53 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e906c7cd2bso4177446d6.3
        for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 01:59:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743238792; x=1743843592;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=37x3gXvWIZO0z5ax79P5XurFvsK6woppiUhnedErM2g=;
        b=XFqs27QmfUKMkTVmozelyh2/5Dn/5tUmD/9LoMx90Fjo2beBpI/YK4ARer+xB42pRV
         VV+sR3YYy9ldZmkvQCJhZCgNWVA+WwlRcFaLi+gnD8UHV+gsaCbHeXnvoH/jeuVNzsan
         ba6OdBJgG5Ve8skl0+HExARg8nhFZLrR9OgihDHEKhuE3pHQ623Qc8yHCOy/Oz6dspg1
         uzOEfoBiLVZGWyNdDsh3bXeRHLU+JDkZfuHSMzENdcvyYhrei4Go0DEumHKr0B/xcAKt
         iBbw6gwR/znYIfK8FUqG+GLyVKFTdN8/v6m3rk2QJzV5/y+pxbolMYsw4nlCEhRX0a5z
         BsRw==
X-Forwarded-Encrypted: i=1; AJvYcCXs8VxOiWt1yinLCOvPu9l3lZzYc6KEUZ0qUsTn/lwfy0e/GQzuvvRDUmtV8zGNgLNVCl0lCcgkJpJN@vger.kernel.org
X-Gm-Message-State: AOJu0YxnFIY+mHYLzRg8QsAh/iOBSJ0OtZ3eTmBl95s7KQPKc5Sw8naS
	p8pey+9EHcZiD33CtbCpSBNHVwlWFq8MDgnMJDh5PDxpW8QIBMqj1D5bhx811/8xQ3aEJQpcE1c
	U8Go3q7O839iJT4A8JB170JVBktWleWpQ4vJ2cXuGHtrDarwpP4BV95RpP+Uq
X-Gm-Gg: ASbGnct5FXcgjr55I8X/HPPiiqsOgw+RUO472IN5QcOzhEuSE+42y4VDNoyD6GUTjoj
	VU4g79g8MvR6YR1MLHK/hDGSyJ6S4JYNngUaOy8rnGCHnGu6sP8NRi0p5tiG26fD8dMO+e6y+C+
	yJXpc7Oac24Cr7G0OgqRrVXP4FvUgpY0i4sr1bqbfSh8dAkE0QBdXIyAEJUNyNIh18JrT0wdULv
	l8/6ny0i8rlgx1pyI4C5P4fTpeDE8B4waybl9hOajPY0WCAYWYsM2866WSha3492yNYoMIvjzea
	gaEy9LpETmHFsqcLZQfk1hi56MM4MtdUMx1nUyq5uhfX+pGvtjpXXb3fLzA5OEsq4P/DMw==
X-Received: by 2002:a05:620a:1792:b0:7c0:bc63:7b73 with SMTP id af79cd13be357-7c6908ca335mr102810285a.13.1743238791848;
        Sat, 29 Mar 2025 01:59:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEWgQ8bGtNGe0Vk1ZyjZA5f1jd7EgL+yhTvduuo9qldDJH4f2p/S8qqOhgDV+CWnBCyVhZeiQ==
X-Received: by 2002:a05:620a:1792:b0:7c0:bc63:7b73 with SMTP id af79cd13be357-7c6908ca335mr102808485a.13.1743238791339;
        Sat, 29 Mar 2025 01:59:51 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac725c71e95sm219562766b.76.2025.03.29.01.59.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Mar 2025 01:59:50 -0700 (PDT)
Message-ID: <622788fa-a067-49ac-b5b1-e4ec339e026f@oss.qualcomm.com>
Date: Sat, 29 Mar 2025 09:59:46 +0100
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <abgqh3suczj2fckmt4m2bkqazfgwsfj43762ddzrpznr4xvftg@n5dkemffktyv>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: rnxaRQ_uLYaxA7UGcoBVvVQvE5JZfvqh
X-Proofpoint-GUID: rnxaRQ_uLYaxA7UGcoBVvVQvE5JZfvqh
X-Authority-Analysis: v=2.4 cv=MPlgmNZl c=1 sm=1 tr=0 ts=67e7b689 cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=124JrzZUfrG38n11_fAA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-29_01,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 suspectscore=0 phishscore=0 spamscore=0 clxscore=1015
 bulkscore=0 mlxlogscore=999 impostorscore=0 mlxscore=0 adultscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503290062

On 3/29/25 7:30 AM, Manivannan Sadhasivam wrote:
> On Fri, Mar 28, 2025 at 10:53:19PM +0100, Konrad Dybcio wrote:
>> On 3/28/25 7:45 AM, Manivannan Sadhasivam wrote:
>>> On Fri, Mar 28, 2025 at 11:04:11AM +0530, Krishna Chaitanya Chundru wrote:
>>>>
>>>>
>>>> On 3/28/2025 10:23 AM, Manivannan Sadhasivam wrote:
>>>>> On Sun, Mar 16, 2025 at 09:39:04AM +0530, Krishna Chaitanya Chundru wrote:
>>>>>> PCIe equalization presets are predefined settings used to optimize
>>>>>> signal integrity by compensating for signal loss and distortion in
>>>>>> high-speed data transmission.
>>>>>>
>>>>>> Based upon the number of lanes and the data rate supported, write
>>>>>> the preset data read from the device tree in to the lane equalization
>>>>>> control registers.
>>>>>>
>>>>>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>>>>>> ---
>>>>>>   drivers/pci/controller/dwc/pcie-designware-host.c | 60 +++++++++++++++++++++++
>>>>>>   drivers/pci/controller/dwc/pcie-designware.h      |  3 ++
>>>>>>   include/uapi/linux/pci_regs.h                     |  3 ++
>>>>>>   3 files changed, 66 insertions(+)
>>>>>>
>>>>>> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
>>>>>> index dd56cc02f4ef..7c6e6a74383b 100644
>>>>>> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
>>>>>> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
>>>>>> @@ -507,6 +507,10 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
>>>>>>   	if (pci->num_lanes < 1)
>>>>>>   		pci->num_lanes = dw_pcie_link_get_max_link_width(pci);
>>>>>> +	ret = of_pci_get_equalization_presets(dev, &pp->presets, pci->num_lanes);
>>>>>> +	if (ret)
>>>>>> +		goto err_free_msi;
>>>>>> +
>>>>>>   	/*
>>>>>>   	 * Allocate the resource for MSG TLP before programming the iATU
>>>>>>   	 * outbound window in dw_pcie_setup_rc(). Since the allocation depends
>>>>>> @@ -808,6 +812,61 @@ static int dw_pcie_iatu_setup(struct dw_pcie_rp *pp)
>>>>>>   	return 0;
>>>>>>   }
>>>>>> +static void dw_pcie_program_presets(struct dw_pcie_rp *pp, enum pci_bus_speed speed)
>>>>>> +{
>>>>>> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>>>>>> +	u8 lane_eq_offset, lane_reg_size, cap_id;
>>>>>> +	u8 *presets;
>>>>>> +	u32 cap;
>>>>>> +	int i;
>>>>>> +
>>>>>> +	if (speed == PCIE_SPEED_8_0GT) {
>>>>>> +		presets = (u8 *)pp->presets.eq_presets_8gts;
>>>>>> +		lane_eq_offset =  PCI_SECPCI_LE_CTRL;
>>>>>> +		cap_id = PCI_EXT_CAP_ID_SECPCI;
>>>>>> +		/* For data rate of 8 GT/S each lane equalization control is 16bits wide*/
>>>>>> +		lane_reg_size = 0x2;
>>>>>> +	} else if (speed == PCIE_SPEED_16_0GT) {
>>>>>> +		presets = pp->presets.eq_presets_Ngts[EQ_PRESET_TYPE_16GTS - 1];
>>>>>> +		lane_eq_offset = PCI_PL_16GT_LE_CTRL;
>>>>>> +		cap_id = PCI_EXT_CAP_ID_PL_16GT;
>>>>>> +		lane_reg_size = 0x1;
>>>>>> +	} else {
>>>>>
>>>>> Can you add conditions for other data rates also? Like 32, 64 GT/s. If
>>>>> controller supports them and if the presets property is defined in DT, then you
>>>>> should apply the preset values.
>>>>>
>>>>> If the presets property is not present in DT, then below 'PCI_EQ_RESV' will
>>>>> safely return.
>>>>>
>>>> I am fine to add it, but there is no GEN5 or GEN6 controller support
>>>> added in dwc, isn't it best to add when that support is added and
>>>> tested.
>>>>
>>>
>>> What is the guarantee that this part of the code will be updated once the
>>> capable controllers start showing up? I don't think there will be any issue in
>>> writing to these registers.
>>
>> Let's not make assumptions about the spec of a cross-vendor mass-deployed IP
>>
> 
> I have seen the worse... The problem is, if those controllers start to show up
> and define preset properties in DT, there will be no errors whatsoever to
> indicate that the preset values were not applied, resulting in hard to debug
> errors.

else {
	dev_warn(pci->dev, "Missing equalization presets programming sequence\n");
}

> 
> I'm not forseeing any issue in this part of the code to support higher GEN
> speeds though.

I would hope so as well, but both not programming and misprogramming are
equally hard to detect

Konrad

