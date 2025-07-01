Return-Path: <devicetree+bounces-191728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C644AF04B2
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 22:21:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1ED521C0746A
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 20:21:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B09E289357;
	Tue,  1 Jul 2025 20:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PVj8XoI0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 997432EE263
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 20:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751401296; cv=none; b=G9zUD0KmLfEDADSpklrQawpETc4H5hbTJwLjqG9WoqTcVXmRZuk7B9HdyHMs5UXL6ZcpBxcW9tzVuPxBcwyXQYBLH3MkhSqGiXZLhVYW1FkcWb/s0wYqHrSdse28h+pHeyOBteXOE260zkXpVAF8aKbM+0C5N9Icokkd5YvSfRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751401296; c=relaxed/simple;
	bh=ezE2n18Omi/MOjX73Sr3/tMK4T9hA/BPKdf80o00DBM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pCE+fe+kBvt8OaZ7ccJrZqa16YOupQzkxCPhS8U+uGGo/Ua0JzwkHXwNY9Bmpl4N9GxTDX3epLgAtPqlJtMzKRBpVZfMxFPawWXXLsh8Gl/GMC2uvuezD8m1cFiHLDPr9AW7jA26m70qNa5NBiyL5By2z97wcM27SNqv9prFDGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PVj8XoI0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 561K1Tap024893
	for <devicetree@vger.kernel.org>; Tue, 1 Jul 2025 20:21:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hUrytFkRXZ1kyGSNxdZDA+tX90rrT6JMS9+T22SMUsA=; b=PVj8XoI0Q3y0tW87
	zA5GLcA1bosb3F1naOB2mSl0UkwnoWIOAH7oWo0b5ZWFYIGH9fFhRbF4coGGhrYj
	TBSEIL/vR08M/xu5zEHP+KsCYHeCYEUkyq6uPvMM76SEcYDH9PZVOCxthegb+qEl
	sYHDi31K3jfsRvmc1Os4H+9O4EW6BKJOZ2/cKlr5G99nyW6r9bZOrmMgg0j1MRyB
	kNDh94BaD/jXg1qymIaTPuShELus0ZjdIeabw56bIFTJlvb07n0Ju0aKL9LyiXZU
	RjvyBlud113UDjsCzqn0pWbArd4lB0lCyx6tl0xHqntF6e9TWKeGZvzBpjWAHNQ/
	mtmVWA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j80222xm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 20:21:33 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-237e6963f70so89474065ad.2
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 13:21:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751401292; x=1752006092;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hUrytFkRXZ1kyGSNxdZDA+tX90rrT6JMS9+T22SMUsA=;
        b=gWEqHHTF4uJzy3pegF3fRxgIZl10kQ/UaTOAP0lTdOPUgzT48Ognt8j202YhVxzYwV
         nNaoJ6dfMYQLx8VtyufGVQIKORvMLy1Hhm908Bl1HZmbKcGSSmIkaQdnfZjL6JM+U0Oz
         PC09Xhjzr/msJI4fEasM8QdgRUjT68QxrugD59l9XnOUk+tme5SI4pK/I/G1Ay+Soe4r
         jW2uUAu6H4nUk4UAPT1jIHtUXjxYGMY6QT0SP9KinSdo9YJjjWe1dU61e9WzQIle4M/j
         q51zIOuJM35qSLbYnXH3HP3j41drKZjwTqvyK00+o3uQ5d1l54WNvX90wsNSlHHvQeYK
         8qJA==
X-Forwarded-Encrypted: i=1; AJvYcCXVJW0zeS7oxA6uPdbVPdxQX53S9hxBTKuYCsHW4DFgTQw56+GxWXcr4DDkY83YsrxmCar59O5Rr4G3@vger.kernel.org
X-Gm-Message-State: AOJu0YwyDA6mIbKyyWFtj/B/66YPnBEhyA1cNyXDR9KVwnonEF6U5ChF
	bM5+axxkJA/6kXhE1w+dS8Qsm0Dg75x70j03QDIT62YXQ5+abKw/ESSAf9q/XJn0kNG96wLTkWD
	b93Hmq3OeUKhbltPhJBJotGdbZzEYEdJvrjdOsyZ3no+qmSp0sU/nvcm5atW4HoFe
X-Gm-Gg: ASbGnctygHJ6HLYCanqpNRmK8EEz/V0/Krbtqfp47hVhKwSJ/yx5guKqQtqcywiZNGq
	VqKlQAEVBIKB1Tczd8N3WySHy4GUKpRESD5fFXCcXhomNYetE7hvRdZsehi1O9Yw0xQKwzj2ClV
	2yRuqsrPxbC4MOQOVKfpzF7ELyXoJDBxQ4DdyxyKes690pQWuVQ7id/gDpLVgpamf6vqjhMZxj3
	o/HA9Xmr3uznm/RoESL68/zhDSOMyHswYJ/FTpdgcSgB6t2Ov/LXmg3D8CRg5TUq2bV620yZD+Q
	AEeTxnzkVF+BQM9Vk7fN1xjTkZPYrIdD7KP4BtyIWc1VTCUIEYMC+EfKPuaFveCN
