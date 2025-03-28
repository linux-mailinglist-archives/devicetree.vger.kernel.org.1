Return-Path: <devicetree+bounces-161726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 01884A75237
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 22:53:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C3763A714B
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 21:53:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBA671EFF84;
	Fri, 28 Mar 2025 21:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g0jkv4+0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1373D1E1E11
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 21:53:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743198807; cv=none; b=A2q9665+1+0vrqdELXkggLR6Acivys6/M2BTNpYh3z/V+lTeWvJGIdGm9ec0arZfsBrbnWzC3GPTwWW0FpK7e82ekQsDHDbcSiPxIDWlhbpurbVjAL6ilkaNMtcaWHf9KnvgnzlAhut3xgsACmv5KuvG2VIM6K8NZoKPtc5pDNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743198807; c=relaxed/simple;
	bh=aMocKfjNkM4KjHf0a44OqtJP4kSaug6XaTEEVN0lB9A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LLgQw7NBCB8xfiJW6hosx7pTdOwa69BmYGkq/TZGIhEsY4ziggclPCWUbKTR1OJieEegHlzw5aM1td5D5ZZCaeqriEJ03FuwG5tHECZ9O1SPq5cF6JA9ZpJZj/14YQNVoWWI9qPlbglk44z9xv6oPRiY5CiUPwXmhWJkIGqrpaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g0jkv4+0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52SH6ot3022009
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 21:53:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NwBLJ6F2TGO/ZFgtFGhRacy/tNOFyAHA7bZMeGbF5Fw=; b=g0jkv4+0UCSdHpCV
	UXfi6wVzeT033hOA6YW9W9tC7CHwkTVTssRbQFeXC7Nn88fzzsrpS9AjTGhVmf8I
	qIxBjOwScz6stWuurjvKxGJ0aLNXR6ALM5DMx2Sx+x1UZIxfDYp3K+a3WqI1J/PQ
	LgPtvfos1P6WBhtM2h1Bm3Mm6W5E85frpd9TsVifnPB7t0I+pidg3TY53T7IvWVV
	OaoIn5+LHHvpAaaUQ48f9onP3FSDJKlQn39f0OiFLqJYo+nUoIX9muIENY5RtGWi
	dwAIfTp+e16wEt/cuPV6k/AF9FbQWhCA5ulsZaK8sMnXkvJC8mDPZLjwkA5nf+Ao
	DmTDtA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45nyvjgpc4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 21:53:24 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c54734292aso54092285a.2
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 14:53:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743198804; x=1743803604;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NwBLJ6F2TGO/ZFgtFGhRacy/tNOFyAHA7bZMeGbF5Fw=;
        b=QVDbjTsG1rRym4Ngk6cn6K+QPjN4GySk8mKey1WbIXB8wZbOvy7lQm74D/NRIDUYIg
         7vQRSY2v1VlWRahz1Ekahq7FiwpPW/Lm7aXgTyTsZHQaMupL6Z0RpcOeawCE1gMjt4BB
         MvrFn3Xld3RW58U161ZtLHxKRzcqYuZUfT3nRFpI6PI5Ab9ssIOM5pCT9kFoOIhfhVKq
         ZCvSgtGZ9xFs57pwFdc4ydGNSbMppnpACxX8gPYppij2zbLKW52UPNutW4ZZRNihH1ba
         mBgd0izSRGhyEX6lf4heDAFzyyVPqk6Y41LSj8i5WE1s03G+R6jgYVJs+QpHxlVmm3QZ
         hIPA==
X-Forwarded-Encrypted: i=1; AJvYcCVANnM1fBaNY1zUXzoilYnl873Ig9mhy4ay2Uxhw1SOtQej0X6AeETTRPJIeWpjPM8FVKMLyim8yF/M@vger.kernel.org
X-Gm-Message-State: AOJu0YxkgKKgkP7DH8suhosijfisXJ0GJHaA6ETh+QJgtE98QyEEJg4k
	YNDJDj7zr0KkNrtj1+WgJe27h1lzHuC7DsehlUADOTaNaCwDq3YgSSS4FDmcomcQUCwj11RqHUc
	FR8FZJK5sYH56nCX5rfHgaw2LIzbBYTTp8umVt1RcwhrYgif+bDiHm6RsG4nE
X-Gm-Gg: ASbGnctFltzuCSTercgaKR+HbIew6SI7/XbveZSyCJd/aRCgnksi9UE6yxfeKliD1xH
	MQ49Vb9VMJz0pgOxZIftG070F2eJ67C+h7DTFnkn7ns+6ouiMbINjiv/PdYChkXXzUvnFOfiK8J
	OTUW3S7sjaPjjep6M1puUQUFYQxch1tx4XJtGgeOt2AHwcyir6hJXESNVMX4mmBGfFKZEg/kQ6y
	dMWxALKMOMUfla6slNUxqnFx58A0DIsne2EC/Q/hDm9NpdLPQcahR911sm8NMsisk6oJE+ReiE9
	IqtWBbxWO3OseF3olRymzu1fd0xCUdFD+wWR5bJemySLAH4lBNmuBrnKubgOKn1IV/AzVw==
