Return-Path: <devicetree+bounces-226087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 677D6BD3B1F
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 16:53:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1A9594F9172
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:48:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C980A279DAF;
	Mon, 13 Oct 2025 14:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EEdFL5TA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC8625D546
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 14:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760366447; cv=none; b=Mn2ZImq1PzK+rgxdMPmNlGHj+s/kGJDvqX/zqHgjLJALTOhrUErfp16EuQTGuIKmdxF85wcuTMUFmUbNLlvYPRjHP24okAtheCotWENGMJlXIUTZUsG0pfWZw4QeghSaxJgmm21MwVHFLwMwEtBvhHSu/xa1Zr2EQRvi3qgtDOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760366447; c=relaxed/simple;
	bh=uFSEibwg15Yfs4Ful0TZVaUJugUCpioGWaNDWPNh0BA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h/4zom6kj3X+h8XjX5Yy80txh7e/UoROFyx3QABGafZ7dJp6LdDlRhadjAIQ8dK7hNWyj5nkw0HQAqf+rduYpsaDQ+kihC4zW4RCaUYHRvg5pOFoOUQr1zcPCu0Y++kntaVDLCvNaINPj1DrAVQs1ndgVXeSryfB6T9FCN6nZv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EEdFL5TA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DAkAHU001858
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 14:40:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VbizHHKsV7jcegOvOnMjuJPidY+Lis3OqZISqAQQ7K4=; b=EEdFL5TAtwBQskTh
	dns/10JANGZ8/7GFXAXsDjfcXKsmJN4VUpB4BmXQDQeEUPTR9hXwSRb2jiUOsbz+
	TzYrQ1DVhfizX+RVuI8SmPIs2LjNTdF8qF3mC2zRIjH7EC5TFcRjw9ezBMA/8Vvh
	/YMRk3nsXeoEIDlCKu1ZEQXfk7y3/7avrzrO8F/VpimphzTkQRccletcAannMQaD
	q8A6lTaiZrVDZm511gVweiY2Kcf/gVHNPv/q8xhnRC794fgGbS1Kr1rRsxORIuD3
	UMs8VHU+17qdnLrt2sSib8s+YPmd6R1Uuq5QGcoc/aNhaVgc5e7LP8TnT3WBf2wg
	L8Bl3A==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd8w1ev-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 14:40:45 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-339b704e2e3so9596295a91.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 07:40:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760366444; x=1760971244;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VbizHHKsV7jcegOvOnMjuJPidY+Lis3OqZISqAQQ7K4=;
        b=eXgBqpjrxSl6DfA70OdTIxh/6tjxjjOlBv0uJGc0RLg//Tqxr3ghE2evd3MlqUJ4qk
         BL1QhFKSI39yFwoXu1r/2k6LKWS++Fg0dh7G09rSfwr5t0R8GJHyyiKBVM5zthRKoFKS
         JiZUOfyvaj7CfEvUIwxSCh9kaEXgPH9hnJBI8knHueWc3H4+8kzgxCGzC5wg1TUrreM/
         fKoYscP37KFSYo0WShEoed1EhFxArvid++e2UQPqkRQpGUcLYqDuc1GO1rVjoUCpSvxa
         hnAdijRB2e4ARqFBbfbikV8jsB5urD1xVv6G3a0oDoTPLxWCQ1D7sv1jM0m5esAzIy6+
         WA9w==
X-Forwarded-Encrypted: i=1; AJvYcCXvhhyTAqO4p1AZfrGB7AUuq6vBAjip7GBRcY+ZUCSTYUH9y2nMY2CiNtS/HjR+NSAHjtG62QajSYfz@vger.kernel.org
X-Gm-Message-State: AOJu0Yzfrpc8qr+dO8anrtoFMe6xb1Vi1F5W5GkDVJxYf8KOkjQFYg5H
	kb9crzUr7dVY0AtU66vuNoEJhZtNAi6I948rFmDZ06m4paGuMDAe7rVWznUlVH9O9HT9a34Zzuu
	Y7orEGxWGHirsD41Qz9kj18uWPNj1LiHCRdeqDdsE6TIBBwtrZwbgZfqgkKGY/M1T
X-Gm-Gg: ASbGnctETyy8BsPo3rMrIkfGXA0jW9fxPVVtCOg+wewH4jNoHcuTaUq1hrAJMpZ5RcF
	WnZrLbzbdPFYTlMgNvUAlfBDIdHoXSLPCR/0xYoOkkkvUaRjLyomr2+qqUvqUo1pcWpF/qe6lff
	iM7O14WlNpeLGXT6rvExOOeD9ebuDN6pOMgO7RLZF1aqJZd12yvQxMmrXvGFNQOYOke81KZizzG
	ZJ1AGPMuDqtvH2PUvRdJywYd9NtiyrB/nSlhaJYpWLgdYx2EQiK5Eut37GSjybK78w+o7fHNR8L
	XdWu//eh6A2OFoWICy6KYu5fXOVbsapLCE8lqUEE3o//Y3aG+677C+FWb7b3QORl5e60zA2MXUY
	=
