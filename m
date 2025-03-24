Return-Path: <devicetree+bounces-160361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A837A6E767
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 01:01:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 915EA1893CFD
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 00:00:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97D901F1905;
	Mon, 24 Mar 2025 23:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dTH8Zuea"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7BE1F1303
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 23:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742860797; cv=none; b=oGwnKXW3ienF3xTM+0tz3X5Afz+viTDPM0IGPRk0JvEWJUg1Tk3go86ar7ie0d9mlXWTNG0cx+eSU97DmBp/Va6lpGfRGbTZeF2DVp4246G0WmIVSLNcDZCDvGI9hFWDe4yJZmo60886ErV91jyVPPF6o/6RETcCb34L/u+AhhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742860797; c=relaxed/simple;
	bh=Gm4m/qnCBIk9eW6dtzI5t7WbQFiXoUSDnNsNWq2SfAY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h90l0s9OYSgqtoy7cj26OYqGO2R6cmvTd/6O7i0/1BjSPgqd8ZG0YWs1mWaQtK4ek6VEGwp3zmDpmABXihxL+zMKPJfoS8j/t4KXVZsnkfe8dbpSSelUklqjofT5JCXpnV3x0zExWdbRtoMK5P9LwlmCwRiR3HH1BjZZ35tCVk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dTH8Zuea; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52OIse7D004772
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 23:59:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GUUEA+5MifU8OXBHZIrL3fvNsszMlIyyIRJX6M6YE7o=; b=dTH8ZueaaFUskarn
	viCSwxxA4D7ngqKz7+AZYux1F8YEiaD5OhQVfVCqpux5oroveaO0UA2LUdQouJ+d
	4q/jPmejcHwzLTGMS5OUpBNOrQQDe1FSobdnkdK7H0H4y/jOha5dZMGAAx565Wz/
	g3UX7graKa2uj/CHOzDBXbyWuVbSy0ITBSeZKYJLflE7FxhZXro1ygML7EI76G2v
	sDGmxZFdB4Nuz2jbbZFWjNO8yRURJnK8IDallGpltG9UUyAClZgCRPVJU9FD4PjT
	OafEw0/mkNFagXbJ2PvTnq8m+AlxrIOc/TjuHM6IxG63saqpvqI8LH36xmTBUwm0
	iJ6kcw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45hm79p087-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 23:59:54 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c545ac340aso81029685a.1
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 16:59:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742860794; x=1743465594;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GUUEA+5MifU8OXBHZIrL3fvNsszMlIyyIRJX6M6YE7o=;
        b=ZcInKpZgWMobmkgalaO7eaY5UNj7fFjNk0uMNkTiuV2+TiMcqV43OTMgY9RLOsVIyL
         eZQk6QSW2l+Q/g+7ehBCbGyaS7oPSLwah6gVoR7RhTDCz6G5mq1ZQ6fNPcE1jR0LB9cn
         wPXxZ99fUD6tB8WZPCbdZljzgMWHMZV6T4EhtPZJw95tirLtSK7z5qqdt1Kul0pL7yv2
         YySDBnuLbGzHAAZ7B4dazPqkV/lmn6bvOr+EEsMP0kM3pN15u+4u6IXVlxVucwNuH+C/
         kxwo8dHTgkmr41Bcpj5kUsnVMKjUjjLxLi0Ems/TMNJJb11Z0rVwlEI9PwvFUgNnl+xr
         c3qg==
X-Forwarded-Encrypted: i=1; AJvYcCWQyUjyBgqDmAwyvrh9sbAjQM0cPlFCSs1Y0JugyWCrYgVxrxnRaM5YQBSCCivBc638t08ab/Sym7XC@vger.kernel.org
X-Gm-Message-State: AOJu0YztDONs2c+C9dLQujoWqtfxPGTsAJQ9oPximJ4QXlIEKWaXHaPp
	IrrLRvSGuSGvWTVQipTW6XHHYuObuevFGpAozVmWehdrCaYbFqWv9m5wf45yW071nbamM9FOwdm
	CKnWPrDjUXrXo9SgiJfLKWrRPm50hucNHKwLlScuycGJT8vxj5S/U0jL+2sIh
X-Gm-Gg: ASbGncs/rrlzthbcgQ+HQMjS0uvnynTrhLSW0xwQcSFTvmDZqgifA7s4d4SxupNqr/O
	k1l0+mSoXRrjv90ekFmW6N6y7AU4lanJEjU9yrN3kKsdUhmfjjAy+8JLHKkW7pG/ZVmcIjCB7mS
	xZPopNhPIYr6ZgeHWZNWHQYkCiB1uj1nKtaFwT4rqnrWdV9IZHfP7XHWNJD6PJayqPTlUkElaG4
	7GxU5IivBzJao3eWWyDnL9HmtWaPhG0dELuO0VJwVuVGaHMnYHBCaU9mWDPy8vVnH8RN6cRZISC
	fQODWMTWbOCB5N9Be5rq70hkuiHJ83FpRv2XVmxsRv9BWG3a7blZlZ0SrS+qZjutm2ZHyQ==
