Return-Path: <devicetree+bounces-150158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B6DA415EB
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 08:06:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F3EF16A0B4
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 07:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93771238D22;
	Mon, 24 Feb 2025 07:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G+MClCNk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C754320ADFA
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 07:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740380697; cv=none; b=ghM1/8PgyqlqkYMMSBpVcvuhFnVHVgG0Kunp8m3gg8KBS9NHEb60na3RZ53toGZZoOrwofQfBaIhtXBMA+OXuqsvRng41kEHfJvvj4R/UFFmaKzU8CVDtOax9IIPDADzp9kNH70EFMwmc7ZhtkiIvu9EhXVJ1wyFDw+EFWiPDEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740380697; c=relaxed/simple;
	bh=y/1clNCL+NS++oBFmjRbg2CcgwGbN/lxf2/nF53Ef0c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N1qKooo/tUq5ORcVBSDNxVzDLPh0hTh6jOnDjHoCCVqGrqyGMXPPwbhxSe9k38B7UKjkgNHEZKJKFuWoIEcEvFKlBlkIunYnrIM4CAP9lBOx/VqlsAcPurGViNdyNxzcO6GlA8jeiL0KPZ/FMLnBZ4kVVhocktjeG208HgD04gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G+MClCNk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51NMrVAs013284
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 07:04:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5WIheLZ9opmWJFXhXFIzA03DR/ItI8HoBk7UEWH8SJg=; b=G+MClCNkjb73xwPw
	ZEXpm+ckL5qkTNXzC3PmPQFZtYMluGUvm+kQflVTHB+UYxZBi9uTpL/P5P6WMgVG
	ahgA+BN/8G7MAIBepOEJi3ifu5POvQxIdBQdIsQSDf6g5GOt95lIIBbX4imqdAFO
	Xp+B4DZsUmZ3RnCvseDhMmjxui32qVBGdO7KG6a0jyh+osWLZLS2c0efHGCZxEgO
	4Rp7cc5cy1JbafIdIAlx3TFtsCPG4VizQEPJmtwEfpIidSFhXyRV0dRTjDYsJNke
	hwynB0Au8EXSOgOC+9d2wZ2UVsRaSAHLPtPpTMS2u9zL8YLVB180kAb0Mc9SDEw7
	r7/+9w==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44y6y6kw2f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 07:04:54 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2210305535bso136181685ad.1
        for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 23:04:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740380693; x=1740985493;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5WIheLZ9opmWJFXhXFIzA03DR/ItI8HoBk7UEWH8SJg=;
        b=S1fe/XXKYununfWus5fPI3xitrY3UIdxrPbBx5oaYEZaUQmkj7aeHxPlMGtRn1BA5E
         81mfcqO9baoYsJ4fVAERxm9Mz+Qf1V1GwlOhxA9ZyB6vhYYHBA29LdL9LLzccCFYG+tl
         kcmbZiPATiE0C32zsOJPgKDGXqUjDI33h0ty1lQHDsCVq+guRmPf5/57ta8ilih96Q3c
         z4O7XP2DeoqD0AKTQBK+N8x1en2mmL2i79R8E+D0ru1PYoZai4DqxF6+V+Fj8e/LdGaD
         iISmqkBH7KTsfaUPTzkPcBZCDHeTkHKwyhdcZ0h8Oh5aL/zdPh58Nutn7tqkiu2uG0us
         3x+g==
X-Forwarded-Encrypted: i=1; AJvYcCXshOkEZ8JtBpV/CPUHYp4kiQ49xX7umoKtuQKro2+tzq35p+zX5ZimNUYKc5Z+S6XMod8GpZIAI806@vger.kernel.org
X-Gm-Message-State: AOJu0YyqGRkxP7EftyUuRXuSu2KNgSeIEVC+4bbc6mdVqjPYJnQ0bwMt
	lWAvRe7nESHGbf8+PzLsqA8nMy4x0n11mQoLz736QZbv3i7kFeXND1S9Im4/224XHSI4D+56YFL
	41yRoGBhTU5aFql+x5cTcTRTnzE/6cvGjuKTfacCs5PpwDrCu4Xz0U+sjy5L9
