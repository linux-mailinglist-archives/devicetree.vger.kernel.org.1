Return-Path: <devicetree+bounces-249466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9380DCDBEB9
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 11:09:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 617E0300A350
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B82113346AD;
	Wed, 24 Dec 2025 10:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jE5p+oUT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="COnOp8cL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6E8330B34
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766570930; cv=none; b=HFySHPItwZ/sBszALGerePbUy0J5I23t6NeJzwBwMNIimw9zYGVlUiMyKmxQy9BKw/If6eBErLNlCFYH2oLWic0jD5gWghMQ2tc8EXte6o/Q7l5gqAutMQTXtx/LnYKu9X80j6G1ZGLUTH86LrkoLjlrijy9k0zTtCJv1d0Ca4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766570930; c=relaxed/simple;
	bh=93MsyT+IYVMTmknn6KGbQdvJhvtLNUcz1iZs84K74wY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TpB1+X2J4FhLre0XoblG8yHoFqsgqCGhlmpbJpsLHtMfpQK/5pVbyjX7VqqaQxBW/3kjExu9+xPSy+JkYeKN0LwHcyxZIFz1akkesSdIBQfa5JC6UQM6Fv/ymdUEMdbGomDxjZt6iX8TsN0rlnEvt3eJLwRDEdzI3ElJTDDIBAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jE5p+oUT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=COnOp8cL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO17xgT1598745
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:08:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tDpMnYGKrQ0Yj1wED0jcceHbFC0oOSXev/movDISLDI=; b=jE5p+oUT51IPMqTg
	FQH9kxzVdycsF49F6VRmTLRQojqDgfqYSRG+ykTmL6hjV2lmTkxv72BLXYAcNA9q
	M84ePDgIyaTp4QOpOaedhqhyVLWHzDitadrS/cM1SwId3YeA5nL50LNo6Djo3OX4
	nAD5eD3/VVllA8dawtUeHNk/25Jbdx94vgTnQNUAT9sYUuu93OiMC/pO2YSc94OP
	rP/qTQtHs4ptguu8OPKlANJXfU4RqtJCqZn+XqCPbGUzutmQrkOYgHrcMIVwVcea
	GD9AMSNfmY67Y4x2Je4x2vqZDte/ljGVQJU8Y+sa3o9ym0IwyuTcuk5FU47D6xuP
	3iJyZA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b8683h984-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:08:47 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b895b520a2so6806609b3a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:08:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766570926; x=1767175726; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tDpMnYGKrQ0Yj1wED0jcceHbFC0oOSXev/movDISLDI=;
        b=COnOp8cL8dB3pUB0QydmzR8CBSHViH15YWs9kZDAD5fs7mDvVlPOISUHx17ajlQWea
         /YX3NQvTNZ7ZsB5JhZYHLR2SvbCl2JRfCnTtgjNDzeH8qriu5e3uQCu3cvE/VdtFMc/9
         KM3YUTI1ngpugO5DPTu70Zxq2mCilzElAQYUfwgtfcfoNyCKW9lMcxYLnR3J4YYun7E/
         L+snr6s2iz4qfOoayLkaRPY+e/kjYW8VucrglUPHXUjuIm4MbzL2rdfNBoKuqD33K/FY
         iGxeLGquKBCmym5KcxcDKDI08jYE97VWqun/lUVXnQYht45FW4W/bGRh9TG1lXFTDcWZ
         Bdcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766570926; x=1767175726;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tDpMnYGKrQ0Yj1wED0jcceHbFC0oOSXev/movDISLDI=;
        b=BI0v08khBZNI62wlF2cb3OCDtoWKOPArAHZZbBLZ1jqI2UkMX/7wezZHZZpGzEZf9n
         P+Ou9gd8iFvRj8SZ7gv7VuYAvx+RYp1bX86VxdppepDs7HC80Loz6Xq7PmwwCDuGUWxy
         re7bKd9iBauupzDsNcbSYABL6ThGEfJp3jHIWu94wzdkASKnpwsG+JriEu9hiGwH76hU
         rQpZtcxYfD4T1ZXrQnQDARUurKP0O1VaYVn4leEC03d6g/3XHQgK6Qdk3ftL25wSW/5C
         fUKThhDl6W2nXLz5UerComM693rV6t6yaTfMMi8otsOkFygpaO8WR1+g80K+WOROW+vO
         cTFw==