X-Received: by 2002:a05:620a:4482:b0:7c3:e399:3289 with SMTP id af79cd13be357-7c5ba1828cdmr656206485a.4.1742860793722;
        Mon, 24 Mar 2025 16:59:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEHj0ppr+7xuQb9OW7wF3Px5IbXShixiG+Mq4HkZUqXFMac+ctdDTnQWLijCrc5IDwfw8wZqw==
X-Received: by 2002:a05:620a:4482:b0:7c3:e399:3289 with SMTP id af79cd13be357-7c5ba1828cdmr656204785a.4.1742860793154;
        Mon, 24 Mar 2025 16:59:53 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef86e514sm749680066b.35.2025.03.24.16.59.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 16:59:51 -0700 (PDT)
Message-ID: <ba6cbf94-3e78-4c77-8c4f-908d3d90a1b1@oss.qualcomm.com>
Date: Tue, 25 Mar 2025 00:59:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: clock: qcom: Add CMN PLL support for
 IPQ5424 SoC
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Luo Jie <quic_luoj@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_kkumarcs@quicinc.com, quic_suruchia@quicinc.com,
        quic_pavir@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com
References: <20250321-qcom_ipq5424_cmnpll-v1-0-3ea8e5262da4@quicinc.com>
 <20250321-qcom_ipq5424_cmnpll-v1-1-3ea8e5262da4@quicinc.com>
 <55eada15-222e-4b97-a519-95b5e3aa7c23@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <55eada15-222e-4b97-a519-95b5e3aa7c23@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: JhplpAx0U-K8bJ5IL2lo-o8LnUXWYfnW
X-Proofpoint-ORIG-GUID: JhplpAx0U-K8bJ5IL2lo-o8LnUXWYfnW
X-Authority-Analysis: v=2.4 cv=IKYCChvG c=1 sm=1 tr=0 ts=67e1f1fa cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=BPsefSz62mVIWsVq_7wA:9 a=QEXdDO2ut3YA:10 a=RVmHIydaz68A:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-24_07,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 phishscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 spamscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503240164

On 3/25/25 12:57 AM, Konrad Dybcio wrote:
> On 3/21/25 1:49 PM, Luo Jie wrote:
>> The CMN PLL block in the IPQ5424 SoC takes 48 MHZ as the reference
>> input clock. The output clocks are the same as IPQ9574 SoC, except
>> for the clock rate of output clocks to PPE and NSS.
>>
>> Also, add macros for clock rates that are applicable specifically
>> only for IPQ5424.
>>
>> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
>> ---
>>  .../devicetree/bindings/clock/qcom,ipq9574-cmn-pll.yaml        |  1 +
>>  include/dt-bindings/clock/qcom,ipq-cmn-pll.h                   | 10 +++++++++-
>>  2 files changed, 10 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/clock/qcom,ipq9574-cmn-pll.yaml b/Documentation/devicetree/bindings/clock/qcom,ipq9574-cmn-pll.yaml
>> index f869b3739be8..bbaf896ae908 100644
>> --- a/Documentation/devicetree/bindings/clock/qcom,ipq9574-cmn-pll.yaml
>> +++ b/Documentation/devicetree/bindings/clock/qcom,ipq9574-cmn-pll.yaml
>> @@ -25,6 +25,7 @@ properties:
>>    compatible:
>>      enum:
>>        - qcom,ipq9574-cmn-pll
>> +      - qcom,ipq5424-cmn-pll
>>  
>>    reg:
>>      maxItems: 1
>> diff --git a/include/dt-bindings/clock/qcom,ipq-cmn-pll.h b/include/dt-bindings/clock/qcom,ipq-cmn-pll.h
>> index 936e92b3b62c..e30d57001c38 100644
>> --- a/include/dt-bindings/clock/qcom,ipq-cmn-pll.h
>> +++ b/include/dt-bindings/clock/qcom,ipq-cmn-pll.h
>> @@ -1,6 +1,6 @@
>>  /* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
>>  /*
>> - * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
>> + * Copyright (c) 2024-2025 Qualcomm Innovation Center, Inc. All rights reserved.
>>   */
>>  
>>  #ifndef _DT_BINDINGS_CLK_QCOM_IPQ_CMN_PLL_H
>> @@ -19,4 +19,12 @@
>>  #define ETH1_50MHZ_CLK			7
>>  #define ETH2_50MHZ_CLK			8
>>  #define ETH_25MHZ_CLK			9
>> +
>> +/*
>> + * The CMN PLL output clock rates that are specifically applicable for IPQ5424
>> + * SoC. For IPQ5424, the other output clocks and their rates are same as IPQ9574.
>> + */
>> +#define NSS_300MHZ_CLK			4
>> +#define PPE_375MHZ_CLK			5
> 
> Not a huge fan of this, such differences are only relevant to the driver
> part in my view - bindings only let a consumer reference a specific piece
> of hardware

Oh I the bindings are stepping into the frequency department already,
hmm.. Then I suppose it's fine if the dt-bindings maintainers don't have any
concerns

Konrad