X-Gm-Gg: ASbGnctP/+Y2On0T6VSK5LExWIQir0v23eXciKALhTdgDeSSaX/fccQQt0GDBJ6NUoh
	WJG6BKdrMvfXSPZw93D0PQw0LzhxB93AHcuh+zH0CZvOWosh3+MSpOMV7xsQGZRVlqC8IxEQYfZ
	8rM8aCFJS14sORO730J9E1uaCEp+GXw0BVxBeih50jztjwgkoC5WdM7t23oglZuO/H0k9brO+As
	febjzFT0G0ffQjx9f/I/K4AzEe+aXyDAJF9Il5mGnm5OEZR2DGI1NxKrbq6Y29lDAcEN9+8Xr6/
	GS9TcA0Nnb2IINRFK7SSxuVkOLS4iRu06keVDADIuSIf
X-Received: by 2002:a17:902:b205:b0:220:ff3f:6cbc with SMTP id d9443c01a7336-221a1148e8emr150627965ad.34.1740380693147;
        Sun, 23 Feb 2025 23:04:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEb5MhpjJCIMzKcXsJRwIio6H1DsGvFgoeETQaOrh0qyse+TUhBysl2xMdsD1dadgJePi5zyg==
X-Received: by 2002:a17:902:b205:b0:220:ff3f:6cbc with SMTP id d9443c01a7336-221a1148e8emr150627665ad.34.1740380692729;
        Sun, 23 Feb 2025 23:04:52 -0800 (PST)
Received: from [10.92.199.34] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d55866ecsm173253775ad.212.2025.02.23.23.04.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2025 23:04:52 -0800 (PST)
Message-ID: <c5bee42e-f914-7fd7-6c72-6c9e760733a3@oss.qualcomm.com>
Date: Mon, 24 Feb 2025 12:34:45 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v6 4/4] PCI: dwc: Add support for configuring lane
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
References: <20250210-preset_v6-v6-0-cbd837d0028d@oss.qualcomm.com>
 <20250210-preset_v6-v6-4-cbd837d0028d@oss.qualcomm.com>
 <20250214093414.pvx6nab7ewy4nvzb@thinkpad>
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20250214093414.pvx6nab7ewy4nvzb@thinkpad>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Bsg251D0AjKkgio7Q5xF9Fs8_a7TW73c
X-Proofpoint-GUID: Bsg251D0AjKkgio7Q5xF9Fs8_a7TW73c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-24_02,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 spamscore=0
 malwarescore=0 phishscore=0 adultscore=0 lowpriorityscore=0
 mlxlogscore=951 impostorscore=0 priorityscore=1501 bulkscore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502240050



On 2/14/2025 3:04 PM, Manivannan Sadhasivam wrote:
> On Mon, Feb 10, 2025 at 01:00:03PM +0530, Krishna Chaitanya Chundru wrote:
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
>>   drivers/pci/controller/dwc/pcie-designware-host.c | 53 +++++++++++++++++++++++
>>   drivers/pci/controller/dwc/pcie-designware.h      |  3 ++
>>   include/uapi/linux/pci_regs.h                     |  3 ++
>>   3 files changed, 59 insertions(+)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
>> index dd56cc02f4ef..7d5f16f77e2f 100644
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
>> @@ -808,6 +812,54 @@ static int dw_pcie_iatu_setup(struct dw_pcie_rp *pp)
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
>> +		presets = pp->presets.eq_presets_Ngts[EQ_PRESET_TYPE_16GTS];
>> +		lane_eq_offset = PCI_PL_16GT_LE_CTRL;
>> +		cap_id = PCI_EXT_CAP_ID_PL_16GT;
>> +		lane_reg_size = 0x1;
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
> 
> Please add a comment stating that the equalization needs to be performed at all
> lower data rates for each lane.
> 
>> +	if (speed >= PCIE_SPEED_8_0GT)
>> +		dw_pcie_program_presets(pp, PCIE_SPEED_8_0GT);
>> +
>> +	if (speed >= PCIE_SPEED_16_0GT)
>> +		dw_pcie_program_presets(pp, PCIE_SPEED_16_0GT);
> 
> I think we need to check 'Link Equalization Request' before performing
> equalization? This will also help us to warn users if they didn't specify the
> property in DT if hardware expects equalization.
> 
Ok I will add a check in dw_pcie_program_presets() if there is no dt
property for a particular data rate/speed in next patch.

- Krishna Chaitanya.
> Currently, even if DT specifies equalization presets for 32GT/s, driver is not
> making use of them.

> - Mani
> 

