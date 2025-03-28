Return-Path: <devicetree+bounces-161457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E86E2A7436B
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 06:35:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B33217B264
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 05:34:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9355921129A;
	Fri, 28 Mar 2025 05:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iWcIy2WA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86CB211276
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 05:34:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743140061; cv=none; b=pVTn2X1X3WEr5NzrlOBwsU4dcd2SFM7ZaT60HmucHoBxwgQcipsk3N9kaM123XOpS7njX+1uKUDqqp81bIHFtwf3BqZrmOEDbrNQ1xwD8pxYh5dqJeO3ZvVwV7CoxvS+4xnK1zNGN9+FGJlJFGkvfi9juaAbM5p8HNY4OebRYIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743140061; c=relaxed/simple;
	bh=CbPaDrJ4FeoIlwmsZWy9972ejo3BehiVxWsy5g+KDxA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IQZy6E5I9eKghyRY+nPd+ioWtJatJIGX4QutQGp5AO8qddxTL6adGqMgA7dGdczwRDgEiLF/tSQEhwiWB1O1WVszn9EjxYmpF2G1M1J9kjnXltRK6/GfJVs6SvTaVuIhWF5Un84OjpuDtAaXcNPuQTUBacJkM8BE5Ywumcwj6dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iWcIy2WA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52RFffFA025674
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 05:34:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FjBfrj2rWschU4104LLg8r3y5KOZRiF6HP0sk4jVTlY=; b=iWcIy2WADSWLEdWY
	ygDy0oPZI1ilHOtA+DAp6T3xh5/e4Lh4CcB1fkelt+pNTVtQSVWwN3uDbCiVOUxj
	VJm+b6ZWGLBA6ymUM12eLG/srpFqriW6cjClUIdZO+KjCWMQMyxxZ72ayuebYxjZ
	MkihhDZRconTxNXeVEMonwVgfCfqkBMwTKjgz2KNmP9z+tMaSze+PPXn+iaAVeoo
	OHHLn82zFdMq4aHwnZyhaPPakI3AadO/cHZwOFDbQ1gqzVeLZLKOHZ1NUZYCc9cP
	gLpp9sLQDn0B8eGfrji66MOKukoCNMv0eg/43+TSYWPCEvzcwLod2brkdDGQZtrC
	uC1/9Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45n0nuubjf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 05:34:18 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-224191d9228so39430105ad.3
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 22:34:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743140058; x=1743744858;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FjBfrj2rWschU4104LLg8r3y5KOZRiF6HP0sk4jVTlY=;
        b=v5ulm0dPmMu1ur3JE9KD+GmcV9pWXg0TGlkqH6KmPHwd1SFZ+h/0cN4A59TohsNuOO
         USSmpppnJC6+M/JVJxYM93Fnz2xUyz0NICcsltXj8ytyOmucAzifA6xRCUwKVz5peu9a
         kHkg1W3dOGcqr2Vq8zsowd9GHdopzcSc4bUjLn5WGUEYUM1A1eJe5Y2T422azhrj991r
         2S7b3VSRFi1rzFlp8f0J4PjxEAAIJOZRb04oX7X3wnGeFYypCsipqEii2W5CXc7//r1k
         JiSVeJLfS6ShtxGtAPTi30ewa3hB8kakuoGp+vEJGN0+bYyD1RL4DxTGKzSg1d0jutcf
         +Dbw==
X-Forwarded-Encrypted: i=1; AJvYcCWDOctzbsSp2cBD3BveV7Oo8mP37GxS5ZGaLoctdeeDBF6djg8qxsUBEA4he8bXPJG4JOX3eSIytZlz@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7EkBsIiZ+0gTorMo6HXsA3sx8f0cJYLXz6/PJLtioSEoW0nty
	kBvVdz086GXSUsSQrYJzzQDMZ6XFBucRbzlzps5pOnT5++Tnozatxm8ZAUGVIBBb2tBeLDTrkZT
	sb30k2EA9hlRWZwcydzzf7lscwzOGQx1TS+pfoQgSFxyd6/3OACuB/jD+dfzN
