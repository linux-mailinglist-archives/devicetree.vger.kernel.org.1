Return-Path: <devicetree+bounces-209230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 20638B35481
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 08:25:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 02A476878BA
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 06:24:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0CB82F5336;
	Tue, 26 Aug 2025 06:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FufYbW21"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033DB2F1FD8
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 06:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756189453; cv=none; b=Br4D2mQhLa6lPJ4cN56LhlmPUQWS5gzoFkMBYG9k1U4/nVyyGrvhYisp4fAmuRN2gGx4CPb4B4fI5czs1/LVBSwRDAKLbyqqzacCyTgNrjQENZlmdqoL798wmUUXFB1KW5aeRLrA9qoB072IfJNgq5HMbGasKPkNeNvhDwSJicw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756189453; c=relaxed/simple;
	bh=ul90Ca6MD3k2RmH1jBXkn9THRXThzKvep5Dh7WNSVXo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hiO2jdjMNClmv9uqNk0CXIYKxU3rcZbNRh6J6LaxDhL+c0yzLjnNN4orTh21T83iIRcGhF0sRSTERV+dLd9L15pUklZKivPhHcgN8mgS8K9LpNbNEY9OkgaGbiwwI1mLj4S3lfoYAM8QJ7lG3U4zL+utacSiRzViqFd82am7ITk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FufYbW21; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q0rr7B002835
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 06:24:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aP57du5hI5dY/ksSUGXf2FChqaV+/pIdZ8ikNR5OOB4=; b=FufYbW21/Z4Nxji7
	s7cmCrjLiJ3DMReKZ9VFLLWTkvEcUuPPAFCj/JNLILg70oAgWKnwrsEqQzPgPAsb
	X5tmvr/D39rsUP3kJjnybP+xIzalZKyxxsOrolzwVA8gfiKKpH6JayWVPtzcNqbh
	u52IKh3dbNTe9Ub/MgLF4OKbIYEUNy/14xlerCZLvZbvngMAYw+foYTbbExKJQvi
	qv0Jx1rD4QhdhqQTDowmPLuKKO4OaDWytjcD6nUKVpE/W/ope0TyZajXyds/hSk5
	3fEHkJXj5ee7PhqANeqsqyuWG7QmNvXiuKrpWbUCFGqDD6BQ9N6HVVlCR/Ru5Wl3
	rAxkig==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48rtpet1mk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 06:24:10 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-325e31cecd8so1339882a91.3
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 23:24:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756189449; x=1756794249;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aP57du5hI5dY/ksSUGXf2FChqaV+/pIdZ8ikNR5OOB4=;
        b=jKrtU9tdE7GopE+YD25Bvf368568TIUO3SQaEZYTfiPZf3dz95SYpPNTfuZ+N7gBMs
         z4U8u79T7Edojo0627S7f3asA/wwfIpiZnXOx2rC6F2zJx2Jlnnq4i3HK7+pRbd/JjHq
         m6Pm4LUm8TPBRINJDS6a8bu7daF8FoKXQPB2lLUszX6cKhBgvq+9rOhRd1JP0FtSxLAE
         kXL4aGu0I53lJh8GkT0YecL3f9cdU/0X8M/3LGdzJMjuTM7T54l7Zkh6yu5kI1oViCC5
         mRADiPLgMnIZGggOEqJzrKmgbJz8l4MUz+aiLSVbfHB5/tfGRA9zmpXljjC6DTD6nlbv
         0jag==
X-Forwarded-Encrypted: i=1; AJvYcCVOPs53RP0PJVQbQsjFvQDD2xvTkVqYWjhsbMIH1svH1DVO0DRH0qLTF2xxxIS3jZeHSbwurAydzSyu@vger.kernel.org
X-Gm-Message-State: AOJu0YxmW80boiytByZlrpyAKUmU3qJ330E82K33yofSiceD7L1XctY8
	3+rTnomSjdHdGVo4zVPaCuO7bkMB00CbXqm/JcUm2TU2CCOvEHgOgRe3ro4ppyDUnmTSWtFIFyM
	/9OKjg34FL6MKh7SFYLMr5oRN6HPXz5YSXPcJ0f5IDk1/GEfwDigJ2RSNdci6rM5hntxnkQLS
X-Gm-Gg: ASbGnctGalTfnHZdvVB7nK9fog0g0IQGnVQ6JtsGhaufrSgySdz4BYaEaBhOFNI5fN0
	xHUNfaKROoQ/MxkTgD4NlS1fTUJ0sZshCXxdq/HRNuo1hE0ICMPxdwosDIE1uviuvw2+NmbteIK
	Y878lgzMw4RFNf0mGTIrNnF5vf7UZp+Jzru5qWwuIswAewmQJczt1nelYwNTvaa2o+euSs6trXE
	dMpdtKKNoMQ3CXzJvQ6WgmIAm+iHoz+mSKk5HOeBOKcXJIvIbFRABwJlhSjiVTl767GZYOpmKrC
	0coiwpvAhxEw6kDfflJh0/dc3/JWnshMwelgFOLo7cNCI/faFE9XW/DWLByjvN1q4jnM/hVq