X-Received: by 2002:a05:620a:3192:b0:7c3:e1ef:e44d with SMTP id af79cd13be357-7c68624941amr43166485a.0.1743198803569;
        Fri, 28 Mar 2025 14:53:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHjNIa8ABmFFMmq6g4uOJO2iha++o7PStT3gZIggNKtUu0qiMcP6HO4grgHgiXJQUgFBcpPMw==
X-Received: by 2002:a05:620a:3192:b0:7c3:e1ef:e44d with SMTP id af79cd13be357-7c68624941amr43164785a.0.1743198803094;
        Fri, 28 Mar 2025 14:53:23 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7196dcf14sm216078866b.156.2025.03.28.14.53.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Mar 2025 14:53:22 -0700 (PDT)
Message-ID: <5fece4ac-2899-4e7d-8205-3b1ebba4b56b@oss.qualcomm.com>
Date: Fri, 28 Mar 2025 22:53:19 +0100
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
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <mslh75np4tytzzk3dvwj5a3ulqmwn73zkj5cq4qmld5adkkldj@ad3bt3drffbn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=aZRhnQot c=1 sm=1 tr=0 ts=67e71a54 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=DNeSK06HdlTfY3YWmTgA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: scDyLFeEAxHHaTo4Uah5POQOj0iFTTgV
X-Proofpoint-ORIG-GUID: scDyLFeEAxHHaTo4Uah5POQOj0iFTTgV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-28_10,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 mlxlogscore=999 suspectscore=0 spamscore=0
 mlxscore=0 phishscore=0 malwarescore=0 impostorscore=0 adultscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503280145

On 3/28/25 7:45 AM, Manivannan Sadhasivam wrote:
> On Fri, Mar 28, 2025 at 11:04:11AM +0530, Krishna Chaitanya Chundru wrote:
>>
>>
>> On 3/28/2025 10:23 AM, Manivannan Sadhasivam wrote:
>>> On Sun, Mar 16, 2025 at 09:39:04AM +0530, Krishna Chaitanya Chundru wrote:
>>>> PCIe equalization presets are predefined settings used to optimize
>>>> signal integrity by compensating for signal loss and distortion in
>>>> high-speed data transmission.
>>>>
>>>> Based upon the number of lanes and the data rate supported, write
>>>> the preset data read from the device tree in to the lane equalization
>>>> control registers.
>>>>
>>>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>>>> ---
>>>>   drivers/pci/controller/dwc/pcie-designware-host.c | 60 +++++++++++++++++++++++
>>>>   drivers/pci/controller/dwc/pcie-designware.h      |  3 ++
>>>>   include/uapi/linux/pci_regs.h                     |  3 ++
>>>>   3 files changed, 66 insertions(+)
>>>>
>>>> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
>>>> index dd56cc02f4ef..7c6e6a74383b 100644
>>>> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
>>>> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
>>>> @@ -507,6 +507,10 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
>>>>   	if (pci->num_lanes < 1)
>>>>   		pci->num_lanes = dw_pcie_link_get_max_link_width(pci);
>>>> +	ret = of_pci_get_equalization_presets(dev, &pp->presets, pci->num_lanes);
>>>> +	if (ret)
>>>> +		goto err_free_msi;
>>>> +
>>>>   	/*
>>>>   	 * Allocate the resource for MSG TLP before programming the iATU
>>>>   	 * outbound window in dw_pcie_setup_rc(). Since the allocation depends
>>>> @@ -808,6 +812,61 @@ static int dw_pcie_iatu_setup(struct dw_pcie_rp *pp)
>>>>   	return 0;
>>>>   }
>>>> +static void dw_pcie_program_presets(struct dw_pcie_rp *pp, enum pci_bus_speed speed)
>>>> +{
>>>> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>>>> +	u8 lane_eq_offset, lane_reg_size, cap_id;
>>>> +	u8 *presets;
>>>> +	u32 cap;
>>>> +	int i;
>>>> +
>>>> +	if (speed == PCIE_SPEED_8_0GT) {
>>>> +		presets = (u8 *)pp->presets.eq_presets_8gts;
>>>> +		lane_eq_offset =  PCI_SECPCI_LE_CTRL;
>>>> +		cap_id = PCI_EXT_CAP_ID_SECPCI;
>>>> +		/* For data rate of 8 GT/S each lane equalization control is 16bits wide*/
>>>> +		lane_reg_size = 0x2;
>>>> +	} else if (speed == PCIE_SPEED_16_0GT) {
>>>> +		presets = pp->presets.eq_presets_Ngts[EQ_PRESET_TYPE_16GTS - 1];
>>>> +		lane_eq_offset = PCI_PL_16GT_LE_CTRL;
>>>> +		cap_id = PCI_EXT_CAP_ID_PL_16GT;
>>>> +		lane_reg_size = 0x1;
>>>> +	} else {
>>>
>>> Can you add conditions for other data rates also? Like 32, 64 GT/s. If
>>> controller supports them and if the presets property is defined in DT, then you
>>> should apply the preset values.
>>>
>>> If the presets property is not present in DT, then below 'PCI_EQ_RESV' will
>>> safely return.
>>>
>> I am fine to add it, but there is no GEN5 or GEN6 controller support
>> added in dwc, isn't it best to add when that support is added and
>> tested.
>>
> 
> What is the guarantee that this part of the code will be updated once the
> capable controllers start showing up? I don't think there will be any issue in
> writing to these registers.

Let's not make assumptions about the spec of a cross-vendor mass-deployed IP

Konrad