X-Received: by 2002:a17:902:ea0e:b0:236:363e:55d with SMTP id d9443c01a7336-23c6e591826mr752435ad.28.1751401291813;
        Tue, 01 Jul 2025 13:21:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFq2/qAA6kM0CeuXpCcxP+BXUf/kabRYb4GipX6TGcMwNAVDXbJ8LpM3G58LJeO9rQYMHePRA==
X-Received: by 2002:a17:902:ea0e:b0:236:363e:55d with SMTP id d9443c01a7336-23c6e591826mr752165ad.28.1751401291387;
        Tue, 01 Jul 2025 13:21:31 -0700 (PDT)
Received: from [10.73.112.69] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23acb2f39bdsm118879695ad.80.2025.07.01.13.21.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 13:21:30 -0700 (PDT)
Message-ID: <89ded76a-8bd7-43b5-932d-f139f4154320@oss.qualcomm.com>
Date: Tue, 1 Jul 2025 13:21:29 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/4] dt-bindings: PCI: qcom,pcie-sa8255p: Document ECAM
 compliant PCIe root complex
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: linux-pci@vger.kernel.org, will@kernel.org, lpieralisi@kernel.org,
        kw@linux.com, robh@kernel.org, bhelgaas@google.com,
        andersson@kernel.org, mani@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_ramkri@quicinc.com, quic_shazhuss@quicinc.com,
        quic_msarkar@quicinc.com, quic_nitegupt@quicinc.com
References: <20250701165257.GA1839070@bhelgaas>
Content-Language: en-US
From: Mayank Rana <mayank.rana@oss.qualcomm.com>
In-Reply-To: <20250701165257.GA1839070@bhelgaas>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: zI6qeR14ATK8aKZiWTcOq5xP8TPZuhZD
X-Authority-Analysis: v=2.4 cv=YPWfyQGx c=1 sm=1 tr=0 ts=6864434d cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=99n8J7Ytk5hhnKoTW6cA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: zI6qeR14ATK8aKZiWTcOq5xP8TPZuhZD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAxMDE0MiBTYWx0ZWRfX4DSPd+e+S1Kt
 650AmPqGwBSi2K/yMvqIrP2VpS8+yDt9IOVt+XzOz4Jx2jw6vUce5vIwB2YVewfc1O4PidUYIpo
 M7hgG8g8d3E6uF4iD0IlX1SM8/6oemDw1qSO3/kzID6E/H6QgU/AEjerAoq+UxDqf3FWj6iwYcj
 dNW0C7RpXxgRwQoJ1nlYatR8MZc39Gs4sqG234EdAL4oubKIiqOZ9erfFlEEswAqR0danVls5K0
 ofrIG40d/KOn4rFugFdrhvndaVN92qMCxW/PWHIQyCH67p46RYCX0y64siNviDu1HAKSZO6yp1+
 rcuxN/h/ueF/Frput/kGQmCoT/p/PKo/MWQQYVfEEX5GHNknKn2j72aQq1q731eY3MTOJ42Zbfs
 BkLulMgsroyyD/vVj6bDBX/Tw9XmKIz6XsThKe2iG5tvkwggCY+EURs/HWu44sSabq7Ucvva
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-01_02,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxlogscore=976 mlxscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507010142

Hi Bjorn

On 7/1/2025 9:52 AM, Bjorn Helgaas wrote:
> On Mon, Jun 16, 2025 at 03:42:58PM -0700, Mayank Rana wrote:
>> Document the required configuration to enable the PCIe root complex on
>> SA8255p, which is managed by firmware using power-domain based handling
>> and configured as ECAM compliant.
> 
>> +    soc {
>> +        #address-cells = <2>;
>> +        #size-cells = <2>;
>> +
>> +        pci@1c00000 {
>> +           compatible = "qcom,pcie-sa8255p";
>> +           reg = <0x4 0x00000000 0 0x10000000>;
>> +           device_type = "pci";
>> +           #address-cells = <3>;
>> +           #size-cells = <2>;
>> +           ranges = <0x02000000 0x0 0x40100000 0x0 0x40100000 0x0 0x1ff00000>,
>> +                    <0x43000000 0x4 0x10100000 0x4 0x10100000 0x0 0x40000000>;
>> +           bus-range = <0x00 0xff>;
>> +           dma-coherent;
>> +           linux,pci-domain = <0>;
>> ...
> 
>> +           pcie@0 {
>> +                   device_type = "pci";
>> +                   reg = <0x0 0x0 0x0 0x0 0x0>;
>> +                   bus-range = <0x01 0xff>;
> 
> This is a Root Port, right?  Why do we need bus-range here?  I assume
> that even without this, the PCI core can detect and manage the bus
> range using PCI_SECONDARY_BUS and PCI_SUBORDINATE_BUS.
On Qualcomm SOCs, root complex based root host bridge is connected to 
single PCIe bridge
with single root port. I have added bus-range based on discussion on 
this thread https://lore.kernel.org/all/20240321-pcie-qcom-bridge-dts-
2-0-1eb790c53e43@linaro.org/
 >> +                   #address-cells = <3>;>> + 
#size-cells = <2>;
>> +                   ranges;
>> +            };
>> +        };
>> +    };
>> -- 
>> 2.25.1
>>
Regards,
Mayank



