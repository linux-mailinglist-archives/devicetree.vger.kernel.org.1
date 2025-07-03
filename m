Return-Path: <devicetree+bounces-192400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE75AF6912
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 06:18:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC8004E813C
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 04:18:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B251E28D8F4;
	Thu,  3 Jul 2025 04:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ODOEFZtG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F18428A705
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 04:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751516308; cv=none; b=NMrRsCFE2gbUIgItQFEuBdmoVKFYDxuCvrND03anLIBMb+EyJo4K3qnUTGDdnmOAuw/dVg4gxCQmVSH7OVi/YqKyGdSOeJt4cgSFp2BJjfiklUPxYe02vdOUz1RpWC9YNxCbyq4EQzO88l3/FzVK4uzrDTyWqJiv7QSXhT0DznI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751516308; c=relaxed/simple;
	bh=yYuF9F6UXPe1+nRemOM3FS1DclLed2FkVUesNJnZsl4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=paijBh2Gtxygc+6X9VrvohHhFi71Z0ZGzETmyOHaiGdvyxap6jZx8AiNYAEO5CV51D5BpVK4lGHJdzgCr7gzV8SqOSVm7casUHvOO8mAs28jmwqJnYlelVRHdu50inpZhhvAphxyxXuRI3HWpkMPhpvnAXalgYQCZ11sgiT2qDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ODOEFZtG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 562KHs9e020148
	for <devicetree@vger.kernel.org>; Thu, 3 Jul 2025 04:18:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1NaW9HsleXJDnHysTKiBKa5wP27JduvuH7fRxzKY+H4=; b=ODOEFZtG4zyejscx
	uKOWP/fCjR/RvatpjE9PJ8m9hu75uZzUGzlmjrt7I+9ONy0ISBcnGDl6sktSwpRK
	fgpznk2h74l38h8CZ40GXIGP8FAHa/fRMyMyD8GXrfbUeilT3urXKEAhFM61Qns0
	GGHnJcpCjNjKTid91ThxBJo45j8KKLFGjlak0QF3MDsrprC+pPsR6qApWbSnwc0A
	u8UXqLfV8ST6tzvy5udKXHnqkzBAr7azkYm2RjOPyIicfUlOpoCKsGRhVpHVxRsl
	5/9HtbZo1IHMtsG45DUYRTZDvqeQmKHLFAnGHiE+YI7s6RpnoFYvTZv7JVlqrKfT
	TcOzhA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47mhxn5ncu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 04:18:25 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-237e6963f70so113661015ad.2
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 21:18:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751516304; x=1752121104;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1NaW9HsleXJDnHysTKiBKa5wP27JduvuH7fRxzKY+H4=;
        b=Ba4URZjW+1YFcymV2GFHWyMHnXiM8Zb2QoAdeHJ8O7UD1yo8SqRGwoyG7um6h++vCN
         mSJOgaQFrq117dFS0BxhV7amqeg66Zu35emRZ2gRBLRrg/iPYNf+KZJgpnxM6PXqp19N
         rJwodAOxdylyEMSWb7N3YHhUcSmlyxipSzSkLh0tXGtw5L6z0E9aGhAhFVudU45UIEKA
         DmYskDD5iA1VaVsDliC8XoWgTUS7RaeA80sPij2qirPIL7zSJP6FNsTQ7C4aX8loMYGp
         yUcOTTC5ql17kVWKAKZMSVAJUvipASo9S+OFHrstY2ijXF6uguGAs2jBnv+dyocNs2fY
         xPwQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+IKNoHffdf0qUdPMfLtWqBJCJw8IzzxgRPi1318oAswI2G2BRtAJfKgL5Vde+eQBJYfzml4vUSY2C@vger.kernel.org
X-Gm-Message-State: AOJu0YzKEmHGlLV4Wf+xw3oHXOtoW8Bz0rIkUuJ3FvD5sY6azki06FXZ
	4eJU63E55jY6kA7fUCo1GcadyWD4/thsY/YDtJJmw+kto7sO6ydNhKEhiyr9DH5lobB5Sh0Pe1h
	05apbGhae75r/To83i3T3tasjELpRZCyTFOhF/hJQmN9HYwRnfUhRVs7tdp4e4PQd
X-Gm-Gg: ASbGncvqSs7ORpiZlas1mm/MbSmvwM3DkWvFeSXaM1WeNZZU37DMobs5DiAVVsIUjlN
	okjpnx/ncUnrUbutzE7+X6bZJ6bblTz0h3zKjcSTNI5nzyQW6+kuAnJo8RlAm095MElY5Onl7cj
	wpLH7leuNzTlIRlslK6S0ARj4+Hgzi/FyC4cNxTp43kDyM4xGl4nj5lp/KY7j4IF8A36C4+jqQZ
	yzVZdyrOIFkp0o2o7cF3j8VUCxwDmPxBigh+LPMv2eHxud1C7KKHRaLqo0R5uurpIiAW5geSxup
	7efTMT6PQ0LR1GCH0FFb5FewDc2cC2Ot4CtOW1bLfoWgxOG0FQGI
