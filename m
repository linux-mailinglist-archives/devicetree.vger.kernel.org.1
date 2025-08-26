Return-Path: <devicetree+bounces-209300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE1AB35800
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 11:05:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 234527C0DB8
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 09:04:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A058520CCCA;
	Tue, 26 Aug 2025 09:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d236II26"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034A522E406
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 09:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756199034; cv=none; b=GMJw7StC7ORPXeevqajI7LiLEO2M5xrZeJZ2xo5gfDT+mDRfHuOKjzd6sySa45sNz6JMh6Uku3S2kxEXuj54pg4162BlI3WkiW0p+jKLi8cOZgzsuC9mJ967FQPQjCR3dWxieyPjZ3I6TPgXLes2LIy6dRha6ndFp7qh9NmxKvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756199034; c=relaxed/simple;
	bh=S7XfYWroMcqJr4J70jULvhjMOnxLbpFyYuwkU1J6IKc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JjeMmE2g4oFxctp3BM3uo4WAge4BoSLzKQDIQo6FyM0KCBz2bh6JjjVljpj7osw3JPZz2aPsC7vWw9WPigL/urJwtscSlkETsckX5bzAvt2KXIesfPcNKhbcUIplo0oQxhQJkEGe4mHbgcDDAe5TFZW3hQGFpn8rkVaP3rJhKOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d236II26; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q8lKEH015139
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 09:03:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3kvnIpYaIhAPbwlvi0dXbhefeFgbqaAlt1t2ncj8BLw=; b=d236II26bVcjXaPc
	JiW3QkPR1qy8gmwZssbR4IQsrKGBqufL3K6hWg9ecioUqjvgHLld/0M5Il1i88kJ
	TQ6c1OQa+tXjgt2XNnj/9bD+PnM7p40m6O6xYhiiTyxkEuKDTeq3JrLDyW5iDcvA
	MjfQUVCP3cpJwzy52HAsLeZ3o4gFg5EMrLCzaj4foQu/jO9dmu6AQ/F0l0pDhsIa
	ti3jz5WjrKPXqfI8Lo1RAmwJ5M2IOVu28GtS3bBWsvCQ1EfU7079ksl/2fbPUPzf
	sRyVrEhK0DU+GY3lmWo7JdE8dWHld5OAPPMsKjAUfUPruAw7s/rtqL5zd12bVzY1
	lqcjMg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5w2rant-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 09:03:52 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-325228e9bedso6985400a91.1
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 02:03:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756199031; x=1756803831;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3kvnIpYaIhAPbwlvi0dXbhefeFgbqaAlt1t2ncj8BLw=;
        b=gN/YFwhvwgrVMyRyWMA2GOvAutBrS6GC9kmeEMJeA0XEPm5Z1fxCXD91SipNva7LC5
         uB9ymutxyvA9q2KUe0VudQVqSqIIB6H93NQ2VdyNGUN4JqkMCVWYcnIGL+r9UPpjEAPA
         8R2E1TA88RL/lDrqrf7Mz62VUbyw8iUmNIrB6+lppZKSk/+k3yZ6TlHhVDUuWFohxGr5
         hjDvqFsHhZemXcFiEbe2Bwdl9EJKCGkphJPfCai/jnwG6kbcIom5gCucv1sePHCKJ8E/
         sqocj3HK4ltV/y3G0xcpONqCqEf7nUd9KKhwC5ImgusbXeG7fLWP04adYeUU/ja42jrU
         xkEA==
X-Forwarded-Encrypted: i=1; AJvYcCVQ/i4/mJa05FCWi1YlSiZ6q9sFGikdGxjIV0r6o197rMbgOTNgfxMYGyyTuJ6pjsTrZ1j3JTjWFTmM@vger.kernel.org
X-Gm-Message-State: AOJu0YxjO6m1fkLPiaK6Nnz+rXmtoUgXF6sQL0kS4r/7f2PjfXosY9hw
	5O4YjXq0+3b/nQhe6f6khEFJ4tWbxuM/qd0ZziOdsMFVYtSo3J0wbBL84aWNCGTVJauOokPLSnw
	Y3GAL7ZnVyRgel87Rp4RPOCuJLuw7sHOdQTgaNvxWI+KMoHsVlTtJ5JF9jvYXFsWM
X-Gm-Gg: ASbGnctgGJdzIiZ6NEUZwV4y0GrUtLWLQ5AyzIUbEtE9YgKHSdXchz0brgmtRbD2RuA
	edaJ3EuxMsH6h1TXQ8l9DIgNMqXFPp4AG3kBOO8JiXTw6H95KhIJIy657+tT5GFFuIWlMaQxeI8
	B3SZD9oH6nnS1EchK7feOA7TJipU5zH0u1SQ5DAQCfNBGl9VGrfX0XW12J2EO8PxrBgt2Owahdi
	2LBIKAyxjTatvMpu3XKFWeQ4TTSCXiD+AWHAoyKDSAmukIdrmRCfDM7S3Ve68y9UGAaRAtBH9ik
	R4dkrkefTOfAZ/ZoX7tA/orruPSxMPlVrvi/vH7thlYdWXUnaXECsZ5yRsWbLUeMqo3Q4LWF