X-Received: by 2002:a17:90b:1a8a:b0:32e:8931:b59c with SMTP id 98e67ed59e1d1-33b5139a212mr30108806a91.27.1760366444502;
        Mon, 13 Oct 2025 07:40:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFdBaAuEByPv3+L1OwSYtyIG6j/FbVOk9pX+s4HIIh/tSLS9uGYDZU004sWiinorIJt51OSjA==
X-Received: by 2002:a17:90b:1a8a:b0:32e:8931:b59c with SMTP id 98e67ed59e1d1-33b5139a212mr30108753a91.27.1760366443988;
        Mon, 13 Oct 2025 07:40:43 -0700 (PDT)
Received: from [192.168.29.113] ([49.43.227.99])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b626e8bf5sm12228174a91.23.2025.10.13.07.40.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 07:40:43 -0700 (PDT)
Message-ID: <91e03d54-5de2-4f41-90df-3d46225edf64@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 20:10:35 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] PCI: qcom: Treat PHY and PERST# as optional for the
 new binding
To: Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linus.walleij@linaro.org, brgl@bgdev.pl
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251010-pci-binding-v1-0-947c004b5699@oss.qualcomm.com>
 <20251010-pci-binding-v1-3-947c004b5699@oss.qualcomm.com>
 <4532e2e6-51bd-4443-ad51-41fc02065a7d@oss.qualcomm.com>
 <yvbghnxttchfvte3nxr4ru62wqilceil2n7x7dgpa5gnm57ywu@ljrbw3c44qpw>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <yvbghnxttchfvte3nxr4ru62wqilceil2n7x7dgpa5gnm57ywu@ljrbw3c44qpw>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: X2DICgpPyq-5RypmgK6UgO8YB09N0n1B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX7yuw+3SwCMQC
 5//21YOSRLh2NHpDBx5KnjHfQIxW2LLxehSLqHPRA7ZC38R9TCxIbJ19CYYnXneaXO+hO3YZgeL
 afct0TuHiPGqy1ocdBo8VtJQFyIKqawZ59NV6bhksNMhpgH4DyxjFnCbPujNp1vKyePp/OvR0rl
 Zix+y3UKuhmIzATMJSB4rIqAZ2k8PfzaoQIO6eGb5ATYNDPv+q1FjAA45IVzLI28KNVBuiOJopl
 rUcLTQUIm3qQVyv/U2jvHt7Bd+bMAeDWA3nKTpXM9hNFtWPBVDApo7t19mvoeUBN+7h4LG54NBe
 igkPWUveeymd+68r31CTu75mOX6NY2LfOlDF61ZdIr3NjeaA/SZ0i2GzMws9mFSx0+/AkTyccVw
 NbKRGZzBfkKhD9npmK5ilHgjpd0PvQ==
X-Proofpoint-GUID: X2DICgpPyq-5RypmgK6UgO8YB09N0n1B
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68ed0f6d cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=mKR/62aTrRaa7QINDUyomg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=DY-I8tSyz7GcGJVrnHcA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018



On 10/11/2025 9:39 AM, Manivannan Sadhasivam wrote:
> + GPIO folks for the below API query
> 
> On Fri, Oct 10, 2025 at 08:32:51PM +0200, Konrad Dybcio wrote:
>> On 10/10/25 8:25 PM, Manivannan Sadhasivam wrote:
>>> Even for the new DT binding where the PHY and PERST# properties are
>>> specified in the Root Port, both are optional. Hence, treat them as
>>> optional in the driver too.
>>
>> I suppose this makes sense if the PHY is transparent to the OS
>> or otherwise pre-programmed and PERST# is hardwired or otherwise
>> unnecessary.. both of which I suppose aren't totally impossible..
>>
> 
> PERST# is by definition an optional signal, but I'm not sure about why PHY is
> not used by the controller driver.
> 
one case where phy is optional is in pcie tunneling through usb4, there
we don't require any phy.

- Krishna Chaitanya.
>>>
>>> If both properties are not specified, then fall back to parsing the legacy
>>> binding for backwards compatibility.
>>>
>>> Fixes: a2fbecdbbb9d ("PCI: qcom: Add support for parsing the new Root Port binding")
>>> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
>>> ---
>>>   drivers/pci/controller/dwc/pcie-qcom.c | 11 +++++++++--
>>>   1 file changed, 9 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>>> index 805edbbfe7eba496bc99ca82051dee43d240f359..d380981cf3ad78f549de3dc06bd2f626f8f53920 100644
>>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>>> @@ -1720,13 +1720,20 @@ static int qcom_pcie_parse_port(struct qcom_pcie *pcie, struct device_node *node
>>>   
>>>   	reset = devm_fwnode_gpiod_get(dev, of_fwnode_handle(node),
>>>   				      "reset", GPIOD_OUT_HIGH, "PERST#");
>>> -	if (IS_ERR(reset))
>>> +	if (IS_ERR(reset) && PTR_ERR(reset) != -ENOENT)
>>>   		return PTR_ERR(reset);
>>
>> Please introduce an _optional variant instead
>>
> 
> Linus, Bartosz, are you OK with devm_fwnode_gpiod_get_optional() API? Just
> wanted to confirm before I go ahead as there are existing users checking for
> -ENOENT explicitly. Not sure if they are doing it for a reason other than the
> absence of the _optional variant or not.
> 
> - Mani
> 