X-Received: by 2002:a17:902:ea0d:b0:23c:6cc2:feb9 with SMTP id d9443c01a7336-23c6e5d52ffmr79875435ad.45.1751516304625;
        Wed, 02 Jul 2025 21:18:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEiJQOQ3rj9Z3Ib0vpUq3Vmcwr9EZOVs8di8axva0PyX0K2M8GE7BrJgKKE40SijB5rZCol7A==
X-Received: by 2002:a17:902:ea0d:b0:23c:6cc2:feb9 with SMTP id d9443c01a7336-23c6e5d52ffmr79875065ad.45.1751516304213;
        Wed, 02 Jul 2025 21:18:24 -0700 (PDT)
Received: from [10.218.37.122] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23acb2e3b40sm148262145ad.26.2025.07.02.21.18.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jul 2025 21:18:23 -0700 (PDT)
Message-ID: <cbf32980-8608-42ba-99c7-deed56afae32@oss.qualcomm.com>
Date: Thu, 3 Jul 2025 09:48:17 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] PCI: qcom: Add support for multi-root port
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com
References: <20250702-perst-v5-0-920b3d1f6ee1@qti.qualcomm.com>
 <20250702-perst-v5-2-920b3d1f6ee1@qti.qualcomm.com>
 <ws2kdznvbrvuvb6k4jov5cd4qzvadeaffjqgeso7u72stormlg@2ffiexejkrk6>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <ws2kdznvbrvuvb6k4jov5cd4qzvadeaffjqgeso7u72stormlg@2ffiexejkrk6>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAzMDAzMSBTYWx0ZWRfXzWbz5kb+8Wui
 vCJZLxDiz1kVeZ2WyA1zDBtGDK+Nxkt3sG88hvTpjAGcBKEXLA66Aqfl2LPPxDi1VITk0CdVDtp
 w4QDYREJtx6SXELwhYH78kkR930EXXaeZ7ni1NPmyct23kr4O2CmRU1QdHTFngph+MjgxmHqVzv
 fDQGK5hATwQphn9zD9W/Yadhz3VsQbsGcR97epYqbc4FA9ZI0VYT+XCfMpXLGRjJgZemh3B/VXr
 lU0OiOIykiHIudobdW6VRZUQYEOEUQ0pUf2s0siMB+FHU+URUV8gSHkte/UF+n0UVoMuetJdRUs
 k9ot75U57DBzAtyIBaNWFyfKABhq8aBXSw1aPcouDNjkQSU7fGS6d3U8eDcStrxhdtdw0VgvghH
 aIuD3GbRsOpYzW8xZsWVMyH84RNa5gcmRd3JMkD1QPNHT9kIOGsNG+CLIFyRL0I5muFSBVpb
X-Authority-Analysis: v=2.4 cv=EbvIQOmC c=1 sm=1 tr=0 ts=68660491 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=elFezDTcsRQGgYhLSLwA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: Qcb-L2aXyowWb_VNh0Pe8S4PRC1BEyP2
X-Proofpoint-GUID: Qcb-L2aXyowWb_VNh0Pe8S4PRC1BEyP2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-03_01,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxscore=0 priorityscore=1501 mlxlogscore=999 lowpriorityscore=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507030031



On 7/2/2025 9:03 PM, Manivannan Sadhasivam wrote:
> On Wed, Jul 02, 2025 at 04:50:42PM GMT, Krishna Chaitanya Chundru wrote:
> 
> [...]
> 
>> -	ret = phy_init(pcie->phy);
>> -	if (ret)
>> -		goto err_pm_runtime_put;
>> +	for_each_available_child_of_node(dev->of_node, of_port) {
>> +		ret = qcom_pcie_parse_port(pcie, of_port);
>> +		of_node_put(of_port);
>> +		if (ret) {
>> +			if (ret != -ENOENT) {
>> +				dev_err_probe(pci->dev, ret,
>> +					      "Failed to parse port nodes %d\n",
>> +					      ret);
>> +				goto err_port_del;
>> +			}
>> +			break;
>> +		}
>> +	}
>> +
>> +	/*
>> +	 * In the case of properties not populated in root port, fallback to the
>> +	 * legacy method of parsing the host bridge node. This is to maintain DT
>> +	 * backwards compatibility.
>> +	 */
>> +	if (ret) {
>> +		pcie->phy = devm_phy_optional_get(dev, "pciephy");
>> +		if (IS_ERR(pcie->phy)) {
>> +			ret = PTR_ERR(pcie->phy);
>> +			goto err_pm_runtime_put;
> 
> Shouldn't this and below be err_port_del?
> 
This is a legacy way of parsing property, if the execution
comes here means the port parsing has failed and ports are not created.
so err_port_del will not have any effect.

- Krishna Chaitanya.
> - Mani
> 

