Return-Path: <devicetree+bounces-125724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2BE9DF072
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 14:00:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8699AB2120E
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 13:00:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22042154456;
	Sat, 30 Nov 2024 13:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DTT+yJNZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AADAB43179
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 13:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732971626; cv=none; b=Tjhm/mUxgwDCbyddYTkMDMNFQ5arMZbFSnKH+JManPvOmmqCivwUce2QJWnTMNySfGLlylQOTWe2ihyhG/gnzlSbUot0J63usSNU6JPPGF7y9XZFjKW7KT7KcljEf4g1++PC8bzmmOXL6iiFgyoK/6MSwcAKqBKbgEQQ0qWYPqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732971626; c=relaxed/simple;
	bh=97tDQuHNO9LuLz+RmuMlUWuEgh7vYWq32z9GJcjyHDo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Slnit3QCHBRgsO7V8FowkJAZ0XQGRveLfuvHmXRSjT0u7EaNhNgoKftAXHVn7ECn8VdtfrSU/yzROMrTMDi6t4R8qNCckO+gQuHWlRN76wZdA9UK4iVYchD1dd8fhkWrc8yoiBEbKATEEwZ4GBrdOLgREd+Ps+Okkb2VYvv1Am4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DTT+yJNZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AUBRm2w005703
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 13:00:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LJwXGuCzJTfBcId8cVd2u5j7Q362gTPO88ek3lJ1eX0=; b=DTT+yJNZOEUEWrgF
	pcTwEJRD3RVDQyXVr+62C7XzDOWf1AeR5Sv2xAAmoWZedlSOE8BGvagtgWFwApKS
	dh5yRMwfN8mOsa3G+1YZmID8PrBLg2z30x9ZxRfLNtDRbA2mAg9J7ZfUN4BNqK7c
	BKrxhTEdkX3J5U3sR6KZRzngQRWo4CKYQC+uB6PP4JstsR63Iw6fTxQXsv4HxoEX
	khwZKK/un1HLpeYStXAiQc14A/99rU0LSc01rdu5NLFDpDietezkUBFIhwj5oH+0
	aYWq6rGD2qawkeopyQxZZmFJ2sdn1Q9urzAmf8zSqpxwLZt8UuZac1uUMU4A9jg0
	ecLfCQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437v07gmkn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 13:00:23 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d881a3e466so3480916d6.3
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 05:00:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732971622; x=1733576422;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LJwXGuCzJTfBcId8cVd2u5j7Q362gTPO88ek3lJ1eX0=;
        b=Nffdc2blRuKS77Nz74AzVyxzraBDATuaXzGb18rZy2lb+OcBbRKkrTPxVAecdcQHQv
         JbtzPl66w1ky6bG+RPTg8rUIdh+aOO3oU6kbmw1rXbZkDy4dDy9Dg+ESMnV6XJ3e7i7U
         NwpAwNB7JpRHNskdOpBPn+tbL++d/zTG3YhXx7PrXFjjNMTgdNkJXdu57oSAx1LLpmrz
         ZMdzFPdExKpAfBxXgUGwhtmM58JnZ26KWIIQTmsWctEmu7GpHfPBGBVmKQmaA3mHFRoQ
         mFwMbpgN6IUndza6o1vGBBLEzqwycuTjQI5XRghheZolDoib5rzVuAkLXMzQ7H3NBQmI
         MULA==
X-Forwarded-Encrypted: i=1; AJvYcCUPb7kSGqCdRujZ965rqOi+m25rZwskajDdlEtcjBqwbip+O/UgL+yDN0VOn0fQBigVMRdMSJDHyWAa@vger.kernel.org
X-Gm-Message-State: AOJu0YwPTX6Uyy/fEIRQ3ElUl+LH/IHM+POmmLrDhsLI7AkeoAkDlwZW
	UTH+2ycfBrwidJPwfUkEGf0rGH2fnFquMeZGx+5jgVjr21yy5lq/zdHeEqgIjFGFF18cTMPNwiv
	XGDf0LYSSweVkP4doVe5Px9NLMqeCsHHFm5lrv+Mlj0PvHw05L9JiybUH3PTc
