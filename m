Return-Path: <devicetree+bounces-196625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93640B067DF
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 22:43:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2C5B4E733F
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 20:42:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E74A254AEC;
	Tue, 15 Jul 2025 20:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k5Iwa94N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B37072615
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 20:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752612188; cv=none; b=BjMNsKo5vCnK+shMyqTPPlypdnNeycJABEDgv3t6wRbC8MI4JEGRhSzy0nZ5btJQeCNF3nqxkbN/wL3gC8TfTfYwdPQl6ACaFsc/F6JcCr2/sin8YzZnv3Wc8cYunxEeIu5KxgL2C1HK4cfzEA8xtkSbPrPnfdYPgcI715pkSWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752612188; c=relaxed/simple;
	bh=096GrYtNxo6MX6U8gE4TUzx3MesHCK40ZyzYd0x2VMU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QxwtiEZx/uz7CGWaaLnHzdelYkd1O7EXQl8JsT3UF1deFA87bQS/qvJrGwocOWuLVRGvRAuzeERDMTQc0JO5XM8Vtmau7aNMQ5KRBoclKyspVjZjRk15lQ0poBe+dNVV8ERRGb/Egel4Y0Ln2hnKLzLCRNyxRL/Zthj5lrYRArw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k5Iwa94N; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56FGDLPL024983
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 20:43:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fkdWocIkXBnxpO5dQBPXK4H2mvwJNbJbFXsendZvKaI=; b=k5Iwa94NWUInC8zZ
	BapKetQfFK6Yx+tx04cvoFX93fEYS/PzStxgNPA9P5fxHdPHJAAyJ8KoQ7MjcmnR
	URy6upAJF+q7DUraovzA4BjipFDQh6YgPKiSUmsL5YN4hYwkVgIhoVjsdjs0K6sz
	aCBy9vAd0ssVT50GuQVeJYDGkRuhMqz2GYP3fIVoCQWzpJKZmOe7lByhF7Uz0PiN
	BUI/XBbyeaJ6sDS8dBMkrSwxu6imp6g7MKljbxYyrsZwBIveW3KLGnEudJpxxc6V
	uoSYgBlinL1UYdPIfUaUwFEm8iJC0fWvYngvIxkF4KgfiNBPLPvxNdjw7cxcbT0X
	/k2xsw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w58ymdng-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 20:43:04 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2369dd58602so56279235ad.1
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 13:43:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752612183; x=1753216983;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fkdWocIkXBnxpO5dQBPXK4H2mvwJNbJbFXsendZvKaI=;
        b=r+XiL+nHOyP/qQ8dFnygGtXAx2z1I3nI11UGwGgGGNZ2tXUv4ZosKu0U3ZlkgQf/c2
         dYXVZ/dAvVMmr1vfoQL45zNLsyTdr595HQ8c4jukcEt0JPrNxM8Te7GqHHPVFWrZo7vo
         qc4kQYpYsaDFZM8QkUq/PrPybKcWDX7Jm48fv6oWsvvlc+HNMgBj/aeR9Tvto5c26c0w
         rJBO1W4D2LSpXtFscVmE4wxcK/FiVPAaUBKeoyeP/1IXSEOyfzJSqmdaE8QsDJhV2heH
         UMia3uIVq6ZqX027S/N9KSBq1oXFYbDuHMvpMz2KW6fFbPt5wRE6+kONsgO7CSvIVgfv
         XQNw==
X-Forwarded-Encrypted: i=1; AJvYcCUQmCfocoGFTAaCV1DB4S82hu/GCuBaVWDoJj4X2XHVNzmW1u7NyoE91lvzFi/jYhR0XgLn0m7jlfl7@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4/fHvQyHSSLgYJdUXlTeZ5K+8fh86ZH8yUrcp8LlAtUZiIbBf
	JyC19TTFqgIPNoA58wfmIy2eXjYTw+s2ExrHtP7wJxVia25tYU35kiLZoRy6YmhRil3Cb0bbFOw
	bNH33+lPvnidWtvPtxWDRW0S5U9DUlUVgzAmy3oZOAEbp5Iq54FDY4TwQLAW8qgzs
X-Gm-Gg: ASbGncsF0yNO4/gPdVYfXWYj1vtgDAuB2WoyT94glrXIlVJn1D+Bfm6nMKdbrVbS+AW
	Ho37JIsyBbO7KefuV/ZFpdsf4uXebPSMV5mDfT7V+TpvJDNDUY3BYxbt1MuyzUhCu20y31AW/d6
	rhv/Ocw8VA8o6uvzkiSgZoOL0VBFS+nlqat4+UZvfebcRfl8Pb4AgZoOnMgk2LvvxWySEFuijPD
	m03VgTsO7ClwReew/fNrKXp/yNPxtkv/2lI+NhFWFTtb2UMF1CUZ82ykaCpim8p1wfFQ0cHsAg+
	23BfUYYRawmYiFiF7MVMi0JIFLKVBwKhR4ndrT06ylL/MOr38aZldS2p6EI5MjzgW+C5YrcT44j
	GYsn406o=