X-Gm-Gg: ASbGncteBysNz+OKAj5EcgAMRIL/jIwdEEPKmiG13X7YqK/2+QTV9wnLff3K2i8J44k
	zNjCxtc7wCSMdxfrNhRk1ZPIHJW4r2KxJWH++YePcwCEPIJ2lfi2Wdqaf5fSUPx8zurGa5aZuq2
	+E218VsW6ceYQkhREEN9r+jmOgyqjibUARc7GkirsScslW4Y52xsamXXrHHVnmNA8X/CQAMHs1g
	k1kcngZwTttMv+cyoXnc8dcwYWTJeVluRuYt4jCcWVdBMIeWDFZPIzFQjNvmKPazI294cYEvuZb
	HPSeQM3J3MFWXMUwIz6S5W+IwSyLIDSK5AO1jAtdWrCfpQ==
X-Received: by 2002:a17:902:db0a:b0:224:23be:c569 with SMTP id d9443c01a7336-22804845097mr102527885ad.22.1743140057922;
        Thu, 27 Mar 2025 22:34:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGcD4IHX1W6f3V7a/135vsdoU5XAVFg/3bKjgHWhLDGDdOc4qwiWlsAX+wTGlesaJO8h2QWrQ==
X-Received: by 2002:a17:902:db0a:b0:224:23be:c569 with SMTP id d9443c01a7336-22804845097mr102527305ad.22.1743140057391;
        Thu, 27 Mar 2025 22:34:17 -0700 (PDT)
Received: from [10.92.192.202] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291eec6f91sm9510475ad.17.2025.03.27.22.34.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Mar 2025 22:34:16 -0700 (PDT)
Message-ID: <92c4854d-033e-c7b5-ca92-cf44a1a8c0cc@oss.qualcomm.com>
Date: Fri, 28 Mar 2025 11:04:11 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v8 4/4] PCI: dwc: Add support for configuring lane
 equalization presets
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
        Lorenzo Pieralisi
 <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
 <kw@linux.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_mrana@quicinc.com, quic_vbadigan@quicinc.com
References: <20250316-preset_v6-v8-0-0703a78cb355@oss.qualcomm.com>
 <20250316-preset_v6-v8-4-0703a78cb355@oss.qualcomm.com>
 <3sbflmznjfqpcja52v6bso74vhouv7ncuikrba5zlb74tqqb5u@ovndmib3kgqf>
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <3sbflmznjfqpcja52v6bso74vhouv7ncuikrba5zlb74tqqb5u@ovndmib3kgqf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 1GMijnuMOGD4yvjLbwXrltcNH_P2rFhy
X-Authority-Analysis: v=2.4 cv=AcaxH2XG c=1 sm=1 tr=0 ts=67e634da cx=c_pps a=IZJwPbhc+fLeJZngyXXI0A==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=wBt9fhMRhOodALO6grUA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: 1GMijnuMOGD4yvjLbwXrltcNH_P2rFhy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-28_02,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxlogscore=990
 impostorscore=0 malwarescore=0 bulkscore=0 mlxscore=0 adultscore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503280036