X-Gm-Gg: ASbGncvn5Ck34LpJEZF8nw0H+kXBG71du/p7WGOggtiv75R9KhOd+ULwerBRIp+r+LO
	AhuUAhYSiIq7Iv4jlFwIy//IXG+g7gL+GWvMJqzHbEixRox/DPno/YHLLnw+4R793L0pWmPD0J2
	fWBd/WVugTff3U0owvdaUYrtt/ZZYucWPOBTYz3ADeRIQ8liS6VmJzAjbx6+aqC5YpIDDpSRF8k
	QRcmVqlVoSh9LOlgQCS51P7Ua+venceUmovSmU/Sh53h/67Z9mfcspfCavgb6V8eqFBVCwpk+7M
	o2Mtusc4k59pp7iyfu5rkIB+RJp1T78=
X-Received: by 2002:ac8:7f0f:0:b0:461:4150:b302 with SMTP id d75a77b69052e-466b357f2admr80407751cf.5.1732971621949;
        Sat, 30 Nov 2024 05:00:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEYsH3u/451qxpD8zMmvc9op9ackWnj4k7w19P1ILmumujruemlOpE6pR5WHBTWdzyRkITvCQ==
X-Received: by 2002:ac8:7f0f:0:b0:461:4150:b302 with SMTP id d75a77b69052e-466b357f2admr80407521cf.5.1732971621349;
        Sat, 30 Nov 2024 05:00:21 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5997fcf5bsm278148066b.84.2024.11.30.05.00.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Nov 2024 05:00:20 -0800 (PST)
Message-ID: <66c67f5a-e319-45b0-8dce-179cb1426924@oss.qualcomm.com>
Date: Sat, 30 Nov 2024 14:00:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] arm64: dts: qcom: x1e80100: Add PCIe lane
 equalization preset properties
To: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, quic_mrana@quicinc.com,
        quic_vbadigan@quicinc.com, kernel@quicinc.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20241116-presets-v1-0-878a837a4fee@quicinc.com>
 <20241116-presets-v1-1-878a837a4fee@quicinc.com>
 <5648484f-38f2-4c75-b8a3-7a0148dc940b@oss.qualcomm.com>
 <9ff459ed-4491-4bd4-1402-622d9c31cb71@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <9ff459ed-4491-4bd4-1402-622d9c31cb71@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: n2kFQXaCG1snK0tCWeWCd_jTJFcAzW-m
X-Proofpoint-GUID: n2kFQXaCG1snK0tCWeWCd_jTJFcAzW-m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 phishscore=0
 adultscore=0 mlxlogscore=776 bulkscore=0 suspectscore=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 spamscore=0 mlxscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2411300106

On 27.11.2024 2:42 AM, Krishna Chaitanya Chundru wrote:
> 
> 
> On 11/16/2024 4:49 PM, Konrad Dybcio wrote:
>> On 16.11.2024 2:37 AM, Krishna chaitanya chundru wrote:
>>> Add PCIe lane equalization preset properties for 8 GT/s and 16 GT/s data
>>> rates used in lane equalization procedure.
>>>
>>> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/x1e80100.dtsi | 8 ++++++++
>>>   1 file changed, 8 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>> index a36076e3c56b..6a2074297030 100644
>>> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>> @@ -2993,6 +2993,10 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>>>               phys = <&pcie6a_phy>;
>>>               phy-names = "pciephy";
>>>   +            eq-presets-8gts = /bits/ 16 <0x5555 0x5555>;
>>
>> If we make all of these presets u8 arrays, we can use the:
>>
>> property = [0xff 0xff 0xff 0xff];
>>
>> syntax
>>
>> Konrad
> we can't make the property as u8 as each index represents single lane
> and for 8 GT/s data rates each value needs 16bits. So for 8 GT/s we have
> to use u16 array only.

In patch 4 you write them one bit at at time anyway, you can split the
u16 value into 2 bytes, which will save you on some ifs down the line.

Konrad

