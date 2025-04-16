Return-Path: <devicetree+bounces-167587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD28A8AEE7
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 06:20:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B5353189BC87
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 04:20:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0580227B95;
	Wed, 16 Apr 2025 04:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fm5ryo8V"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC0C3770B
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 04:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744777240; cv=none; b=MHvhB/HaFhfOr1VJxUsRP5K6DhUvbmWuEFkoPCY2S0qT53NWq+sTic/ZL3vcgOkdHkwY8J522ub1RXWUj6InzaU3Ve6MZoQxZOnS/EbwhfihvV/loJkXCkRiYr77wq+qW6v4A0ejgDx4yUawqPfyBv89hQuqqblukLA0kyFhsw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744777240; c=relaxed/simple;
	bh=tXmR0cR4n5/EQ5TiLRzAfwhoP22sqPXgh/RyMIWIAQg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OPIA4qdMT/byUPFGiEW6CNtuTiFJSmt7A1VIoId8ytwY6kSadcKRVD9FisLzk56OvxmrWM0LKvh19wIvCdLL4GSfl/DdfX//JtbRIrOqH9LV27uIsI1TWz4xGQDm0jfF0kw5vQkXGQt4H1aIBgisQ20tV53G3ia6YuOop0SsVTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fm5ryo8V; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53FIVFQ9025061
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 04:20:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A3SJhUrrW2R/NM5jANz8MFMOygPeYNF8sY+fVI30498=; b=Fm5ryo8V79Bc/T7x
	urHfhSLSE5jj8YvLrLo6bprP0K3W33iNTi3m/QTteRtAv7XaXuR8XKCICwpuGlnr
	w/CCgYafc6L4XPYmiW2Mgyvs0uUz67VSptWqR+D65Bc9cLvvuTfjz5ijr6Uy1zqL
	HzX7npARAkhnBp7Q3VfvrkuT7QOEsAamaiKk8y+MfRbvNImukpblhq7yU6nEvdcR
	QdtOeWo36Df8fAfZdCh0dWF162QtQkrPVmuXHj6NGQIZH+vrGwf1zxJLuf3wpSBn
	Cu/uR4Bppqbp9/eWKNHnQymC9OkmCy/OE+u+/h5qnc0FZjgI9W2ZIahNcS5CG+FA
	Qc/Nng==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yg8wj9h9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 04:20:37 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-af5156fbe79so6671446a12.1
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 21:20:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744777236; x=1745382036;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A3SJhUrrW2R/NM5jANz8MFMOygPeYNF8sY+fVI30498=;
        b=HcO003cP7Paay2tFbm159MoqA7p0AFsRAR/n8IOb/Y4Rc1F4N11V26jUhYXTHl9rqN
         Ubq+HNsiMJvKLbqfm7pzAvRjWvu3lMTTy64MbCb9VB3otJ1KTFBRlo4X3Qk295e+Y9X3
         Yyg+tXyIlmBEqGedQRvulOKh7RxB9kp8JaR3kF8vnp4ITeGff1ursewe5KP3RfTCGd2D
         T0a0Bt3XJdrWrNw+QvsLEy2eqkKIu+W0r06qKLDU5UiGIW2PugOFjKQ2g/mzg5IsiCvz
         idsxJ7iRYZ0OapJMvDMQRBkPwpxwB1iV3BC6p2u+J4NcsB15EBryG03rQILba2fTCUts
         wLHQ==
X-Forwarded-Encrypted: i=1; AJvYcCUiMiTyRQ1iQ8Laodv4/H3ahbV87L8MyeaxSXBhrNHa7H/QgsvolBF41GXmOvrRNdHQgqAoQ2BlGOMo@vger.kernel.org
X-Gm-Message-State: AOJu0YwP6qSQ8x83sCpoKQ/u5kAumfTSBWR+b0EbyMekn00o3ZAAmoHx
	WKuyi01vrXLRjBV0G69qW+WZrpY7n0PkGlsAkn8gSUxr53dXLgNokt5ActEvHHLpOyTl7bPMSJY
	gVkYZQDgb2xeGOtEwLNGHlbITxua3b5Iy0Qd/UfqzGUs2DJNdbFf3Ro7bXE5m
X-Gm-Gg: ASbGnctEDuR/KsDbLItiKbwAzoCHXbKxVltYANv1EF9AxabN6fO1KauxcxNxl6GWh59
	KE0DMmiTcSGwj3HDBPhKjDLuLlEoHzUYCq0NQob5J0i9E0z6c1i5wbhnNVjYQb7te8iWsUxbewW
	Dswc652FY5GVHM/U6DjVo2SafDICpCXqqfI3Zh66hZ2B/xjJ98QUp+ty6GGOeUO9ROV6byHHVLh
	SimhYgVYQWBDOxqd200xJ95/TJLetguiJ+hR6LBB3MkoWI2ZlhyR72uNDXo+Q54dd402P4MGQ8L
	DXZI6eX1xI8+AQOlFGYWAsiVcf10/SuToaaRaNhroQ==