On 3/28/2025 10:23 AM, Manivannan Sadhasivam wrote:
> On Sun, Mar 16, 2025 at 09:39:04AM +0530, Krishna Chaitanya Chundru wrote:
>> PCIe equalization presets are predefined settings used to optimize
>> signal integrity by compensating for signal loss and distortion in
>> high-speed data transmission.
>>
>> Based upon the number of lanes and the data rate supported, write
>> the preset data read from the device tree in to the lane equalization
>> control registers.
>>
>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>> ---
>>   drivers/pci/controller/dwc/pcie-designware-host.c | 60 +++++++++++++++++++++++
>>   drivers/pci/controller/dwc/pcie-designware.h      |  3 ++
>>   include/uapi/linux/pci_regs.h                     |  3 ++
>>   3 files changed, 66 insertions(+)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
>> index dd56cc02f4ef..7c6e6a74383b 100644
>> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
>> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
>> @@ -507,6 +507,10 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
>>   	if (pci->num_lanes < 1)
>>   		pci->num_lanes = dw_pcie_link_get_max_link_width(pci);
>>   
>> +	ret = of_pci_get_equalization_presets(dev, &pp->presets, pci->num_lanes);
>> +	if (ret)
>> +		goto err_free_msi;
>> +
>>   	/*
>>   	 * Allocate the resource for MSG TLP before programming the iATU
>>   	 * outbound window in dw_pcie_setup_rc(). Since the allocation depends
>> @@ -808,6 +812,61 @@ static int dw_pcie_iatu_setup(struct dw_pcie_rp *pp)
>>   	return 0;
>>   }
>>   
>> +static void dw_pcie_program_presets(struct dw_pcie_rp *pp, enum pci_bus_speed speed)
>> +{
>> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>> +	u8 lane_eq_offset, lane_reg_size, cap_id;
>> +	u8 *presets;
>> +	u32 cap;
>> +	int i;
>> +
>> +	if (speed == PCIE_SPEED_8_0GT) {
>> +		presets = (u8 *)pp->presets.eq_presets_8gts;
>> +		lane_eq_offset =  PCI_SECPCI_LE_CTRL;
>> +		cap_id = PCI_EXT_CAP_ID_SECPCI;
>> +		/* For data rate of 8 GT/S each lane equalization control is 16bits wide*/
>> +		lane_reg_size = 0x2;
>> +	} else if (speed == PCIE_SPEED_16_0GT) {
>> +		presets = pp->presets.eq_presets_Ngts[EQ_PRESET_TYPE_16GTS - 1];
>> +		lane_eq_offset = PCI_PL_16GT_LE_CTRL;
>> +		cap_id = PCI_EXT_CAP_ID_PL_16GT;
>> +		lane_reg_size = 0x1;
>> +	} else {
> 
> Can you add conditions for other data rates also? Like 32, 64 GT/s. If
> controller supports them and if the presets property is defined in DT, then you
> should apply the preset values.
> 
> If the presets property is not present in DT, then below 'PCI_EQ_RESV' will
> safely return.
> 
I am fine to add it, but there is no GEN5 or GEN6 controller support
added in dwc, isn't it best to add when that support is added and
tested.

- Krishna Chaitanya.

>> +		return;
>> +	}
>> +
>> +	if (presets[0] == PCI_EQ_RESV)
>> +		return;
>> +
>> +	cap = dw_pcie_find_ext_capability(pci, cap_id);
>> +	if (!cap)
>> +		return;
>> +
>> +	/*
>> +	 * Write preset values to the registers byte-by-byte for the given
>> +	 * number of lanes and register size.
>> +	 */
>> +	for (i = 0; i < pci->num_lanes * lane_reg_size; i++)
>> +		dw_pcie_writeb_dbi(pci, cap + lane_eq_offset + i, presets[i]);
>> +}
>> +
>> +static void dw_pcie_config_presets(struct dw_pcie_rp *pp)
>> +{
>> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>> +	enum pci_bus_speed speed = pcie_link_speed[pci->max_link_speed];
>> +
>> +	/*
>> +	 * Lane equalization needs to be perfomed for all data rates
>> +	 * the controller supports and for all supported lanes.
>> +	 */
>> +
>> +	if (speed >= PCIE_SPEED_8_0GT)
>> +		dw_pcie_program_presets(pp, PCIE_SPEED_8_0GT);
>> +
>> +	if (speed >= PCIE_SPEED_16_0GT)
>> +		dw_pcie_program_presets(pp, PCIE_SPEED_16_0GT);
> 
> Add other data rates also.
> 
> - Mani
> 