X-Forwarded-Encrypted: i=1; AJvYcCUni0tOYQIb6m2fh9YLEmsJd4pZOdilEpKTNIloFvwr/8qk7rg/rjPgX0RlUKXViQKJB33Eu5cj7Zsc@vger.kernel.org
X-Gm-Message-State: AOJu0YxiJT9jKwO3f9tT5E9PXukHtScj4FqfX4v4km5oF1BB3V62+G5A
	Pyfnx/JO603pl525xK/us+MSQiaHgvvi9K3HltfSQaibnT5tCa31vq/U51J8BM/WrT+0BwbzH3p
	aMsaq0hVxVj2XhpwqEpKoG+9RfOA9ykTPJCmVnAo3YoKauJC1antNe30HRanQ+kMR
X-Gm-Gg: AY/fxX6Yb7/ABgTNuLgx79q0Svsgh2NndKogcProTcgUw+5Rql5HZVsZkmFQuJaNhFJ
	ULSkMGaSTYb56qRdfh6BkzUYsScqHxC7f+4ktG0Zlqo0ffP088VF+1NRyxARkWeDhaLeUhSUTZf
	OD6uCYyeTULH+3gviQk6eRQX4DvA/PJubsAuWSEFGsTanHMd/uyMNycmzA4FVwXNNsfMdiwwdWJ
	HeFP+JDDppq7Wty7YepXFMIMDSxeLwZPx0+x30Nm8CUgAvqfhcGMh/6+bQV/kEcQrWL1ODpY+kq
	HJJEtwNmRHEnvTp4M7evpaxlstdCyKamQipTD+QakzBKkFJtLRIAXu2nUmwNByINJ+R4LvlA3Cp
	z4W4TlOjbKvnFdYHafxS+YrjruIWX11h8ODpEprOvjA==
X-Received: by 2002:a05:6a00:3002:b0:7f7:497d:8118 with SMTP id d2e1a72fcca58-7ff64211caemr13493177b3a.7.1766570926077;
        Wed, 24 Dec 2025 02:08:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHKnvZ0J3w/9xfYtkjlUkt6SiK57Js68KIyJzgQVlAbrZ+vjsuQratK12FIJSddtnDVO4843Q==
X-Received: by 2002:a05:6a00:3002:b0:7f7:497d:8118 with SMTP id d2e1a72fcca58-7ff64211caemr13493145b3a.7.1766570925564;
        Wed, 24 Dec 2025 02:08:45 -0800 (PST)
Received: from [192.168.1.11] ([106.222.232.236])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e48f300sm16401247b3a.54.2025.12.24.02.08.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Dec 2025 02:08:45 -0800 (PST)
Message-ID: <3fc177ca-0260-471d-b7a4-bd479f5e5855@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 15:38:38 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/8] dt-bindings: thermal: Add qcom,qmi-cooling yaml
 bindings
To: Krzysztof Kozlowski <krzk@kernel.org>, andersson@kernel.org,
        mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, rafael@kernel.org, daniel.lezcano@linaro.org,
        rui.zhang@intel.com, lukasz.luba@arm.com, konradybcio@kernel.org,
        amitk@kernel.org, mani@kernel.org, casey.connolly@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
 <20251223123227.1317244-4-gaurav.kohli@oss.qualcomm.com>
 <f6bd1bda-6aab-4d4e-9981-f55cce03f70d@kernel.org>