X-Received: by 2002:a17:902:d2c5:b0:235:7c6:ebdb with SMTP id d9443c01a7336-23e2566b0bfmr2209135ad.10.1752612183431;
        Tue, 15 Jul 2025 13:43:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGIhbMmyIr7zVej/BKQltO0GntSzucFDQVsI2picZ5pOCxWjfJ0K47v2K6Z0XZyvBH35dVG/w==
X-Received: by 2002:a17:902:d2c5:b0:235:7c6:ebdb with SMTP id d9443c01a7336-23e2566b0bfmr2208645ad.10.1752612182871;
        Tue, 15 Jul 2025 13:43:02 -0700 (PDT)
Received: from [10.73.114.202] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31c9f2a2549sm31776a91.42.2025.07.15.13.43.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 13:43:02 -0700 (PDT)
Message-ID: <fae42c03-c58d-4ed6-8570-ae4b147b1d43@oss.qualcomm.com>
Date: Tue, 15 Jul 2025 13:43:00 -0700
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
References: <20250715181630.GA2469794@bhelgaas>
Content-Language: en-US
From: Mayank Rana <mayank.rana@oss.qualcomm.com>
In-Reply-To: <20250715181630.GA2469794@bhelgaas>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDE5MSBTYWx0ZWRfXxVmfEMAHMygm
 qks97zywvdjH+LMjvhDfMpXUT8PuqreKO5l7/bkE/Qm75kwHmZLboj3wimINXNMc1nrdZxXwNl3
 vh+M32dyDQmdEn7nis7hsN9RwZnKp4+gyLDeVXYKdggtqudxg+RAswGb54PxtrHp5Fw10YKfDd1
 /UX4Q5oi5ad11B849csop0jrYRZcpD1wpnYSFYsJrUbhDr0ucTmq1UYf6+oZIqUnEfpOOOk3xf5
 DrumNsLPUYr6DcetzrIAI/RfOjX0DH8zNTr0HO/WbTBgF7TVwc6W0zXZkiLoBgqrfQSPei8MPHa
 Vh+Ur638gzkRXn78CD8CbJd6eIInOaFFK8Mu5ytv/NbdkOSCzmW7lt/BHn/vpr9MrvQNdbM7rRr
 bjQhGdMeGirTdo258LCQdC4Td3u3h7TqeuRMJUIpQg170uxPF55I+ZKYIRPVl/SJM7BTvirt
X-Proofpoint-GUID: Kj4N3bHR_JXNu01eN0a4eTcGTPuFQ0YG
X-Proofpoint-ORIG-GUID: Kj4N3bHR_JXNu01eN0a4eTcGTPuFQ0YG
X-Authority-Analysis: v=2.4 cv=Or9Pyz/t c=1 sm=1 tr=0 ts=6876bd58 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=LFZAdqBXG_KN2Z8UtmoA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-15_05,2025-07-15_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 suspectscore=0 adultscore=0 spamscore=0 phishscore=0
 priorityscore=1501 lowpriorityscore=0 mlxlogscore=999 bulkscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507150191



On 7/15/2025 11:16 AM, Bjorn Helgaas wrote:
> On Mon, Jun 16, 2025 at 03:42:58PM -0700, Mayank Rana wrote:
>> Document the required configuration to enable the PCIe root complex on
>> SA8255p, which is managed by firmware using power-domain based handling
>> and configured as ECAM compliant.
>>
>> Signed-off-by: Mayank Rana <mayank.rana@oss.qualcomm.com>
>> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
>> ---
>>   .../bindings/pci/qcom,pcie-sa8255p.yaml       | 122 ++++++++++++++++++
>>   1 file changed, 122 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/pci/qcom,pcie-sa8255p.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8255p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8255p.yaml
>> new file mode 100644
>> index 000000000000..88c8f012708c
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8255p.yaml
>> @@ -0,0 +1,122 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/pci/qcom,pcie-sa8255p.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm SA8255p based firmware managed and ECAM compliant PCIe Root Complex
>> +
>> +maintainers:
>> +  - Bjorn Andersson <andersson@kernel.org>
>> +  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>> +
>> +description:
>> +  Qualcomm SA8255p SoC PCIe root complex controller is based on the Synopsys
>> +  DesignWare PCIe IP which is managed by firmware, and configured in ECAM mode.
>> +
>> +properties:
>> +  compatible:
>> +    const: qcom,pcie-sa8255p
>> +
>> +  reg:
>> +    description:
>> +      The Configuration Space base address and size, as accessed from the parent
>> +      bus. The base address corresponds to the first bus in the "bus-range"
>> +      property. If no "bus-range" is specified, this will be bus 0 (the
>> +      default).
> 
> Do you mind if I add "ECAM" to this description, e.g.,
>    The base address and size of the ECAM area for accessing PCI
>    Configuration Space, as accessed from the parent bus.
> 
> I think having the "ECAM" keyword would make this easier to grep for.
I agree that it helps clarify the intended usage. Please help with 
updating the description.

Regards,
Mayank



