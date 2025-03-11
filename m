Return-Path: <devicetree+bounces-156482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 137D2A5BE68
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 12:03:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A8EC43B16AE
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 11:02:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E990F253B46;
	Tue, 11 Mar 2025 11:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PkwUeDI7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C95A22422E
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 11:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741690972; cv=none; b=ncwY2z+1jO0CSlO12Ge5FgCzD/xCiAbbshBrFbEjcFiFlA6KQT3LNw8c1eR53pBtxGorkrC3wgSjGQGI//6MPocFfRpqNW9jmmfdSCOmCY2psaFaZXTfdfrrjS3bvZgqAmBdhrnQkxeVpbkaZ7ekTgl8+bxvE7UPtf+IULvchD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741690972; c=relaxed/simple;
	bh=OG9yCNW/vLXkjL1UJNfdpinYRRTJIjKoUvm6/hw2Tjg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LHJOHTVqr/Sfr/MhsPuHZ8VybUe/57+6F1zhrcu2yj53GyegPzvSamgX3mv0/nzYBVp4VBvElLeIISi3fS9XR8hi1TYOatVyOA2E8xUbQCz8gs2BEUCJ4AVUkMQpoEvaVwmITQj668ryI7kyhSaKRtl07IRzDbedU7lE+jFxO74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PkwUeDI7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52B7jSDK022356
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 11:02:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GV6m8Ea3fXu54GabXySXUwHNgdLEKAmBjtoceSFkt1c=; b=PkwUeDI7UMuYKstI
	AkTZg6g4eFb57xBrGAHINkAMtSxmI+rdhcbRb+0OnSUQketsCltxEiuYGVvD/TXR
	LtKE9Gl7hw+2H+F5SFoNZZxVewxy1HMD70wLuNQr7rZ98riosBW5gE2LG/QhgwfL
	0OdKVfCR+F5DpjuBE+UsjQTvGLrsVwgYORZD8auRdZgin3rYMgiUur6a1Zmw+vhD
	vhsNyT4RkoLEHKjbLLzRybUfHu9oMeAGX6f5hpHc6S5foMRAko9unI6ygy2mfnSA
	hWge+BioDyUTPiPPTtk2aECzU5nm+3pQwu/lf3xoyeU4tEJF0tLaRqmLBXldBPmY
	c22H1g==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458eyug87g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 11:02:48 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2240a96112fso165478775ad.2
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 04:02:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741690967; x=1742295767;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GV6m8Ea3fXu54GabXySXUwHNgdLEKAmBjtoceSFkt1c=;
        b=kcXJyfd2YMMqQUVKyjpyi7twDPFOuBlYitepXq6bQnsD66ykK2tHKw/G4nUWFgg3IS
         IXfXdZWtXryr+SACeSag4AOW4YFE9FaFjXYMURKFFoWkgLRpTpqvI2dYyfsXdzQ5qYGm
         FsFxkp3ACxT/CEJFeVlLWMmyqv9xyUIYQbr4RZuPJkuNG127aMwDTaoTjxn6TS+/xsJ/
         D4bqX1eUYXFEhyKpR0IG2ISOJaG7YPQUsneJT9Yq6FzReecD6x36GmGtBOIwzt9vD1V4
         wyaHDky96m6Bacg9LdNRx16FSMGOApvPQT+u4dgnGzWpfKuQa3ZUSaS5pebul5kFedvW
         1KRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAb/sDfgC0DwgyMavLrxSnmHrZiBcu4F3arMbAgnlu6IBYypKl05j5i43C2QlI7Fa7QXZZoPtlBxRx@vger.kernel.org
X-Gm-Message-State: AOJu0Yxoq0nJBGB/c2g+3vWYEukpXkXx0YkiiuDQ03VOvMAOu0OnMXTX
	LVS55vwUKN+Jayr8sEM2szYb5ma3XXsQCvhRAfNge6VwuKZZfvSTBKPwBwJESb4lqwesV2zCQBK
	RF2bEBOPks4KZ8Yut6+ZZ0y2wiPtEyi6kUjkRQbxaEB0lz1A5u2dUZSGWQf79
X-Gm-Gg: ASbGncvkSYWJjuR4Mm4CrIvonLNsMIi7fDsWVeQuYu3HVvpGBmUgltcjZeWFUqY1zU9
	3Anh5M1TxAqktseQ5y4ubmhbyE/RiyyU/I2TSBKbZV6a5TTFtdU6ziHfjuKn2c/dTTeveZ0jhUr
	oCVzodJgAluIVWzF551M7t0lvn+OTFmkcmqc/J34brTR+cbdhhOpygQIrC2J42ER89GqaydzF6s
	MVVZ4+0tBu40qjP1uzzUR8tt2Q4i+Ra9VyaUeGHZsHkq4NNEKjEQbhwy+7SrJgwFLBhrUIIpCUu
	+TM3BrpPOAAfooaZAWGA/iN4uCaixWn/ecIM2i6GVdj/Ow==