Content-Language: en-US
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
In-Reply-To: <f6bd1bda-6aab-4d4e-9981-f55cce03f70d@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: iEoWJ3naPMcf5jcWz6dvs2tI65m5Fdvi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA4NiBTYWx0ZWRfX3MItkWxroOQ8
 5NRPee8eccTc3xbZB9mT3JlzdiOkcsAysOrvjOAo5mpxwkhv2lvjNMfyBlHqXeF4ySvKJwn4KjC
 c0AnxJndF2AuNyHKaSAJ4TwhnQSWEMh6j7zYUrd4++KP3ypBvvRSNdvWxKIMYDbjKxF77AuANb3
 3qAdqbkoFJrc9ftUdQTyMuFXgVs0pFNxPkuZ+ew2Z0IEpaamtKw48F7pPIFUc4h3bPxT6hrIgn3
 qhz1xNB72SNYmjJnY7jT/9JlXUvIoqo582D845ovtp5EYYNkf1s/kShGkMGZlQz8pzMLJfk7ugx
 dMIy3Scv2hwUiak1sWBy6xexfWy0bqmU39N9ozqNi+r7RBPwOo3alPtrGgkgJIwcpNzH0zoCiTd
 id17WP4AIN15qUpCESbqIPnkWCfGMOuKBC3ti1+Tcdwj9h4yMT12aQU1b2DklhoHTxxoeAe9gXN
 UlxF4h8t7iP/BuaanvA==
X-Authority-Analysis: v=2.4 cv=HqV72kTS c=1 sm=1 tr=0 ts=694bbbaf cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=pk+8NuH2X28N4C0eta/h1Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=qdUy6Y8sbFzTvRIqqwMA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: iEoWJ3naPMcf5jcWz6dvs2tI65m5Fdvi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240086


On 12/24/2025 2:27 PM, Krzysztof Kozlowski wrote:
> On 23/12/2025 13:32, Gaurav Kohli wrote:
>> The cooling subnode of a remoteproc represents a client of the Thermal
>> Mitigation Device QMI service running on it. Each subnode of the cooling
>> node represents a single control exposed by the service.
>>
>> Add maintainer name also and update this binding for cdsp substem.
>>
>> Co-developed-by: Casey Connolly <casey.connolly@linaro.org>
>> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
>> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
>> ---
>>   .../bindings/remoteproc/qcom,pas-common.yaml  |  6 ++
>>   .../bindings/thermal/qcom,qmi-cooling.yaml    | 99 +++++++++++++++++++
>>   2 files changed, 105 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
>> index 63a82e7a8bf8..bbc82253f76b 100644
>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,pas-common.yaml
>> @@ -77,6 +77,12 @@ properties:
>>         and devices related to the ADSP.
>>       unevaluatedProperties: false
>>   
>> +  cooling:
>> +    $ref: /schemas/thermal/qcom,qmi-cooling.yaml#
>> +    description:
>> +      Cooling subnode which represents the cooling devices exposed by the Modem.
>> +    unevaluatedProperties: false
>> +
>>   required:
>>     - clocks
>>     - clock-names
>> diff --git a/Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml b/Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
>> new file mode 100644
>> index 000000000000..90b46712d241
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/thermal/qcom,qmi-cooling.yaml
>> @@ -0,0 +1,99 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +# Copyright 2023 (c), Linaro Limited
>> +
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/thermal/qcom,qmi-cooling.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm QMI based thermal mitigation (TMD) cooling devices.
>> +
>> +maintainers:
>> +  - Caleb Connolly <caleb.connolly@linaro.org>
>> +  - Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
>> +
>> +description:
>> +  Qualcomm QMI-based TMD cooling devices are used to mitigate thermal conditions
>> +  across multiple remote subsystems. These devices operate based on junction temperature
>> +  sensors (TSENS) associated with thermal zones for each subsystem.
>> +
>> +  Each subnode corresponds to a control interface for a single instance of the TMD
>> +  service running on a remote subsystem.
>> +
>> +definitions:
> defs, look at other code
>
>
>> +  tmd:
>> +    type: object
>> +    description: |
>> +      A single Thermal Mitigation Device exposed by a remote subsystem.
> Missing proper formatting. Please do not send us code written by LLM.


This patch is based on older series

https://lore.kernel.org/linux-devicetree/20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org/, did some manual changes to remove unusable code.
let me fix the formatting. This is not generated code.


>
>> +    properties:
>> +      label:
>> +        maxItems: 1
>> +      "#cooling-cells":
>> +        $ref: /schemas/thermal/thermal-cooling-devices.yaml#/properties/#cooling-cells
>> +      phandle: true
> NAK, LLM generated junk. It is not acceptable to send such code.
>
>
> Best regards,
> Krzysztof