X-Received: by 2002:a17:90b:37d0:b0:325:6d98:dfc with SMTP id 98e67ed59e1d1-3256d98121dmr11898093a91.14.1756199031272;
        Tue, 26 Aug 2025 02:03:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGa938tockH71GPIpyoO592wnzyXoNF3Ptho2VIjZN7GrxlXvdRpZ4Fvj3uY5yE/wnOsjtSbg==
X-Received: by 2002:a17:90b:37d0:b0:325:6d98:dfc with SMTP id 98e67ed59e1d1-3256d98121dmr11898041a91.14.1756199030665;
        Tue, 26 Aug 2025 02:03:50 -0700 (PDT)
Received: from [10.92.199.10] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-771f045b687sm2926609b3a.109.2025.08.26.02.03.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Aug 2025 02:03:50 -0700 (PDT)
Message-ID: <e2d23d22-de22-47ee-b715-e7b6c36976b1@oss.qualcomm.com>
Date: Tue, 26 Aug 2025 14:33:44 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] PCI: qcom: Restrict port parsing only to pci child
 nodes
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com
References: <20250826-pakala-v2-0-74f1f60676c6@oss.qualcomm.com>
 <20250826-pakala-v2-3-74f1f60676c6@oss.qualcomm.com>
 <4583bf66-737d-4029-8f14-ce6d6a75def6@kernel.org>
 <0c732ac6-2d1a-4341-94d4-dc6734bfb959@kernel.org>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <0c732ac6-2d1a-4341-94d4-dc6734bfb959@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Z/vsHGRA c=1 sm=1 tr=0 ts=68ad7878 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=vYAcZcmFI8d52SuQJuAA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX9qJAdMhAx77e
 454VMdyUi2bARRKY1FSFkW255bTjP4QDiCrYzjvgYV/4NPY54qpvWm5F/Q/Id2CAq3FOO5pEduS
 NwNfNu5ypp/JT0nngLKrlGGnCTlfh1UFXa5fx+CYJPd1zlv3iIDyBu2UJOPYAu6zoP313T2FwPx
 h7D0fcxBhkOjmvozVea9XvASuVsjnSvDi4T09y9n5ejZUcSGg+zMj9IoHLW2fOThLMRg4D1fofQ
 Vcoqs/PhCdoZQdlZPFahSfNxxM+mSVzzZIbIgqH/dqdpFmL1Um2zsuW+/1TZ8Ejp9s3xBVKMn9U
 +h52z6Iavqhj6LQCbkaKOgopd3BpZ3SQxHgcxfs2Ixs5GjkvVvSO76lkLsZriIRgpyn4+zCtgXR
 bu8mcOcz
X-Proofpoint-GUID: EJzKHv_tt1JUt2QQQTZ3UuEDp1XusT7c
X-Proofpoint-ORIG-GUID: EJzKHv_tt1JUt2QQQTZ3UuEDp1XusT7c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 phishscore=0 clxscore=1015
 suspectscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033



On 8/26/2025 2:02 PM, Krzysztof Kozlowski wrote:
> On 26/08/2025 10:27, Krzysztof Kozlowski wrote:
>> On 26/08/2025 07:18, Krishna Chaitanya Chundru wrote:
>>> The qcom_pcie_parse_ports() function currently iterates over all available
>>> child nodes of the PCIe controller's device tree node. This can lead to
>>> attempts to parse unrelated nodes like OPP nodes, resulting in unnecessary
>>> errors or misconfiguration.
>>>
>>> Restrict the parsing logic to only consider child nodes named "pcie" or
>>> "pci", which are the expected node names for PCIe ports.
>>>
>>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>>> ---
>>>   drivers/pci/controller/dwc/pcie-qcom.c | 2 ++
>>>   1 file changed, 2 insertions(+)
>>>
>>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>>> index 294babe1816e4d0c2b2343fe22d89af72afcd6cd..5dbdb69fbdd1b9b78a3ebba3cd50d78168f2d595 100644
>>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>>> @@ -1740,6 +1740,8 @@ static int qcom_pcie_parse_ports(struct qcom_pcie *pcie)
>>>   	int ret = -ENOENT;
>>>   
>>>   	for_each_available_child_of_node_scoped(dev->of_node, of_port) {
>>> +		if (!(of_node_name_eq(of_port, "pcie") || of_node_name_eq(of_port, "pci")))
>>
>>
>> Huh? Where is this ABI documented?
> 
> I see it actually might be documented, but you did not mention it at
> all. I doubt you even checked.
> 
> Please reference exactly where is the ABI, so reviewing will be easier.
> 
> I still think though that it is wrong - we don't want device node names
> to be the ABI if we already have compatibles and the children here
> should have them, right?
I intended to check for device_type to be pci, my mistake I went with
the node name, I will update the patch with this logic

if (!of_node_is_type(np, "pci"))
	continue

Thanks for reviewing it.

- Krishna Chaitanya.

> Best regards,
> Krzysztof