X-Received: by 2002:a17:903:22c8:b0:224:1ef:1e00 with SMTP id d9443c01a7336-2242888ab4cmr268903555ad.19.1741690967306;
        Tue, 11 Mar 2025 04:02:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IElQe14QmLb/YA4RxX7Xfv6ED5NHOblsuRV8M9Glm1MDzl5sQt1xexHeF266ceJ4bgRlzcyUA==
X-Received: by 2002:a17:903:22c8:b0:224:1ef:1e00 with SMTP id d9443c01a7336-2242888ab4cmr268903125ad.19.1741690966912;
        Tue, 11 Mar 2025 04:02:46 -0700 (PDT)
Received: from [10.92.192.202] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22410a91c37sm94938345ad.163.2025.03.11.04.02.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Mar 2025 04:02:46 -0700 (PDT)
Message-ID: <69f4c303-bba1-7d68-7701-01820ce8701b@oss.qualcomm.com>
Date: Tue, 11 Mar 2025 16:32:41 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 3/4] PCI: dwc: Improve handling of PCIe lane
 configuration
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
References: <20250225-preset_v6-v7-0-a593f3ef3951@oss.qualcomm.com>
 <20250225-preset_v6-v7-3-a593f3ef3951@oss.qualcomm.com>
 <20250306034459.uc4qlnsnxijotplo@thinkpad>
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20250306034459.uc4qlnsnxijotplo@thinkpad>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=cbIormDM c=1 sm=1 tr=0 ts=67d01858 cx=c_pps a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=9b1j0kiYQJ7ZwPQ1bTgA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: 7HK7Jt0iimLgrKjIqXpg1hFyQ1oClvei
X-Proofpoint-GUID: 7HK7Jt0iimLgrKjIqXpg1hFyQ1oClvei
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-11_01,2025-03-11_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0 mlxscore=0
 impostorscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0 mlxlogscore=999
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503110073



On 3/6/2025 9:14 AM, Manivannan Sadhasivam wrote:
> On Tue, Feb 25, 2025 at 05:15:06PM +0530, Krishna Chaitanya Chundru wrote:
>> Currently even if the number of lanes hardware supports is equal to
>> the number lanes provided in the devicetree, the driver is trying to
>> configure again the maximum number of lanes which is not needed.
>>
>> Update number of lanes only when it is not equal to hardware capability.
>>
> 
> 'Update max link width only...'
> 
>> And also if the num-lanes property is not present in the devicetree
>> update the num_lanes with the maximum hardware supports.
> 
> '...update 'pci->num_lanes' with the hardware supported maximum link width using
> the newly introduced dw_pcie_link_get_max_link_width() API.'
> 
>>
>> Introduce dw_pcie_link_get_max_link_width() to get the maximum lane
>> width the hardware supports.
>>
>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>> ---
>>   drivers/pci/controller/dwc/pcie-designware-host.c |  3 +++
>>   drivers/pci/controller/dwc/pcie-designware.c      | 11 ++++++++++-
>>   drivers/pci/controller/dwc/pcie-designware.h      |  1 +
>>   3 files changed, 14 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
>> index ffaded8f2df7..dd56cc02f4ef 100644
>> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
>> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
>> @@ -504,6 +504,9 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
>>   
>>   	dw_pcie_iatu_detect(pci);
>>   
>> +	if (pci->num_lanes < 1)
>> +		pci->num_lanes = dw_pcie_link_get_max_link_width(pci);
>> +
>>   	/*
>>   	 * Allocate the resource for MSG TLP before programming the iATU
>>   	 * outbound window in dw_pcie_setup_rc(). Since the allocation depends
>> diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
>> index 145e7f579072..9fc5916867b6 100644
>> --- a/drivers/pci/controller/dwc/pcie-designware.c
>> +++ b/drivers/pci/controller/dwc/pcie-designware.c
>> @@ -737,12 +737,21 @@ static void dw_pcie_link_set_max_speed(struct dw_pcie *pci)
>>   
>>   }
>>   
>> +int dw_pcie_link_get_max_link_width(struct dw_pcie *pci)
>> +{
>> +	u8 cap = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
>> +	u32 lnkcap = dw_pcie_readl_dbi(pci, cap + PCI_EXP_LNKCAP);
>> +
>> +	return FIELD_GET(PCI_EXP_LNKCAP_MLW, lnkcap);
>> +}
>> +
>>   static void dw_pcie_link_set_max_link_width(struct dw_pcie *pci, u32 num_lanes)
>>   {
>> +	int max_lanes = dw_pcie_link_get_max_link_width(pci);
>>   	u32 lnkcap, lwsc, plc;
>>   	u8 cap;
>>   
>> -	if (!num_lanes)
>> +	if (max_lanes == num_lanes)
> 
> This gives the assumption that the link width in PCIE_PORT_LINK_CONTROL and
> PCIE_LINK_WIDTH_SPEED_CONTROL registers are same as MLW. Is it really true as
> per the DWC spec?
> 
You are correct both the values are not matching and as we are not sure
side effect of not updating it I will revert this logic.

- Krishna Chaitanya.
> - Mani
> 