X-Received: by 2002:a17:90b:2f47:b0:321:87fa:e1ec with SMTP id 98e67ed59e1d1-32515ef197cmr18057508a91.34.1756189449196;
        Mon, 25 Aug 2025 23:24:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7DCRIKcIriYxv1vDQ4/mgZOlve2e/tBHGMXP/jORooseUlG1Jd2+iZHB/A+lalVnxpwBTHA==
X-Received: by 2002:a17:90b:2f47:b0:321:87fa:e1ec with SMTP id 98e67ed59e1d1-32515ef197cmr18057469a91.34.1756189448603;
        Mon, 25 Aug 2025 23:24:08 -0700 (PDT)
Received: from [10.92.199.10] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3254ae761casm8785891a91.1.2025.08.25.23.24.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Aug 2025 23:24:08 -0700 (PDT)
Message-ID: <65755189-09e0-44f3-98d6-94e44e9b1dca@oss.qualcomm.com>
Date: Tue, 26 Aug 2025 11:54:00 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] PCI: qcom: Restrict port parsing only to pci child
 nodes
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
References: <20250826-pakala-v2-0-74f1f60676c6@oss.qualcomm.com>
 <20250826-pakala-v2-3-74f1f60676c6@oss.qualcomm.com>
 <rurdrz3buvb7paqgjjr7ethzvaeyvylezexcwshpj73xf7yeec@i52bla6r5tx7>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <rurdrz3buvb7paqgjjr7ethzvaeyvylezexcwshpj73xf7yeec@i52bla6r5tx7>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Bdx1eOfAwWnaFVguLsK-0FgX8ypE9VLd
X-Proofpoint-ORIG-GUID: Bdx1eOfAwWnaFVguLsK-0FgX8ypE9VLd
X-Authority-Analysis: v=2.4 cv=Hd8UTjE8 c=1 sm=1 tr=0 ts=68ad530a cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=P-IC7800AAAA:8 a=EUspDBNiAAAA:8
 a=Mpemr54xhKQ9MbVj_C0A:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI1MDE0MiBTYWx0ZWRfX+7bDFx90hM2Q
 LUPFujXDbkoBSfOq8QCKJmES/1w4HPg3Q+dDDNtdcAWSta56jw0gRoJYoOzHB6PcI6LS47NZ3Wm
 jbAo20aIT7EpWGQn6VflXX2p3FGtlx72Ktd1sOHko+6tZ2zc4WOxb4S6EGE0bGFmF0JsqeAvw06
 cfqECDOOFOv10PhEE5rTZ0TxgolrLRWy1u/uOrB7vFq+c9xqwFBZ9r25x2L3rDG4y51a1BfgC7S
 ber8Sm8e52u8nX1ZCQiODyYIWGN/UUfEroDn9Mv3CJP7AyuEiAyRaUD5HolCMnkqEglx1sjTuOF
 y9mLr34WUVG9wwj7JSuq8993yngDut5xYbkIOZm5KmYj/eNX05nDdrNBhn9Nz7/knxtP6yZjVsz
 s71xjPSB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508250142



On 8/26/2025 11:47 AM, Manivannan Sadhasivam wrote:
> On Tue, Aug 26, 2025 at 10:48:19AM GMT, Krishna Chaitanya Chundru wrote:
>> The qcom_pcie_parse_ports() function currently iterates over all available
>> child nodes of the PCIe controller's device tree node. This can lead to
>> attempts to parse unrelated nodes like OPP nodes, resulting in unnecessary
>> errors or misconfiguration.
>>
> 
> What errors? Errors you are seeing on your setup or you envision?
we see driver is searching for reset in OPP node as it is not able to
find it is falling to legacy way. where there is no phy nodes defined in
the controller node probe is failling. I will add this in commit text.
> 
>> Restrict the parsing logic to only consider child nodes named "pcie" or
>> "pci", which are the expected node names for PCIe ports.
>>
>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> 
> Since this is a fix, 'Fixes' tag is needed.
> 
ack.
>> ---
>>   drivers/pci/controller/dwc/pcie-qcom.c | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>> index 294babe1816e4d0c2b2343fe22d89af72afcd6cd..5dbdb69fbdd1b9b78a3ebba3cd50d78168f2d595 100644
>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>> @@ -1740,6 +1740,8 @@ static int qcom_pcie_parse_ports(struct qcom_pcie *pcie)
>>   	int ret = -ENOENT;
>>   
>>   	for_each_available_child_of_node_scoped(dev->of_node, of_port) {
>> +		if (!(of_node_name_eq(of_port, "pcie") || of_node_name_eq(of_port, "pci")))
> 
> May I know which platform has 'pci' as the node name for the bridge node? AFAIK,
> all platforms defining bridge nodes have 'pcie' as the node name.
>
I see most of the qcom platforms are using pci only. for reference i see
it  in sm8650[1] & sm8550.

[1] 
https://elixir.bootlin.com/linux/v6.16.3/source/arch/arm64/boot/dts/qcom/sm8650.dtsi#L3699

- Krishna Chaitanya.
> - Mani
> 