X-Received: by 2002:a17:902:e542:b0:21f:f3d:d533 with SMTP id d9443c01a7336-22c358c542fmr6390925ad.2.1744777236507;
        Tue, 15 Apr 2025 21:20:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhq603yLBTxZ6FsgJBqgFJsSOxb1XyAdvqNveOVLBG6wfi+xrbAlmn2blW7Nn0vkxN+GL2Lw==
X-Received: by 2002:a17:902:e542:b0:21f:f3d:d533 with SMTP id d9443c01a7336-22c358c542fmr6390555ad.2.1744777236099;
        Tue, 15 Apr 2025 21:20:36 -0700 (PDT)
Received: from [10.92.199.136] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c33fe6c78sm3905105ad.225.2025.04.15.21.20.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 21:20:35 -0700 (PDT)
Message-ID: <ae90593f-9a43-74a5-bad8-09c61e1933ac@oss.qualcomm.com>
Date: Wed, 16 Apr 2025 09:50:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 4/9] PCI: dwc: Add host_start_link() &
 host_start_link() hooks for dwc glue drivers
Content-Language: en-US
To: Frank Li <Frank.li@nxp.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicnic.com,
        amitk@kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com,
        Dmitry Baryshkov <lumag@kernel.org>
References: <20250412-qps615_v4_1-v5-0-5b6a06132fec@oss.qualcomm.com>
 <20250412-qps615_v4_1-v5-4-5b6a06132fec@oss.qualcomm.com>
 <Z/6vyaNh1XGEkJ2R@lizhi-Precision-Tower-5810>
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <Z/6vyaNh1XGEkJ2R@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=E9TNpbdl c=1 sm=1 tr=0 ts=67ff3015 cx=c_pps a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=cbGetAF2pF-RjulI4vsA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: nQ-24WDbGfHrfyv_1sclXVkFMv_B7eXa
X-Proofpoint-GUID: nQ-24WDbGfHrfyv_1sclXVkFMv_B7eXa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_01,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 suspectscore=0 mlxlogscore=735 spamscore=0 priorityscore=1501
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160033



On 4/16/2025 12:43 AM, Frank Li wrote:
> On Sat, Apr 12, 2025 at 07:19:53AM +0530, Krishna Chaitanya Chundru wrote:
>> Add host_start_link() and host_stop_link() functions to dwc glue drivers to
>> register with start_link() and stop_link() of pci ops, allowing for better
>> control over the link initialization and shutdown process.
> 
> what's difference .host_start_link and .start_link ?
> 
> what's reason why need .host_start_link.
> 
> Frank
host_start_link are registered with new pci_ops which are added as part
of this series, whereas start_link() is dwc function op.
we use host_stop_link & host_start_link to stop link training from pci
pwrctrl driver before powering on PCIe endpoints/switch if required.

QCOM is trying to power up the switch, switch needs certain
configurations before link is up, If we power on the switch the link may
come up before link training we are stopping by using these function ops

we added these details in the PCI core patch 3/9 commit.

- Krishna Chaitanya.
>>
>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>> ---
>>   drivers/pci/controller/dwc/pcie-designware.h | 16 ++++++++++++++++
>>   1 file changed, 16 insertions(+)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
>> index 56aafdbcdacaff6b738800fb03ae60eb13c9a0f2..f3f520d65c92ed5ceae5b33f0055c719a9b60f0e 100644
>> --- a/drivers/pci/controller/dwc/pcie-designware.h
>> +++ b/drivers/pci/controller/dwc/pcie-designware.h
>> @@ -466,6 +466,8 @@ struct dw_pcie_ops {
>>   	enum dw_pcie_ltssm (*get_ltssm)(struct dw_pcie *pcie);
>>   	int	(*start_link)(struct dw_pcie *pcie);
>>   	void	(*stop_link)(struct dw_pcie *pcie);
>> +	int	(*host_start_link)(struct dw_pcie *pcie);
>> +	void	(*host_stop_link)(struct dw_pcie *pcie);
>>   };
>>
>>   struct debugfs_info {
>> @@ -720,6 +722,20 @@ static inline void dw_pcie_stop_link(struct dw_pcie *pci)
>>   		pci->ops->stop_link(pci);
>>   }
>>
>> +static inline int dw_pcie_host_start_link(struct dw_pcie *pci)
>> +{
>> +	if (pci->ops && pci->ops->host_start_link)
>> +		return pci->ops->host_start_link(pci);
>> +
>> +	return 0;
>> +}
>> +
>> +static inline void dw_pcie_host_stop_link(struct dw_pcie *pci)
>> +{
>> +	if (pci->ops && pci->ops->host_stop_link)
>> +		pci->ops->host_stop_link(pci);
>> +}
>> +
>>   static inline enum dw_pcie_ltssm dw_pcie_get_ltssm(struct dw_pcie *pci)
>>   {
>>   	u32 val;
>>
>> --
>> 2.34.1
>>

